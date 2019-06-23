/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Aluno
 */
@Entity
@Table(name = "meiocontato")
@NamedQueries({
    @NamedQuery(name = "MeioContato.findAll", query = "SELECT m FROM MeioContato m")})
public class MeioContato implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idMeioContato")
    private Integer idMeioContato;
    @Basic(optional = false)
    @Column(name = "tipoContato")
    private String tipoContato;
    @Basic(optional = false)
    @Column(name = "conteudo")
    private String conteudo;
    @JoinColumn(name = "idContato", referencedColumnName = "idContato")
    @ManyToOne(optional = false)
    private Contato idContato;

    public MeioContato() {
    }

    public MeioContato(Integer idMeioContato) {
        this.idMeioContato = idMeioContato;
    }

    public MeioContato(Integer idMeioContato, String tipoContato, String conteudo) {
        this.idMeioContato = idMeioContato;
        this.tipoContato = tipoContato;
        this.conteudo = conteudo;
    }

    public Integer getIdMeioContato() {
        return idMeioContato;
    }

    public void setIdMeioContato(Integer idMeioContato) {
        this.idMeioContato = idMeioContato;
    }

    public String getTipoContato() {
        return tipoContato;
    }

    public void setTipoContato(String tipoContato) {
        this.tipoContato = tipoContato;
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public Contato getIdContato() {
        return idContato;
    }

    public void setIdContato(Contato idContato) {
        this.idContato = idContato;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idMeioContato != null ? idMeioContato.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MeioContato)) {
            return false;
        }
        MeioContato other = (MeioContato) object;
        if ((this.idMeioContato == null && other.idMeioContato != null) || (this.idMeioContato != null && !this.idMeioContato.equals(other.idMeioContato))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dominio.MeioContato[ idMeioContato=" + idMeioContato + " ]";
    }
    
}
