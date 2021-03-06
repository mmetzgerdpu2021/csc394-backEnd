package com.csc394.capStoneProject.entities;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="reviews")
@Data
public class Reviews implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "review_id")
    private Long id;

    // team_id
//    @Column(name = "team_id")
//    private Integer teamId;
    // user_id
   

    // rating
    @Column(name = "rating")
    private Integer rating;
    
    @Column(name = "comment")
    private String comment;
    

    @ManyToOne()
    @JoinColumn(name="team_id", referencedColumnName = "team_id", insertable = true, updatable = true )
    private Teams teams;
    
    @ManyToOne()
    @JoinColumn(name="user_id", referencedColumnName = "user_id", insertable = true, updatable = true )
    private User user;




}
