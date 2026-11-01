package androidx.compose.foundation.gestures;

import androidx.compose.foundation.f0;
import androidx.compose.ui.node.l0;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\"\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BO\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001a\u0010\u001f\u001a\u00020\t2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0096\u0002¢\u0006\u0004\b\u001f\u0010 R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0017\u0010\u000b\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b1\u0010.\u001a\u0004\b2\u00100R\u0019\u0010\r\u001a\u0004\u0018\u00010\f8\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>¨\u0006?"}, d2 = {"Landroidx/compose/foundation/gestures/ScrollableElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/gestures/ScrollableNode;", "Landroidx/compose/foundation/gestures/o;", "state", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "Landroidx/compose/foundation/f0;", "overscrollEffect", "", "enabled", "reverseDirection", "Landroidx/compose/foundation/gestures/g;", "flingBehavior", "Lp/i;", "interactionSource", "Landroidx/compose/foundation/gestures/d;", "bringIntoViewSpec", "<init>", "(Landroidx/compose/foundation/gestures/o;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/f0;ZZLandroidx/compose/foundation/gestures/g;Lp/i;Landroidx/compose/foundation/gestures/d;)V", "j", "()Landroidx/compose/foundation/gestures/ScrollableNode;", "node", "", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/gestures/ScrollableNode;)V", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/compose/foundation/gestures/o;", "getState", "()Landroidx/compose/foundation/gestures/o;", "c", "Landroidx/compose/foundation/gestures/Orientation;", "getOrientation", "()Landroidx/compose/foundation/gestures/Orientation;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/compose/foundation/f0;", "getOverscrollEffect", "()Landroidx/compose/foundation/f0;", "e", "Z", "getEnabled", "()Z", "f", "getReverseDirection", "g", "Landroidx/compose/foundation/gestures/g;", "getFlingBehavior", "()Landroidx/compose/foundation/gestures/g;", "h", "Lp/i;", "getInteractionSource", "()Lp/i;", "i", "Landroidx/compose/foundation/gestures/d;", "getBringIntoViewSpec", "()Landroidx/compose/foundation/gestures/d;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final class ScrollableElement extends l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final o state;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Orientation orientation;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final f0 overscrollEffect;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final boolean enabled;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final boolean reverseDirection;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final g flingBehavior;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final p.i interactionSource;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final d bringIntoViewSpec;

    public ScrollableElement(o oVar, Orientation orientation, f0 f0Var, boolean z10, boolean z11, g gVar, p.i iVar, d dVar) {
        this.state = oVar;
        this.orientation = orientation;
        this.overscrollEffect = f0Var;
        this.enabled = z10;
        this.reverseDirection = z11;
        this.flingBehavior = gVar;
        this.interactionSource = iVar;
        this.bringIntoViewSpec = dVar;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ScrollableElement)) {
            return false;
        }
        ScrollableElement scrollableElement = (ScrollableElement) other;
        return Intrinsics.c(this.state, scrollableElement.state) && this.orientation == scrollableElement.orientation && Intrinsics.c(this.overscrollEffect, scrollableElement.overscrollEffect) && this.enabled == scrollableElement.enabled && this.reverseDirection == scrollableElement.reverseDirection && Intrinsics.c(this.flingBehavior, scrollableElement.flingBehavior) && Intrinsics.c(this.interactionSource, scrollableElement.interactionSource) && Intrinsics.c(this.bringIntoViewSpec, scrollableElement.bringIntoViewSpec);
    }

    public int hashCode() {
        int iHashCode = ((this.state.hashCode() * 31) + this.orientation.hashCode()) * 31;
        f0 f0Var = this.overscrollEffect;
        int iHashCode2 = (((((iHashCode + (f0Var != null ? f0Var.hashCode() : 0)) * 31) + androidx.compose.foundation.e.a(this.enabled)) * 31) + androidx.compose.foundation.e.a(this.reverseDirection)) * 31;
        g gVar = this.flingBehavior;
        int iHashCode3 = (iHashCode2 + (gVar != null ? gVar.hashCode() : 0)) * 31;
        p.i iVar = this.interactionSource;
        int iHashCode4 = (iHashCode3 + (iVar != null ? iVar.hashCode() : 0)) * 31;
        d dVar = this.bringIntoViewSpec;
        return iHashCode4 + (dVar != null ? dVar.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public ScrollableNode a() {
        return new ScrollableNode(this.state, this.overscrollEffect, this.flingBehavior, this.orientation, this.enabled, this.reverseDirection, this.interactionSource, this.bringIntoViewSpec);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(ScrollableNode node) {
        node.k2(this.state, this.orientation, this.overscrollEffect, this.enabled, this.reverseDirection, this.flingBehavior, this.interactionSource, this.bringIntoViewSpec);
    }
}
