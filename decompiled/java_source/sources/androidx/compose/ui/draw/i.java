package androidx.compose.ui.draw;

import androidx.compose.ui.unit.LayoutDirection;
import y.m;

/* JADX INFO: loaded from: classes.dex */
final class i implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f4172a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f4173b = m.f78491b.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final LayoutDirection f4174c = LayoutDirection.Ltr;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final o0.e f4175d = o0.g.a(1.0f, 1.0f);

    private i() {
    }

    @Override // androidx.compose.ui.draw.a
    public o0.e getDensity() {
        return f4175d;
    }

    @Override // androidx.compose.ui.draw.a
    public LayoutDirection getLayoutDirection() {
        return f4174c;
    }

    @Override // androidx.compose.ui.draw.a
    public long i() {
        return f4173b;
    }
}
