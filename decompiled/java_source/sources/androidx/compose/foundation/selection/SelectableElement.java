package androidx.compose.foundation.selection;

import androidx.compose.foundation.b0;
import androidx.compose.foundation.e;
import androidx.compose.ui.node.l0;
import androidx.compose.ui.semantics.f;
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
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000e\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BC\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\u00032\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0096\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010\t\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u001eR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b$\u0010%R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006("}, d2 = {"Landroidx/compose/foundation/selection/SelectableElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/selection/a;", "", "selected", "Lp/i;", "interactionSource", "Landroidx/compose/foundation/b0;", "indicationNodeFactory", "enabled", "Landroidx/compose/ui/semantics/f;", "role", "Lkotlin/Function0;", "", "onClick", "<init>", "(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "j", "()Landroidx/compose/foundation/selection/a;", "node", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/selection/a;)V", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "c", "Lp/i;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/compose/foundation/b0;", "e", "f", "Landroidx/compose/ui/semantics/f;", "g", "Lkotlin/jvm/functions/Function0;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final class SelectableElement extends l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final boolean selected;

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

    private SelectableElement(boolean z10, i iVar, b0 b0Var, boolean z11, f fVar, Function0 function0) {
        this.selected = z10;
        this.interactionSource = iVar;
        this.indicationNodeFactory = b0Var;
        this.enabled = z11;
        this.role = fVar;
        this.onClick = function0;
    }

    public /* synthetic */ SelectableElement(boolean z10, i iVar, b0 b0Var, boolean z11, f fVar, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, iVar, b0Var, z11, fVar, function0);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || SelectableElement.class != other.getClass()) {
            return false;
        }
        SelectableElement selectableElement = (SelectableElement) other;
        return this.selected == selectableElement.selected && Intrinsics.c(this.interactionSource, selectableElement.interactionSource) && Intrinsics.c(this.indicationNodeFactory, selectableElement.indicationNodeFactory) && this.enabled == selectableElement.enabled && Intrinsics.c(this.role, selectableElement.role) && this.onClick == selectableElement.onClick;
    }

    public int hashCode() {
        int iA = e.a(this.selected) * 31;
        i iVar = this.interactionSource;
        int iHashCode = (iA + (iVar != null ? iVar.hashCode() : 0)) * 31;
        b0 b0Var = this.indicationNodeFactory;
        int iHashCode2 = (((iHashCode + (b0Var != null ? b0Var.hashCode() : 0)) * 31) + e.a(this.enabled)) * 31;
        f fVar = this.role;
        return ((iHashCode2 + (fVar != null ? f.l(fVar.n()) : 0)) * 31) + this.onClick.hashCode();
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public a a() {
        return new a(this.selected, this.interactionSource, this.indicationNodeFactory, this.enabled, this.role, this.onClick, null);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(a node) {
        node.e2(this.selected, this.interactionSource, this.indicationNodeFactory, this.enabled, this.role, this.onClick);
    }
}
