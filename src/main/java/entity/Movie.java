package entity;

import java.math.BigDecimal;

// 根据面向对象的编程思想，如果代码要操作数据表，那么就需要在Java中
// 创建出跟这个表对应的Java类
// 此时，这个Java类和表的关系是一一映射
public class Movie {    // 表的实体类
    private int id;
    private String movieName;
    private String movieImg;
    private BigDecimal price;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieImg() {
        return movieImg;
    }

    public void setMovieImg(String movieImg) {
        this.movieImg = movieImg;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    // 根据折扣计算价格
    public BigDecimal getPriceByDiscount(double discount){
        BigDecimal dis = new BigDecimal(discount);
        return this.price.multiply(dis).setScale(2,BigDecimal.ROUND_HALF_UP);
    }
}
