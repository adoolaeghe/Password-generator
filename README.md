# Password-generator
### Requirement
Your task is to build a secure password generator taking 5 arguments: 
* length specify the number of characters in the password.
* uppercase specify if the password includes uppercase(A-Z) characters. 
* lowercase specify if the password includes uppercase(a-z) characters. 
* number specify if the password includes number(123456789) characters. 
* special specify if the password includes special(!$%&*@^) characters. 

#### Approach
I began by domain mapping how to generate a secure password, as well as how the user would interact with it. I decided to create a simple terminal application built in Ruby. I used TDD to guide the process testing my implementation with Rspec aiming a test coverage of 100%. I ensured that each responsability were well seperated in different objects following the Object Oriented Design of SOLID principles. The application can catch all the argument error. 

### How to install
```
gitclone https://github.com/adoolaeghe/password-generator.git
cd password-generator
bundle install
 ```
#### Generate a password
In irb
```
require_relative 'lib/password_generator.rb'
password_generator = Password_generator.new
password.create(10,true,false,true,false)
```
#### Run tests
```
rspec
```
 
