//
//  UserModel.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 17.02.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Alexey",
            password: "111",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let secondName: String
    let yearsOld: Int
    let country: String
    let city: String
    let privateStory: String
    
    var fullName: String {
        name + " " + secondName
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Алексей",
            secondName: "Манохин",
            yearsOld: 32, country: "Россия",
            city: "Белгород",
            privateStory: """
 Привет! 🖐 Меня зовут Алексей. Родился 25 марта 1990 года в городе Белгород. Живу здесь же 🙂\n👉 С 2016-го года занимаюсь небольшим бизнесом по изготовлению печатей для ИП, ООО, врачей и т.д.. Были попытки продавать товары на Ozon, но ожидания не оправдались.\n💡 Решил заняться чем-то действительно крутым и интересным, вспомнил, что в далеком 2012-м году, хотел научиться писать приложения для📱iPhone. Тогда приложения писали на Objective-C. С прошлого года всерьез увлёкся программированием на языке Swift. Записался на курс в SwiftBook, учусь 🤓 Благодаря учителю Алексею Ефимову, у меня это даже немного получается 🙂 Хочу стать крутым iOS-разработчиком, и уверен, что у меня это получится! ✊
 """
        )
    }
}
