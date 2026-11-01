package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.node.a0;
import androidx.compose.ui.node.l0;
import androidx.compose.ui.node.o;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import y.m;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u001c\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B9\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\u001aHÖ\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u001a\u0010\u001f\u001a\u00020\u00052\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dHÖ\u0003¢\u0006\u0004\b\u001f\u0010 R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0017\u0010\f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108¨\u00069"}, d2 = {"Landroidx/compose/ui/draw/PainterElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/ui/draw/PainterNode;", "Landroidx/compose/ui/graphics/painter/Painter;", PlaceTypes.PAINTER, "", "sizeToIntrinsics", "Landroidx/compose/ui/b;", "alignment", "Landroidx/compose/ui/layout/e;", "contentScale", "", "alpha", "Landroidx/compose/ui/graphics/v1;", "colorFilter", "<init>", "(Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/b;Landroidx/compose/ui/layout/e;FLandroidx/compose/ui/graphics/v1;)V", "j", "()Landroidx/compose/ui/draw/PainterNode;", "node", "", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/ui/draw/PainterNode;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/compose/ui/graphics/painter/Painter;", "getPainter", "()Landroidx/compose/ui/graphics/painter/Painter;", "c", "Z", "getSizeToIntrinsics", "()Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/compose/ui/b;", "getAlignment", "()Landroidx/compose/ui/b;", "e", "Landroidx/compose/ui/layout/e;", "getContentScale", "()Landroidx/compose/ui/layout/e;", "f", "F", "getAlpha", "()F", "g", "Landroidx/compose/ui/graphics/v1;", "getColorFilter", "()Landroidx/compose/ui/graphics/v1;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final /* data */ class PainterElement extends l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata and from toString */
    private final Painter painter;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata and from toString */
    private final boolean sizeToIntrinsics;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final androidx.compose.ui.b alignment;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private final androidx.compose.ui.layout.e contentScale;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private final float alpha;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
    private final v1 colorFilter;

    public PainterElement(Painter painter, boolean z10, androidx.compose.ui.b bVar, androidx.compose.ui.layout.e eVar, float f11, v1 v1Var) {
        this.painter = painter;
        this.sizeToIntrinsics = z10;
        this.alignment = bVar;
        this.contentScale = eVar;
        this.alpha = f11;
        this.colorFilter = v1Var;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PainterElement)) {
            return false;
        }
        PainterElement painterElement = (PainterElement) other;
        return Intrinsics.c(this.painter, painterElement.painter) && this.sizeToIntrinsics == painterElement.sizeToIntrinsics && Intrinsics.c(this.alignment, painterElement.alignment) && Intrinsics.c(this.contentScale, painterElement.contentScale) && Float.compare(this.alpha, painterElement.alpha) == 0 && Intrinsics.c(this.colorFilter, painterElement.colorFilter);
    }

    public int hashCode() {
        int iHashCode = ((((((((this.painter.hashCode() * 31) + androidx.compose.foundation.e.a(this.sizeToIntrinsics)) * 31) + this.alignment.hashCode()) * 31) + this.contentScale.hashCode()) * 31) + Float.floatToIntBits(this.alpha)) * 31;
        v1 v1Var = this.colorFilter;
        return iHashCode + (v1Var == null ? 0 : v1Var.hashCode());
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public PainterNode a() {
        return new PainterNode(this.painter, this.sizeToIntrinsics, this.alignment, this.contentScale, this.alpha, this.colorFilter);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(PainterNode node) {
        boolean zF1 = node.F1();
        boolean z10 = this.sizeToIntrinsics;
        boolean z11 = zF1 != z10 || (z10 && !m.f(node.E1().h(), this.painter.h()));
        node.N1(this.painter);
        node.O1(this.sizeToIntrinsics);
        node.K1(this.alignment);
        node.M1(this.contentScale);
        node.setAlpha(this.alpha);
        node.L1(this.colorFilter);
        if (z11) {
            a0.b(node);
        }
        o.a(node);
    }

    public String toString() {
        return "PainterElement(painter=" + this.painter + ", sizeToIntrinsics=" + this.sizeToIntrinsics + ", alignment=" + this.alignment + ", contentScale=" + this.contentScale + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + ')';
    }
}
