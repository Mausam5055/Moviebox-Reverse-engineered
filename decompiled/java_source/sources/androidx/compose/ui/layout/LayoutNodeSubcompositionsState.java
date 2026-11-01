package androidx.compose.ui.layout;

import androidx.compose.runtime.d2;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.n1;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.platform.b3;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.ViewCompat;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutNodeSubcompositionsState implements androidx.compose.runtime.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LayoutNode f5099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.compose.runtime.m f5100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private p0 f5101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5103e;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f5112n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f5113o;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashMap f5104f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap f5105g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final c f5106h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b f5107i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final HashMap f5108j = new HashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final p0.a f5109k = new p0.a(null, 1, null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Map f5110l = new LinkedHashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f5111m = new androidx.compose.runtime.collection.b(new Object[16], 0);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f5114p = "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve 'match parent' sizing, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement.";

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f5115a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Function2 f5116b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private d2 f5117c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f5118d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f5119e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private i1 f5120f;

        public a(Object obj, Function2 function2, d2 d2Var) {
            this.f5115a = obj;
            this.f5116b = function2;
            this.f5117c = d2Var;
            this.f5120f = u2.c(Boolean.TRUE, null, 2, null);
        }

        public /* synthetic */ a(Object obj, Function2 function2, d2 d2Var, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, function2, (i11 & 4) != 0 ? null : d2Var);
        }

        public final boolean a() {
            return ((Boolean) this.f5120f.getValue()).booleanValue();
        }

        public final d2 b() {
            return this.f5117c;
        }

        public final Function2 c() {
            return this.f5116b;
        }

        public final boolean d() {
            return this.f5118d;
        }

        public final boolean e() {
            return this.f5119e;
        }

        public final Object f() {
            return this.f5115a;
        }

        public final void g(boolean z10) {
            this.f5120f.setValue(Boolean.valueOf(z10));
        }

        public final void h(i1 i1Var) {
            this.f5120f = i1Var;
        }

        public final void i(d2 d2Var) {
            this.f5117c = d2Var;
        }

        public final void j(Function2 function2) {
            this.f5116b = function2;
        }

        public final void k(boolean z10) {
            this.f5118d = z10;
        }

        public final void l(boolean z10) {
            this.f5119e = z10;
        }

        public final void m(Object obj) {
            this.f5115a = obj;
        }
    }

    private final class b implements o0, x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ c f5121a;

        public b() {
            this.f5121a = LayoutNodeSubcompositionsState.this.f5106h;
        }

        @Override // o0.n
        public float C0() {
            return this.f5121a.C0();
        }

        @Override // androidx.compose.ui.layout.o0
        public List E(Object obj, Function2 function2) {
            LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.f5105g.get(obj);
            List listD = layoutNode != null ? layoutNode.D() : null;
            return listD != null ? listD : LayoutNodeSubcompositionsState.this.C(obj, function2);
        }

        @Override // o0.e
        public float E0(float f11) {
            return this.f5121a.E0(f11);
        }

        @Override // o0.n
        public long H(float f11) {
            return this.f5121a.H(f11);
        }

        @Override // o0.n
        public float J(long j11) {
            return this.f5121a.J(j11);
        }

        @Override // androidx.compose.ui.layout.x
        public v M0(int i11, int i12, Map map, Function1 function1, Function1 function2) {
            return this.f5121a.M0(i11, i12, map, function1, function2);
        }

        @Override // o0.e
        public long Q(float f11) {
            return this.f5121a.Q(f11);
        }

        @Override // o0.e
        public long Q0(long j11) {
            return this.f5121a.Q0(j11);
        }

        @Override // androidx.compose.ui.layout.j
        public boolean W() {
            return this.f5121a.W();
        }

        @Override // o0.e
        public int c0(float f11) {
            return this.f5121a.c0(f11);
        }

        @Override // o0.e
        public float getDensity() {
            return this.f5121a.getDensity();
        }

        @Override // androidx.compose.ui.layout.j
        public LayoutDirection getLayoutDirection() {
            return this.f5121a.getLayoutDirection();
        }

        @Override // o0.e
        public float h0(long j11) {
            return this.f5121a.h0(j11);
        }

        @Override // androidx.compose.ui.layout.x
        public v p0(int i11, int i12, Map map, Function1 function1) {
            return this.f5121a.p0(i11, i12, map, function1);
        }

        @Override // o0.e
        public float x0(int i11) {
            return this.f5121a.x0(i11);
        }

        @Override // o0.e
        public float y0(float f11) {
            return this.f5121a.y0(f11);
        }
    }

    private final class c implements o0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private LayoutDirection f5123a = LayoutDirection.Rtl;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f5124b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f5125c;

        public static final class a implements v {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f5127a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f5128b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Map f5129c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Function1 f5130d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ c f5131e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ LayoutNodeSubcompositionsState f5132f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ Function1 f5133g;

            a(int i11, int i12, Map map, Function1 function1, c cVar, LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, Function1 function2) {
                this.f5127a = i11;
                this.f5128b = i12;
                this.f5129c = map;
                this.f5130d = function1;
                this.f5131e = cVar;
                this.f5132f = layoutNodeSubcompositionsState;
                this.f5133g = function2;
            }

            @Override // androidx.compose.ui.layout.v
            public int getHeight() {
                return this.f5128b;
            }

            @Override // androidx.compose.ui.layout.v
            public int getWidth() {
                return this.f5127a;
            }

            @Override // androidx.compose.ui.layout.v
            public Map v() {
                return this.f5129c;
            }

            @Override // androidx.compose.ui.layout.v
            public void w() {
                androidx.compose.ui.node.j0 j0VarU1;
                if (!this.f5131e.W() || (j0VarU1 = this.f5132f.f5099a.M().U1()) == null) {
                    this.f5133g.invoke(this.f5132f.f5099a.M().d1());
                } else {
                    this.f5133g.invoke(j0VarU1.d1());
                }
            }

            @Override // androidx.compose.ui.layout.v
            public Function1 x() {
                return this.f5130d;
            }
        }

        public c() {
        }

        @Override // o0.n
        public float C0() {
            return this.f5125c;
        }

        @Override // androidx.compose.ui.layout.o0
        public List E(Object obj, Function2 function2) {
            return LayoutNodeSubcompositionsState.this.H(obj, function2);
        }

        @Override // o0.e
        public /* synthetic */ float E0(float f11) {
            return o0.d.e(this, f11);
        }

        @Override // o0.n
        public /* synthetic */ long H(float f11) {
            return o0.m.b(this, f11);
        }

        @Override // o0.n
        public /* synthetic */ float J(long j11) {
            return o0.m.a(this, j11);
        }

        @Override // androidx.compose.ui.layout.x
        public v M0(int i11, int i12, Map map, Function1 function1, Function1 function2) {
            if (!((i11 & ViewCompat.MEASURED_STATE_MASK) == 0 && ((-16777216) & i12) == 0)) {
                g0.a.b("Size(" + i11 + " x " + i12 + ") is out of range. Each dimension must be between 0 and 16777215.");
            }
            return new a(i11, i12, map, function1, this, LayoutNodeSubcompositionsState.this, function2);
        }

        @Override // o0.e
        public /* synthetic */ long Q(float f11) {
            return o0.d.g(this, f11);
        }

        @Override // o0.e
        public /* synthetic */ long Q0(long j11) {
            return o0.d.f(this, j11);
        }

        @Override // androidx.compose.ui.layout.j
        public boolean W() {
            return LayoutNodeSubcompositionsState.this.f5099a.R() == LayoutNode.LayoutState.LookaheadLayingOut || LayoutNodeSubcompositionsState.this.f5099a.R() == LayoutNode.LayoutState.LookaheadMeasuring;
        }

        @Override // o0.e
        public /* synthetic */ int c0(float f11) {
            return o0.d.a(this, f11);
        }

        @Override // o0.e
        public float getDensity() {
            return this.f5124b;
        }

        @Override // androidx.compose.ui.layout.j
        public LayoutDirection getLayoutDirection() {
            return this.f5123a;
        }

        @Override // o0.e
        public /* synthetic */ float h0(long j11) {
            return o0.d.d(this, j11);
        }

        public void n(float f11) {
            this.f5124b = f11;
        }

        @Override // androidx.compose.ui.layout.x
        public /* synthetic */ v p0(int i11, int i12, Map map, Function1 function1) {
            return w.a(this, i11, i12, map, function1);
        }

        public void v(float f11) {
            this.f5125c = f11;
        }

        @Override // o0.e
        public /* synthetic */ float x0(int i11) {
            return o0.d.c(this, i11);
        }

        @Override // o0.e
        public /* synthetic */ float y0(float f11) {
            return o0.d.b(this, f11);
        }

        public void z(LayoutDirection layoutDirection) {
            this.f5123a = layoutDirection;
        }
    }

    public static final class d extends LayoutNode.d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Function2 f5135c;

        public static final class a implements v {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final /* synthetic */ v f5136a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ LayoutNodeSubcompositionsState f5137b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f5138c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ v f5139d;

            public a(v vVar, LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, int i11, v vVar2) {
                this.f5137b = layoutNodeSubcompositionsState;
                this.f5138c = i11;
                this.f5139d = vVar2;
                this.f5136a = vVar;
            }

            @Override // androidx.compose.ui.layout.v
            public int getHeight() {
                return this.f5136a.getHeight();
            }

            @Override // androidx.compose.ui.layout.v
            public int getWidth() {
                return this.f5136a.getWidth();
            }

            @Override // androidx.compose.ui.layout.v
            public Map v() {
                return this.f5136a.v();
            }

            @Override // androidx.compose.ui.layout.v
            public void w() {
                this.f5137b.f5103e = this.f5138c;
                this.f5139d.w();
                this.f5137b.v();
            }

            @Override // androidx.compose.ui.layout.v
            public Function1 x() {
                return this.f5136a.x();
            }
        }

        public static final class b implements v {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final /* synthetic */ v f5140a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ LayoutNodeSubcompositionsState f5141b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f5142c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ v f5143d;

            public b(v vVar, LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, int i11, v vVar2) {
                this.f5141b = layoutNodeSubcompositionsState;
                this.f5142c = i11;
                this.f5143d = vVar2;
                this.f5140a = vVar;
            }

            @Override // androidx.compose.ui.layout.v
            public int getHeight() {
                return this.f5140a.getHeight();
            }

            @Override // androidx.compose.ui.layout.v
            public int getWidth() {
                return this.f5140a.getWidth();
            }

            @Override // androidx.compose.ui.layout.v
            public Map v() {
                return this.f5140a.v();
            }

            @Override // androidx.compose.ui.layout.v
            public void w() {
                this.f5141b.f5102d = this.f5142c;
                this.f5143d.w();
                LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.f5141b;
                layoutNodeSubcompositionsState.u(layoutNodeSubcompositionsState.f5102d);
            }

            @Override // androidx.compose.ui.layout.v
            public Function1 x() {
                return this.f5140a.x();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Function2 function2, String str) {
            super(str);
            this.f5135c = function2;
        }

        @Override // androidx.compose.ui.layout.t
        public v c(x xVar, List list, long j11) {
            LayoutNodeSubcompositionsState.this.f5106h.z(xVar.getLayoutDirection());
            LayoutNodeSubcompositionsState.this.f5106h.n(xVar.getDensity());
            LayoutNodeSubcompositionsState.this.f5106h.v(xVar.C0());
            if (xVar.W() || LayoutNodeSubcompositionsState.this.f5099a.V() == null) {
                LayoutNodeSubcompositionsState.this.f5102d = 0;
                v vVar = (v) this.f5135c.invoke(LayoutNodeSubcompositionsState.this.f5106h, o0.b.a(j11));
                return new b(vVar, LayoutNodeSubcompositionsState.this, LayoutNodeSubcompositionsState.this.f5102d, vVar);
            }
            LayoutNodeSubcompositionsState.this.f5103e = 0;
            v vVar2 = (v) this.f5135c.invoke(LayoutNodeSubcompositionsState.this.f5107i, o0.b.a(j11));
            return new a(vVar2, LayoutNodeSubcompositionsState.this, LayoutNodeSubcompositionsState.this.f5103e, vVar2);
        }
    }

    public static final class e implements SubcomposeLayoutState.a {
        e() {
        }

        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.a
        public /* synthetic */ void a(Object obj, Function1 function1) {
            n0.c(this, obj, function1);
        }

        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.a
        public /* synthetic */ int b() {
            return n0.a(this);
        }

        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.a
        public /* synthetic */ void c(int i11, long j11) {
            n0.b(this, i11, j11);
        }

        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.a
        public void dispose() {
        }
    }

    public static final class f implements SubcomposeLayoutState.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f5145b;

        f(Object obj) {
            this.f5145b = obj;
        }

        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.a
        public void a(Object obj, Function1 function1) {
            q0 q0VarE0;
            androidx.compose.ui.f.c cVarK;
            LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.f5108j.get(this.f5145b);
            if (layoutNode == null || (q0VarE0 = layoutNode.e0()) == null || (cVarK = q0VarE0.k()) == null) {
                return;
            }
            n1.d(cVarK, obj, function1);
        }

        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.a
        public int b() {
            List listE;
            LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.f5108j.get(this.f5145b);
            if (layoutNode == null || (listE = layoutNode.E()) == null) {
                return 0;
            }
            return listE.size();
        }

        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.a
        public void c(int i11, long j11) {
            LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.f5108j.get(this.f5145b);
            if (layoutNode == null || !layoutNode.D0()) {
                return;
            }
            int size = layoutNode.E().size();
            if (i11 < 0 || i11 >= size) {
                throw new IndexOutOfBoundsException("Index (" + i11 + ") is out of bound of [0, " + size + ')');
            }
            if (layoutNode.n()) {
                throw new IllegalArgumentException("Pre-measure called on node that is not placed");
            }
            LayoutNode layoutNode2 = LayoutNodeSubcompositionsState.this.f5099a;
            layoutNode2.f5252n = true;
            androidx.compose.ui.node.f0.b(layoutNode).mo143measureAndLayout0kLqBqw((LayoutNode) layoutNode.E().get(i11), j11);
            layoutNode2.f5252n = false;
        }

        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.a
        public void dispose() {
            LayoutNodeSubcompositionsState.this.y();
            LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.f5108j.remove(this.f5145b);
            if (layoutNode != null) {
                if (LayoutNodeSubcompositionsState.this.f5113o <= 0) {
                    throw new IllegalStateException("No pre-composed items to dispose");
                }
                int iIndexOf = LayoutNodeSubcompositionsState.this.f5099a.J().indexOf(layoutNode);
                if (iIndexOf < LayoutNodeSubcompositionsState.this.f5099a.J().size() - LayoutNodeSubcompositionsState.this.f5113o) {
                    throw new IllegalStateException("Item is not in pre-composed item range");
                }
                LayoutNodeSubcompositionsState.this.f5112n++;
                LayoutNodeSubcompositionsState.this.f5113o--;
                int size = (LayoutNodeSubcompositionsState.this.f5099a.J().size() - LayoutNodeSubcompositionsState.this.f5113o) - LayoutNodeSubcompositionsState.this.f5112n;
                LayoutNodeSubcompositionsState.this.A(iIndexOf, size, 1);
                LayoutNodeSubcompositionsState.this.u(size);
            }
        }
    }

    public LayoutNodeSubcompositionsState(LayoutNode layoutNode, p0 p0Var) {
        this.f5099a = layoutNode;
        this.f5101c = p0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(int i11, int i12, int i13) {
        LayoutNode layoutNode = this.f5099a;
        layoutNode.f5252n = true;
        this.f5099a.P0(i11, i12, i13);
        layoutNode.f5252n = false;
    }

    static /* synthetic */ void B(LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 4) != 0) {
            i13 = 1;
        }
        layoutNodeSubcompositionsState.A(i11, i12, i13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List C(Object obj, Function2 function2) {
        if (this.f5111m.n() < this.f5103e) {
            throw new IllegalArgumentException("Error: currentPostLookaheadIndex cannot be greater than the size of thepostLookaheadComposedSlotIds list.");
        }
        int iN = this.f5111m.n();
        int i11 = this.f5103e;
        if (iN == i11) {
            this.f5111m.b(obj);
        } else {
            this.f5111m.y(i11, obj);
        }
        this.f5103e++;
        if (!this.f5108j.containsKey(obj)) {
            this.f5110l.put(obj, D(obj, function2));
            if (this.f5099a.R() == LayoutNode.LayoutState.LayingOut) {
                this.f5099a.a1(true);
            } else {
                LayoutNode.d1(this.f5099a, true, false, false, 6, null);
            }
        }
        LayoutNode layoutNode = (LayoutNode) this.f5108j.get(obj);
        if (layoutNode == null) {
            return CollectionsKt.l();
        }
        List listZ0 = layoutNode.X().Z0();
        int size = listZ0.size();
        for (int i12 = 0; i12 < size; i12++) {
            ((LayoutNodeLayoutDelegate.MeasurePassDelegate) listZ0.get(i12)).i1();
        }
        return listZ0;
    }

    private final void E(LayoutNode layoutNode) {
        LayoutNodeLayoutDelegate.MeasurePassDelegate measurePassDelegateX = layoutNode.X();
        LayoutNode.UsageByParent usageByParent = LayoutNode.UsageByParent.NotUsed;
        measurePassDelegateX.u1(usageByParent);
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = layoutNode.U();
        if (lookaheadPassDelegateU != null) {
            lookaheadPassDelegateU.n1(usageByParent);
        }
    }

    private final void I(LayoutNode layoutNode, final a aVar) {
        androidx.compose.runtime.snapshots.j.a aVar2 = androidx.compose.runtime.snapshots.j.f4004e;
        androidx.compose.runtime.snapshots.j jVarD = aVar2.d();
        Function1 function1H = jVarD != null ? jVarD.h() : null;
        androidx.compose.runtime.snapshots.j jVarF = aVar2.f(jVarD);
        try {
            LayoutNode layoutNode2 = this.f5099a;
            layoutNode2.f5252n = true;
            final Function2 function2C = aVar.c();
            d2 d2VarB = aVar.b();
            androidx.compose.runtime.m mVar = this.f5100b;
            if (mVar == null) {
                throw new IllegalStateException("parent composition reference not set");
            }
            aVar.i(K(d2VarB, layoutNode, aVar.e(), mVar, androidx.compose.runtime.internal.b.b(-1750409193, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$subcompose$3$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar, int i11) {
                    if ((i11 & 3) == 2 && iVar.h()) {
                        iVar.G();
                        return;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-1750409193, i11, -1, "androidx.compose.ui.layout.LayoutNodeSubcompositionsState.subcompose.<anonymous>.<anonymous>.<anonymous> (SubcomposeLayout.kt:493)");
                    }
                    boolean zA = aVar.a();
                    Function2<androidx.compose.runtime.i, Integer, Unit> function2 = function2C;
                    iVar.E(Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE, Boolean.valueOf(zA));
                    boolean zA2 = iVar.a(zA);
                    iVar.P(-869707859);
                    if (zA) {
                        function2.invoke(iVar, 0);
                    } else {
                        iVar.f(zA2);
                    }
                    iVar.K();
                    iVar.w();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                }
            })));
            aVar.l(false);
            layoutNode2.f5252n = false;
            Unit unit = Unit.f67061a;
            aVar2.m(jVarD, jVarF, function1H);
        } catch (Throwable th2) {
            aVar2.m(jVarD, jVarF, function1H);
            throw th2;
        }
    }

    private final void J(LayoutNode layoutNode, Object obj, Function2 function2) {
        HashMap map = this.f5104f;
        Object aVar = map.get(layoutNode);
        if (aVar == null) {
            aVar = new a(obj, ComposableSingletons$SubcomposeLayoutKt.f5097a.a(), null, 4, null);
            map.put(layoutNode, aVar);
        }
        a aVar2 = (a) aVar;
        d2 d2VarB = aVar2.b();
        boolean zR = d2VarB != null ? d2VarB.r() : true;
        if (aVar2.c() != function2 || zR || aVar2.d()) {
            aVar2.j(function2);
            I(layoutNode, aVar2);
            aVar2.k(false);
        }
    }

    private final d2 K(d2 d2Var, LayoutNode layoutNode, boolean z10, androidx.compose.runtime.m mVar, Function2 function2) {
        if (d2Var == null || d2Var.isDisposed()) {
            d2Var = b3.a(layoutNode, mVar);
        }
        if (z10) {
            d2Var.p(function2);
        } else {
            d2Var.d(function2);
        }
        return d2Var;
    }

    private final LayoutNode L(Object obj) {
        int i11;
        if (this.f5112n == 0) {
            return null;
        }
        int size = this.f5099a.J().size() - this.f5113o;
        int i12 = size - this.f5112n;
        int i13 = size - 1;
        int i14 = i13;
        while (true) {
            if (i14 < i12) {
                i11 = -1;
                break;
            }
            if (Intrinsics.c(x(i14), obj)) {
                i11 = i14;
                break;
            }
            i14--;
        }
        if (i11 == -1) {
            while (true) {
                if (i13 < i12) {
                    i14 = i13;
                    break;
                }
                Object obj2 = this.f5104f.get((LayoutNode) this.f5099a.J().get(i13));
                Intrinsics.e(obj2);
                a aVar = (a) obj2;
                if (aVar.f() == SubcomposeLayoutKt.f5151a || this.f5101c.b(obj, aVar.f())) {
                    aVar.m(obj);
                    i14 = i13;
                    i11 = i14;
                    break;
                }
                i13--;
            }
        }
        if (i11 == -1) {
            return null;
        }
        if (i14 != i12) {
            A(i14, i12, 1);
        }
        this.f5112n--;
        LayoutNode layoutNode = (LayoutNode) this.f5099a.J().get(i12);
        Object obj3 = this.f5104f.get(layoutNode);
        Intrinsics.e(obj3);
        a aVar2 = (a) obj3;
        aVar2.h(u2.c(Boolean.TRUE, null, 2, null));
        aVar2.l(true);
        aVar2.k(true);
        return layoutNode;
    }

    private final LayoutNode s(int i11) {
        LayoutNode layoutNode = new LayoutNode(true, 0, 2, null);
        LayoutNode layoutNode2 = this.f5099a;
        layoutNode2.f5252n = true;
        this.f5099a.u0(i11, layoutNode);
        layoutNode2.f5252n = false;
        return layoutNode;
    }

    private final void t() {
        LayoutNode layoutNode = this.f5099a;
        layoutNode.f5252n = true;
        Iterator it = this.f5104f.values().iterator();
        while (it.hasNext()) {
            d2 d2VarB = ((a) it.next()).b();
            if (d2VarB != null) {
                d2VarB.dispose();
            }
        }
        this.f5099a.X0();
        layoutNode.f5252n = false;
        this.f5104f.clear();
        this.f5105g.clear();
        this.f5113o = 0;
        this.f5112n = 0;
        this.f5108j.clear();
        y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v() {
        CollectionsKt.G(this.f5110l.entrySet(), new Function1<Map.Entry<Object, SubcomposeLayoutState.a>, Boolean>() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$disposeUnusedSlotsInPostLookahead$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Map.Entry<Object, SubcomposeLayoutState.a> entry) {
                boolean z10;
                Object key = entry.getKey();
                SubcomposeLayoutState.a value = entry.getValue();
                int iO = this.this$0.f5111m.o(key);
                if (iO < 0 || iO >= this.this$0.f5103e) {
                    value.dispose();
                    z10 = true;
                } else {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
        });
    }

    private final Object x(int i11) {
        Object obj = this.f5104f.get((LayoutNode) this.f5099a.J().get(i11));
        Intrinsics.e(obj);
        return ((a) obj).f();
    }

    private final void z(boolean z10) {
        this.f5113o = 0;
        this.f5108j.clear();
        int size = this.f5099a.J().size();
        if (this.f5112n != size) {
            this.f5112n = size;
            androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f4004e;
            androidx.compose.runtime.snapshots.j jVarD = aVar.d();
            Function1 function1H = jVarD != null ? jVarD.h() : null;
            androidx.compose.runtime.snapshots.j jVarF = aVar.f(jVarD);
            for (int i11 = 0; i11 < size; i11++) {
                try {
                    LayoutNode layoutNode = (LayoutNode) this.f5099a.J().get(i11);
                    a aVar2 = (a) this.f5104f.get(layoutNode);
                    if (aVar2 != null && aVar2.a()) {
                        E(layoutNode);
                        if (z10) {
                            d2 d2VarB = aVar2.b();
                            if (d2VarB != null) {
                                d2VarB.deactivate();
                            }
                            aVar2.h(u2.c(Boolean.FALSE, null, 2, null));
                        } else {
                            aVar2.g(false);
                        }
                        aVar2.m(SubcomposeLayoutKt.f5151a);
                    }
                } catch (Throwable th2) {
                    aVar.m(jVarD, jVarF, function1H);
                    throw th2;
                }
            }
            Unit unit = Unit.f67061a;
            aVar.m(jVarD, jVarF, function1H);
            this.f5105g.clear();
        }
        y();
    }

    public final SubcomposeLayoutState.a D(Object obj, Function2 function2) {
        if (!this.f5099a.D0()) {
            return new e();
        }
        y();
        if (!this.f5105g.containsKey(obj)) {
            this.f5110l.remove(obj);
            HashMap map = this.f5108j;
            Object objL = map.get(obj);
            if (objL == null) {
                objL = L(obj);
                if (objL != null) {
                    A(this.f5099a.J().indexOf(objL), this.f5099a.J().size(), 1);
                    this.f5113o++;
                } else {
                    objL = s(this.f5099a.J().size());
                    this.f5113o++;
                }
                map.put(obj, objL);
            }
            J((LayoutNode) objL, obj, function2);
        }
        return new f(obj);
    }

    public final void F(androidx.compose.runtime.m mVar) {
        this.f5100b = mVar;
    }

    public final void G(p0 p0Var) {
        if (this.f5101c != p0Var) {
            this.f5101c = p0Var;
            z(false);
            LayoutNode.h1(this.f5099a, false, false, false, 7, null);
        }
    }

    public final List H(Object obj, Function2 function2) {
        y();
        LayoutNode.LayoutState layoutStateR = this.f5099a.R();
        LayoutNode.LayoutState layoutState = LayoutNode.LayoutState.Measuring;
        if (!(layoutStateR == layoutState || layoutStateR == LayoutNode.LayoutState.LayingOut || layoutStateR == LayoutNode.LayoutState.LookaheadMeasuring || layoutStateR == LayoutNode.LayoutState.LookaheadLayingOut)) {
            g0.a.b("subcompose can only be used inside the measure or layout blocks");
        }
        HashMap map = this.f5105g;
        Object obj2 = map.get(obj);
        if (obj2 == null) {
            obj2 = (LayoutNode) this.f5108j.remove(obj);
            if (obj2 != null) {
                if (!(this.f5113o > 0)) {
                    g0.a.b("Check failed.");
                }
                this.f5113o--;
            } else {
                LayoutNode layoutNodeL = L(obj);
                if (layoutNodeL == null) {
                    layoutNodeL = s(this.f5102d);
                }
                obj2 = layoutNodeL;
            }
            map.put(obj, obj2);
        }
        LayoutNode layoutNode = (LayoutNode) obj2;
        if (CollectionsKt.l0(this.f5099a.J(), this.f5102d) != layoutNode) {
            int iIndexOf = this.f5099a.J().indexOf(layoutNode);
            int i11 = this.f5102d;
            if (iIndexOf < i11) {
                throw new IllegalArgumentException(("Key \"" + obj + "\" was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item.").toString());
            }
            if (i11 != iIndexOf) {
                B(this, iIndexOf, i11, 0, 4, null);
            }
        }
        this.f5102d++;
        J(layoutNode, obj, function2);
        return (layoutStateR == layoutState || layoutStateR == LayoutNode.LayoutState.LayingOut) ? layoutNode.D() : layoutNode.C();
    }

    @Override // androidx.compose.runtime.h
    public void onDeactivate() {
        z(true);
    }

    @Override // androidx.compose.runtime.h
    public void onRelease() {
        t();
    }

    @Override // androidx.compose.runtime.h
    public void onReuse() {
        z(false);
    }

    public final t r(Function2 function2) {
        return new d(function2, this.f5114p);
    }

    public final void u(int i11) {
        boolean z10 = false;
        this.f5112n = 0;
        int size = (this.f5099a.J().size() - this.f5113o) - 1;
        if (i11 <= size) {
            this.f5109k.clear();
            if (i11 <= size) {
                int i12 = i11;
                while (true) {
                    this.f5109k.add(x(i12));
                    if (i12 == size) {
                        break;
                    } else {
                        i12++;
                    }
                }
            }
            this.f5101c.a(this.f5109k);
            androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f4004e;
            androidx.compose.runtime.snapshots.j jVarD = aVar.d();
            Function1 function1H = jVarD != null ? jVarD.h() : null;
            androidx.compose.runtime.snapshots.j jVarF = aVar.f(jVarD);
            boolean z11 = false;
            while (size >= i11) {
                try {
                    LayoutNode layoutNode = (LayoutNode) this.f5099a.J().get(size);
                    Object obj = this.f5104f.get(layoutNode);
                    Intrinsics.e(obj);
                    a aVar2 = (a) obj;
                    Object objF = aVar2.f();
                    if (this.f5109k.contains(objF)) {
                        this.f5112n++;
                        if (aVar2.a()) {
                            E(layoutNode);
                            aVar2.g(false);
                            z11 = true;
                        }
                    } else {
                        LayoutNode layoutNode2 = this.f5099a;
                        layoutNode2.f5252n = true;
                        this.f5104f.remove(layoutNode);
                        d2 d2VarB = aVar2.b();
                        if (d2VarB != null) {
                            d2VarB.dispose();
                        }
                        this.f5099a.Y0(size, 1);
                        layoutNode2.f5252n = false;
                    }
                    this.f5105g.remove(objF);
                    size--;
                } catch (Throwable th2) {
                    aVar.m(jVarD, jVarF, function1H);
                    throw th2;
                }
            }
            Unit unit = Unit.f67061a;
            aVar.m(jVarD, jVarF, function1H);
            z10 = z11;
        }
        if (z10) {
            androidx.compose.runtime.snapshots.j.f4004e.n();
        }
        y();
    }

    public final void w() {
        if (this.f5112n != this.f5099a.J().size()) {
            Iterator it = this.f5104f.entrySet().iterator();
            while (it.hasNext()) {
                ((a) ((Map.Entry) it.next()).getValue()).k(true);
            }
            if (this.f5099a.Y()) {
                return;
            }
            LayoutNode.h1(this.f5099a, false, false, false, 7, null);
        }
    }

    public final void y() {
        int size = this.f5099a.J().size();
        if (this.f5104f.size() != size) {
            throw new IllegalArgumentException(("Inconsistency between the count of nodes tracked by the state (" + this.f5104f.size() + ") and the children count on the SubcomposeLayout (" + size + "). Are you trying to use the state of the disposed SubcomposeLayout?").toString());
        }
        if ((size - this.f5112n) - this.f5113o >= 0) {
            if (this.f5108j.size() == this.f5113o) {
                return;
            }
            throw new IllegalArgumentException(("Incorrect state. Precomposed children " + this.f5113o + ". Map size " + this.f5108j.size()).toString());
        }
        throw new IllegalArgumentException(("Incorrect state. Total children " + size + ". Reusable children " + this.f5112n + ". Precomposed children " + this.f5113o).toString());
    }
}
