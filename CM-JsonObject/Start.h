//
//  ViewController.h
//  CM-JsonObject
//
//  Created by Walter Gonzalez Domenzain on 18/07/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Parser.h"


@interface Start : UIViewController
@property (nonatomic,strong)    Declarations            *Declarations;
@property (nonatomic,strong)    Parser                  *Parser;

//Objects
@property (strong, nonatomic) IBOutlet UILabel *lblTemp;
@property (strong, nonatomic) IBOutlet UILabel *lblTempMax;
@property (strong, nonatomic) IBOutlet UILabel *lblTempMin;
@property (strong, nonatomic) IBOutlet UILabel *lblPressure;
@property (strong, nonatomic) IBOutlet UILabel *lblHumidity;



//Tarea5
@property (strong, nonatomic) IBOutlet UILabel *lblWind;
@property (strong, nonatomic) IBOutlet UILabel *lblWinddeg;
@property (strong, nonatomic) IBOutlet UILabel *lblLat;
@property (strong, nonatomic) IBOutlet UILabel *lblLon;

@property (strong, nonatomic) IBOutlet UILabel *lblCountry;

@property (strong, nonatomic) IBOutlet UILabel *lblsunrise;
@property (strong, nonatomic) IBOutlet UILabel *lblSunset;

@property (strong, nonatomic) IBOutlet UILabel *lblDescription;



//Actions
- (IBAction)btnGetDataPressed:(id)sender;


@end

