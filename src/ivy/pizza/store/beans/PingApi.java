package ivy.pizza.store.beans;

import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import ch.ivyteam.ivy.environment.Ivy;

// http://localhost:8081/ivy/api/phatvu-pizza-store/ping
// http://localhost:8081/ivy/api/designer/ping
// https://developer.axonivy.com/doc/8.0/concepts/3rd-party-integration/restapi.html#provide-own-rest-services

@Path("ping")
public class PingApi {
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response ping() {
		Ivy.log().info("Ping reached at " + System.currentTimeMillis());
		
		// TODO double check why this is public???
		
		
		Map<String, String> data = new HashMap<>();
		data.put("status", "UP");
		return Response.ok(data).build();
	}
}
