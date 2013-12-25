package ru.myway.controller;

import com.strategicgains.restexpress.Request;
import com.strategicgains.restexpress.Response;

@SuppressWarnings("UnusedDeclaration")
public class SampleController {

	public Object create(Request request, Response response) {
		return null;
	}

	public Object read(Request request, Response response) {
        return new Holder(request.getHeader("sampleId") + " world");
	}

	public void update(Request request, Response response) {
		response.setResponseNoContent();
	}

	public void delete(Request request, Response response) {
		response.setResponseNoContent();
	}

    private static class Holder {
        private final String name;

        private Holder(String name) {
            this.name = name;
        }
    }
}
