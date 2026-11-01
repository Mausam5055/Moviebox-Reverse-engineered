package com.bykv.vk.openvk.preload.geckox.a.a;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f20583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final c f20584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f20585c;

    /* JADX INFO: renamed from: com.bykv.vk.openvk.preload.geckox.a.a.a$a, reason: collision with other inner class name */
    public static final class C0192a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f20586a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b f20587b = b.f20589a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private c f20588c;

        public final C0192a a() {
            this.f20586a = 20;
            return this;
        }

        public final C0192a a(b bVar) {
            if (bVar == null) {
                bVar = b.f20589a;
            }
            this.f20587b = bVar;
            return this;
        }

        public final a b() {
            return new a(this, (byte) 0);
        }
    }

    private a(C0192a c0192a) {
        this.f20583a = c0192a.f20586a;
        this.f20585c = c0192a.f20587b;
        this.f20584b = c0192a.f20588c;
    }

    /* synthetic */ a(C0192a c0192a, byte b11) {
        this(c0192a);
    }

    public final b a() {
        return this.f20585c;
    }
}
