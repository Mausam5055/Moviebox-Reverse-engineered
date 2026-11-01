package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.node.l0;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.style.p;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0014\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BS\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\r\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001c\u001a\u00020\u000b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0096\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001a\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010'R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010'R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006."}, d2 = {"Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;", "", MimeTypes.BASE_TYPE_TEXT, "Landroidx/compose/ui/text/d0;", TtmlNode.TAG_STYLE, "Landroidx/compose/ui/text/font/h$b;", "fontFamilyResolver", "Landroidx/compose/ui/text/style/p;", "overflow", "", "softWrap", "", "maxLines", "minLines", "Landroidx/compose/ui/graphics/x1;", TtmlNode.ATTR_TTS_COLOR, "<init>", "(Ljava/lang/String;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILandroidx/compose/ui/graphics/x1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "j", "()Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;", "node", "", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;)V", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "c", "Landroidx/compose/ui/text/d0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/compose/ui/text/font/h$b;", "e", "I", "f", "Z", "g", "h", "i", "Landroidx/compose/ui/graphics/x1;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TextStringSimpleElement extends l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final String text;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final d0 style;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.text.font.h.b fontFamilyResolver;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int overflow;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final boolean softWrap;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final int maxLines;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final int minLines;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final x1 color;

    private TextStringSimpleElement(String str, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i11, boolean z10, int i12, int i13, x1 x1Var) {
        this.text = str;
        this.style = d0Var;
        this.fontFamilyResolver = bVar;
        this.overflow = i11;
        this.softWrap = z10;
        this.maxLines = i12;
        this.minLines = i13;
        this.color = x1Var;
    }

    public /* synthetic */ TextStringSimpleElement(String str, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i11, boolean z10, int i12, int i13, x1 x1Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, d0Var, bVar, i11, z10, i12, i13, x1Var);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextStringSimpleElement)) {
            return false;
        }
        TextStringSimpleElement textStringSimpleElement = (TextStringSimpleElement) other;
        return Intrinsics.c(this.color, textStringSimpleElement.color) && Intrinsics.c(this.text, textStringSimpleElement.text) && Intrinsics.c(this.style, textStringSimpleElement.style) && Intrinsics.c(this.fontFamilyResolver, textStringSimpleElement.fontFamilyResolver) && p.e(this.overflow, textStringSimpleElement.overflow) && this.softWrap == textStringSimpleElement.softWrap && this.maxLines == textStringSimpleElement.maxLines && this.minLines == textStringSimpleElement.minLines;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((this.text.hashCode() * 31) + this.style.hashCode()) * 31) + this.fontFamilyResolver.hashCode()) * 31) + p.f(this.overflow)) * 31) + androidx.compose.foundation.e.a(this.softWrap)) * 31) + this.maxLines) * 31) + this.minLines) * 31;
        x1 x1Var = this.color;
        return iHashCode + (x1Var != null ? x1Var.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public TextStringSimpleNode a() {
        return new TextStringSimpleNode(this.text, this.style, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines, this.color, null);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(TextStringSimpleNode node) {
        node.L1(node.Q1(this.color, this.style), node.S1(this.text), node.R1(this.style, this.minLines, this.maxLines, this.softWrap, this.fontFamilyResolver, this.overflow));
    }
}
