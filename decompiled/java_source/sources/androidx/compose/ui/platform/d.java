package androidx.compose.ui.platform;

import android.graphics.Rect;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class d extends androidx.compose.ui.platform.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static d f5759h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.compose.ui.text.z f5762c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SemanticsNode f5763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Rect f5764e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f5757f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f5758g = 8;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final ResolvedTextDirection f5760i = ResolvedTextDirection.Rtl;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final ResolvedTextDirection f5761j = ResolvedTextDirection.Ltr;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            if (d.f5759h == null) {
                d.f5759h = new d(null);
            }
            d dVar = d.f5759h;
            Intrinsics.f(dVar, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.PageTextSegmentIterator");
            return dVar;
        }
    }

    private d() {
        this.f5764e = new Rect();
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final int i(int i11, ResolvedTextDirection resolvedTextDirection) {
        androidx.compose.ui.text.z zVar = this.f5762c;
        androidx.compose.ui.text.z zVar2 = null;
        if (zVar == null) {
            Intrinsics.z("layoutResult");
            zVar = null;
        }
        int iT = zVar.t(i11);
        androidx.compose.ui.text.z zVar3 = this.f5762c;
        if (zVar3 == null) {
            Intrinsics.z("layoutResult");
            zVar3 = null;
        }
        if (resolvedTextDirection != zVar3.w(iT)) {
            androidx.compose.ui.text.z zVar4 = this.f5762c;
            if (zVar4 == null) {
                Intrinsics.z("layoutResult");
            } else {
                zVar2 = zVar4;
            }
            return zVar2.t(i11);
        }
        androidx.compose.ui.text.z zVar5 = this.f5762c;
        if (zVar5 == null) {
            Intrinsics.z("layoutResult");
            zVar5 = null;
        }
        return androidx.compose.ui.text.z.o(zVar5, i11, false, 2, null) - 1;
    }

    @Override // androidx.compose.ui.platform.f
    public int[] a(int i11) {
        int iM;
        androidx.compose.ui.text.z zVar = null;
        if (d().length() <= 0 || i11 >= d().length()) {
            return null;
        }
        try {
            SemanticsNode semanticsNode = this.f5763d;
            if (semanticsNode == null) {
                Intrinsics.z("node");
                semanticsNode = null;
            }
            int iRound = Math.round(semanticsNode.i().e());
            int iF = RangesKt.f(0, i11);
            androidx.compose.ui.text.z zVar2 = this.f5762c;
            if (zVar2 == null) {
                Intrinsics.z("layoutResult");
                zVar2 = null;
            }
            int iP = zVar2.p(iF);
            androidx.compose.ui.text.z zVar3 = this.f5762c;
            if (zVar3 == null) {
                Intrinsics.z("layoutResult");
                zVar3 = null;
            }
            float fU = zVar3.u(iP) + iRound;
            androidx.compose.ui.text.z zVar4 = this.f5762c;
            if (zVar4 == null) {
                Intrinsics.z("layoutResult");
                zVar4 = null;
            }
            androidx.compose.ui.text.z zVar5 = this.f5762c;
            if (zVar5 == null) {
                Intrinsics.z("layoutResult");
                zVar5 = null;
            }
            if (fU < zVar4.u(zVar5.m() - 1)) {
                androidx.compose.ui.text.z zVar6 = this.f5762c;
                if (zVar6 == null) {
                    Intrinsics.z("layoutResult");
                } else {
                    zVar = zVar6;
                }
                iM = zVar.q(fU);
            } else {
                androidx.compose.ui.text.z zVar7 = this.f5762c;
                if (zVar7 == null) {
                    Intrinsics.z("layoutResult");
                } else {
                    zVar = zVar7;
                }
                iM = zVar.m();
            }
            return c(iF, i(iM - 1, f5761j) + 1);
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    @Override // androidx.compose.ui.platform.f
    public int[] b(int i11) {
        int iQ;
        androidx.compose.ui.text.z zVar = null;
        if (d().length() <= 0 || i11 <= 0) {
            return null;
        }
        try {
            SemanticsNode semanticsNode = this.f5763d;
            if (semanticsNode == null) {
                Intrinsics.z("node");
                semanticsNode = null;
            }
            int iRound = Math.round(semanticsNode.i().e());
            int i12 = RangesKt.i(d().length(), i11);
            androidx.compose.ui.text.z zVar2 = this.f5762c;
            if (zVar2 == null) {
                Intrinsics.z("layoutResult");
                zVar2 = null;
            }
            int iP = zVar2.p(i12);
            androidx.compose.ui.text.z zVar3 = this.f5762c;
            if (zVar3 == null) {
                Intrinsics.z("layoutResult");
                zVar3 = null;
            }
            float fU = zVar3.u(iP) - iRound;
            if (fU > 0.0f) {
                androidx.compose.ui.text.z zVar4 = this.f5762c;
                if (zVar4 == null) {
                    Intrinsics.z("layoutResult");
                } else {
                    zVar = zVar4;
                }
                iQ = zVar.q(fU);
            } else {
                iQ = 0;
            }
            if (i12 == d().length() && iQ < iP) {
                iQ++;
            }
            return c(i(iQ, f5760i), i12);
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    public final void j(String str, androidx.compose.ui.text.z zVar, SemanticsNode semanticsNode) {
        f(str);
        this.f5762c = zVar;
        this.f5763d = semanticsNode;
    }
}
