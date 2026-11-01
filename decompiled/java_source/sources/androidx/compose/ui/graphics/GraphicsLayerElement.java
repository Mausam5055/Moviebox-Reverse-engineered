package androidx.compose.ui.graphics;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b+\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0016\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b!\u0010\"J\u0010\u0010$\u001a\u00020#HÖ\u0001¢\u0006\u0004\b$\u0010%J\u0010\u0010'\u001a\u00020&HÖ\u0001¢\u0006\u0004\b'\u0010(J\u001a\u0010+\u001a\u00020\u00122\b\u0010*\u001a\u0004\u0018\u00010)HÖ\u0003¢\u0006\u0004\b+\u0010,R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0017\u0010\u0005\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b1\u0010.\u001a\u0004\b2\u00100R\u0017\u0010\u0006\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b3\u0010.\u001a\u0004\b4\u00100R\u0017\u0010\u0007\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b5\u0010.\u001a\u0004\b6\u00100R\u0017\u0010\b\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b7\u0010.\u001a\u0004\b8\u00100R\u0017\u0010\t\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b9\u0010.\u001a\u0004\b:\u00100R\u0017\u0010\n\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b;\u0010.\u001a\u0004\b<\u00100R\u0017\u0010\u000b\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b=\u0010.\u001a\u0004\b>\u00100R\u0017\u0010\f\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u001d\u0010.\u001a\u0004\b?\u00100R\u0017\u0010\r\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b!\u0010.\u001a\u0004\b@\u00100R\u001d\u0010\u000f\u001a\u00020\u000e8\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u0017\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR\u0017\u0010\u0013\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bK\u0010LR\u001d\u0010\u0017\u001a\u00020\u00168\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\bM\u0010B\u001a\u0004\bN\u0010DR\u001d\u0010\u0018\u001a\u00020\u00168\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\bO\u0010B\u001a\u0004\bP\u0010DR\u001d\u0010\u001a\u001a\u00020\u00198\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010(\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006T"}, d2 = {"Landroidx/compose/ui/graphics/GraphicsLayerElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;", "", "scaleX", "scaleY", "alpha", "translationX", "translationY", "shadowElevation", "rotationX", "rotationY", "rotationZ", "cameraDistance", "Landroidx/compose/ui/graphics/e5;", "transformOrigin", "Landroidx/compose/ui/graphics/a5;", "shape", "", "clip", "Landroidx/compose/ui/graphics/w4;", "renderEffect", "Landroidx/compose/ui/graphics/u1;", "ambientShadowColor", "spotShadowColor", "Landroidx/compose/ui/graphics/w3;", "compositingStrategy", "<init>", "(FFFFFFFFFFJLandroidx/compose/ui/graphics/a5;ZLandroidx/compose/ui/graphics/w4;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V", "j", "()Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;", "node", "", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "F", "getScaleX", "()F", "c", "getScaleY", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "getAlpha", "e", "getTranslationX", "f", "getTranslationY", "g", "getShadowElevation", "h", "getRotationX", "i", "getRotationY", "getRotationZ", "getCameraDistance", "l", "J", "getTransformOrigin-SzJe1aQ", "()J", "m", "Landroidx/compose/ui/graphics/a5;", "getShape", "()Landroidx/compose/ui/graphics/a5;", "n", "Z", "getClip", "()Z", "o", "getAmbientShadowColor-0d7_KjU", TtmlNode.TAG_P, "getSpotShadowColor-0d7_KjU", CampaignEx.JSON_KEY_AD_Q, "I", "getCompositingStrategy--NrFUSI", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final /* data */ class GraphicsLayerElement extends androidx.compose.ui.node.l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata and from toString */
    private final float scaleX;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata and from toString */
    private final float scaleY;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final float alpha;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private final float translationX;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private final float translationY;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
    private final float shadowElevation;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata and from toString */
    private final float rotationX;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata and from toString */
    private final float rotationY;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata and from toString */
    private final float rotationZ;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata and from toString */
    private final float cameraDistance;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata and from toString */
    private final long transformOrigin;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata and from toString */
    private final a5 shape;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata and from toString */
    private final boolean clip;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata and from toString */
    private final long ambientShadowColor;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata and from toString */
    private final long spotShadowColor;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata and from toString */
    private final int compositingStrategy;

    private GraphicsLayerElement(float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, long j11, a5 a5Var, boolean z10, w4 w4Var, long j12, long j13, int i11) {
        this.scaleX = f11;
        this.scaleY = f12;
        this.alpha = f13;
        this.translationX = f14;
        this.translationY = f15;
        this.shadowElevation = f16;
        this.rotationX = f17;
        this.rotationY = f18;
        this.rotationZ = f19;
        this.cameraDistance = f20;
        this.transformOrigin = j11;
        this.shape = a5Var;
        this.clip = z10;
        this.ambientShadowColor = j12;
        this.spotShadowColor = j13;
        this.compositingStrategy = i11;
    }

    public /* synthetic */ GraphicsLayerElement(float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, long j11, a5 a5Var, boolean z10, w4 w4Var, long j12, long j13, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, j11, a5Var, z10, w4Var, j12, j13, i11);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GraphicsLayerElement)) {
            return false;
        }
        GraphicsLayerElement graphicsLayerElement = (GraphicsLayerElement) other;
        return Float.compare(this.scaleX, graphicsLayerElement.scaleX) == 0 && Float.compare(this.scaleY, graphicsLayerElement.scaleY) == 0 && Float.compare(this.alpha, graphicsLayerElement.alpha) == 0 && Float.compare(this.translationX, graphicsLayerElement.translationX) == 0 && Float.compare(this.translationY, graphicsLayerElement.translationY) == 0 && Float.compare(this.shadowElevation, graphicsLayerElement.shadowElevation) == 0 && Float.compare(this.rotationX, graphicsLayerElement.rotationX) == 0 && Float.compare(this.rotationY, graphicsLayerElement.rotationY) == 0 && Float.compare(this.rotationZ, graphicsLayerElement.rotationZ) == 0 && Float.compare(this.cameraDistance, graphicsLayerElement.cameraDistance) == 0 && e5.c(this.transformOrigin, graphicsLayerElement.transformOrigin) && Intrinsics.c(this.shape, graphicsLayerElement.shape) && this.clip == graphicsLayerElement.clip && Intrinsics.c(null, null) && u1.m(this.ambientShadowColor, graphicsLayerElement.ambientShadowColor) && u1.m(this.spotShadowColor, graphicsLayerElement.spotShadowColor) && w3.e(this.compositingStrategy, graphicsLayerElement.compositingStrategy);
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((Float.floatToIntBits(this.scaleX) * 31) + Float.floatToIntBits(this.scaleY)) * 31) + Float.floatToIntBits(this.alpha)) * 31) + Float.floatToIntBits(this.translationX)) * 31) + Float.floatToIntBits(this.translationY)) * 31) + Float.floatToIntBits(this.shadowElevation)) * 31) + Float.floatToIntBits(this.rotationX)) * 31) + Float.floatToIntBits(this.rotationY)) * 31) + Float.floatToIntBits(this.rotationZ)) * 31) + Float.floatToIntBits(this.cameraDistance)) * 31) + e5.f(this.transformOrigin)) * 31) + this.shape.hashCode()) * 31) + androidx.compose.foundation.e.a(this.clip)) * 961) + u1.s(this.ambientShadowColor)) * 31) + u1.s(this.spotShadowColor)) * 31) + w3.f(this.compositingStrategy);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public SimpleGraphicsLayerModifier a() {
        return new SimpleGraphicsLayerModifier(this.scaleX, this.scaleY, this.alpha, this.translationX, this.translationY, this.shadowElevation, this.rotationX, this.rotationY, this.rotationZ, this.cameraDistance, this.transformOrigin, this.shape, this.clip, null, this.ambientShadowColor, this.spotShadowColor, this.compositingStrategy, null);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(SimpleGraphicsLayerModifier node) {
        node.b(this.scaleX);
        node.h(this.scaleY);
        node.setAlpha(this.alpha);
        node.j(this.translationX);
        node.a(this.translationY);
        node.u(this.shadowElevation);
        node.e(this.rotationX);
        node.f(this.rotationY);
        node.g(this.rotationZ);
        node.d(this.cameraDistance);
        node.d0(this.transformOrigin);
        node.A0(this.shape);
        node.r(this.clip);
        node.c(null);
        node.p(this.ambientShadowColor);
        node.s(this.spotShadowColor);
        node.l(this.compositingStrategy);
        node.M1();
    }

    public String toString() {
        return "GraphicsLayerElement(scaleX=" + this.scaleX + ", scaleY=" + this.scaleY + ", alpha=" + this.alpha + ", translationX=" + this.translationX + ", translationY=" + this.translationY + ", shadowElevation=" + this.shadowElevation + ", rotationX=" + this.rotationX + ", rotationY=" + this.rotationY + ", rotationZ=" + this.rotationZ + ", cameraDistance=" + this.cameraDistance + ", transformOrigin=" + ((Object) e5.g(this.transformOrigin)) + ", shape=" + this.shape + ", clip=" + this.clip + ", renderEffect=" + ((Object) null) + ", ambientShadowColor=" + ((Object) u1.t(this.ambientShadowColor)) + ", spotShadowColor=" + ((Object) u1.t(this.spotShadowColor)) + ", compositingStrategy=" + ((Object) w3.g(this.compositingStrategy)) + ')';
    }
}
