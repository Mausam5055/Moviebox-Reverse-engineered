package androidx.compose.foundation;

import androidx.compose.ui.node.l0;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000f\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BE\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0019\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0096\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010\n\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001c\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b&\u0010'R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006*"}, d2 = {"Landroidx/compose/foundation/ClickableElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/ClickableNode;", "Lp/i;", "interactionSource", "Landroidx/compose/foundation/b0;", "indicationNodeFactory", "", "enabled", "", "onClickLabel", "Landroidx/compose/ui/semantics/f;", "role", "Lkotlin/Function0;", "", "onClick", "<init>", "(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "j", "()Landroidx/compose/foundation/ClickableNode;", "node", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/ClickableNode;)V", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lp/i;", "c", "Landroidx/compose/foundation/b0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "e", "Ljava/lang/String;", "f", "Landroidx/compose/ui/semantics/f;", "g", "Lkotlin/jvm/functions/Function0;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final class ClickableElement extends l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final p.i interactionSource;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final b0 indicationNodeFactory;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final boolean enabled;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final String onClickLabel;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.semantics.f role;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Function0 onClick;

    private ClickableElement(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0) {
        this.interactionSource = iVar;
        this.indicationNodeFactory = b0Var;
        this.enabled = z10;
        this.onClickLabel = str;
        this.role = fVar;
        this.onClick = function0;
    }

    public /* synthetic */ ClickableElement(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(iVar, b0Var, z10, str, fVar, function0);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || ClickableElement.class != other.getClass()) {
            return false;
        }
        ClickableElement clickableElement = (ClickableElement) other;
        return Intrinsics.c(this.interactionSource, clickableElement.interactionSource) && Intrinsics.c(this.indicationNodeFactory, clickableElement.indicationNodeFactory) && this.enabled == clickableElement.enabled && Intrinsics.c(this.onClickLabel, clickableElement.onClickLabel) && Intrinsics.c(this.role, clickableElement.role) && this.onClick == clickableElement.onClick;
    }

    public int hashCode() {
        p.i iVar = this.interactionSource;
        int iHashCode = (iVar != null ? iVar.hashCode() : 0) * 31;
        b0 b0Var = this.indicationNodeFactory;
        int iHashCode2 = (((iHashCode + (b0Var != null ? b0Var.hashCode() : 0)) * 31) + e.a(this.enabled)) * 31;
        String str = this.onClickLabel;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        androidx.compose.ui.semantics.f fVar = this.role;
        return ((iHashCode3 + (fVar != null ? androidx.compose.ui.semantics.f.l(fVar.n()) : 0)) * 31) + this.onClick.hashCode();
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public ClickableNode a() {
        return new ClickableNode(this.interactionSource, this.indicationNodeFactory, this.enabled, this.onClickLabel, this.role, this.onClick, null);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(ClickableNode node) {
        node.d2(this.interactionSource, this.indicationNodeFactory, this.enabled, this.onClickLabel, this.role, this.onClick);
    }
}
