package androidx.compose.ui.node;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class OnPositionedDispatcher {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f5367c = new Companion(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f5368d = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f5369a = new androidx.compose.runtime.collection.b(new LayoutNode[16], 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LayoutNode[] f5370b;

    public static final class Companion {

        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\t"}, d2 = {"Landroidx/compose/ui/node/OnPositionedDispatcher$Companion$DepthComparator;", "Ljava/util/Comparator;", "Landroidx/compose/ui/node/LayoutNode;", "Lkotlin/Comparator;", "()V", "compare", "", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        private static final class DepthComparator implements Comparator<LayoutNode> {
            public static final DepthComparator INSTANCE = new DepthComparator();

            private DepthComparator() {
            }

            @Override // java.util.Comparator
            public int compare(LayoutNode a11, LayoutNode b11) {
                int iJ = Intrinsics.j(b11.I(), a11.I());
                return iJ != 0 ? iJ : Intrinsics.j(a11.hashCode(), b11.hashCode());
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final void b(LayoutNode layoutNode) {
        layoutNode.x();
        int i11 = 0;
        layoutNode.p1(false);
        androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            do {
                b((LayoutNode) objArrM[i11]);
                i11++;
            } while (i11 < iN);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        LayoutNode[] layoutNodeArr;
        this.f5369a.A(Companion.DepthComparator.INSTANCE);
        int iN = this.f5369a.n();
        LayoutNode[] layoutNodeArr2 = this.f5370b;
        if (layoutNodeArr2 == null || layoutNodeArr2.length < iN) {
            layoutNodeArr = layoutNodeArr2;
            layoutNodeArr = new LayoutNode[Math.max(16, this.f5369a.n())];
        }
        layoutNodeArr = layoutNodeArr2;
        this.f5370b = null;
        for (int i11 = 0; i11 < iN; i11++) {
            layoutNodeArr[i11] = this.f5369a.m()[i11];
        }
        this.f5369a.h();
        while (true) {
            iN--;
            if (-1 >= iN) {
                this.f5370b = layoutNodeArr;
                return;
            }
            LayoutNode layoutNode = layoutNodeArr[iN];
            Intrinsics.e(layoutNode);
            if (layoutNode.d0()) {
                b(layoutNode);
            }
        }
    }

    public final boolean c() {
        return this.f5369a.q();
    }

    public final void d(LayoutNode layoutNode) {
        this.f5369a.b(layoutNode);
        layoutNode.p1(true);
    }

    public final void e(LayoutNode layoutNode) {
        this.f5369a.h();
        this.f5369a.b(layoutNode);
        layoutNode.p1(true);
    }

    public final void f(LayoutNode layoutNode) {
        this.f5369a.t(layoutNode);
    }
}
