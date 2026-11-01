package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.v;

/* JADX INFO: loaded from: classes.dex */
final class e implements v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f3203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3204c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3205d;

    public e(v vVar, int i11, int i12) {
        this.f3203b = vVar;
        this.f3204c = i11;
        this.f3205d = i12;
    }

    @Override // androidx.compose.ui.text.input.v
    public int a(int i11) {
        int iA = this.f3203b.a(i11);
        if (i11 >= 0 && i11 <= this.f3204c) {
            f.c(iA, this.f3205d, i11);
        }
        return iA;
    }
}
