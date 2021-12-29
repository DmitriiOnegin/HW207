//
//  DataManager.swift
//  HW207
//
//  Created by Dmitrii Onegin on 29.12.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Dima", "Anna", "Valia", "Petr", "Kate",
        "Vika", "Liza", "Kolia", "Olga", "Masha"]
    
    let sernames = [
        "Petrov", "Voronov", "Eroy", "Kulakov", "Antonov",
        "Stoliarov", "Kotov", "Larin", "Anisimov", "Kastrov"]
    
    let emails = [
        "1@mail.ru", "2@mail.ru", "3@mail.ru", "4@mail.ru", "5@mail.ru",
        "6@mail.ru", "7@mail.ru", "8@mail.ru", "9@mail.ru", "10@mail.ru"]
    
    let phones = [
        "9991111111", "9992222222", "9993333333", "9994444444", "9995555555",
        "9996666666", "9997777777", "9998888888", "9999999999", "9991234567"]
    
    private init() {}
    
}
