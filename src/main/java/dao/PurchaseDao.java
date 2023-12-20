package dao;

import entity.Purchase;

import java.util.List;

public class PurchaseDao {
    public List<Purchase> getPurchase(String sql){
        return jdbc2.selectList(Purchase.class,sql);
    }
}
