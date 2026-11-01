package androidx.compose.ui.node;

import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class DepthSortedSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f5235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f5236b = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<Map<LayoutNode, Integer>>() { // from class: androidx.compose.ui.node.DepthSortedSet$mapOfOriginalDepth$2
        @Override // kotlin.jvm.functions.Function0
        public final Map<LayoutNode, Integer> invoke() {
            return new LinkedHashMap();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Comparator f5237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TreeSet f5238d;

    public DepthSortedSet(boolean z10) {
        this.f5235a = z10;
        Comparator<LayoutNode> comparator = new Comparator<LayoutNode>() { // from class: androidx.compose.ui.node.DepthSortedSet$DepthComparator$1
            @Override // java.util.Comparator
            public int compare(LayoutNode a11, LayoutNode b11) {
                int iJ = Intrinsics.j(a11.I(), b11.I());
                return iJ != 0 ? iJ : Intrinsics.j(a11.hashCode(), b11.hashCode());
            }
        };
        this.f5237c = comparator;
        this.f5238d = new TreeSet(comparator);
    }

    private final Map c() {
        return (Map) this.f5236b.getValue();
    }

    public final void a(LayoutNode layoutNode) {
        if (!layoutNode.D0()) {
            g0.a.b("DepthSortedSet.add called on an unattached node");
        }
        if (this.f5235a) {
            Integer num = (Integer) c().get(layoutNode);
            if (num == null) {
                c().put(layoutNode, Integer.valueOf(layoutNode.I()));
            } else {
                if (!(num.intValue() == layoutNode.I())) {
                    g0.a.b("invalid node depth");
                }
            }
        }
        this.f5238d.add(layoutNode);
    }

    public final boolean b(LayoutNode layoutNode) {
        boolean zContains = this.f5238d.contains(layoutNode);
        if (this.f5235a) {
            if (!(zContains == c().containsKey(layoutNode))) {
                g0.a.b("inconsistency in TreeSet");
            }
        }
        return zContains;
    }

    public final boolean d() {
        return this.f5238d.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final LayoutNode e() {
        LayoutNode layoutNode = (LayoutNode) this.f5238d.first();
        f(layoutNode);
        return layoutNode;
    }

    public final boolean f(LayoutNode layoutNode) {
        if (!layoutNode.D0()) {
            g0.a.b("DepthSortedSet.remove called on an unattached node");
        }
        boolean zRemove = this.f5238d.remove(layoutNode);
        if (this.f5235a) {
            if (!Intrinsics.c((Integer) c().remove(layoutNode), zRemove ? Integer.valueOf(layoutNode.I()) : null)) {
                g0.a.b("invalid node depth");
            }
        }
        return zRemove;
    }

    public String toString() {
        return this.f5238d.toString();
    }
}
