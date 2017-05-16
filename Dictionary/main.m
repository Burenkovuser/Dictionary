//
//  main.m
//  Dictionary
//
//  Created by Vasilii on 16.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableDictionary *glossary = [[NSMutableDictionary alloc] init];
        
        //Запись трех элементов в словарь
        /*
        [glossary setObject:@"Класс который определен только для того, чтобы его могли наследовать другие классы"
                     forKey:@"абстрактный класс"];
        [glossary setObject:@"Реализовать все методы, определенные в протоколе"
                     forKey:@"адаптировать"];
        [glossary setObject:@"Сохранение объекта для последующего использования"
                     forKey:@"архивация"];
        
        NSLog(@"абстрактный класс: %@", [glossary objectForKey:@"абстрактный класс"]);
        NSLog(@"адаптировать: %@", [glossary objectForKey:@"адаптировать"]);
        NSLog(@"архивация: %@", [glossary objectForKey:@"архивация"]);
        */
        
        //альтернативный синтаксис
        /*
        glossary[@"абстрактный класс"] = @"Класс который определен только для того, чтобы его  могли наследовать другие классы";
        glossary[@"адаптировать"] = @"Реализовать все методы, определенные в протоколе";
        glossary[@"архивация"] = @"Сохранение объекта для последующего использования";
        
        NSLog(@"абстрактный класс: %@", glossary[@"абстрактный класс"]);
        NSLog(@"адаптировать: %@", glossary[@"адаптировать"]);
        NSLog(@"архивация: %@", glossary[@"архивация"]);
        */
        
        //Перечисление записей словаря
        
        NSDictionary *myGlossary = [NSDictionary dictionaryWithObjectsAndKeys:
                                      @"Класс который определен только для того, чтобы его  могли наследовать другие классы",
                                      @"абстрактный класс",
                                      @"Реализовать все методы, определенные в протоколе",
                                      @"адаптировать",
                                      @"Сохранение объекта для последующего использования",
                                      @"архивация",
                                      nil];
    
    //Печать всех ключ-пар значений из словоря
    for (NSString *key in myGlossary)
        NSLog(@"%@ : %@", key, [myGlossary objectForKey:key]);
    }
    
    //Еще один вариант
        NSDictionary *MyDictionary = @{@"абстрактный класс":
                                           @"Класс который определен только для того, чтобы его  могли наследовать другие классы",
                                       @"адаптировать":
                                           @"Реализовать все методы, определенные в протоколе",
                                       @"архивация":
                                           @"Сохранение объекта для последующего использования"
                                           
                                       };
        for (NSString *key in MyDictionary)
            NSLog(@"%@ : %@", key, [MyDictionary objectForKey:key]);
    
    
    
    return 0;
}
