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
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.style.j;
import androidx.compose.ui.text.style.p;
import androidx.compose.ui.text.y;
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
import z.l;

/* JADX INFO: loaded from: classes.dex */
public final class TextAnnotatedStringNode extends androidx.compose.ui.f.c implements x, n, i1 {
    private Map A;
    private e B;
    private Function1 C;
    private a D;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private AnnotatedString f3232n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private d0 f3233o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private androidx.compose.ui.text.font.h.b f3234p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Function1 f3235q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f3236r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f3237s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f3238t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f3239u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private List f3240v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Function1 f3241w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private h f3242x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private x1 f3243y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Function1 f3244z;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AnnotatedString f3245a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private AnnotatedString f3246b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f3247c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private e f3248d;

        public a(AnnotatedString annotatedString, AnnotatedString annotatedString2, boolean z10, e eVar) {
            this.f3245a = annotatedString;
            this.f3246b = annotatedString2;
            this.f3247c = z10;
            this.f3248d = eVar;
        }

        public /* synthetic */ a(AnnotatedString annotatedString, AnnotatedString annotatedString2, boolean z10, e eVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(annotatedString, annotatedString2, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? null : eVar);
        }

        public final e a() {
            return this.f3248d;
        }

        public final AnnotatedString b() {
            return this.f3246b;
        }

        public final boolean c() {
            return this.f3247c;
        }

        public final void d(e eVar) {
            this.f3248d = eVar;
        }

