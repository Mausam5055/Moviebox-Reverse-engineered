package com.bykv.vk.openvk.preload.b;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Class<? extends d> f20550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.bykv.vk.openvk.preload.b.b.a f20551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f20552c;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Class<? extends d> f20553a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.bykv.vk.openvk.preload.b.b.a f20554b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Object[] f20555c;

        private a() {
        }

        public static a a() {
            return new a();
        }

        public final a a(com.bykv.vk.openvk.preload.b.b.a aVar) {
            this.f20554b = aVar;
            return this;
        }

        public final a a(Class<? extends d> cls) {
            if (cls == null) {
                throw new IllegalArgumentException("interceptor class == null");
            }
            this.f20553a = cls;
            return this;
        }

        public final a a(Object... objArr) {
            this.f20555c = objArr;
            return this;
        }

        public final h b() {
            return new h(this, (byte) 0);
        }
    }

    private h(a aVar) {
        this.f20550a = aVar.f20553a;
        this.f20551b = aVar.f20554b;
        this.f20552c = aVar.f20555c;
        if (this.f20550a == null) {
            throw new IllegalArgumentException("Interceptor class == null");
        }
    }

    /* synthetic */ h(a aVar, byte b11) {
        this(aVar);
    }

    final com.bykv.vk.openvk.preload.b.b.a a() {
        return this.f20551b;
    }

    final Object[] b() {
        return this.f20552c;
    }
}
