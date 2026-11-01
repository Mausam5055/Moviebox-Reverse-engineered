package com.cloud.tmc.kernel.coreimpl.eventcenter;

import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultEvent implements IEvent {
    private Map<String, Object> data;
    private final String name;
    private String renderId;

    public DefaultEvent(String str) {
        this.name = str;
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEvent
    public Map<String, Object> getData() {
        return this.data;
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEvent
    public String getName() {
        return this.name;
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEvent
    public String getRenderId() {
        return this.renderId;
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEvent
    public void setData(Map<String, Object> map) {
        this.data = map;
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEvent
    public void setRenderId(String str) {
        this.renderId = str;
    }
}
