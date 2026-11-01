package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0015\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0017\u0010\u000b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0017\u0010\f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b,\u0010)\u001a\u0004\b-\u0010+¨\u0006."}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;", "Lkotlin/Function0;", "Landroidx/compose/foundation/lazy/layout/m;", "itemProviderLambda", "Landroidx/compose/foundation/lazy/layout/z;", "state", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "", "userScrollEnabled", "reverseScrolling", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/z;Landroidx/compose/foundation/gestures/Orientation;ZZ)V", "j", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;", "node", "", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)V", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/jvm/functions/Function0;", "getItemProviderLambda", "()Lkotlin/jvm/functions/Function0;", "c", "Landroidx/compose/foundation/lazy/layout/z;", "getState", "()Landroidx/compose/foundation/lazy/layout/z;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/compose/foundation/gestures/Orientation;", "getOrientation", "()Landroidx/compose/foundation/gestures/Orientation;", "e", "Z", "getUserScrollEnabled", "()Z", "f", "getReverseScrolling", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final class LazyLayoutSemanticsModifier extends androidx.compose.ui.node.l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Function0 itemProviderLambda;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final z state;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Orientation orientation;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final boolean userScrollEnabled;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final boolean reverseScrolling;

    public LazyLayoutSemanticsModifier(Function0 function0, z zVar, Orientation orientation, boolean z10, boolean z11) {
        this.itemProviderLambda = function0;
        this.state = zVar;
        this.orientation = orientation;
        this.userScrollEnabled = z10;
        this.reverseScrolling = z11;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LazyLayoutSemanticsModifier)) {
            return false;
        }
        LazyLayoutSemanticsModifier lazyLayoutSemanticsModifier = (LazyLayoutSemanticsModifier) other;
        return this.itemProviderLambda == lazyLayoutSemanticsModifier.itemProviderLambda && Intrinsics.c(this.state, lazyLayoutSemanticsModifier.state) && this.orientation == lazyLayoutSemanticsModifier.orientation && this.userScrollEnabled == lazyLayoutSemanticsModifier.userScrollEnabled && this.reverseScrolling == lazyLayoutSemanticsModifier.reverseScrolling;
    }

    public int hashCode() {
        return (((((((this.itemProviderLambda.hashCode() * 31) + this.state.hashCode()) * 31) + this.orientation.hashCode()) * 31) + androidx.compose.foundation.e.a(this.userScrollEnabled)) * 31) + androidx.compose.foundation.e.a(this.reverseScrolling);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public LazyLayoutSemanticsModifierNode a() {
        return new LazyLayoutSemanticsModifierNode(this.itemProviderLambda, this.state, this.orientation, this.userScrollEnabled, this.reverseScrolling);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(LazyLayoutSemanticsModifierNode node) {
        node.H1(this.itemProviderLambda, this.state, this.orientation, this.userScrollEnabled, this.reverseScrolling);
    }
}
