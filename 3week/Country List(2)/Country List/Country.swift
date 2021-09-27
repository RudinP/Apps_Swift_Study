//
//  Country.swift
//  Country List
//
//  Created by 루딘 on 2021/09/27.
//

import Foundation

struct Country {
    var flag = "";
    var name = "";
    var year = 0;
    var population = 0.0;
    var region = "";
}
//let flags = ["🇧🇷", "🇳🇿", "🇵🇰", "🇨🇦", "🇺🇸"];


func getCountries() -> [Country] {
    let brazil = Country(flag: "🇧🇷", name: "Federative Republic of Brazil", year: 1822, population: 209.5, region: "South America");
    let newZealand = Country(flag: "🇳🇿", name: "New Zealand", year: 1907, population: 4.9, region: "Oceania");
    let pakistan = Country(flag: "🇵🇰", name: "Pakistan", year: 1947, population: 220.9, region: "Asia");
    let Canada = Country(flag: "🇨🇦", name: "Canada", year: 0, population: 0.0, region: "North America");
    let USA = Country(flag: "🇺🇸", name: "USA", year: 0, population: 0.0, region: "North America");
    return [brazil, newZealand, pakistan, Canada, USA];
}
