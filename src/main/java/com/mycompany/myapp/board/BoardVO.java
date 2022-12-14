package com.mycompany.myapp.board;

import java.util.Date;

public class BoardVO {
    private int seq;
    private String category;
    private String fdname;

    private int price;
    private String writer;
    private int star;
    private String tel;
    private String review;
    private Date wdate;
    private String photo;

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getFdname() {return fdname;}

    public void setFdname(String fdname) {this.fdname = fdname;}

    public int getPrice() {return price;}

    public void setPrice(int price) {this.price = price;}

    public int getStar() {return star;}

    public void setStar(int star) {this.star = star;}

    public String getTel() {return tel;}

    public void setTel(String tel) {this.tel = tel;}

    public String getReview() {return review;}

    public void setReview(String review) {this.review = review;}

    public String getWriter() {return writer;}

    public void setWriter(String writer) {this.writer = writer;}

    public Date getWdate() {return wdate;}

    public void setWdate(Date wdate) {this.wdate = wdate;}

    public String getPhoto() {return photo;}

    public void setPhoto(String photo) {this.photo = photo;}
}
