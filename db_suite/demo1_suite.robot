*** Comments ***
Table name - Products
Columns-product_id,productname,description

*** Settings ***
Library     DatabaseLibrary

Suite Setup     Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db
...     dbPassword=12345678     dbHost=db4free.net  dbPort=3306

Suite Teardown      Disconnect From Database

*** Test Cases ***
TC1
    Table Must Exist    Products
    ${count}    Row Count    select * from Products
    Log To Console    ${count}

TC2
    #Row Count Is Equal To X    select * from Products    50
    Row Count Is Equal To X    select * from Products where product_id=10    1
    
TC3
    Execute Sql String    Insert into Products(product_id,productname,description) values (717,'Anup','my name')
    Row Count Is Equal To X    select * from Products where product_id=717    1

TC4
    ${query_list}   Query    Select * from Products
    Log To Console    ${query_list}
    Log To Console    ${query_list}[0]

TC5
    Execute Sql String    update Products set productname='Basu' where product_id=717
    ${output}   Query    select * from Products where product_id=717
    Log To Console    ${output}

TC6
     @{output}   Query    select * from Products where product_id=717
    Log To Console    ${output}
    Log To Console    ${output}[0]
    Log To Console    ${output}[0][1]

