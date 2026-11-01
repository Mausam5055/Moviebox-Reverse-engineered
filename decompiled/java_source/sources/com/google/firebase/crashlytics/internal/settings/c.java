package com.google.firebase.crashlytics.internal.settings;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f31737a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f31738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f31739c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f31740d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f31742f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final double f31743g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f31744h;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f31745a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f31746b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f31747c;

        public a(boolean z10, boolean z11, boolean z12) {
            this.f31745a = z10;
            this.f31746b = z11;
            this.f31747c = z12;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f31748a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f31749b;

        public b(int i11, int i12) {
            this.f31748a = i11;
            this.f31749b = i12;
        }
    }

    public c(long j11, b bVar, a aVar, int i11, int i12, double d11, double d12, int i13) {
        this.f31739c = j11;
        this.f31737a = bVar;
        this.f31738b = aVar;
        this.f31740d = i11;
        this.f31741e = i12;
        this.f31742f = d11;
        this.f31743g = d12;
        this.f31744h = i13;
    }

    public boolean a(long j11) {
        return this.f31739c < j11;
    }
}
