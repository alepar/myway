package ru.myway.serialization;

import com.fasterxml.jackson.databind.module.SimpleModule;
import com.strategicgains.restexpress.serialization.json.DefaultJsonProcessor;

public class JsonSerializationProcessor extends DefaultJsonProcessor {
	@Override
    protected void initializeModule(SimpleModule module) {
	    super.initializeModule(module);
	    
	    // add your own [de]serializers here.
	    // module.addDeserializer(type, deser);
    }
}
