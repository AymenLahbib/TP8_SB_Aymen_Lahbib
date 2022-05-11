package com.aymen.departements.entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Parcours {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idPar;
	private String nomPar;
	private String descriptionPar;
	@JsonIgnore
	@OneToMany(mappedBy = "parcours")
	private List<Departement> departements;
	
	
	
	@Override
	public String toString() {
		return "Parcours [idPar=" + idPar + ", nomPar=" + nomPar + ", descriptionPar=" + descriptionPar
				+ ", departements=" + departements + "]";
	}
	
	public Long getIdPar() {
		return idPar;
	}

	public void setIdPar(Long idCat) {
		this.idPar = idCat;
	}

	public String getNomPar() {
		return nomPar;
	}

	public void setNomPar(String nomCat) {
		this.nomPar = nomCat;
	}

	public String getDescriptionPar() {
		return descriptionPar;
	}

	public void setDescriptionCat(String descriptionCat) {
		this.descriptionPar = descriptionCat;
	}
	
	
}
