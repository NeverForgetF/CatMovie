package service;

import dao.PurchaseDao;
import entity.Purchase;

import java.util.List;

public class PurchaseService {
    PurchaseDao purchaseDao=new PurchaseDao();
    public List<Purchase> getPurchase(String sql){
        return purchaseDao.getPurchase(sql);
    }
}
