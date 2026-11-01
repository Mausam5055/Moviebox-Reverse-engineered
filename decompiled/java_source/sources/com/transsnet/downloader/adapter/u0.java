package com.transsnet.downloader.adapter;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public interface u0 {

    public static final class a {
        public static void a(u0 u0Var, int i11, n6.a aVar) {
        }

        public static void b(u0 u0Var, b listener) {
            Intrinsics.h(listener, "listener");
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public interface b {

        /* JADX INFO: loaded from: classes7.dex */
        public static final class a {
            public static void a(b bVar, int i11, int i12, int i13, boolean z10) {
            }
        }

        void a(int i11, int i12);

        void b(int i11, int i12, int i13, boolean z10);
    }

    void a(b bVar);

    void b(int i11, n6.a aVar);

    void c(int i11, n6.a aVar);
}
