package bitc.fullstack405.server_intravel.repository;

import bitc.fullstack405.server_intravel.entity.TravelEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface TravelRepository extends JpaRepository<TravelEntity, Long> {
    List<TravelEntity> findByTravComplete(char travComplete);
}
