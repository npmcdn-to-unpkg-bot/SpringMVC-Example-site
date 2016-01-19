package Model;

import javax.persistence.*;

/**
 * Created by dexter on 1/19/16.
 */
@Entity
@Table(name = "studentaddress")
public class StudentAddress {

    @Id
    @GeneratedValue
    @Column(name = "address_id", nullable = false)
    private long address_id;

    @Column(name = "address_detail")
    private String address_detail;

    public long getAddress_id() {
        return address_id;
    }

    public void setAddress_id(long address_id) {
        this.address_id = address_id;
    }

    public String getAddress_detail() {
        return address_detail;
    }

    public void setAddress_detail(String address_detail) {
        this.address_detail = address_detail;
    }
}
