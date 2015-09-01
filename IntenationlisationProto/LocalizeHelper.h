//
//  LocalizeHelper.h
//

#import <Foundation/Foundation.h>

#define AMLocalizedString(key, comment) \
[[LocalizeHelper sharedLocalSystem] localizedStringForKey:(key) value:(comment)]

#define LocalizationSetLanguage(language) \
[[LocalizeHelper sharedLocalSystem] setLanguage:(language)]

#define LocalizationGetLanguage \
[[LocalizeHelper sharedLocalSystem] getLanguage]

#define LocalizationReset \
[[LocalizeHelper sharedLocalSystem] resetLocalization]

@interface LocalizeHelper : NSObject {
    NSString *language;
}

// you really shouldn't care about this functions and use the MACROS
+ (LocalizeHelper *)sharedLocalSystem;

//gets the string localized
- (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)comment;

//sets the language
- (void) setLanguage:(NSString*) language;

//gets the current language
- (NSString*) getLanguage;

//resets this system.
- (void) resetLocalization;

@end
