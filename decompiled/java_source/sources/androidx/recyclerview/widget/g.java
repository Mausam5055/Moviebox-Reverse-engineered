package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f14379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f14380c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f14381d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f14382e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f14385h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f14386i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f14378a = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f14383f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f14384g = 0;

    g() {
    }

    boolean a(RecyclerView.y yVar) {
        int i11 = this.f14380c;
        return i11 >= 0 && i11 < yVar.b();
    }

    View b(RecyclerView.t tVar) {
        View viewO = tVar.o(this.f14380c);
        this.f14380c += this.f14381d;
        return viewO;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f14379b + ", mCurrentPosition=" + this.f14380c + ", mItemDirection=" + this.f14381d + ", mLayoutDirection=" + this.f14382e + ", mStartLine=" + this.f14383f + ", mEndLine=" + this.f14384g + '}';
    }
}
