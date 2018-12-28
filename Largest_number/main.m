//
//  main.m
//  Largest_number
//
//  Created by Matthew Chan on 2018-12-26.
//  Copyright © 2018 Matthew Chan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //Array of numbers
    NSMutableArray *list = [[NSMutableArray alloc] initWithObjects:
                            [NSNumber numberWithInt:5],
                            [NSNumber numberWithInt:10],
                            [NSNumber numberWithInt:25],
                            [NSNumber numberWithInt:30],
                            [NSNumber numberWithInt:15],
                            [NSNumber numberWithInt: 20],
                            nil];
 
    //for-loop to sort number in descending order
    for (int i=0; i < [list count]; i++) {
//        for (int j=0; j < i-1; j++){ - OLD
            if ([list objectAtIndex:i] > [list objectAtIndex:0]){
                [list exchangeObjectAtIndex:i withObjectAtIndex:0];
            }
//        }
    }
   
    //Prints out numbers in ascending order
//    for (int i=0; i < [list count]; i++) {
//    NSArray *number = list[i];
//    NSLog(@"%@", number);
//    }

   //Announce largest number
        NSLog(@"The largest number is %@.", list[0]);
   
}

// NOTE - Best I can do: The largest number does get called.  However not all the time, as it seems to rotate; can see when printing out all the array of numbers (section commented out).  The order of numbers changes every two or three times the code is ran - cannot figure out why.
