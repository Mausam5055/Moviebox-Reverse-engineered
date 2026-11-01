package com.google.firebase.remoteconfig.internal;

/* JADX INFO: loaded from: classes4.dex */
public class s implements yc.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f32565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f32566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final yc.j f32567c;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f32568a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f32569b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private yc.j f32570c;

        private b() {
        }

        public s a() {
            return new s(this.f32568a, this.f32569b, this.f32570c);
        }

        b b(yc.j jVar) {
            this.f32570c = jVar;
            return this;
        }

        b c(int i11) {
            this.f32569b = i11;
            return this;
        }

        public b d(long j11) {
            this.f32568a = j11;
            return this;
        }
    }

    private s(long j11, int i11, yc.j jVar) {
        this.f32565a = j11;
        this.f32566b = i11;
        this.f32567c = jVar;
    }

    static b b() {
        return new b();
    }

    @Override // yc.i
    public int a() {
        return this.f32566b;
    }
}
