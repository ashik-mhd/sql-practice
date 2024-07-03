1. write a query to retrive all borrowing records along with member details and book details, soreted by borrowing date in descending order.

Query:
select * from borrowingrecords br left join members m on br.memberid = m.memberid left join books b on br.bookid = b.bookidorder by br.borrowdate desc;

Output:

RecId  BkId  MemId  BrwDate     RtnDate     MemId  FName  LName  Phone       Email             MemDate     BkId  Title                                 Author         Genre            PubYear
1      3     1      2024-07-01  2024-07-10  1      Ashik  S      123456789   ashik@gmail.com    2024-07-01  3     To Kill a Mockingbird                 Harper Lee     S. Gothic        1960
2      1     1      2024-07-01  2024-07-15  1      Ashik  S      123456789   ashiiii@gmail.com  2024-07-01  1     God of Small Things                   A. Roy         Fiction          1997
3      4     2      2024-06-28  2024-06-30  2      Anathu S      123456789   anathu@gmail.com   2024-06-30  4     Harry Potter and the Philosopher's  S.J.K. Rowling   Fantasy          1997
5      2     3      2024-06-26  2024-07-03  3      Anad   S      432156789   anad@gmail.com     2024-07-02  2     1984                                  G. Orwell      Fantasy          1949
4      3     4      2024-06-14  2024-07-01  4      Ashil  S      987564321   ashhhh@gmail.com   2024-07-01  3     To Kill a Mockingbird                 Harper Lee     S. Gothic        1960


2.write a query to find the most borrowed book and the number of times it has been borrowed

Query:
select b.bookid, b.title, count(br.bookid) as borrowcount from borrowingrecords br left join books b on br.bookid = b.bookid group by b.bookid, b.title order by borrowcount desc limit 1;

Output:

bookid           title                    borrowcount
3                To Kill a Mockingbird    2


3.write a query to retrive the list of books that have never been borrowed

Query:
select b.* from books b left join borrowingrecords br on b.bookid = br.bookid where br.bookid is null;

Output:

Bookid        title                Author                  Genre                 PublishedYear
5       Pride and Prejudice     Jane Austen                Classic Literature   1813
6       The little price        Anthoine de Saint-Exupery  Fantasy              1943
