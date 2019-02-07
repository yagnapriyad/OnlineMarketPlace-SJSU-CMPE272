package onlinemarketplace.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.security.access.prepost.PreAuthorize;

import org.springframework.web.bind.annotation.RequestMapping;

import onlinemarketplace.model.Task;
import onlinemarketplace.service.TaskService;

@Controller
public class MainController {

	@Autowired
	private TaskService taskService;
	
	@PreAuthorize("hasAuthority('Everyone')")
	@GetMapping("/")
	public String welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcome";
	}
	
	@PreAuthorize("hasAuthority('admin')")
	@RequestMapping("/admin-user")
	public String home(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "index";
	}
	
	@GetMapping("/all-tasks")
	@PreAuthorize("hasAuthority('admin')")
	public String allTasks(HttpServletRequest request) {
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "index";
	}

	@GetMapping("/new-task")
	@PreAuthorize("hasAuthority('admin')")
	public String newTask(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_NEW");
		return "index";
	}

	@PostMapping("/save-task")
	@PreAuthorize("hasAuthority('admin')")
	public String saveTask(@ModelAttribute Task task, BindingResult bindingResult, HttpServletRequest request) {
		task.setDateCreated(new Date());
		taskService.save(task);
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "index";
	}

	@GetMapping("/update-task")
	@PreAuthorize("hasAuthority('admin')")
	public String updateTask(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("task", taskService.findTask(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "index";
	}

	@GetMapping("/delete-task")
	@PreAuthorize("hasAuthority('admin')")
	public String deleteTask(@RequestParam int id, HttpServletRequest request) {
		taskService.delete(id);
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "index";
	}
	
	
	
	/* JSP Page Navigation start */
	
	@PreAuthorize("hasAuthority('user')")
	@RequestMapping(value = "/dev-user")
	public String viewProjectDetails() {
		return "viewProjectDetails";
	}
	
	@RequestMapping(value = "/developerDetails")
	@PreAuthorize("hasAuthority('user')")
	public String developerDetails() {
		return "developerDetails";
	}
	
	@RequestMapping(value = "/thankYouPage",  method = RequestMethod.GET)
	@PreAuthorize("hasAuthority('user')")
	public String thankYouPage() {
		return "thankYouPage";
		
	}

	/* JSP Page Navigation end */
	
	/* Get all Project view start */
	@GetMapping("/all-project")
	public String allProject(HttpServletRequest request) {
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "viewProjectDetails";
	}
	/* Get all Project view end */

	
}
