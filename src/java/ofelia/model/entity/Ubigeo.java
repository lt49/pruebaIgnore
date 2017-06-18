package ofelia.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Ubigeo {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idubigeo;
    private String nombre;
    private int ubigeo_sup;

    public Ubigeo() {
    }

    public int getIdubigeo() {
        return idubigeo;
    }

    public void setIdubigeo(int idubigeo) {
        this.idubigeo = idubigeo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getUbigeo_sup() {
        return ubigeo_sup;
    }

    public void setUbigeo_sup(int ubigeo_sup) {
        this.ubigeo_sup = ubigeo_sup;
    }
    
    
}
