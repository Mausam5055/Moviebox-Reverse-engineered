package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class k implements u8.b {

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final k f24411a = new k();
    }

    public static k a() {
        return a.f24411a;
    }

    public static Executor b() {
        return (Executor) u8.d.d(j.a());
    }

    @Override // uz.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Executor get() {
        return b();
    }
}
