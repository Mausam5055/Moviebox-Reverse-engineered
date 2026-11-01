package com.bykv.vk.openvk.preload.a;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f20525g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.bykv.vk.openvk.preload.a.b.c f20519a = com.bykv.vk.openvk.preload.a.b.c.f20426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private q f20520b = q.f20533a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f20521c = b.f20310a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Type, f<?>> f20522d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<s> f20523e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<s> f20524f = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f20526h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f20527i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f20528j = true;

    public final d a() {
        a aVar;
        a aVar2;
        a aVar3;
        ArrayList arrayList = new ArrayList(this.f20523e.size() + this.f20524f.size() + 3);
        arrayList.addAll(this.f20523e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f20524f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        String str = this.f20525g;
        int i11 = this.f20526h;
        int i12 = this.f20527i;
        if (str == null || "".equals(str.trim())) {
            if (i11 != 2 && i12 != 2) {
                a aVar4 = new a(Date.class, i11, i12);
                a aVar5 = new a(Timestamp.class, i11, i12);
                a aVar6 = new a(java.sql.Date.class, i11, i12);
                aVar = aVar4;
                aVar2 = aVar5;
                aVar3 = aVar6;
            }
            return new d(this.f20519a, this.f20521c, this.f20522d, this.f20528j, this.f20520b, arrayList);
        }
        aVar = new a(Date.class, str);
        aVar2 = new a(Timestamp.class, str);
        aVar3 = new a(java.sql.Date.class, str);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Date.class, aVar));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Timestamp.class, aVar2));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(java.sql.Date.class, aVar3));
        return new d(this.f20519a, this.f20521c, this.f20522d, this.f20528j, this.f20520b, arrayList);
    }

    public final e a(Type type, Object obj) {
        com.bykv.vk.openvk.preload.falconx.a.a.a(true);
        this.f20523e.add(com.bykv.vk.openvk.preload.a.b.a.m.a(com.bykv.vk.openvk.preload.a.c.a.a(type), (r) obj));
        return this;
    }
}
