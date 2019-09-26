@isTest
public with sharing class CarrosHnadlerTest {


    @isTest static void criaCarroTest(){
        Carro__c carro = new Carro__c();
        carro.Modelo__c = 'civic';
        carro.Nome__c = 'Honda';
        carro.Cor__c = 'Preto';
        CarrosHandler carro = new CarrosHandler();
        carro.criaCarro(carro);
    }

    
    @isTest static void criaCarroTest2(){
        Carro__c carro = new Carro__c();
        carro.Modelo__c = 'Jetta';
        carro.Nome__c = 'Volkswagen';
        carro.Cor__c = 'Preto';
        CarrosHandler carro = new CarrosHandler();
        carro.criaCarro();
    }

}
