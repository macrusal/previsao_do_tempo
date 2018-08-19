//
//  PrevisaoTempoStructures.swift
//  Previsão do Tempo
//
//  Created by Marcelo on 18/08/2018.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

struct PrevisaoDados: Codable {
    let list: [PrevisaoDadosPontos];
    let city: City;
}

struct City: Codable {
    let nome: String;
    let pais: String;
}

struct PrevisaoDadosPontos: Codable {
    let principal: Temperaturas;
    let data: String;
    let tempo: [PrevisaoDadosIcone];
}

struct Temperaturas: Codable {
    let temperatura: Double;
    let temperaturaMinima : Double;
    let temperaturaMaxima : Double;
}

struct PrevisaoDadosIcone: Codable {
    let icon: String;
}
