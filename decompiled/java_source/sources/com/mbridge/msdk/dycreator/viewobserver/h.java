package com.mbridge.msdk.dycreator.viewobserver;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class h extends a {
    public void a(Object obj) {
        g gVar;
        ConcurrentHashMap<Integer, Object> concurrentHashMap = this.f34920b;
        if (concurrentHashMap == null || concurrentHashMap.size() <= 0) {
            return;
        }
        for (Map.Entry<Integer, Object> entry : this.f34920b.entrySet()) {
            if (entry != null) {
                try {
                    if (entry.getValue() != null && (gVar = (g) entry.getValue()) != null) {
                        gVar.a(obj);
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
    }
}
