package com.amazonaws;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ResponseMetadata {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Map f18319a;

    public ResponseMetadata(Map map) {
        this.f18319a = map;
    }

    public String a() {
        return (String) this.f18319a.get("AWS_REQUEST_ID");
    }

    public String toString() {
        Map map = this.f18319a;
        return map == null ? "{}" : map.toString();
    }
}
