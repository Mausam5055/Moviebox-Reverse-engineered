package com.mbridge.msdk.thrid.okhttp.internal;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final String f37900a;

    public b(String str, Object... objArr) {
        this.f37900a = c.a(str, objArr);
    }

    protected abstract void b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f37900a);
        try {
            b();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
