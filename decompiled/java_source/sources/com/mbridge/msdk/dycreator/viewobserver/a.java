package com.mbridge.msdk.dycreator.viewobserver;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a extends com.mbridge.msdk.dycreator.observable.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<Object> f34919a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ConcurrentHashMap<Integer, Object> f34920b = new ConcurrentHashMap<>();

    public synchronized void a() {
        this.f34920b.clear();
    }

    public synchronized void a(Object obj, int i11) {
        if (obj != null) {
            ConcurrentHashMap<Integer, Object> concurrentHashMap = this.f34920b;
            if (concurrentHashMap != null && !concurrentHashMap.containsValue(obj)) {
                this.f34920b.put(Integer.valueOf(i11), obj);
            }
        }
    }
}
