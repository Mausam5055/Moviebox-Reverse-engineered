package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/compose/ui/focus/FocusableChildrenComparator;", "Ljava/util/Comparator;", "Landroidx/compose/ui/focus/FocusTargetNode;", "Lkotlin/Comparator;", "<init>", "()V", "Landroidx/compose/ui/node/LayoutNode;", "layoutNode", "Landroidx/compose/runtime/collection/b;", "pathFromRoot", "(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/runtime/collection/b;", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "compare", "(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;)I", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
final class FocusableChildrenComparator implements Comparator<FocusTargetNode> {
    public static final FocusableChildrenComparator INSTANCE = new FocusableChildrenComparator();

    private FocusableChildrenComparator() {
    }

    private final androidx.compose.runtime.collection.b pathFromRoot(LayoutNode layoutNode) {
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new LayoutNode[16], 0);
        while (layoutNode != null) {
            bVar.a(0, layoutNode);
            layoutNode = layoutNode.h0();
        }
        return bVar;
    }

    @Override // java.util.Comparator
    public int compare(FocusTargetNode a11, FocusTargetNode b11) {
        int i11 = 0;
        if (!w.g(a11) || !w.g(b11)) {
            if (w.g(a11)) {
                return -1;
            }
            return w.g(b11) ? 1 : 0;
        }
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(a11);
        LayoutNode layoutNodeM2 = androidx.compose.ui.node.g.m(b11);
        if (Intrinsics.c(layoutNodeM, layoutNodeM2)) {
            return 0;
        }
        androidx.compose.runtime.collection.b bVarPathFromRoot = pathFromRoot(layoutNodeM);
        androidx.compose.runtime.collection.b bVarPathFromRoot2 = pathFromRoot(layoutNodeM2);
        int iMin = Math.min(bVarPathFromRoot.n() - 1, bVarPathFromRoot2.n() - 1);
        if (iMin >= 0) {
            while (Intrinsics.c(bVarPathFromRoot.m()[i11], bVarPathFromRoot2.m()[i11])) {
                if (i11 != iMin) {
                    i11++;
                }
            }
            return Intrinsics.j(((LayoutNode) bVarPathFromRoot.m()[i11]).i0(), ((LayoutNode) bVarPathFromRoot2.m()[i11]).i0());
        }
        throw new IllegalStateException("Could not find a common ancestor between the two FocusModifiers.");
    }
}
