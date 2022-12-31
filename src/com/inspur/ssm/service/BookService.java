package com.inspur.ssm.service;

//书的业务
import com.inspur.ssm.pojo.Books;

import javax.annotation.Resource;
import java.util.List;

@Resource
public interface BookService {

    //增加一本书
    int addBook(Books books);

    //删除一本书
    int deleteBookById(int id);


    //更新一本书
    int updateBook(Books books);

    //查询一本书
    Books queryBookById(int id);


    //查询全部的数
    List<Books> queryAllBook();

    Books queryBookByName(String bookName);


}
