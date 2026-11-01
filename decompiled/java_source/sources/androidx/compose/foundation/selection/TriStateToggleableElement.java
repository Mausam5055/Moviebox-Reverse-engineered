package androidx.compose.foundation.selection;

import androidx.compose.foundation.b0;
import androidx.compose.foundation.e;
import androidx.compose.ui.node.l0;
import androidx.compose.ui.semantics.f;
import androidx.compose.ui.state.ToggleableState;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import p.i;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000f\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BC\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0019\u001a\u00020\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0096\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001c\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b&\u0010'R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006*"}, d2 = {"Landroidx/compose/foundation/selection/TriStateToggleableElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/selection/b;", "Landroidx/compose/ui/state/ToggleableState;", "state", "Lp/i;", "interactionSource", "Landroidx/compose/foundation/b0;", "indicationNodeFactory", "", "enabled", "Landroidx/compose/ui/semantics/f;", "role", "Lkotlin/Function0;", "", "onClick", "<init>", "(Landroidx/compose/ui/state/ToggleableState;Lp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "j", "()Landroidx/compose/foundation/selection/b;", "node", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/selection/b;)V", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/compose/ui/state/ToggleableState;", "c", "Lp/i;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/compose/foundation/b0;", "e", "Z", "f", "Landroidx/compose/ui/semantics/f;", "g", "Lkotlin/jvm/functions/Function0;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final class TriStateToggleableElement extends l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final ToggleableState state;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final i interactionSource;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final b0 indicationNodeFactory;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final boolean enabled;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final f role;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Function0 onClick;

    private TriStateToggleableElement(ToggleableState toggleableState, i iVar, b0 b0Var, boolean z10, f fVar, Function0 function0) {
        this.state = toggleableState;
        this.interactionSource = iVar;
        this.indicationNodeFactory = b0Var;
        this.enabled = z10;
        this.role = fVar;
        this.onClick = function0;
    }

    public /* synthetic */ TriStateToggleableElement(ToggleableState toggleableState, i iVar, b0 b0Var, boolean z10, f fVar, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(toggleableState, iVar, b0Var, z10, fVar, function0);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || TriStateToggleableElement.class != other.getClass()) {
            return false;
        }
        TriStateToggleableElement triStateToggleableElement = (TriStateToggleableElement) other;
        return this.state == triStateToggleableElement.state && Intrinsics.c(this.interactionSource, triStateToggleableElement.interactionSource) && Intrinsics.c(this.indicationNodeFactory, triStateToggleableElement.indicationNodeFactory) && this.enabled == triStateToggleableElement.enabled && Intrinsics.c(this.role, triStateToggleableElement.role) && this.onClick == triStateToggleableElement.onClick;
    }

    public int hashCode() {
        int iHashCode = this.state.hashCode() * 31;
        i iVar = this.interactionSource;
        int iHashCode2 = (iHashCode + (iVar != null ? iVar.hashCode() : 0)) * 31;
        b0 b0Var = this.indicationNodeFactory;
        int iHashCode3 = (((iHashCode2 + (b0Var != null ? b0Var.hashCode() : 0)) * 31) + e.a(this.enabled)) * 31;
        f fVar = this.role;
        return ((iHashCode3 + (fVar != null ? f.l(fVar.n()) : 0)) * 31) + this.onClick.hashCode();
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public b a() {
        return new b(this.state, this.interactionSource, this.indicationNodeFactory, this.enabled, this.role, this.onClick, null);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(b node) {
        node.e2(this.state, this.interactionSource, this.indicationNodeFactory, this.enabled, this.role, this.onClick);
    }
}
