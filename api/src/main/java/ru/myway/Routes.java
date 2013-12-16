package ru.myway;

import org.jboss.netty.handler.codec.http.HttpMethod;

import com.strategicgains.restexpress.RestExpress;
import ru.myway.config.Configuration;

public class Routes {

    private Routes() { }

    public static void define(Configuration config, RestExpress server) {
		server.uri("/api/helloworld/{sampleId}.{format}", config.getSampleController())
			.method(HttpMethod.GET, HttpMethod.PUT, HttpMethod.DELETE)
			.name("hello world");

//		server.uri("/your/collection/route/here.{format}", config.getSampleController())
//			.action("readAll", HttpMethod.GET)
//			.method(HttpMethod.POST)
//			.name(Constants.Routes.SAMPLE_COLLECTION);
// or...
//		server.regex("/some.regex", config.getRouteController());
    }
}
