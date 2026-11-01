package w1;

import androidx.media3.common.util.a1;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements androidx.media3.datasource.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f77497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f77498b = new ArrayList(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f77499c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f77500d;

    protected a(boolean z10) {
        this.f77497a = z10;
    }

    @Override // androidx.media3.datasource.a
    public final void c(n nVar) {
        androidx.media3.common.util.a.e(nVar);
        if (this.f77498b.contains(nVar)) {
            return;
        }
        this.f77498b.add(nVar);
        this.f77499c++;
    }

    protected final void d(int i11) {
        h hVar = (h) a1.i(this.f77500d);
        for (int i12 = 0; i12 < this.f77499c; i12++) {
            ((n) this.f77498b.get(i12)).e(this, hVar, this.f77497a, i11);
        }
    }

    protected final void e() {
        h hVar = (h) a1.i(this.f77500d);
        for (int i11 = 0; i11 < this.f77499c; i11++) {
            ((n) this.f77498b.get(i11)).f(this, hVar, this.f77497a);
        }
        this.f77500d = null;
    }

    protected final void f(h hVar) {
        for (int i11 = 0; i11 < this.f77499c; i11++) {
            ((n) this.f77498b.get(i11)).g(this, hVar, this.f77497a);
        }
    }

    protected final void g(h hVar) {
        this.f77500d = hVar;
        for (int i11 = 0; i11 < this.f77499c; i11++) {
            ((n) this.f77498b.get(i11)).h(this, hVar, this.f77497a);
        }
    }

    @Override // androidx.media3.datasource.a
    public /* synthetic */ Map getResponseHeaders() {
        return e.a(this);
    }
}
