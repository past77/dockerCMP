package app.repositiry;

import app.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsrRepository extends CrudRepository<User, Long> {
}