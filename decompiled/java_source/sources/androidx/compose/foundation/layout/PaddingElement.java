package androidx.compose.foundation.layout;

import androidx.compose.ui.node.l0;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u001d\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BP\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\r¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001b\u001a\u00020\b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0096\u0002¢\u0006\u0004\b\u001b\u0010\u001cR(\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0086\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R(\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0086\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0012\n\u0004\b#\u0010\u001e\u001a\u0004\b$\u0010 \"\u0004\b%\u0010\"R(\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0086\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0012\n\u0004\b&\u0010\u001e\u001a\u0004\b'\u0010 \"\u0004\b(\u0010\"R(\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0086\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0012\n\u0004\b)\u0010\u001e\u001a\u0004\b*\u0010 \"\u0004\b+\u0010\"R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R(\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\r8\u0006¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00066"}, d2 = {"Landroidx/compose/foundation/layout/PaddingElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/layout/PaddingNode;", "Lo0/i;", "start", IntegrationConstants.TAB_BAR_POSITION_TOP, TtmlNode.END, IntegrationConstants.TAB_BAR_POSITION_DEFAULT, "", "rtlAware", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/z0;", "", "Lkotlin/ExtensionFunctionType;", "inspectorInfo", "<init>", "(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "j", "()Landroidx/compose/foundation/layout/PaddingNode;", "node", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/layout/PaddingNode;)V", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "F", "getStart-D9Ej5fM", "()F", "setStart-0680j_4", "(F)V", "c", "getTop-D9Ej5fM", "setTop-0680j_4", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "getEnd-D9Ej5fM", "setEnd-0680j_4", "e", "getBottom-D9Ej5fM", "setBottom-0680j_4", "f", "Z", "getRtlAware", "()Z", "setRtlAware", "(Z)V", "g", "Lkotlin/jvm/functions/Function1;", "getInspectorInfo", "()Lkotlin/jvm/functions/Function1;", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
final class PaddingElement extends l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private float start;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private float top;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float end;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private float bottom;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean rtlAware;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Function1 inspectorInfo;

    private PaddingElement(float f11, float f12, float f13, float f14, boolean z10, Function1 function1) {
        this.start = f11;
        this.top = f12;
        this.end = f13;
        this.bottom = f14;
        this.rtlAware = z10;
        this.inspectorInfo = function1;
        if (f11 >= 0.0f || o0.i.i(f11, o0.i.f70603b.b())) {
            float f15 = this.top;
            if (f15 >= 0.0f || o0.i.i(f15, o0.i.f70603b.b())) {
                float f16 = this.end;
                if (f16 >= 0.0f || o0.i.i(f16, o0.i.f70603b.b())) {
                    float f17 = this.bottom;
                    if (f17 >= 0.0f || o0.i.i(f17, o0.i.f70603b.b())) {
                        return;
                    }
                }
            }
        }
        throw new IllegalArgumentException("Padding must be non-negative");
    }

    public /* synthetic */ PaddingElement(float f11, float f12, float f13, float f14, boolean z10, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, f12, f13, f14, z10, function1);
    }

    public boolean equals(Object other) {
        PaddingElement paddingElement = other instanceof PaddingElement ? (PaddingElement) other : null;
        return paddingElement != null && o0.i.i(this.start, paddingElement.start) && o0.i.i(this.top, paddingElement.top) && o0.i.i(this.end, paddingElement.end) && o0.i.i(this.bottom, paddingElement.bottom) && this.rtlAware == paddingElement.rtlAware;
    }

    public int hashCode() {
        return (((((((o0.i.j(this.start) * 31) + o0.i.j(this.top)) * 31) + o0.i.j(this.end)) * 31) + o0.i.j(this.bottom)) * 31) + androidx.compose.foundation.e.a(this.rtlAware);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public PaddingNode a() {
        return new PaddingNode(this.start, this.top, this.end, this.bottom, this.rtlAware, null);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(PaddingNode node) {
        node.J1(this.start);
        node.K1(this.top);
        node.H1(this.end);
        node.G1(this.bottom);
        node.I1(this.rtlAware);
    }
}
