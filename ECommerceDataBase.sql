create database ECommerce;
use ECommerce;

drop table product;
drop table productcategory;
create table productcategory(categoryid bigint primary key ,categoryname varchar(255));
create table product(id bigint primary key,sku varchar(255),name varchar(255),description varchar(255),
					unitprice decimal(13,2),imageurl text,active bit(1),unitsinstock int,
                    datecreated date,lastupdated date,categoryid bigint,
                    foreign key(categoryid) references productcategory(categoryid));
                    
                  
describe productcategory;
insert into productcategory values(1,"Electronics"),(2,"Books");
insert into product values(100,"SKU of Book","The Secret","Its About Law Of Attraction",
							1000,"https://th.bing.com/th/id/R.ba51a33b3dd995a166b40a2ded428119?rik=O5h%2fCpqarQjq3Q&riu=http%3a%2f%2fd28hgpri8am2if.cloudfront.net%2fbook_images%2fonix%2fcvr9781847370297%2fthe-secret-9781847370297_hr.jpg&ehk=IY27ZEgpHMAt%2b7YOlCJyC5tXwnLwyR8JpBKPyFtUY%2f0%3d&risl=&pid=ImgRaw&r=0",1,20,"1999-10-12","2022-06-25",2),
                            (101,"SKU of Electonics","Washing Machine","Its A Washing Machine",
							37000,"https://www.bing.com/images/search?view=detailV2&ccid=PeR%2fxjZr&id=A0092A5E7356065C97248116375057E4C2E5CF39&thid=OIP.PeR_xjZrSPWPQWrSSA59PAHaJ4&mediaurl=https%3a%2f%2fwww.viewclickbuy.co.uk%2fwp-content%2fuploads%2f2019%2f01%2f111629580.jpg&exph=1440&expw=1080&q=washing+machine&simid=607990807715515189&FORM=IRPRST&ck=BF46587D5D375831A384AC9295B117A7&selectedIndex=0",1,5,"2000-10-12","2010-06-25",1);
select * from product;       

delete from product where id = 234;                     
select * from productcategory;
describe product;