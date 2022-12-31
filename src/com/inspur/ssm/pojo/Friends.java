package com.inspur.ssm.pojo;

public class Friends {
    private int ID;
    private String name;
    private int age;
    private String hobby;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }

    @Override
    public String toString() {
        return "Friends{" +
                "ID=" + ID +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", hobby='" + hobby + '\'' +
                '}';
    }

    public Friends() {
        super();
    }

    public Friends(int ID, String name, int age, String hobby) {
        this.ID = ID;
        this.name = name;
        this.age = age;
        this.hobby = hobby;
    }
}
