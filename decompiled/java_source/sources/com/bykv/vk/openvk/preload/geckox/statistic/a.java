package com.bykv.vk.openvk.preload.geckox.statistic;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Long, a> f20717a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, com.bykv.vk.openvk.preload.geckox.statistic.model.a> f20718b = new HashMap();

    a() {
    }

    static a a(long j11) {
        a aVar;
        Map<Long, a> map = f20717a;
        synchronized (map) {
            try {
                aVar = map.get(Long.valueOf(j11));
                if (aVar == null) {
                    aVar = new a();
                    map.put(Long.valueOf(j11), aVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    final com.bykv.vk.openvk.preload.geckox.statistic.model.a a(String str) {
        com.bykv.vk.openvk.preload.geckox.statistic.model.a aVar;
        synchronized (this.f20718b) {
            try {
                aVar = this.f20718b.get(str);
                if (aVar == null) {
                    aVar = new com.bykv.vk.openvk.preload.geckox.statistic.model.a();
                    this.f20718b.put(str, aVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    final List<com.bykv.vk.openvk.preload.geckox.statistic.model.a> a() {
        ArrayList arrayList;
        synchronized (this.f20718b) {
            arrayList = new ArrayList(this.f20718b.values());
        }
        return arrayList;
    }
}
