package com.example.repository;

import com.example.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
/**
 * Created by zhs on 2017/4/25.
 */
@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
}
