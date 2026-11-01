package com.android.volley;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface c {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f19220a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f19221b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f19222c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f19223d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f19224e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f19225f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Map f19226g = Collections.emptyMap();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List f19227h;

        public boolean a() {
            return b(System.currentTimeMillis());
        }

        boolean b(long j11) {
            return this.f19224e < j11;
        }

        boolean c(long j11) {
            return this.f19225f < j11;
        }
    }

    a a(String str);

    void b(String str, boolean z10);

    void c(String str, a aVar);

    void initialize();
}
