package com.cloud.hisavana.sdk;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class c5 extends n2 implements Map {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    t4 f21729h;

    class a extends t4 {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.t4
        protected int a(Object obj) {
            return c5.this.c(obj);
        }

        @Override // com.cloud.hisavana.sdk.t4
        protected Object b(int i11, int i12) {
            return c5.this.f22746b[(i11 << 1) + i12];
        }

        @Override // com.cloud.hisavana.sdk.t4
        protected Object c(int i11, Object obj) {
            return c5.this.f(i11, obj);
        }

        @Override // com.cloud.hisavana.sdk.t4
        protected void d() {
            c5.this.clear();
        }

        @Override // com.cloud.hisavana.sdk.t4
        protected void e(int i11) {
            c5.this.m(i11);
        }

        @Override // com.cloud.hisavana.sdk.t4
        protected void f(Object obj, Object obj2) {
            c5.this.put(obj, obj2);
        }

        @Override // com.cloud.hisavana.sdk.t4
        protected int j(Object obj) {
            return c5.this.j(obj);
        }

        @Override // com.cloud.hisavana.sdk.t4
        protected Map k() {
            return c5.this;
        }

        @Override // com.cloud.hisavana.sdk.t4
        protected int n() {
            return c5.this.f22747c;
        }
    }

    private t4 o() {
        if (this.f21729h == null) {
            this.f21729h = new a();
        }
        return this.f21729h;
    }

    @Override // java.util.Map
    public Set entrySet() {
        return o().p();
    }

    @Override // java.util.Map
    public Set keySet() {
        return o().q();
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        k(this.f22747c + map.size());
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection values() {
        return o().r();
    }
}
