package androidx.compose.foundation;

import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.node.l0;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0080\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u001d\u0010\u0004\u001a\u00020\u00038\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006("}, d2 = {"Landroidx/compose/foundation/BorderModifierNodeElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/BorderModifierNode;", "Lo0/i;", "width", "Landroidx/compose/ui/graphics/j1;", "brush", "Landroidx/compose/ui/graphics/a5;", "shape", "<init>", "(FLandroidx/compose/ui/graphics/j1;Landroidx/compose/ui/graphics/a5;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "j", "()Landroidx/compose/foundation/BorderModifierNode;", "node", "", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/BorderModifierNode;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "F", "getWidth-D9Ej5fM", "()F", "c", "Landroidx/compose/ui/graphics/j1;", "getBrush", "()Landroidx/compose/ui/graphics/j1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/compose/ui/graphics/a5;", "getShape", "()Landroidx/compose/ui/graphics/a5;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BorderModifierNodeElement extends l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata and from toString */
    private final float width;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata and from toString */
    private final j1 brush;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final a5 shape;

    private BorderModifierNodeElement(float f11, j1 j1Var, a5 a5Var) {
        this.width = f11;
        this.brush = j1Var;
        this.shape = a5Var;
    }

    public /* synthetic */ BorderModifierNodeElement(float f11, j1 j1Var, a5 a5Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, j1Var, a5Var);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BorderModifierNodeElement)) {
            return false;
        }
        BorderModifierNodeElement borderModifierNodeElement = (BorderModifierNodeElement) other;
        return o0.i.i(this.width, borderModifierNodeElement.width) && Intrinsics.c(this.brush, borderModifierNodeElement.brush) && Intrinsics.c(this.shape, borderModifierNodeElement.shape);
    }

    public int hashCode() {
        return (((o0.i.j(this.width) * 31) + this.brush.hashCode()) * 31) + this.shape.hashCode();
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public BorderModifierNode a() {
        return new BorderModifierNode(this.width, this.brush, this.shape, null);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(BorderModifierNode node) {
        node.R1(this.width);
        node.Q1(this.brush);
        node.A0(this.shape);
    }

    public String toString() {
        return "BorderModifierNodeElement(width=" + ((Object) o0.i.k(this.width)) + ", brush=" + this.brush + ", shape=" + this.shape + ')';
    }
}
