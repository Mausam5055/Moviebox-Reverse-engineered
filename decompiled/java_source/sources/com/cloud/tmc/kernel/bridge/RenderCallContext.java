package com.cloud.tmc.kernel.bridge;

import com.cloud.tmc.kernel.render.IRender;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public class RenderCallContext {
    public static final String TYPE_CALL = "call";
    public static final String TYPE_CALLBACK = "callback";
    private String action;
    private String eventId;
    private boolean keep;
    private JsonObject param;
    private IRender target;
    private String type;

    public static class Builder {
        private String action;
        private String eventId = "native_" + System.currentTimeMillis();
        private boolean keep;
        private JsonObject param;
        private IRender target;
        private String type;

        public Builder(IRender iRender) {
            this.target = iRender;
        }

        public Builder action(String str) {
            this.action = str;
            return this;
        }

        public RenderCallContext build() {
            return new RenderCallContext(this);
        }

        public Builder eventId(String str) {
            this.eventId = str;
            return this;
        }

        public Builder keep(boolean z10) {
            this.keep = z10;
            return this;
        }

        public Builder param(JsonObject jsonObject) {
            this.param = jsonObject;
            return this;
        }

        public Builder type(String str) {
            this.type = str;
            return this;
        }
    }

    public RenderCallContext(Builder builder) {
        this.eventId = builder.eventId;
        this.action = builder.action;
        JsonObject jsonObject = builder.param;
        this.param = jsonObject;
        if (jsonObject == null) {
            this.param = new JsonObject();
        }
        this.type = builder.type;
        this.keep = builder.keep;
        this.target = builder.target;
    }

    public static Builder newBuilder(IRender iRender) {
        return new Builder(iRender);
    }

    public String getAction() {
        return this.action;
    }

    public String getEventId() {
        return this.eventId;
    }

    public boolean getKeep() {
        return this.keep;
    }

    public JsonObject getParam() {
        return this.param;
    }

    public IRender getTarget() {
        return this.target;
    }

    public String getType() {
        return this.type;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setEventId(String str) {
        this.eventId = str;
    }

    public void setKeep(boolean z10) {
        this.keep = z10;
    }

    public void setParam(JsonObject jsonObject) {
        this.param = jsonObject;
    }

    public void setType(String str) {
        this.type = str;
    }
}
