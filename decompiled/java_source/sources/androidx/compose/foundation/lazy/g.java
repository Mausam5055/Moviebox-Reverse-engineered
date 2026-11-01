package androidx.compose.foundation.lazy;

import androidx.compose.ui.layout.h0;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
public final class g implements androidx.compose.foundation.lazy.layout.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LazyListState f2948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2949b;

    public g(LazyListState lazyListState, int i11) {
        this.f2948a = lazyListState;
        this.f2949b = i11;
    }

    @Override // androidx.compose.foundation.lazy.layout.h
    public void a() {
        h0 h0VarA = this.f2948a.A();
        if (h0VarA != null) {
            h0VarA.d();
        }
    }

    @Override // androidx.compose.foundation.lazy.layout.h
    public boolean b() {
        return !this.f2948a.t().h().isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.h
    public int c() {
        return Math.max(0, this.f2948a.o() - this.f2949b);
    }

    @Override // androidx.compose.foundation.lazy.layout.h
    public int d() {
        return Math.min(getItemCount() - 1, ((j) CollectionsKt.u0(this.f2948a.t().h())).getIndex() + this.f2949b);
    }

    @Override // androidx.compose.foundation.lazy.layout.h
    public int getItemCount() {
        return this.f2948a.t().d();
    }
}
