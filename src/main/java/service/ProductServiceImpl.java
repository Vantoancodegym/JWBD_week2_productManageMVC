package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{
    private static Map<Integer,Product> productList=new HashMap<>();
    static {
        productList.put(1,new Product(1,"Iphone",1000));
        productList.put(2,new Product(2,"Samsung",800));
        productList.put(3,new Product(3,"Oppo",500));
        productList.put(4,new Product(4,"Sony",700));
        productList.put(5,new Product(5,"Xiaomi",500));
        productList.put(6,new Product(6,"Vivo",400));
        productList.put(7,new Product(7,"Vsmart",500));
        productList.put(8,new Product(8,"Huawai",600));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productList.values());
    }

    @Override
    public void save(Product product) {
        productList.put(product.getId(),product);

    }

    @Override
    public Product findById(int id) {
        return productList.get(id);
    }

    @Override
    public Product findByName(String name) {
        List<Product> list=new ArrayList<>(productList.values());
        for (Product p:list) {
            if (p.getName().equals(name))return p;
        }
        return null;
    }

    @Override
    public void update(int id, Product product) {
        productList.replace(id,product);
    }

    @Override
    public void delete(int id) {
        productList.remove(id);

    }
}
