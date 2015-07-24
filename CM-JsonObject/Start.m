//
//  ViewController.m
//  CM-JsonObject
//
//  Created by Walter Gonzalez Domenzain on 18/07/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Start.h"


#define nUagLat 20.695306
#define nUagLng -103.418190

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)initData {
    mjsonWeatherObject              = [Declarations getWeather:nUagLat and:nUagLng];
    mWeatherObject                  = [Parser parseWeatherObject];
    Weather *weather                = [Parser parseWeather];
    
    WeatherDetail *weatherDetail    = [weather getWeatherDetail:0];
    print(NSLog(@"icon %@", weatherDetail.icon))
    

}

- (IBAction)btnGetDataPressed:(id)sender {
    mjsonWeatherObject    = [Declarations getWeather:nUagLat and:nUagLng];
    mWeatherObject  = [Parser parseWeatherObject];
    
    float tempKelvin        = mWeatherObject.main.temp;
    float tempCelsius       = tempKelvin - 273.15;
    self.lblTemp.text       = [NSString stringWithFormat:@"%.2f", tempCelsius];
    self.lblTempMax.text    = [NSString stringWithFormat:@"%.2f", mWeatherObject.main.temp_max - 273.15];
    self.lblTempMin.text    = [NSString stringWithFormat:@"%.2f", mWeatherObject.main.temp_min - 273.15];
    self.lblPressure.text   = [NSString stringWithFormat:@"%d", mWeatherObject.main.pressure];
    self.lblHumidity.text   = [NSString stringWithFormat:@"%d", mWeatherObject.main.humidity];
    
    //Tarea 5
    self.lblWind.text         = [NSString stringWithFormat:@"%f", mWeatherObject.wind.speed];
    self.lblWinddeg.text      = [NSString stringWithFormat:@"%f", mWeatherObject.wind.deg];
    
    self.lblLat.text          = [NSString stringWithFormat:@"%f", mWeatherObject.coord.lat];
    self.lblLon.text          = [NSString stringWithFormat:@"%f", mWeatherObject.coord.lon];
    
    self.lblsunrise.text      =  [NSString stringWithFormat:@"%f", mWeatherObject.Sys.sunrise];
    self.lblSunset.text      =  [NSString stringWithFormat:@"%f", mWeatherObject.Sys.sunset];
    self.lblCountry.text      =  [NSString stringWithFormat:@"%@", mWeatherObject.Sys.country];
    
   

    
    
    
    
}
@end
