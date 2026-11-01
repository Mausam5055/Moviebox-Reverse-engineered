package androidx.compose.foundation;

import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.node.l0;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BF\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0017\u0010\u000f\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0096\u0002¢\u0006\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R%\u0010\u000f\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006)"}, d2 = {"Landroidx/compose/foundation/BackgroundElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/BackgroundNode;", "Landroidx/compose/ui/graphics/u1;", TtmlNode.ATTR_TTS_COLOR, "Landroidx/compose/ui/graphics/j1;", "brush", "", "alpha", "Landroidx/compose/ui/graphics/a5;", "shape", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/z0;", "", "Lkotlin/ExtensionFunctionType;", "inspectorInfo", "<init>", "(JLandroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/a5;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "j", "()Landroidx/compose/foundation/BackgroundNode;", "node", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/BackgroundNode;)V", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "J", "c", "Landroidx/compose/ui/graphics/j1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "F", "e", "Landroidx/compose/ui/graphics/a5;", "f", "Lkotlin/jvm/functions/Function1;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final class BackgroundElement extends l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final long color;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final j1 brush;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final float alpha;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final a5 shape;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Function1 inspectorInfo;

    private BackgroundElement(long j11, j1 j1Var, float f11, a5 a5Var, Function1 function1) {
        this.color = j11;
        this.brush = j1Var;
        this.alpha = f11;
        this.shape = a5Var;
        this.inspectorInfo = function1;
    }

    public /* synthetic */ BackgroundElement(long j11, j1 j1Var, float f11, a5 a5Var, Function1 function1, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? u1.f4658b.e() : j11, (i11 & 2) != 0 ? null : j1Var, f11, a5Var, function1, null);
    }

    public /* synthetic */ BackgroundElement(long j11, j1 j1Var, float f11, a5 a5Var, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j1Var, f11, a5Var, function1);
    }

    public boolean equals(Object other) {
        BackgroundElement backgroundElement = other instanceof BackgroundElement ? (BackgroundElement) other : null;
        return backgroundElement != null && u1.m(this.color, backgroundElement.color) && Intrinsics.c(this.brush, backgroundElement.brush) && this.alpha == backgroundElement.alpha && Intrinsics.c(this.shape, backgroundElement.shape);
    }

    public int hashCode() {
        int iS = u1.s(this.color) * 31;
        j1 j1Var = this.brush;
        return ((((iS + (j1Var != null ? j1Var.hashCode() : 0)) * 31) + Float.floatToIntBits(this.alpha)) * 31) + this.shape.hashCode();
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public BackgroundNode a() {
        return new BackgroundNode(this.color, this.brush, this.alpha, this.shape, null);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(BackgroundNode node) {
        node.I1(this.color);
        node.H1(this.brush);
        node.setAlpha(this.alpha);
        node.A0(this.shape);
    }
}