        public final void e(boolean z10) {
            this.f3247c = z10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f3245a, aVar.f3245a) && Intrinsics.c(this.f3246b, aVar.f3246b) && this.f3247c == aVar.f3247c && Intrinsics.c(this.f3248d, aVar.f3248d);
        }

        public final void f(AnnotatedString annotatedString) {
            this.f3246b = annotatedString;
        }

        public int hashCode() {
            int iHashCode = ((((this.f3245a.hashCode() * 31) + this.f3246b.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f3247c)) * 31;
            e eVar = this.f3248d;
            return iHashCode + (eVar == null ? 0 : eVar.hashCode());
        }

        public String toString() {
            return "TextSubstitutionValue(original=" + ((Object) this.f3245a) + ", substitution=" + ((Object) this.f3246b) + ", isShowingSubstitution=" + this.f3247c + ", layoutCache=" + this.f3248d + ')';
        }
    }

    private TextAnnotatedStringNode(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, Function1 function1, int i11, boolean z10, int i12, int i13, List list, Function1 function2, h hVar, x1 x1Var, Function1 function3) {
        this.f3232n = annotatedString;
        this.f3233o = d0Var;
        this.f3234p = bVar;
        this.f3235q = function1;
        this.f3236r = i11;
        this.f3237s = z10;
        this.f3238t = i12;
        this.f3239u = i13;
        this.f3240v = list;
        this.f3241w = function2;
        this.f3243y = x1Var;
        this.f3244z = function3;
    }

    public /* synthetic */ TextAnnotatedStringNode(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, Function1 function1, int i11, boolean z10, int i12, int i13, List list, Function1 function2, h hVar, x1 x1Var, Function1 function3, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, d0Var, bVar, function1, i11, z10, i12, i13, list, function2, hVar, x1Var, function3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final e M1() {
        if (this.B == null) {
            this.B = new e(this.f3232n, this.f3233o, this.f3234p, this.f3236r, this.f3237s, this.f3238t, this.f3239u, this.f3240v, null);
        }
        e eVar = this.B;
        Intrinsics.e(eVar);
        return eVar;
    }

    private final e N1(o0.e eVar) {
        e eVarA;
        a aVar = this.D;
        if (aVar != null && aVar.c() && (eVarA = aVar.a()) != null) {
            eVarA.h(eVar);
            return eVarA;
        }
        e eVarM1 = M1();
        eVarM1.h(eVar);
        return eVarM1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P1() {
        j1.b(this);
        a0.b(this);
        o.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean R1(AnnotatedString annotatedString) {
        Unit unit;
        a aVar = this.D;
        if (aVar == null) {
            a aVar2 = new a(this.f3232n, annotatedString, false, null, 12, null);
            e eVar = new e(annotatedString, this.f3233o, this.f3234p, this.f3236r, this.f3237s, this.f3238t, this.f3239u, this.f3240v, null);
            eVar.h(M1().a());
            aVar2.d(eVar);
            this.D = aVar2;
            return true;
        }
        if (Intrinsics.c(annotatedString, aVar.b())) {
            return false;
        }
        aVar.f(annotatedString);
        e eVarA = aVar.a();
        if (eVarA != null) {
            eVarA.k(annotatedString, this.f3233o, this.f3234p, this.f3236r, this.f3237s, this.f3238t, this.f3239u, this.f3240v);
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        return unit != null;
    }

    public final void J1() {
        this.D = null;
    }

    public final void K1(boolean z10, boolean z11, boolean z12, boolean z13) {
        if (z11 || z12 || z13) {
            M1().k(this.f3232n, this.f3233o, this.f3234p, this.f3236r, this.f3237s, this.f3238t, this.f3239u, this.f3240v);
        }
        if (k1()) {
            if (z11 || (z10 && this.C != null)) {
                j1.b(this);
            }
            if (z11 || z12 || z13) {
                a0.b(this);
                o.a(this);
            }
            if (z10) {
                o.a(this);
            }
        }
    }

    public final void L1(z.c cVar) {
        n(cVar);
    }

    @Override // androidx.compose.ui.node.i1
    public boolean O() {
        return true;
    }

    public final a O1() {
        return this.D;
    }

    public final v Q1(androidx.compose.ui.layout.x xVar, s sVar, long j11) {
        return z(xVar, sVar, j11);
    }

    @Override // androidx.compose.ui.node.i1
    public void R0(androidx.compose.ui.semantics.n nVar) {
        Function1<List<z>, Boolean> function1 = this.C;
        if (function1 == null) {
            function1 = new Function1<List<z>, Boolean>() { // from class: androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode$applySemantics$1
                {
                    super(1);
                }

                /* JADX WARN: Code duplicated, block: B:11:0x00b8  */
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(List<z> list) {
                    z zVarB;
                    z zVarB2 = this.this$0.M1().b();
                    if (zVarB2 != null) {
                        AnnotatedString annotatedStringJ = zVarB2.k().j();
                        d0 d0Var = this.this$0.f3233o;
                        x1 x1Var = this.this$0.f3243y;
                        zVarB = z.b(zVarB2, new y(annotatedStringJ, d0Var.I((16777214 & 1) != 0 ? u1.f4658b.e() : x1Var != null ? x1Var.a() : u1.f4658b.e(), (16777214 & 2) != 0 ? w.f70628b.a() : 0L, (16777214 & 4) != 0 ? null : null, (16777214 & 8) != 0 ? null : null, (16777214 & 16) != 0 ? null : null, (16777214 & 32) != 0 ? null : null, (16777214 & 64) != 0 ? null : null, (16777214 & 128) != 0 ? w.f70628b.a() : 0L, (16777214 & 256) != 0 ? null : null, (16777214 & 512) != 0 ? null : null, (16777214 & 1024) != 0 ? null : null, (16777214 & 2048) != 0 ? u1.f4658b.e() : 0L, (16777214 & 4096) != 0 ? null : null, (16777214 & 8192) != 0 ? null : null, (16777214 & 16384) != 0 ? null : null, (16777214 & 32768) != 0 ? androidx.compose.ui.text.style.h.f6400b.g() : 0, (16777214 & 65536) != 0 ? j.f6414b.f() : 0, (16777214 & 131072) != 0 ? w.f70628b.a() : 0L, (16777214 & 262144) != 0 ? null : null, (16777214 & 524288) != 0 ? null : null, (16777214 & 1048576) != 0 ? androidx.compose.ui.text.style.e.f6366a.b() : 0, (16777214 & 2097152) != 0 ? androidx.compose.ui.text.style.d.f6362a.c() : 0, (16777214 & 4194304) != 0 ? null : null, (16777214 & 8388608) != 0 ? null : null), zVarB2.k().g(), zVarB2.k().e(), zVarB2.k().h(), zVarB2.k().f(), zVarB2.k().b(), zVarB2.k().d(), zVarB2.k().c(), zVarB2.k().a(), (DefaultConstructorMarker) null), 0L, 2, null);
                        if (zVarB != null) {
                            list.add(zVarB);
                        } else {
                            zVarB = null;
                        }
                    } else {
                        zVarB = null;
                    }
                    return Boolean.valueOf(zVarB != null);
                }
            };
            this.C = function1;
        }
        SemanticsPropertiesKt.E(nVar, this.f3232n);
        a aVar = this.D;
        if (aVar != null) {
            SemanticsPropertiesKt.F(nVar, aVar.b());
            SemanticsPropertiesKt.D(nVar, aVar.c());
        }
        SemanticsPropertiesKt.H(nVar, null, new Function1<AnnotatedString, Boolean>() { // from class: androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode$applySemantics$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(AnnotatedString annotatedString) {
                this.this$0.R1(annotatedString);
                this.this$0.P1();
                return Boolean.TRUE;
            }
        }, 1, null);
        SemanticsPropertiesKt.M(nVar, null, new Function1<Boolean, Boolean>() { // from class: androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode$applySemantics$3
            {
                super(1);
            }

            public final Boolean invoke(boolean z10) {
                if (this.this$0.O1() == null) {
                    return Boolean.FALSE;
                }
                Function1 function2 = this.this$0.f3244z;
                if (function2 != null) {
                    TextAnnotatedStringNode.a aVarO1 = this.this$0.O1();
                    Intrinsics.e(aVarO1);
                    function2.invoke(aVarO1);
                }
                TextAnnotatedStringNode.a aVarO2 = this.this$0.O1();
                if (aVarO2 != null) {
                    aVarO2.e(z10);
                }
                this.this$0.P1();
                return Boolean.TRUE;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke(((Boolean) obj).booleanValue());
            }
        }, 1, null);
        SemanticsPropertiesKt.d(nVar, null, new Function0<Boolean>() { // from class: androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode$applySemantics$4
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                this.this$0.J1();
                this.this$0.P1();
                return Boolean.TRUE;
            }
        }, 1, null);
        SemanticsPropertiesKt.j(nVar, null, function1, 1, null);
    }

    public final boolean S1(Function1 function1, Function1 function2, h hVar, Function1 function3) {
        boolean z10;
        if (this.f3235q != function1) {
            this.f3235q = function1;
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f3241w != function2) {
            this.f3241w = function2;
            z10 = true;
        }
        if (!Intrinsics.c(this.f3242x, hVar)) {
            z10 = true;
        }
        if (this.f3244z == function3) {
            return z10;
        }
        this.f3244z = function3;
        return true;
    }

    public final boolean T1(x1 x1Var, d0 d0Var) {
        boolean zC = Intrinsics.c(x1Var, this.f3243y);
        this.f3243y = x1Var;
        return (zC && d0Var.F(this.f3233o)) ? false : true;
    }

    public final boolean U1(d0 d0Var, List list, int i11, int i12, boolean z10, androidx.compose.ui.text.font.h.b bVar, int i13) {
        boolean z11 = !this.f3233o.G(d0Var);
        this.f3233o = d0Var;
        if (!Intrinsics.c(this.f3240v, list)) {
            this.f3240v = list;
            z11 = true;
        }
        if (this.f3239u != i11) {
            this.f3239u = i11;
            z11 = true;
        }
        if (this.f3238t != i12) {
            this.f3238t = i12;
            z11 = true;
        }
        if (this.f3237s != z10) {
            this.f3237s = z10;
            z11 = true;
        }
        if (!Intrinsics.c(this.f3234p, bVar)) {
            this.f3234p = bVar;
            z11 = true;
        }
        if (p.e(this.f3236r, i13)) {
            return z11;
        }
        this.f3236r = i13;
        return true;
    }

    public final boolean V1(AnnotatedString annotatedString) {
        boolean zC = Intrinsics.c(this.f3232n.i(), annotatedString.i());
        boolean z10 = (zC && Intrinsics.c(this.f3232n.g(), annotatedString.g()) && Intrinsics.c(this.f3232n.e(), annotatedString.e()) && this.f3232n.l(annotatedString)) ? false : true;
        if (z10) {
            this.f3232n = annotatedString;
        }
        if (!zC) {
            J1();
        }
        return z10;
    }

    @Override // androidx.compose.ui.node.i1
    public /* synthetic */ boolean W0() {
        return h1.b(this);
    }

    @Override // androidx.compose.ui.node.n
    public void n(z.c cVar) {
        if (k1()) {
            m1 m1VarE = cVar.H0().e();
            z zVarC = N1(cVar).c();
            MultiParagraph multiParagraphV = zVarC.v();
            boolean z10 = true;
            boolean z11 = zVarC.i() && !p.e(this.f3236r, p.f6442a.c());
            if (z11) {
                y.i iVarA = y.j.a(y.g.f78470b.c(), y.n.a(t.g(zVarC.y()), t.f(zVarC.y())));
                m1VarE.n();
                l1.e(m1VarE, iVarA, 0, 2, null);
            }
            try {
                androidx.compose.ui.text.style.i iVarA2 = this.f3233o.A();
                if (iVarA2 == null) {
                    iVarA2 = androidx.compose.ui.text.style.i.f6409b.c();
                }
                androidx.compose.ui.text.style.i iVar = iVarA2;
                z4 z4VarX = this.f3233o.x();
                if (z4VarX == null) {
                    z4VarX = z4.f4921d.a();
                }
                z4 z4Var = z4VarX;
                z.h hVarI = this.f3233o.i();
                if (hVarI == null) {
                    hVarI = l.f79114a;
                }
                z.h hVar = hVarI;
                androidx.compose.ui.graphics.j1 j1VarG = this.f3233o.g();
                if (j1VarG != null) {
                    multiParagraphV.z(m1VarE, j1VarG, (64 & 4) != 0 ? Float.NaN : this.f3233o.d(), (64 & 8) != 0 ? null : z4Var, (64 & 16) != 0 ? null : iVar, (64 & 32) != 0 ? null : hVar, (64 & 64) != 0 ? z.g.f79110o1.a() : 0);
                } else {
                    x1 x1Var = this.f3243y;
                    long jA = x1Var != null ? x1Var.a() : u1.f4658b.e();
                    if (jA == 16) {
                        jA = this.f3233o.h() != 16 ? this.f3233o.h() : u1.f4658b.a();
                    }
                    multiParagraphV.x(m1VarE, (32 & 2) != 0 ? u1.f4658b.e() : jA, (32 & 4) != 0 ? null : z4Var, (32 & 8) != 0 ? null : iVar, (32 & 16) == 0 ? hVar : null, (32 & 32) != 0 ? z.g.f79110o1.a() : 0);
                }
                if (z11) {
                    m1VarE.j();
                }
                a aVar = this.D;
                if (!((aVar == null || !aVar.c()) ? i.a(this.f3232n) : false)) {
                    List list = this.f3240v;
                    if (list != null && !list.isEmpty()) {
                        z10 = false;
                    }
                    if (z10) {
                        return;
                    }
                }
                cVar.Y0();
            } catch (Throwable th2) {
                if (z11) {
                    m1VarE.j();
                }
                throw th2;
            }
        }
    }

    @Override // androidx.compose.ui.node.n
    public /* synthetic */ void w0() {
        m.a(this);
    }

    @Override // androidx.compose.ui.node.x
    public v z(androidx.compose.ui.layout.x xVar, s sVar, long j11) {
        e eVarN1 = N1(xVar);
        boolean zE = eVarN1.e(j11, xVar.getLayoutDirection());
        z zVarC = eVarN1.c();
        zVarC.v().i().b();
        if (zE) {
            a0.a(this);
            Function1 function1 = this.f3235q;
            if (function1 != null) {
                function1.invoke(zVarC);
            }
            Map linkedHashMap = this.A;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap(2);
            }
            linkedHashMap.put(AlignmentLineKt.a(), Integer.valueOf(Math.round(zVarC.h())));
            linkedHashMap.put(AlignmentLineKt.b(), Integer.valueOf(Math.round(zVarC.j())));
            this.A = linkedHashMap;
        }
        Function1 function2 = this.f3241w;
        if (function2 != null) {
            function2.invoke(zVarC.x());
        }
        final g0 g0VarP = sVar.P(o0.b.f70596b.b(t.g(zVarC.y()), t.g(zVarC.y()), t.f(zVarC.y()), t.f(zVarC.y())));
        int iG = t.g(zVarC.y());
        int iF = t.f(zVarC.y());
        Map map = this.A;
        Intrinsics.e(map);
        return xVar.p0(iG, iF, map, new Function1<g0.a, Unit>() { // from class: androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode$measure$1
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
