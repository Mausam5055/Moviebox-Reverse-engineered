package androidx.compose.foundation.text.selection;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import y.g;
import y.i;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\n\u001a\u00020\u0007*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\"\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0004H ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ*\u0010\u0015\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014j\u0002\b\u0016j\u0002\b\u0017\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u0018"}, d2 = {"Landroidx/compose/foundation/text/selection/SelectionMode;", "", "<init>", "(Ljava/lang/String;I)V", "Ly/i;", "Ly/g;", "offset", "", "containsInclusive-Uv8p0NA", "(Ly/i;J)Z", "containsInclusive", RequestParameters.POSITION, "bounds", "", "compare-3MmeM6k$foundation_release", "(JLy/i;)I", "compare", "start", TtmlNode.END, "isSelected-2x9bVx0$foundation_release", "(Ly/i;JJ)Z", "isSelected", "Vertical", "Horizontal", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum SelectionMode {
    Vertical { // from class: androidx.compose.foundation.text.selection.SelectionMode.Vertical
        @Override // androidx.compose.foundation.text.selection.SelectionMode
        /* JADX INFO: renamed from: compare-3MmeM6k$foundation_release */
        public int mo63compare3MmeM6k$foundation_release(long position, i bounds) {
            if (c.a(bounds, position)) {
                return 0;
            }
            if (g.n(position) < bounds.i()) {
                return -1;
            }
            return (g.m(position) >= bounds.f() || g.n(position) >= bounds.c()) ? 1 : -1;
        }
    },
    Horizontal { // from class: androidx.compose.foundation.text.selection.SelectionMode.Horizontal
        @Override // androidx.compose.foundation.text.selection.SelectionMode
        /* JADX INFO: renamed from: compare-3MmeM6k$foundation_release */
        public int mo63compare3MmeM6k$foundation_release(long position, i bounds) {
            if (c.a(bounds, position)) {
                return 0;
            }
            if (g.m(position) < bounds.f()) {
                return -1;
            }
            return (g.n(position) >= bounds.i() || g.m(position) >= bounds.g()) ? 1 : -1;
        }
    };

    /* synthetic */ SelectionMode(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: renamed from: containsInclusive-Uv8p0NA, reason: not valid java name */
    private final boolean m62containsInclusiveUv8p0NA(i iVar, long j11) {
        float f11 = iVar.f();
        float fG = iVar.g();
        float fM = g.m(j11);
        if (f11 <= fM && fM <= fG) {
            float fI = iVar.i();
            float fC = iVar.c();
            float fN = g.n(j11);
            if (fI <= fN && fN <= fC) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: compare-3MmeM6k$foundation_release, reason: not valid java name */
    public abstract int mo63compare3MmeM6k$foundation_release(long position, i bounds);

    /* JADX INFO: renamed from: isSelected-2x9bVx0$foundation_release, reason: not valid java name */
    public final boolean m64isSelected2x9bVx0$foundation_release(i bounds, long start, long end) {
        if (m62containsInclusiveUv8p0NA(bounds, start) || m62containsInclusiveUv8p0NA(bounds, end)) {
            return true;
        }
        return (mo63compare3MmeM6k$foundation_release(start, bounds) > 0) ^ (mo63compare3MmeM6k$foundation_release(end, bounds) > 0);
    }
}
