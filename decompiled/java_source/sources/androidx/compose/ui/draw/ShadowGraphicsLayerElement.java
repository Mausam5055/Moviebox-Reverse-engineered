package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.BlockGraphicsLayerModifier;
import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.c4;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.node.l0;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0016\b\u0080\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B/\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ \u0010\u0012\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001d\u001a\u00020\u001cHÖ\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u001a\u0010!\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\u001fHÖ\u0003¢\u0006\u0004\b!\u0010\"R\u001d\u0010\u0004\u001a\u00020\u00038\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u001d\u0010\n\u001a\u00020\t8\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u001d\u0010\u000b\u001a\u00020\t8\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b3\u00100\u001a\u0004\b4\u00102\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00065"}, d2 = {"Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;", "Lo0/i;", "elevation", "Landroidx/compose/ui/graphics/a5;", "shape", "", "clip", "Landroidx/compose/ui/graphics/u1;", "ambientColor", "spotColor", "<init>", "(FLandroidx/compose/ui/graphics/a5;ZJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/c4;", "", "Lkotlin/ExtensionFunctionType;", CampaignEx.JSON_KEY_AD_K, "()Lkotlin/jvm/functions/Function1;", "j", "()Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;", "node", CampaignEx.JSON_KEY_AD_R, "(Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "F", "o", "()F", "c", "Landroidx/compose/ui/graphics/a5;", TtmlNode.TAG_P, "()Landroidx/compose/ui/graphics/a5;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "m", "()Z", "e", "J", "l", "()J", "f", CampaignEx.JSON_KEY_AD_Q, "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShadowGraphicsLayerElement extends l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata and from toString */
    private final float elevation;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata and from toString */
    private final a5 shape;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final boolean clip;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private final long ambientColor;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private final long spotColor;

    private ShadowGraphicsLayerElement(float f11, a5 a5Var, boolean z10, long j11, long j12) {
        this.elevation = f11;
        this.shape = a5Var;
        this.clip = z10;
        this.ambientColor = j11;
        this.spotColor = j12;
    }

    public /* synthetic */ ShadowGraphicsLayerElement(float f11, a5 a5Var, boolean z10, long j11, long j12, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, a5Var, z10, j11, j12);
    }

    private final Function1 k() {
        return new Function1<c4, Unit>() { // from class: androidx.compose.ui.draw.ShadowGraphicsLayerElement$createBlock$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((c4) obj);
                return Unit.f67061a;
            }

            public final void invoke(c4 c4Var) {
                c4Var.u(c4Var.E0(this.this$0.getElevation()));
                c4Var.A0(this.this$0.getShape());
                c4Var.r(this.this$0.getClip());
                c4Var.p(this.this$0.getAmbientColor());
                c4Var.s(this.this$0.getSpotColor());
            }
        };
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShadowGraphicsLayerElement)) {
            return false;
        }
        ShadowGraphicsLayerElement shadowGraphicsLayerElement = (ShadowGraphicsLayerElement) other;
        return o0.i.i(this.elevation, shadowGraphicsLayerElement.elevation) && Intrinsics.c(this.shape, shadowGraphicsLayerElement.shape) && this.clip == shadowGraphicsLayerElement.clip && u1.m(this.ambientColor, shadowGraphicsLayerElement.ambientColor) && u1.m(this.spotColor, shadowGraphicsLayerElement.spotColor);
    }

    public int hashCode() {
        return (((((((o0.i.j(this.elevation) * 31) + this.shape.hashCode()) * 31) + androidx.compose.foundation.e.a(this.clip)) * 31) + u1.s(this.ambientColor)) * 31) + u1.s(this.spotColor);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public BlockGraphicsLayerModifier a() {
        return new BlockGraphicsLayerModifier(k());
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final long getAmbientColor() {
        return this.ambientColor;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public final boolean getClip() {
        return this.clip;
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final float getElevation() {
        return this.elevation;
    }

    /* JADX INFO: renamed from: p, reason: from getter */
    public final a5 getShape() {
        return this.shape;
    }

    /* JADX INFO: renamed from: q, reason: from getter */
    public final long getSpotColor() {
        return this.spotColor;
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void i(BlockGraphicsLayerModifier node) {
        node.F1(k());
        node.E1();
    }

    public String toString() {
        return "ShadowGraphicsLayerElement(elevation=" + ((Object) o0.i.k(this.elevation)) + ", shape=" + this.shape + ", clip=" + this.clip + ", ambientColor=" + ((Object) u1.t(this.ambientColor)) + ", spotColor=" + ((Object) u1.t(this.spotColor)) + ')';
    }
}
