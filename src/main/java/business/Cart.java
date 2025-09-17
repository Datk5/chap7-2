package business;

import java.io.Serializable;
import java.util.ArrayList;

public class Cart implements Serializable {
    private ArrayList<LineItem> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public ArrayList<LineItem> getItems() { return items; }

    public void addItem(LineItem item) {
        for (LineItem line : items) {
            if (line.getProduct().getCode().equals(item.getProduct().getCode())) {
                line.setQuantity(line.getQuantity() + item.getQuantity());
                return;
            }
        }
        items.add(item);
    }

    public void updateItem(String code, int quantity) {
        for (LineItem line : items) {
            if (line.getProduct().getCode().equals(code)) {
                if (quantity > 0) {
                    line.setQuantity(quantity);
                } else {
                    removeItem(code);
                }
                break;
            }
        }
    }

    public void removeItem(String code) {
        items.removeIf(line -> line.getProduct().getCode().equals(code));
    }
}
