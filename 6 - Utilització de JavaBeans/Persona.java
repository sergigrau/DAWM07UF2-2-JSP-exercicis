/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package daw2;

/**
 *
 * @author sergi
 */
public class Persona {
    private String nom;
    private int numFills;
    private boolean casat;

    public boolean isCasat() {
        return casat;
    }

    public void setCasat(boolean casat) {
        this.casat = casat;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getNumFills() {
        return numFills;
    }

    public void setNumFills(int numFills) {
        this.numFills = numFills;
    }

    public Persona() {
    }
    
}
