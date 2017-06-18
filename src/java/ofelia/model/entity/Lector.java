
package ofelia.model.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;

/**
 *
 * @author isai
 */
@Entity
@IdClass(value = PersonaPeriodo.class)
public class Lector implements Serializable{
   @Id
   private int idperiodo;
   @Id
   private int idpersona;
   private int idturno;
   private int idtipo;
   private int estado_habil;
   @Column(length = 1)
   private char nivel;
   @Column(length = 1)
   private char grado;
   @Column(length = 5)
   private String seccion;

    public Lector() {
    }

    public Lector(int idperiodo, int idpersona, int idturno, int idtipo, int estado_habil, char nivel, char grado, String seccion) {
        this.idperiodo = idperiodo;
        this.idpersona = idpersona;
        this.idturno = idturno;
        this.idtipo = idtipo;
        this.estado_habil = estado_habil;
        this.nivel = nivel;
        this.grado = grado;
        this.seccion = seccion;
    }

    public String getSeccion() {
        return seccion;
    }

    public void setSeccion(String seccion) {
        this.seccion = seccion;
    }

    public int getIdperiodo() {
        return idperiodo;
    }

    public void setIdperiodo(int idperiodo) {
        this.idperiodo = idperiodo;
    }

    public int getIdpersona() {
        return idpersona;
    }

    public void setIdpersona(int idpersona) {
        this.idpersona = idpersona;
    }

    public int getIdturno() {
        return idturno;
    }

    public void setIdturno(int idturno) {
        this.idturno = idturno;
    }

    public int getIdtipo() {
        return idtipo;
    }

    public void setIdtipo(int idtipo) {
        this.idtipo = idtipo;
    }

    public int getEstado_habil() {
        return estado_habil;
    }

    public void setEstado_habil(int estado_habil) {
        this.estado_habil = estado_habil;
    }

    public char getNivel() {
        return nivel;
    }

    public void setNivel(char nivel) {
        this.nivel = nivel;
    }

    public char getGrado() {
        return grado;
    }

    public void setGrado(char grado) {
        this.grado = grado;
    }
   
    
   
}
