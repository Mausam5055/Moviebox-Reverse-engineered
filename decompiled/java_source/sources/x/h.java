package x;

import android.view.ViewStructure;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f77995a = new h();

    private h() {
    }

    public final int a(ViewStructure viewStructure, int i11) {
        return viewStructure.addChildCount(i11);
    }

    public final ViewStructure b(ViewStructure viewStructure, int i11) {
        return viewStructure.newChild(i11);
    }

    public final void c(ViewStructure viewStructure, int i11, int i12, int i13, int i14, int i15, int i16) {
        viewStructure.setDimens(i11, i12, i13, i14, i15, i16);
    }

    public final void d(ViewStructure viewStructure, int i11, String str, String str2, String str3) {
        viewStructure.setId(i11, str, str2, str3);
    }
}
