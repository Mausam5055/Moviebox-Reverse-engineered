package com.mbridge.msdk.preload;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public void a(Map<String, Object> map) {
    }

    public void a(Map<String, Object> map, int i11) {
        try {
            com.mbridge.msdk.mbnative.service.a.class.getMethod("preload", Map.class, Integer.TYPE).invoke(com.mbridge.msdk.mbnative.service.a.class.newInstance(), map, Integer.valueOf(i11));
        } catch (Exception unused) {
        }
    }

    public void b(Map<String, Object> map) {
    }
}
