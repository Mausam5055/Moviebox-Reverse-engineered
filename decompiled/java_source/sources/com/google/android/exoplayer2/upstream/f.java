package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class f implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f27403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f27404b = new ArrayList(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f27405c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private n f27406d;

    protected f(boolean z10) {
        this.f27403a = z10;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public final void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        if (this.f27404b.contains(k0Var)) {
            return;
        }
        this.f27404b.add(k0Var);
        this.f27405c++;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public /* synthetic */ Map getResponseHeaders() {
        return j.a(this);
    }

    protected final void h(int i11) {
        n nVar = (n) p0.j(this.f27406d);
        for (int i12 = 0; i12 < this.f27405c; i12++) {
            ((k0) this.f27404b.get(i12)).e(this, nVar, this.f27403a, i11);
        }
    }

    protected final void i() {
        n nVar = (n) p0.j(this.f27406d);
        for (int i11 = 0; i11 < this.f27405c; i11++) {
            ((k0) this.f27404b.get(i11)).c(this, nVar, this.f27403a);
        }
        this.f27406d = null;
    }

    protected final void j(n nVar) {
        for (int i11 = 0; i11 < this.f27405c; i11++) {
            ((k0) this.f27404b.get(i11)).h(this, nVar, this.f27403a);
        }
    }

    protected final void k(n nVar) {
        this.f27406d = nVar;
        for (int i11 = 0; i11 < this.f27405c; i11++) {
            ((k0) this.f27404b.get(i11)).g(this, nVar, this.f27403a);
        }
    }
}
