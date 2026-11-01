package com.cloud.tmc.kernel.bridge.model;

import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.gson.Gson;
import com.google.gson.internal.LinkedTreeMap;
import java.io.Serializable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class ProtocolData<T> implements Serializable {
    private String abilityName;
    private String callbackId;
    private T dataJson;
    private String renderId = "";
    private String source;
    private String target;
    private long time;

    public static class ApiDataJson implements Serializable {
        private String args;
        private String methodName;

        public ApiDataJson(String str, String str2) {
            this.methodName = str;
            this.args = str2;
        }

        public static ApiDataJson parse(LinkedTreeMap<String, String> linkedTreeMap) {
            return new ApiDataJson(linkedTreeMap.get("methodName"), linkedTreeMap.get(NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS));
        }

        public String getArgs() {
            return this.args;
        }

        public String getMethodName() {
            return this.methodName;
        }

        public void setArgs(String str) {
            this.args = str;
        }

        public void setMethodName(String str) {
            this.methodName = str;
        }
    }

    public static class ConsumeTimeDataJson implements Serializable {
        private HashMap<String, long[]> dataJson;

        ConsumeTimeDataJson(HashMap<String, long[]> map) {
            this.dataJson = map;
        }

        public static ConsumeTimeDataJson parse(LinkedTreeMap<String, Object> linkedTreeMap) {
            try {
                return new ConsumeTimeDataJson((HashMap) new Gson().fromJson(linkedTreeMap.get("dataJson").toString(), (Class) HashMap.class));
            } catch (Exception unused) {
                HashMap map = new HashMap();
                map.put(EventConstants.KEY_TIME, new long[0]);
                return new ConsumeTimeDataJson(map);
            }
        }

        public HashMap<String, long[]> getDataJson() {
            return this.dataJson;
        }

        public void setDataJson(HashMap<String, long[]> map) {
            this.dataJson = map;
        }
    }

    public static class DispatchEventDataJson implements Serializable {
        private String dataJson;
        private String eventName;

        public DispatchEventDataJson(String str, String str2) {
            this.eventName = str;
            this.dataJson = str2;
        }

        public static DispatchEventDataJson parse(LinkedTreeMap<String, String> linkedTreeMap) {
            return new DispatchEventDataJson(linkedTreeMap.get(EventConstants.KEY_EVENT_NAME), linkedTreeMap.get("dataJson"));
        }

        public String getDataJson() {
            return this.dataJson;
        }

        public String getEventName() {
            return this.eventName;
        }

        public void setDataJson(String str) {
            this.dataJson = str;
        }

        public void setEventName(String str) {
            this.eventName = str;
        }
    }

    public static class LifeCycleDataJson implements Serializable {
        private String lifecycleName;

        public LifeCycleDataJson(String str) {
            this.lifecycleName = str;
        }

        public static LifeCycleDataJson parse(LinkedTreeMap<String, String> linkedTreeMap) {
            return new LifeCycleDataJson(linkedTreeMap.get("lifecycleName"));
        }

        public String getLifecycleName() {
            return this.lifecycleName;
        }

        public void setLifecycleName(String str) {
            this.lifecycleName = str;
        }
    }

    public static class NativeComponentDataJson implements Serializable {
        private String args;
        private String callbackId;
        private String methodName;

        public NativeComponentDataJson(String str, String str2, String str3) {
            this.methodName = str;
            this.args = str2;
            this.callbackId = str3;
        }

        public static NativeComponentDataJson parse(LinkedTreeMap<String, String> linkedTreeMap) {
            return new NativeComponentDataJson(linkedTreeMap.get("methodName"), linkedTreeMap.get(NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS), linkedTreeMap.get("callbackId"));
        }

        public String getArgs() {
            return this.args;
        }

        public String getCallbackId() {
            return this.callbackId;
        }

        public String getMethodName() {
            return this.methodName;
        }

        public void setArgs(String str) {
            this.args = str;
        }

        public void setCallbackId(String str) {
            this.callbackId = str;
        }

        public void setMethodName(String str) {
            this.methodName = str;
        }
    }

    public static class OnMessageDataJson implements Serializable {
        private String dataJson;

        public OnMessageDataJson(String str) {
            this.dataJson = str;
        }

        public static OnMessageDataJson parse(LinkedTreeMap<String, String> linkedTreeMap) {
            return new OnMessageDataJson(linkedTreeMap.get("dataJson"));
        }

        public String getDataJson() {
            return this.dataJson;
        }

        public void setDataJson(String str) {
            this.dataJson = str;
        }
    }

    public ProtocolData(String str, String str2, String str3, long j11, String str4, T t11) {
        this.abilityName = str;
        this.target = str2;
        this.source = str3;
        this.time = j11;
        this.callbackId = str4;
        this.dataJson = t11;
    }

    public String getAbilityName() {
        return this.abilityName;
    }

    public String getCallbackId() {
        return this.callbackId;
    }

    public T getDataJson() {
        return this.dataJson;
    }

    public String getRenderId() {
        return this.renderId;
    }

    public String getSource() {
        return this.source;
    }

    public String getTarget() {
        return this.target;
    }

    public long getTime() {
        return this.time;
    }

    public void setAbilityName(String str) {
        this.abilityName = str;
    }

    public void setCallbackId(String str) {
        this.callbackId = str;
    }

    public void setDataJson(T t11) {
        this.dataJson = t11;
    }

    public void setRenderId(String str) {
        this.renderId = str;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setTarget(String str) {
        this.target = str;
    }

    public void setTime(long j11) {
        this.time = j11;
    }
}
