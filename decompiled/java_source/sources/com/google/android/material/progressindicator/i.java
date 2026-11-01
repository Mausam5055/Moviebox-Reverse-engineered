package com.google.android.material.progressindicator;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected j f29476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final List f29477b = new ArrayList();

    protected i(int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            this.f29477b.add(new h.a());
        }
    }

    abstract void a();

    protected float b(int i11, int i12, int i13) {
        return (i11 - i12) / i13;
    }

    public abstract void c();

    public abstract void d(androidx.vectordrawable.graphics.drawable.b bVar);

    protected void e(j jVar) {
        this.f29476a = jVar;
    }

    abstract void f();

    abstract void g();

    public abstract void h();
}
