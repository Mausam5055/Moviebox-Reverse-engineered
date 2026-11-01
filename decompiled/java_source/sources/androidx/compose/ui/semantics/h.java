package androidx.compose.ui.semantics;

import kotlin.Function;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    private static final SemanticsPropertyKey A;
    private static final SemanticsPropertyKey B;
    private static final SemanticsPropertyKey C;
    private static final SemanticsPropertyKey D;
    public static final int E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f5976a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final SemanticsPropertyKey f5977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final SemanticsPropertyKey f5978c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final SemanticsPropertyKey f5979d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final SemanticsPropertyKey f5980e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final SemanticsPropertyKey f5981f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final SemanticsPropertyKey f5982g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final SemanticsPropertyKey f5983h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final SemanticsPropertyKey f5984i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final SemanticsPropertyKey f5985j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final SemanticsPropertyKey f5986k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final SemanticsPropertyKey f5987l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final SemanticsPropertyKey f5988m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final SemanticsPropertyKey f5989n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final SemanticsPropertyKey f5990o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final SemanticsPropertyKey f5991p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final SemanticsPropertyKey f5992q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final SemanticsPropertyKey f5993r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final SemanticsPropertyKey f5994s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final SemanticsPropertyKey f5995t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final SemanticsPropertyKey f5996u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final SemanticsPropertyKey f5997v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final SemanticsPropertyKey f5998w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final SemanticsPropertyKey f5999x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final SemanticsPropertyKey f6000y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final SemanticsPropertyKey f6001z;

    static {
        SemanticsPropertiesKt$ActionPropertyKey$1 semanticsPropertiesKt$ActionPropertyKey$1 = new Function2<a, a, a>() { // from class: androidx.compose.ui.semantics.SemanticsPropertiesKt$ActionPropertyKey$1
            @Override // kotlin.jvm.functions.Function2
            public final a invoke(a aVar, a aVar2) {
                String strB;
                Function functionA;
                if (aVar == null || (strB = aVar.b()) == null) {
                    strB = aVar2.b();
                }
                if (aVar == null || (functionA = aVar.a()) == null) {
                    functionA = aVar2.a();
                }
                return new a(strB, functionA);
            }
        };
        f5977b = SemanticsPropertiesKt.b("GetTextLayoutResult", semanticsPropertiesKt$ActionPropertyKey$1);
        f5978c = SemanticsPropertiesKt.b("OnClick", semanticsPropertiesKt$ActionPropertyKey$1);
        f5979d = SemanticsPropertiesKt.b("OnLongClick", semanticsPropertiesKt$ActionPropertyKey$1);
        f5980e = SemanticsPropertiesKt.b("ScrollBy", semanticsPropertiesKt$ActionPropertyKey$1);
        f5981f = new SemanticsPropertyKey("ScrollByOffset", null, 2, null);
        f5982g = SemanticsPropertiesKt.b("ScrollToIndex", semanticsPropertiesKt$ActionPropertyKey$1);
        f5983h = SemanticsPropertiesKt.b("OnAutofillText", semanticsPropertiesKt$ActionPropertyKey$1);
        f5984i = SemanticsPropertiesKt.b("SetProgress", semanticsPropertiesKt$ActionPropertyKey$1);
        f5985j = SemanticsPropertiesKt.b("SetSelection", semanticsPropertiesKt$ActionPropertyKey$1);
        f5986k = SemanticsPropertiesKt.b("SetText", semanticsPropertiesKt$ActionPropertyKey$1);
        f5987l = SemanticsPropertiesKt.b("SetTextSubstitution", semanticsPropertiesKt$ActionPropertyKey$1);
        f5988m = SemanticsPropertiesKt.b("ShowTextSubstitution", semanticsPropertiesKt$ActionPropertyKey$1);
        f5989n = SemanticsPropertiesKt.b("ClearTextSubstitution", semanticsPropertiesKt$ActionPropertyKey$1);
        f5990o = SemanticsPropertiesKt.b("InsertTextAtCursor", semanticsPropertiesKt$ActionPropertyKey$1);
        f5991p = SemanticsPropertiesKt.b("PerformImeAction", semanticsPropertiesKt$ActionPropertyKey$1);
        f5992q = SemanticsPropertiesKt.b("PerformImeAction", semanticsPropertiesKt$ActionPropertyKey$1);
        f5993r = SemanticsPropertiesKt.b("CopyText", semanticsPropertiesKt$ActionPropertyKey$1);
        f5994s = SemanticsPropertiesKt.b("CutText", semanticsPropertiesKt$ActionPropertyKey$1);
        f5995t = SemanticsPropertiesKt.b("PasteText", semanticsPropertiesKt$ActionPropertyKey$1);
        f5996u = SemanticsPropertiesKt.b("Expand", semanticsPropertiesKt$ActionPropertyKey$1);
        f5997v = SemanticsPropertiesKt.b("Collapse", semanticsPropertiesKt$ActionPropertyKey$1);
        f5998w = SemanticsPropertiesKt.b("Dismiss", semanticsPropertiesKt$ActionPropertyKey$1);
        f5999x = SemanticsPropertiesKt.b("RequestFocus", semanticsPropertiesKt$ActionPropertyKey$1);
        f6000y = SemanticsPropertiesKt.a("CustomActions");
        f6001z = SemanticsPropertiesKt.b("PageUp", semanticsPropertiesKt$ActionPropertyKey$1);
        A = SemanticsPropertiesKt.b("PageLeft", semanticsPropertiesKt$ActionPropertyKey$1);
        B = SemanticsPropertiesKt.b("PageDown", semanticsPropertiesKt$ActionPropertyKey$1);
        C = SemanticsPropertiesKt.b("PageRight", semanticsPropertiesKt$ActionPropertyKey$1);
        D = SemanticsPropertiesKt.b("GetScrollViewportLength", semanticsPropertiesKt$ActionPropertyKey$1);
        E = 8;
    }

    private h() {
    }

    public final SemanticsPropertyKey a() {
        return f5989n;
    }

    public final SemanticsPropertyKey b() {
        return f5997v;
    }

    public final SemanticsPropertyKey c() {
        return f5993r;
    }

    public final SemanticsPropertyKey d() {
        return f6000y;
    }

    public final SemanticsPropertyKey e() {
        return f5994s;
    }

    public final SemanticsPropertyKey f() {
        return f5998w;
    }

    public final SemanticsPropertyKey g() {
        return f5996u;
    }

    public final SemanticsPropertyKey h() {
        return D;
    }

    public final SemanticsPropertyKey i() {
        return f5977b;
    }

    public final SemanticsPropertyKey j() {
        return f5978c;
    }

    public final SemanticsPropertyKey k() {
        return f5991p;
    }

    public final SemanticsPropertyKey l() {
        return f5979d;
    }

    public final SemanticsPropertyKey m() {
        return B;
    }

    public final SemanticsPropertyKey n() {
        return A;
    }

    public final SemanticsPropertyKey o() {
        return C;
    }

    public final SemanticsPropertyKey p() {
        return f6001z;
    }

    public final SemanticsPropertyKey q() {
        return f5995t;
    }

    public final SemanticsPropertyKey r() {
        return f5999x;
    }

    public final SemanticsPropertyKey s() {
        return f5980e;
    }

    public final SemanticsPropertyKey t() {
        return f5981f;
    }

    public final SemanticsPropertyKey u() {
        return f5982g;
    }

    public final SemanticsPropertyKey v() {
        return f5984i;
    }

    public final SemanticsPropertyKey w() {
        return f5985j;
    }

    public final SemanticsPropertyKey x() {
        return f5986k;
    }

    public final SemanticsPropertyKey y() {
        return f5987l;
    }

    public final SemanticsPropertyKey z() {
        return f5988m;
    }
}
