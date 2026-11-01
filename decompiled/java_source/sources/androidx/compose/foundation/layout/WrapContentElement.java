package androidx.compose.foundation.layout;

import androidx.compose.ui.node.l0;
import androidx.compose.ui.unit.LayoutDirection;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000f\b\u0002\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001)BA\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0007\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0019\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\fH\u0096\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R&\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006*"}, d2 = {"Landroidx/compose/foundation/layout/WrapContentElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/layout/WrapContentNode;", "Landroidx/compose/foundation/layout/Direction;", "direction", "", "unbounded", "Lkotlin/Function2;", "Lo0/t;", "Landroidx/compose/ui/unit/LayoutDirection;", "Lo0/p;", "alignmentCallback", "", "align", "", "inspectorName", "<init>", "(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/String;)V", "j", "()Landroidx/compose/foundation/layout/WrapContentNode;", "node", "", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/layout/WrapContentNode;)V", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/compose/foundation/layout/Direction;", "c", "Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/jvm/functions/Function2;", "e", "Ljava/lang/Object;", "f", "Ljava/lang/String;", "g", "Companion", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final class WrapContentElement extends l0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Direction direction;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final boolean unbounded;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Function2 alignmentCallback;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Object align;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final String inspectorName;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final WrapContentElement a(final androidx.compose.ui.b.c cVar, boolean z10) {
            return new WrapContentElement(Direction.Vertical, z10, new Function2<o0.t, LayoutDirection, o0.p>() { // from class: androidx.compose.foundation.layout.WrapContentElement$Companion$height$1
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    return o0.p.b(m39invoke5SAbXVA(((o0.t) obj).j(), (LayoutDirection) obj2));
                }

                /* JADX INFO: renamed from: invoke-5SAbXVA, reason: not valid java name */
                public final long m39invoke5SAbXVA(long j11, LayoutDirection layoutDirection) {
                    return o0.q.a(0, cVar.a(0, o0.t.f(j11)));
                }
            }, cVar, "wrapContentHeight");
        }

        public final WrapContentElement b(final androidx.compose.ui.b bVar, boolean z10) {
            return new WrapContentElement(Direction.Both, z10, new Function2<o0.t, LayoutDirection, o0.p>() { // from class: androidx.compose.foundation.layout.WrapContentElement$Companion$size$1
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    return o0.p.b(m40invoke5SAbXVA(((o0.t) obj).j(), (LayoutDirection) obj2));
                }

                /* JADX INFO: renamed from: invoke-5SAbXVA, reason: not valid java name */
                public final long m40invoke5SAbXVA(long j11, LayoutDirection layoutDirection) {
                    return bVar.a(o0.t.f70624b.a(), j11, layoutDirection);
                }
            }, bVar, "wrapContentSize");
        }

        public final WrapContentElement c(final androidx.compose.ui.b.InterfaceC0044b interfaceC0044b, boolean z10) {
            return new WrapContentElement(Direction.Horizontal, z10, new Function2<o0.t, LayoutDirection, o0.p>() { // from class: androidx.compose.foundation.layout.WrapContentElement$Companion$width$1
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    return o0.p.b(m41invoke5SAbXVA(((o0.t) obj).j(), (LayoutDirection) obj2));
                }

                /* JADX INFO: renamed from: invoke-5SAbXVA, reason: not valid java name */
                public final long m41invoke5SAbXVA(long j11, LayoutDirection layoutDirection) {
                    return o0.q.a(interfaceC0044b.a(0, o0.t.g(j11), layoutDirection), 0);
                }
            }, interfaceC0044b, "wrapContentWidth");
        }
    }

    public WrapContentElement(Direction direction, boolean z10, Function2 function2, Object obj, String str) {
        this.direction = direction;
        this.unbounded = z10;
        this.alignmentCallback = function2;
        this.align = obj;
        this.inspectorName = str;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || WrapContentElement.class != other.getClass()) {
            return false;
        }
        WrapContentElement wrapContentElement = (WrapContentElement) other;
        return this.direction == wrapContentElement.direction && this.unbounded == wrapContentElement.unbounded && Intrinsics.c(this.align, wrapContentElement.align);
    }

    public int hashCode() {
        return (((this.direction.hashCode() * 31) + androidx.compose.foundation.e.a(this.unbounded)) * 31) + this.align.hashCode();
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public WrapContentNode a() {
        return new WrapContentNode(this.direction, this.unbounded, this.alignmentCallback);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(WrapContentNode node) {
        node.F1(this.direction);
        node.G1(this.unbounded);
        node.E1(this.alignmentCallback);
    }
}
