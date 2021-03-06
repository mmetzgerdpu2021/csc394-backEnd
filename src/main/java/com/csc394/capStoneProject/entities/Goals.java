package com.csc394.capStoneProject.entities;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "goals")
@Data
public class Goals implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "goal_id")
    private Long id;


    @Column(name = "goal_discription")
    private String discription;

    @Column(name = "goal_title")
    private String title;
    
    @Column(name="grades")
    private Integer grades;

    @Column(name="status")
    private String status;

//
    @ManyToOne()
    @JoinColumn(name="team_id", referencedColumnName = "team_id",  insertable = true, updatable = true)
    private Teams teams;



}
