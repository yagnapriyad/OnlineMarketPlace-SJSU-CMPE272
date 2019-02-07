package onlinemarketplace.dao;

import org.springframework.data.repository.CrudRepository;

import onlinemarketplace.model.Task;

public interface TaskRepository extends CrudRepository<Task, Integer>{

}
