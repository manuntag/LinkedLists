//
//  main.m
//  LinkedLists
//
//  Created by David Manuntag on 2015-01-14.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"

char searchText[50];
char addItemText[50];
char removeItemText[100];

int  checkListResponse;
int  removeItemResponse;
int  printFinalResponse;


void waitOnCR (void)  {
    while (getchar() != '\n') {
    };
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        LinkedList * list = [[LinkedList alloc]init];
        
        // search function
    
        NSLog(@"Search the Grocery List:");

        scanf("%s",searchText);
        waitOnCR();
        list.searchText = [NSString stringWithCString:searchText encoding:NSASCIIStringEncoding];
        bool result = [list.linkedList containsObject:list.searchText];
       
        if (result) {
         
            NSLog(@"The list contains %@", list.searchText);
            
        } else {
           
            NSLog(@" %@ is not here", list.searchText);
        
        }
        
        // insert object at bottom of the list
        
        NSLog(@"Add new item to the list:");
        scanf("%s",addItemText);
        waitOnCR();
        list.addItemText = [NSString stringWithCString:addItemText encoding:NSASCIIStringEncoding];
        
        NSUInteger lastObject = [list.linkedList count];
        [list.linkedList insertObject:list.addItemText atIndex:lastObject];
        
        
        // prompt to review the grocery list
        
        NSLog(@"Review the grocery list? \n1.Yes\n2.No");
        scanf("%i", &checkListResponse);
        waitOnCR();
        if(checkListResponse==1){
        
        for (NSMutableArray * array in list.linkedList){
            
            NSLog(@"%@", array);
        
        }
            
        }
        
        //removal of object within the list
        
        NSLog(@"Remove any items from the list? \n1.Yes\n2.No");
        scanf("%i", &removeItemResponse);
        waitOnCR();
        
        
        if (removeItemResponse==1) {
            NSLog(@"Please enter item you want removed");
        }
        
        scanf("%s", removeItemText);
        waitOnCR();
        list.removeItemText = [NSString stringWithCString:removeItemText encoding:NSASCIIStringEncoding];
        [list.linkedList removeObjectIdenticalTo:list.removeItemText];
    
       
        // print final list
        
        NSLog(@"%@ was sucessfully removed from the list \nprint final your grocery list?\n1.Yes\n2.No", list.removeItemText);
        scanf("%i", &printFinalResponse);
        
        if (printFinalResponse==1) {
            for (NSMutableArray * array in list.linkedList ) {
                
                NSLog(@"%@", array);
            }
        }

        
        
    }
    return 0;
}
