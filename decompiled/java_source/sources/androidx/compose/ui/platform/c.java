package androidx.compose.ui.platform;

import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c extends androidx.compose.ui.platform.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static c f5747f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.compose.ui.text.z f5750c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f5745d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f5746e = 8;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ResolvedTextDirection f5748g = ResolvedTextDirection.Rtl;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ResolvedTextDirection f5749h = ResolvedTextDirection.Ltr;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            if (c.f5747f == null) {
                c.f5747f = new c(null);
            }
            c cVar = c.f5747f;
            Intrinsics.f(cVar, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.LineTextSegmentIterator");
            return cVar;
        }
    }

    private c() {
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final int i(int i11, ResolvedTextDirection resolvedTextDirection) {
        androidx.compose.ui.text.z zVar = this.f5750c;
        androidx.compose.ui.text.z zVar2 = null;
        if (zVar == null) {
            Intrinsics.z("layoutResult");
            zVar = null;
        }
        int iT = zVar.t(i11);
        androidx.compose.ui.text.z zVar3 = this.f5750c;
        if (zVar3 == null) {
            Intrinsics.z("layoutResult");
            zVar3 = null;
        }
        if (resolvedTextDirection != zVar3.w(iT)) {
            androidx.compose.ui.text.z zVar4 = this.f5750c;
            if (zVar4 == null) {
                Intrinsics.z("layoutResult");
            } else {
                zVar2 = zVar4;
            }
            return zVar2.t(i11);
        }
        androidx.compose.ui.text.z zVar5 = this.f5750c;
        if (zVar5 == null) {
            Intrinsics.z("layoutResult");
            zVar5 = null;
        }
        return androidx.compose.ui.text.z.o(zVar5, i11, false, 2, null) - 1;
    }

    @Override // androidx.compose.ui.platform.f
    public int[] a(int i11) {
        int iP;
        if (d().length() <= 0 || i11 >= d().length()) {
            return null;
        }
        if (i11 < 0) {
            androidx.compose.ui.text.z zVar = this.f5750c;
            if (zVar == null) {
                Intrinsics.z("layoutResult");
                zVar = null;
            }
            iP = zVar.p(0);
        } else {
            androidx.compose.ui.text.z zVar2 = this.f5750c;
            if (zVar2 == null) {
                Intrinsics.z("layoutResult");
                zVar2 = null;
            }
            int iP2 = zVar2.p(i11);
            iP = i(iP2, f5748g) == i11 ? iP2 : iP2 + 1;
        }
        androidx.compose.ui.text.z zVar3 = this.f5750c;
        if (zVar3 == null) {
            Intrinsics.z("layoutResult");
            zVar3 = null;
        }
        if (iP >= zVar3.m()) {
            return null;
        }
        return c(i(iP, f5748g), i(iP, f5749h) + 1);
    }

    @Override // androidx.compose.ui.platform.f
    public int[] b(int i11) {
        int iP;
        if (d().length() <= 0 || i11 <= 0) {
            return null;
        }
        if (i11 > d().length()) {
            androidx.compose.ui.text.z zVar = this.f5750c;
            if (zVar == null) {
                Intrinsics.z("layoutResult");
                zVar = null;
            }
            iP = zVar.p(d().length());
        } else {
            androidx.compose.ui.text.z zVar2 = this.f5750c;
            if (zVar2 == null) {
                Intrinsics.z("layoutResult");
                zVar2 = null;
            }
            int iP2 = zVar2.p(i11);
            iP = i(iP2, f5749h) + 1 == i11 ? iP2 : iP2 - 1;
        }
        if (iP < 0) {
            return null;
        }
        return c(i(iP, f5748g), i(iP, f5749h) + 1);
    }

    public final void j(String str, androidx.compose.ui.text.z zVar) {
        f(str);
        this.f5750c = zVar;
    }
}
