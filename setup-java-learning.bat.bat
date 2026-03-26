@echo off
echo Creating JavaCoreProject + SpringMastery projects...

REM =====================================================
REM =============== SPRING PROJECT =======================
REM =====================================================

mkdir spring-mastery-project
cd spring-mastery-project

REM ===== DOCTS =====
mkdir docts

type nul > docts\01-spring-core-ioc-di.md
type nul > docts\02-bean-lifecycle-scopes.md
type nul > docts\03-spring-di-autowiring.md
type nul > docts\04-spring-events-listener.md
type nul > docts\05-spring-jdbc-template.md
type nul > docts\06-hibernate-core-orm.md
type nul > docts\07-spring-aop-aspect.md
type nul > docts\08-spring-data-jpa.md
type nul > docts\09-spring-web-mvc-rest.md
type nul > docts\10-validation-exception.md
type nul > docts\11-spring-async-scheduling.md
type nul > docts\12-spring-security-jwt.md
type nul > docts\13-spring-caching-mail.md
type nul > docts\14-spring-actuator-metrics.md
type nul > docts\15-docker-deployment.md
type nul > docts\review-spring-debug.md

REM ===== SRC =====

mkdir src\main\java\nd\mahn\spring\mastery
mkdir src\main\resources

REM ===== spring_core =====
mkdir src\main\java\nd\mahn\spring\mastery\spring_core\container
mkdir src\main\java\nd\mahn\spring\mastery\spring_core\lifecycle
mkdir src\main\java\nd\mahn\spring\mastery\spring_core\scopes
mkdir src\main\java\nd\mahn\spring\mastery\spring_core\injection
mkdir src\main\java\nd\mahn\spring\mastery\spring_core\events

REM ===== spring_jdbc =====
mkdir src\main\java\nd\mahn\spring\mastery\spring_jdbc\jdbctemplate
mkdir src\main\java\nd\mahn\spring\mastery\spring_jdbc\named_parameter

REM ===== hibernate_core =====
mkdir src\main\java\nd\mahn\spring\mastery\hibernate_core\entities
mkdir src\main\java\nd\mahn\spring\mastery\hibernate_core\session_factory
mkdir src\main\java\nd\mahn\spring\mastery\hibernate_core\crud_native

REM ===== spring_data_jpa =====
mkdir src\main\java\nd\mahn\spring\mastery\spring_data_jpa\repository
mkdir src\main\java\nd\mahn\spring\mastery\spring_data_jpa\service_layer

REM ===== spring_aop =====
mkdir src\main\java\nd\mahn\spring\mastery\spring_aop

REM ===== spring_web =====
mkdir src\main\java\nd\mahn\spring\mastery\spring_web\controllers
mkdir src\main\java\nd\mahn\spring\mastery\spring_web\dto
mkdir src\main\java\nd\mahn\spring\mastery\spring_web\validation
mkdir src\main\java\nd\mahn\spring\mastery\spring_web\exceptions

REM ===== spring_async =====
mkdir src\main\java\nd\mahn\spring\mastery\spring_async\config
mkdir src\main\java\nd\mahn\spring\mastery\spring_async\service

REM ===== spring_modules =====
mkdir src\main\java\nd\mahn\spring\mastery\spring_modules\security
mkdir src\main\java\nd\mahn\spring\mastery\spring_modules\caching
mkdir src\main\java\nd\mahn\spring\mastery\spring_modules\scheduling

REM ===== RESOURCES =====
type nul > src\main\resources\application.yml
type nul > src\main\resources\schema.sql
type nul > src\main\resources\hibernate.cfg.xml

REM ===== ROOT FILES =====
type nul > Dockerfile
type nul > docker-compose.yml
type nul > pom.xml

REM ===== MAIN CLASS =====
echo package nd.mahn.spring.mastery; > src\main\java\nd\mahn\spring\mastery\SpringMasteryApp.java

REM ===== BACK TO ROOT =====
cd ..

REM =====================================================
REM =============== JAVA CORE PROJECT ====================
REM =====================================================

mkdir java-core-project
cd java-core-project

REM ===== DOCTS =====
mkdir docts

type nul > docts\00-jvm-architecture.md
type nul > docts\01-basics-operators.md
type nul > docts\02-oop-deep-dive.md
type nul > docts\03-generics-collections.md
type nul > docts\04-java8-modern.md
type nul > docts\05-exception-handling.md
type nul > docts\06-concurrency-multithread.md
type nul > docts\07-io-serialization.md
type nul > docts\08-jdbc-technologies.md
type nul > docts\09-network-servlets.md

REM ===== SRC =====
mkdir src\main\java\nd\mahn\java\mastery
mkdir src\main\resources

REM ===== MODULES =====
mkdir src\main\java\nd\mahn\java\mastery\architecture
mkdir src\main\java\nd\mahn\java\mastery\oop_concepts\models
mkdir src\main\java\nd\mahn\java\mastery\collections_lab
mkdir src\main\java\nd\mahn\java\mastery\concurrency_lab
mkdir src\main\java\nd\mahn\java\mastery\io_exception
mkdir src\main\java\nd\mahn\java\mastery\database
mkdir src\main\java\nd\mahn\java\mastery\network_socket

REM ===== DESIGN PATTERN LAB =====

mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab

REM ===== CREATIONAL =====
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\creational\singleton\bad_case
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\creational\singleton\refactor
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\creational\singleton\use_case

mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\creational\factory\bad_case
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\creational\factory\refactor
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\creational\factory\use_case

mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\creational\builder\bad_case
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\creational\builder\refactor
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\creational\builder\use_case

REM ===== STRUCTURAL =====
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\structural\proxy\bad_case
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\structural\proxy\refactor
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\structural\proxy\use_case

mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\structural\adapter\bad_case
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\structural\adapter\refactor
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\structural\adapter\use_case

REM ===== BEHAVIORAL =====
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\behavioral\strategy\bad_case
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\behavioral\strategy\refactor
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\behavioral\strategy\use_case

mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\behavioral\observer\bad_case
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\behavioral\observer\refactor
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\behavioral\observer\use_case


REM ===== SOLID PRINCIPLES =====

mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid

mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\s_single_responsibility\bad_case
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\s_single_responsibility\refactor
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\s_single_responsibility\use_case

mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\o_open_closed\bad_case
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\o_open_closed\refactor
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\o_open_closed\use_case

mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\l_liskov_substitution\bad_case
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\l_liskov_substitution\refactor
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\l_liskov_substitution\use_case

mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\i_interface_segregation\bad_case
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\i_interface_segregation\refactor
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\i_interface_segregation\use_case

mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\d_dependency_inversion\bad_case
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\d_dependency_inversion\refactor
mkdir src\main\java\nd\mahn\java\mastery\design_pattern_lab\solid\d_dependency_inversion\use_case

echo Done! All projects created successfully.
pause