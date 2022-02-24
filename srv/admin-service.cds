using { db } from '../db/scheme';

annotate MyService with @(requires: 'authenticated-user');

service MyService {

    entity Foo @(restrict: [
        { grant: '*', to: 'Auditor' }
    ]) as projection on db.Foo;
    @readonly entity Boo @(restrict: [
        { grant: '*', to: 'Support' }
    ]) as projection on db.Foo;     

    action getInfo @(requires: 'Integration')()     
} 

service API_Service @(requires: 'Integration'){

    entity Foo as projection on db.Foo;
    entity Boo as projection on db.Foo;      

} 

service freeService {

    entity Foo as projection on db.Foo;
    entity Boo as projection on db.Foo;      

} 