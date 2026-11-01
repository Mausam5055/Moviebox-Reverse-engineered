package androidx.compose.ui.node;

import androidx.compose.ui.layout.AlignmentLineKt;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class AlignmentLines {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f5207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f5208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5209c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5210d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5211e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5212f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5213g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f5214h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map f5215i;

    private AlignmentLines(a aVar) {
        this.f5207a = aVar;
        this.f5208b = true;
        this.f5215i = new HashMap();
    }

    public /* synthetic */ AlignmentLines(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(androidx.compose.ui.layout.a aVar, int i11, NodeCoordinator nodeCoordinator) {
        float f11 = i11;
        long jA = y.h.a(f11, f11);
        while (true) {
            jA = d(nodeCoordinator, jA);
            nodeCoordinator = nodeCoordinator.a2();
            Intrinsics.e(nodeCoordinator);
            if (Intrinsics.c(nodeCoordinator, this.f5207a.M())) {
                break;
            } else if (e(nodeCoordinator).containsKey(aVar)) {
                float fI = i(nodeCoordinator, aVar);
                jA = y.h.a(fI, fI);
            }
        }
        int iRound = Math.round(aVar instanceof androidx.compose.ui.layout.h ? y.g.n(jA) : y.g.m(jA));
        Map map = this.f5215i;
        if (map.containsKey(aVar)) {
            iRound = AlignmentLineKt.c(aVar, ((Number) MapsKt.i(this.f5215i, aVar)).intValue(), iRound);
        }
        map.put(aVar, Integer.valueOf(iRound));
    }

    protected abstract long d(NodeCoordinator nodeCoordinator, long j11);

    protected abstract Map e(NodeCoordinator nodeCoordinator);

    public final a f() {
        return this.f5207a;
    }

    public final boolean g() {
        return this.f5208b;
    }

    public final Map h() {
        return this.f5215i;
    }

    protected abstract int i(NodeCoordinator nodeCoordinator, androidx.compose.ui.layout.a aVar);

    public final boolean j() {
        return this.f5209c || this.f5211e || this.f5212f || this.f5213g;
    }

    public final boolean k() {
        o();
        return this.f5214h != null;
    }

    public final boolean l() {
        return this.f5210d;
    }

    public final void m() {
        this.f5208b = true;
        a aVarD = this.f5207a.D();
        if (aVarD == null) {
            return;
        }
        if (this.f5209c) {
            aVarD.Z();
        } else if (this.f5211e || this.f5210d) {
            aVarD.requestLayout();
        }
        if (this.f5212f) {
            this.f5207a.Z();
        }
        if (this.f5213g) {
            this.f5207a.requestLayout();
        }
        aVarD.v().m();
    }

    public final void n() {
        this.f5215i.clear();
        this.f5207a.U(new Function1<a, Unit>() { // from class: androidx.compose.ui.node.AlignmentLines$recalculate$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((a) obj);
                return Unit.f67061a;
            }

            public final void invoke(a aVar) {
                if (aVar.n()) {
                    if (aVar.v().g()) {
                        aVar.I();
                    }
                    Map map = aVar.v().f5215i;
                    AlignmentLines alignmentLines = this.this$0;
                    for (Map.Entry entry : map.entrySet()) {
                        alignmentLines.c((androidx.compose.ui.layout.a) entry.getKey(), ((Number) entry.getValue()).intValue(), aVar.M());
                    }
                    NodeCoordinator nodeCoordinatorA2 = aVar.M().a2();
                    Intrinsics.e(nodeCoordinatorA2);
                    while (!Intrinsics.c(nodeCoordinatorA2, this.this$0.f().M())) {
                        Set<androidx.compose.ui.layout.a> setKeySet = this.this$0.e(nodeCoordinatorA2).keySet();
                        AlignmentLines alignmentLines2 = this.this$0;
                        for (androidx.compose.ui.layout.a aVar2 : setKeySet) {
                            alignmentLines2.c(aVar2, alignmentLines2.i(nodeCoordinatorA2, aVar2), nodeCoordinatorA2);
                        }
                        nodeCoordinatorA2 = nodeCoordinatorA2.a2();
                        Intrinsics.e(nodeCoordinatorA2);
                    }
                }
            }
        });
        this.f5215i.putAll(e(this.f5207a.M()));
        this.f5208b = false;
    }

    public final void o() {
        a aVar;
        AlignmentLines alignmentLinesV;
        AlignmentLines alignmentLinesV2;
        if (j()) {
            aVar = this.f5207a;
        } else {
            a aVarD = this.f5207a.D();
            if (aVarD == null) {
                return;
            }
            aVar = aVarD.v().f5214h;
            if (aVar == null || !aVar.v().j()) {
                a aVar2 = this.f5214h;
                if (aVar2 == null || aVar2.v().j()) {
                    return;
                }
                a aVarD2 = aVar2.D();
                if (aVarD2 != null && (alignmentLinesV2 = aVarD2.v()) != null) {
                    alignmentLinesV2.o();
                }
                a aVarD3 = aVar2.D();
                aVar = (aVarD3 == null || (alignmentLinesV = aVarD3.v()) == null) ? null : alignmentLinesV.f5214h;
            }
        }
        this.f5214h = aVar;
    }

    public final void p() {
        this.f5208b = true;
        this.f5209c = false;
        this.f5211e = false;
        this.f5210d = false;
        this.f5212f = false;
        this.f5213g = false;
        this.f5214h = null;
    }

    public final void q(boolean z10) {
        this.f5211e = z10;
    }

    public final void r(boolean z10) {
        this.f5213g = z10;
    }

    public final void s(boolean z10) {
        this.f5212f = z10;
    }

    public final void t(boolean z10) {
        this.f5210d = z10;
    }

    public final void u(boolean z10) {
        this.f5209c = z10;
    }
}
