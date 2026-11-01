package androidx.compose.ui.semantics;

import androidx.compose.ui.text.AnnotatedString;
import com.amazonaws.services.s3.model.BucketLifecycleConfiguration;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import x.x;
import x.y;

/* JADX INFO: loaded from: classes.dex */
public final class SemanticsProperties {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SemanticsProperties f5919a = new SemanticsProperties();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final SemanticsPropertyKey f5920b = SemanticsPropertiesKt.b("ContentDescription", new Function2<List<? extends String>, List<? extends String>, List<? extends String>>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$ContentDescription$1
        @Override // kotlin.jvm.functions.Function2
        public final List<String> invoke(List<String> list, List<String> list2) {
            List<String> listU0;
            if (list == null || (listU0 = CollectionsKt.U0(list)) == null) {
                return list2;
            }
            listU0.addAll(list2);
            return listU0;
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final SemanticsPropertyKey f5921c = SemanticsPropertiesKt.a("StateDescription");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final SemanticsPropertyKey f5922d = SemanticsPropertiesKt.a("ProgressBarRangeInfo");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final SemanticsPropertyKey f5923e = SemanticsPropertiesKt.b("PaneTitle", new Function2<String, String, String>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$PaneTitle$1
        @Override // kotlin.jvm.functions.Function2
        public final String invoke(String str, String str2) {
            throw new IllegalStateException("merge function called on unmergeable property PaneTitle.");
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final SemanticsPropertyKey f5924f = SemanticsPropertiesKt.a("SelectableGroup");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final SemanticsPropertyKey f5925g = SemanticsPropertiesKt.a("CollectionInfo");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final SemanticsPropertyKey f5926h = SemanticsPropertiesKt.a("CollectionItemInfo");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final SemanticsPropertyKey f5927i = SemanticsPropertiesKt.a("Heading");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final SemanticsPropertyKey f5928j = SemanticsPropertiesKt.a(BucketLifecycleConfiguration.DISABLED);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final SemanticsPropertyKey f5929k = SemanticsPropertiesKt.a("LiveRegion");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final SemanticsPropertyKey f5930l = SemanticsPropertiesKt.a("Focused");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final SemanticsPropertyKey f5931m = SemanticsPropertiesKt.a("IsTraversalGroup");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final SemanticsPropertyKey f5932n = new SemanticsPropertyKey("InvisibleToUser", new Function2<Unit, Unit, Unit>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$InvisibleToUser$1
        @Override // kotlin.jvm.functions.Function2
        public final Unit invoke(Unit unit, Unit unit2) {
            return unit;
        }
    });

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final SemanticsPropertyKey f5933o = new SemanticsPropertyKey("ContentType", new Function2<y, y, y>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$ContentType$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            android.support.v4.media.session.c.a(obj);
            android.support.v4.media.session.c.a(obj2);
            invoke((y) null, (y) null);
            return null;
        }

        public final y invoke(y yVar, y yVar2) {
            return yVar;
        }
    });

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final SemanticsPropertyKey f5934p = new SemanticsPropertyKey("ContentDataType", new Function2<x, x, x>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$ContentDataType$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            android.support.v4.media.session.c.a(obj);
            android.support.v4.media.session.c.a(obj2);
            throw null;
        }

        /* JADX INFO: renamed from: invoke-x33U9Dw, reason: not valid java name */
        public final x m165invokex33U9Dw(x xVar, int i11) {
            return xVar;
        }
    });

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final SemanticsPropertyKey f5935q = SemanticsPropertiesKt.b("TraversalIndex", new Function2<Float, Float, Float>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$TraversalIndex$1
        public final Float invoke(Float f11, float f12) {
            return f11;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke((Float) obj, ((Number) obj2).floatValue());
        }
    });

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final SemanticsPropertyKey f5936r = SemanticsPropertiesKt.a("HorizontalScrollAxisRange");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final SemanticsPropertyKey f5937s = SemanticsPropertiesKt.a("VerticalScrollAxisRange");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final SemanticsPropertyKey f5938t = SemanticsPropertiesKt.b("IsPopup", new Function2<Unit, Unit, Unit>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$IsPopup$1
        @Override // kotlin.jvm.functions.Function2
        public final Unit invoke(Unit unit, Unit unit2) {
            throw new IllegalStateException("merge function called on unmergeable property IsPopup. A popup should not be a child of a clickable/focusable node.");
        }
    });

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final SemanticsPropertyKey f5939u = SemanticsPropertiesKt.b("IsDialog", new Function2<Unit, Unit, Unit>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$IsDialog$1
        @Override // kotlin.jvm.functions.Function2
        public final Unit invoke(Unit unit, Unit unit2) {
            throw new IllegalStateException("merge function called on unmergeable property IsDialog. A dialog should not be a child of a clickable/focusable node.");
        }
    });

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final SemanticsPropertyKey f5940v = SemanticsPropertiesKt.b("Role", new Function2<f, f, f>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$Role$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return m166invokeqtAw6s((f) obj, ((f) obj2).n());
        }

        /* JADX INFO: renamed from: invoke-qtA-w6s, reason: not valid java name */
        public final f m166invokeqtAw6s(f fVar, int i11) {
            return fVar;
        }
    });

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final SemanticsPropertyKey f5941w = new SemanticsPropertyKey("TestTag", false, new Function2<String, String, String>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$TestTag$1
        @Override // kotlin.jvm.functions.Function2
        public final String invoke(String str, String str2) {
            return str;
        }
    });

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final SemanticsPropertyKey f5942x = SemanticsPropertiesKt.b("Text", new Function2<List<? extends AnnotatedString>, List<? extends AnnotatedString>, List<? extends AnnotatedString>>() { // from class: androidx.compose.ui.semantics.SemanticsProperties$Text$1
        @Override // kotlin.jvm.functions.Function2
        public final List<AnnotatedString> invoke(List<AnnotatedString> list, List<AnnotatedString> list2) {
            List<AnnotatedString> listU0;
            if (list == null || (listU0 = CollectionsKt.U0(list)) == null) {
                return list2;
            }
            listU0.addAll(list2);
            return listU0;
        }
    });

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final SemanticsPropertyKey f5943y = new SemanticsPropertyKey("TextSubstitution", null, 2, null);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final SemanticsPropertyKey f5944z = new SemanticsPropertyKey("IsShowingTextSubstitution", null, 2, null);
    private static final SemanticsPropertyKey A = SemanticsPropertiesKt.a("EditableText");
    private static final SemanticsPropertyKey B = SemanticsPropertiesKt.a("TextSelectionRange");
    private static final SemanticsPropertyKey C = SemanticsPropertiesKt.a("ImeAction");
    private static final SemanticsPropertyKey D = SemanticsPropertiesKt.a("Selected");
    private static final SemanticsPropertyKey E = SemanticsPropertiesKt.a("ToggleableState");
    private static final SemanticsPropertyKey F = SemanticsPropertiesKt.a("Password");
    private static final SemanticsPropertyKey G = SemanticsPropertiesKt.a("Error");
    private static final SemanticsPropertyKey H = new SemanticsPropertyKey("IndexForKey", null, 2, null);
    private static final SemanticsPropertyKey I = new SemanticsPropertyKey("IsEditable", null, 2, null);
    private static final SemanticsPropertyKey J = new SemanticsPropertyKey("MaxTextLength", null, 2, null);
    public static final int K = 8;

    private SemanticsProperties() {
    }

    public final SemanticsPropertyKey A() {
        return f5921c;
    }

    public final SemanticsPropertyKey B() {
        return f5941w;
    }

    public final SemanticsPropertyKey C() {
        return f5942x;
    }

    public final SemanticsPropertyKey D() {
        return B;
    }

    public final SemanticsPropertyKey E() {
        return f5943y;
    }

    public final SemanticsPropertyKey F() {
        return E;
    }

    public final SemanticsPropertyKey G() {
        return f5935q;
    }

    public final SemanticsPropertyKey H() {
        return f5937s;
    }

    public final SemanticsPropertyKey a() {
        return f5925g;
    }

    public final SemanticsPropertyKey b() {
        return f5926h;
    }

    public final SemanticsPropertyKey c() {
        return f5934p;
    }

    public final SemanticsPropertyKey d() {
        return f5920b;
    }

    public final SemanticsPropertyKey e() {
        return f5933o;
    }

    public final SemanticsPropertyKey f() {
        return f5928j;
    }

    public final SemanticsPropertyKey g() {
        return A;
    }

    public final SemanticsPropertyKey h() {
        return G;
    }

    public final SemanticsPropertyKey i() {
        return f5930l;
    }

    public final SemanticsPropertyKey j() {
        return f5927i;
    }

    public final SemanticsPropertyKey k() {
        return f5936r;
    }

    public final SemanticsPropertyKey l() {
        return C;
    }

    public final SemanticsPropertyKey m() {
        return H;
    }

    public final SemanticsPropertyKey n() {
        return f5932n;
    }

    public final SemanticsPropertyKey o() {
        return f5939u;
    }

    public final SemanticsPropertyKey p() {
        return I;
    }

    public final SemanticsPropertyKey q() {
        return f5944z;
    }

    public final SemanticsPropertyKey r() {
        return f5931m;
    }

    public final SemanticsPropertyKey s() {
        return f5929k;
    }

    public final SemanticsPropertyKey t() {
        return J;
    }

    public final SemanticsPropertyKey u() {
        return f5923e;
    }

    public final SemanticsPropertyKey v() {
        return F;
    }

    public final SemanticsPropertyKey w() {
        return f5922d;
    }

    public final SemanticsPropertyKey x() {
        return f5940v;
    }

    public final SemanticsPropertyKey y() {
        return f5924f;
    }

    public final SemanticsPropertyKey z() {
        return D;
    }
}
