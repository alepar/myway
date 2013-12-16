package ru.myway.controller;

import com.strategicgains.restexpress.Request;
import com.strategicgains.restexpress.Response;

public class SampleController {

	public Object create(Request request, Response response) {
		return null;
	}

	public Object read(Request request, Response response) {
		return request.getHeader("sampleId");
	}

	public void update(Request request, Response response) {
		response.setResponseNoContent();
	}

	public void delete(Request request, Response response) {
		response.setResponseNoContent();
	}
}
