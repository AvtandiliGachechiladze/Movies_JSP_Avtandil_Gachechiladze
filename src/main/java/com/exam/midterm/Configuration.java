package com.exam.midterm;

public class Configuration {
    public static String  url = "jdbc:mysql://localhost:3306/MovieDB";
    /* use this one in case of problems with GlassFish server
    public static String  url = "jdbc:mysql://localhost:3306/MovieDB?useSSL=false&allowPublicKeyRetrieval=true";
    */
    public static String  driver = "com.mysql.jdbc.Driver";
    public static String  user = "root";
    public static String  password = "pwd";
}
