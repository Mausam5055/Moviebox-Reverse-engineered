package com.google.net.cronet.okhttptransport;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c {

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final c f32775a = new a();

        class a extends c {
            a() {
                super();
            }

            @Override // com.google.net.cronet.okhttptransport.c
            boolean b() {
                return true;
            }

            @Override // com.google.net.cronet.okhttptransport.c
            int c() {
                return 16;
            }
        }
    }

    private c() {
    }

    public static c a() {
        return b.f32775a;
    }

    abstract boolean b();

    abstract int c();
}
