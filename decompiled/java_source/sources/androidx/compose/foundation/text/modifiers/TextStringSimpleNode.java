package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.graphics.l1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.graphics.z4;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.g0;
import androidx.compose.ui.layout.s;
import androidx.compose.ui.layout.v;
import androidx.compose.ui.node.a0;
import androidx.compose.ui.node.h1;
import androidx.compose.ui.node.i1;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.node.m;
import androidx.compose.ui.node.n;
import androidx.compose.ui.node.o;
import androidx.compose.ui.node.x;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.k;
import androidx.compose.ui.text.l;
import androidx.compose.ui.text.style.j;
import androidx.compose.ui.text.style.p;
import androidx.compose.ui.text.z;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o0.t;
import o0.w;

/* JADX INFO: loaded from: classes.dex */
public final class TextStringSimpleNode extends androidx.compose.ui.f.c implements x, n, i1 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f3257n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private d0 f3258o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private androidx.compose.ui.text.font.h.b f3259p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f3260q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f3261r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f3262s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f3263t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private x1 f3264u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Map f3265v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private f f3266w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Function1 f3267x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private a f3268y;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f3269a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f3270b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f3271c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private f f3272d;

        public a(String str, String str2, boolean z10, f fVar) {
            this.f3269a = str;
            this.f3270b = str2;
            this.f3271c = z10;
            this.f3272d = fVar;
        }

        public /* synthetic */ a(String str, String str2, boolean z10, f fVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? null : fVar);
        }

        public final f a() {
            return this.f3272d;
        }

        public final String b() {
            return this.f3270b;
        }

        public final boolean c() {
            return this.f3271c;
        }

        public final void d(f fVar) {
            this.f3272d = fVar;
        }

        public final void e(boolean z10) {
            this.f3271c = z10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f3269a, aVar.f3269a) && Intrinsics.c(this.f3270b, aVar.f3270b) && this.f3271c == aVar.f3271c && Intrinsics.c(this.f3272d, aVar.f3272d);
        }

        public final void f(String str) {
            this.f3270b = str;
        }

        public int hashCode() {
            int iHashCode = ((((this.f3269a.hashCode() * 31) + this.f3270b.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f3271c)) * 31;
            f fVar = this.f3272d;
            return iHashCode + (fVar == null ? 0 : fVar.hashCode());
        }

        public String toString() {
            return "TextSubstitution(layoutCache=" + this.f3272d + ", isShowingSubstitution=" + this.f3271c + ')';
        }
    }

    private TextStringSimpleNode(String str, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i11, boolean z10, int i12, int i13, x1 x1Var) {
        this.f3257n = str;
        this.f3258o = d0Var;
        this.f3259p = bVar;
        this.f3260q = i11;
        this.f3261r = z10;
        this.f3262s = i12;
        this.f3263t = i13;
        this.f3264u = x1Var;
    }

    public /* synthetic */ TextStringSimpleNode(String str, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i11, boolean z10, int i12, int i13, x1 x1Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, d0Var, bVar, i11, z10, i12, i13, x1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K1() {
        this.f3268y = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final f M1() {
        if (this.f3266w == null) {
            this.f3266w = new f(this.f3257n, this.f3258o, this.f3259p, this.f3260q, this.f3261r, this.f3262s, this.f3263t, null);
        }
        f fVar = this.f3266w;
        Intrinsics.e(fVar);
        return fVar;
    }

    private final f N1(o0.e eVar) {
        f fVarA;
        a aVar = this.f3268y;
        if (aVar != null && aVar.c() && (fVarA = aVar.a()) != null) {
            fVarA.j(eVar);
            return fVarA;
        }
        f fVarM1 = M1();
        fVarM1.j(eVar);
        return fVarM1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O1() {
        j1.b(this);
        a0.b(this);
        o.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean P1(String str) {
        Unit unit;
        a aVar = this.f3268y;
        if (aVar == null) {
            a aVar2 = new a(this.f3257n, str, false, null, 12, null);
            f fVar = new f(str, this.f3258o, this.f3259p, this.f3260q, this.f3261r, this.f3262s, this.f3263t, null);
            fVar.j(M1().a());
            aVar2.d(fVar);
            this.f3268y = aVar2;
            return true;
        }
        if (Intrinsics.c(str, aVar.b())) {
            return false;
        }
        aVar.f(str);
        f fVarA = aVar.a();
        if (fVarA != null) {
            fVarA.m(str, this.f3258o, this.f3259p, this.f3260q, this.f3261r, this.f3262s, this.f3263t);
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        return unit != null;
    }

    public final void L1(boolean z10, boolean z11, boolean z12) {
        if (z11 || z12) {
            M1().m(this.f3257n, this.f3258o, this.f3259p, this.f3260q, this.f3261r, this.f3262s, this.f3263t);
        }
        if (k1()) {
            if (z11 || (z10 && this.f3267x != null)) {
                j1.b(this);
            }
            if (z11 || z12) {
                a0.b(this);
                o.a(this);
            }
            if (z10) {
                o.a(this);
            }
        }
    }

    @Override // androidx.compose.ui.node.i1
    public /* synthetic */ boolean O() {
        return h1.a(this);
    }

    public final boolean Q1(x1 x1Var, d0 d0Var) {
        boolean zC = Intrinsics.c(x1Var, this.f3264u);
        this.f3264u = x1Var;
        return (zC && d0Var.F(this.f3258o)) ? false : true;
    }

    @Override // androidx.compose.ui.node.i1
    public void R0(androidx.compose.ui.semantics.n nVar) {
        Function1<List<z>, Boolean> function1 = this.f3267x;
        if (function1 == null) {
            function1 = new Function1<List<z>, Boolean>() { // from class: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$applySemantics$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(List<z> list) {
                    f fVarM1 = this.this$0.M1();
                    d0 d0Var = this.this$0.f3258o;
                    x1 x1Var = this.this$0.f3264u;
                    z zVarL = fVarM1.l(d0Var.I((16777214 & 1) != 0 ? u1.f4658b.e() : x1Var != null ? x1Var.a() : u1.f4658b.e(), (16777214 & 2) != 0 ? w.f70628b.a() : 0L, (16777214 & 4) != 0 ? null : null, (16777214 & 8) != 0 ? null : null, (16777214 & 16) != 0 ? null : null, (16777214 & 32) != 0 ? null : null, (16777214 & 64) != 0 ? null : null, (16777214 & 128) != 0 ? w.f70628b.a() : 0L, (16777214 & 256) != 0 ? null : null, (16777214 & 512) != 0 ? null : null, (16777214 & 1024) != 0 ? null : null, (16777214 & 2048) != 0 ? u1.f4658b.e() : 0L, (16777214 & 4096) != 0 ? null : null, (16777214 & 8192) != 0 ? null : null, (16777214 & 16384) != 0 ? null : null, (16777214 & 32768) != 0 ? androidx.compose.ui.text.style.h.f6400b.g() : 0, (16777214 & 65536) != 0 ? j.f6414b.f() : 0, (16777214 & 131072) != 0 ? w.f70628b.a() : 0L, (16777214 & 262144) != 0 ? null : null, (16777214 & 524288) != 0 ? null : null, (16777214 & 1048576) != 0 ? androidx.compose.ui.text.style.e.f6366a.b() : 0, (16777214 & 2097152) != 0 ? androidx.compose.ui.text.style.d.f6362a.c() : 0, (16777214 & 4194304) != 0 ? null : null, (16777214 & 8388608) != 0 ? null : null));
                    if (zVarL != null) {
                        list.add(zVarL);
                    } else {
                        zVarL = null;
                    }
                    return Boolean.valueOf(zVarL != null);
                }
            };
            this.f3267x = function1;
        }
        SemanticsPropertiesKt.E(nVar, new AnnotatedString(this.f3257n, null, null, 6, null));
        a aVar = this.f3268y;
        if (aVar != null) {
            SemanticsPropertiesKt.D(nVar, aVar.c());
            SemanticsPropertiesKt.F(nVar, new AnnotatedString(aVar.b(), null, null, 6, null));
        }
        SemanticsPropertiesKt.H(nVar, null, new Function1<AnnotatedString, Boolean>() { // from class: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$applySemantics$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(AnnotatedString annotatedString) {
                this.this$0.P1(annotatedString.i());
                this.this$0.O1();
                return Boolean.TRUE;
            }
        }, 1, null);
        SemanticsPropertiesKt.M(nVar, null, new Function1<Boolean, Boolean>() { // from class: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$applySemantics$3
            {
                super(1);
            }

            public final Boolean invoke(boolean z10) {
                if (this.this$0.f3268y == null) {
                    return Boolean.FALSE;
                }
                TextStringSimpleNode.a aVar2 = this.this$0.f3268y;
                if (aVar2 != null) {
                    aVar2.e(z10);
                }
                this.this$0.O1();
                return Boolean.TRUE;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke(((Boolean) obj).booleanValue());
            }
        }, 1, null);
        SemanticsPropertiesKt.d(nVar, null, new Function0<Boolean>() { // from class: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$applySemantics$4
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                this.this$0.K1();
                this.this$0.O1();
                return Boolean.TRUE;
            }
        }, 1, null);
        SemanticsPropertiesKt.j(nVar, null, function1, 1, null);
    }

    public final boolean R1(d0 d0Var, int i11, int i12, boolean z10, androidx.compose.ui.text.font.h.b bVar, int i13) {
        boolean z11 = !this.f3258o.G(d0Var);
        this.f3258o = d0Var;
        if (this.f3263t != i11) {
            this.f3263t = i11;
            z11 = true;
        }
        if (this.f3262s != i12) {
            this.f3262s = i12;
            z11 = true;
        }
        if (this.f3261r != z10) {
            this.f3261r = z10;
            z11 = true;
        }
        if (!Intrinsics.c(this.f3259p, bVar)) {
            this.f3259p = bVar;
            z11 = true;
        }
        if (p.e(this.f3260q, i13)) {
            return z11;
        }
        this.f3260q = i13;
        return true;
    }

    public final boolean S1(String str) {
        if (Intrinsics.c(this.f3257n, str)) {
            return false;
        }
        this.f3257n = str;
        K1();
        return true;
    }

    @Override // androidx.compose.ui.node.i1
    public /* synthetic */ boolean W0() {
        return h1.b(this);
    }

    @Override // androidx.compose.ui.node.n
    public void n(z.c cVar) {
        if (k1()) {
            f fVarN1 = N1(cVar);
            l lVarE = fVarN1.e();
            if (lVarE == null) {
                throw new IllegalArgumentException(("no paragraph (layoutCache=" + this.f3266w + ", textSubstitution=" + this.f3268y + ')').toString());
            }
            m1 m1VarE = cVar.H0().e();
            boolean zB = fVarN1.b();
            if (zB) {
                float fG = t.g(fVarN1.c());
                float f11 = t.f(fVarN1.c());
                m1VarE.n();
                l1.d(m1VarE, 0.0f, 0.0f, fG, f11, 0, 16, null);
            }
            try {
                androidx.compose.ui.text.style.i iVarA = this.f3258o.A();
                if (iVarA == null) {
                    iVarA = androidx.compose.ui.text.style.i.f6409b.c();
                }
                androidx.compose.ui.text.style.i iVar = iVarA;
                z4 z4VarX = this.f3258o.x();
                if (z4VarX == null) {
                    z4VarX = z4.f4921d.a();
                }
                z4 z4Var = z4VarX;
                z.h hVarI = this.f3258o.i();
                if (hVarI == null) {
                    hVarI = z.l.f79114a;
                }
                z.h hVar = hVarI;
                androidx.compose.ui.graphics.j1 j1VarG = this.f3258o.g();
                if (j1VarG != null) {
                    k.b(lVarE, m1VarE, j1VarG, this.f3258o.d(), z4Var, iVar, hVar, 0, 64, null);
                } else {
                    x1 x1Var = this.f3264u;
                    long jA = x1Var != null ? x1Var.a() : u1.f4658b.e();
                    if (jA == 16) {
                        jA = this.f3258o.h() != 16 ? this.f3258o.h() : u1.f4658b.a();
                    }
                    k.a(lVarE, m1VarE, jA, z4Var, iVar, hVar, 0, 32, null);
                }
            } finally {
                if (zB) {
                    m1VarE.j();
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.n
    public /* synthetic */ void w0() {
        m.a(this);
    }

    @Override // androidx.compose.ui.node.x
    public v z(androidx.compose.ui.layout.x xVar, s sVar, long j11) {
        f fVarN1 = N1(xVar);
        boolean zG = fVarN1.g(j11, xVar.getLayoutDirection());
        fVarN1.d();
        l lVarE = fVarN1.e();
        Intrinsics.e(lVarE);
        long jC = fVarN1.c();
        if (zG) {
            a0.a(this);
            Map linkedHashMap = this.f3265v;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap(2);
            }
            linkedHashMap.put(AlignmentLineKt.a(), Integer.valueOf(Math.round(lVarE.e())));
            linkedHashMap.put(AlignmentLineKt.b(), Integer.valueOf(Math.round(lVarE.o())));
            this.f3265v = linkedHashMap;
        }
        final g0 g0VarP = sVar.P(o0.b.f70596b.b(t.g(jC), t.g(jC), t.f(jC), t.f(jC)));
        int iG = t.g(jC);
        int iF = t.f(jC);
        Map map = this.f3265v;
        Intrinsics.e(map);
        return xVar.p0(iG, iF, map, new Function1<g0.a, Unit>() { // from class: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$measure$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((g0.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(g0.a aVar) {
                g0.a.h(aVar, g0VarP, 0, 0, 0.0f, 4, null);
            }
        });
    }
}
