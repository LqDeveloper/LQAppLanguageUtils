//
//  AppLanguageManager.swift
//  AppLanguageUtils
//
//  Created by Quan Li on 2019/8/16.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import Foundation


fileprivate let AppLanguageKey = "AppLanguageKey"

public enum AppLanguageType:String{
    case AppLanguageChineseSimplified = "zh-Hans"
    case AppLanguageChineseTraditional = "zh-Hant"
    case AppLanguageEnglish = "en"
}


open class AppLanguageManager{
    public static let shared = AppLanguageManager()
    private init(){}
    
    open var currentLanguage = ""
    open var languageBundle:Bundle?
    open var fileName:String?
    
    open var languageString:String{
        if (currentLanguage.contains("zh-Hans")) {
            return "zh_CN";
        }else if (currentLanguage.contains("zh-Hant")){
            return "zh_HK";
        }else{
            return "en";
        }
    }
    
    open var languageType:AppLanguageType{
        if (currentLanguage.contains("zh-Hans")) {
            return .AppLanguageChineseSimplified;
        }else if (currentLanguage.contains("zh-Hant")){
            return .AppLanguageChineseTraditional;
        }else{
            return .AppLanguageEnglish;
        }
    }
    
    open var systemLanguage:AppLanguageType{
        let preferredLang = Bundle.main.preferredLocalizations.first! as NSString
        if preferredLang.contains("zh-Hans") {
            return .AppLanguageChineseSimplified
        }else if preferredLang.contains("zh-Hant"){
            return .AppLanguageChineseTraditional
        }else{
            return .AppLanguageEnglish
        }
    }
    
    open func initAppLanguage(localizeFileName:String){
        fileName = localizeFileName
        if  let  language = UserDefaults.standard.value(forKey: AppLanguageKey) as? String  {
            currentLanguage = language
        }else{
            if systemLanguage == .AppLanguageChineseTraditional{
                currentLanguage = "zh-Hant"
            }else  if systemLanguage == .AppLanguageChineseSimplified{
                currentLanguage = "zh-Hans"
            }else{
                currentLanguage = "en"
            }
        }
        languageBundle = Bundle.init(path: Bundle.main.path(forResource: currentLanguage, ofType: "lproj") ?? "")
    }
    
    
    open func saveAppLanguage(languageType:AppLanguageType){
        guard currentLanguage == languageType.rawValue else {
            return
        }
        currentLanguage = languageType.rawValue
        languageBundle = Bundle.init(path: Bundle.main.path(forResource: currentLanguage, ofType: "lproj") ?? "")
    }
    
    open func localizedString(key:String) -> String {
        return languageBundle?.localizedString(forKey: key, value: key, table: fileName) ?? key
    }
}
