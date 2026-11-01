package com.cloud.tmc.kernel.proxy.eventcenter;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public interface IEvent {
    Map<String, Object> getData();

    String getName();

    String getRenderId();

    void setData(Map<String, Object> map);

    void setRenderId(String str);
}
