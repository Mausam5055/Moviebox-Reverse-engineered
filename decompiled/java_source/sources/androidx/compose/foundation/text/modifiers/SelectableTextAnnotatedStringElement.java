package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.node.l0;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.style.p;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0016\b\u0080\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B¯\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0011\u0012\u0016\b\u0002\u0010\u0017\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u0015\u0018\u00010\u0014\u0012\u001e\b\u0002\u0010\u0019\u001a\u0018\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0014\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0002H\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u0002H\u0016¢\u0006\u0004\b#\u0010$J\u001a\u0010'\u001a\u00020\u000f2\b\u0010&\u001a\u0004\u0018\u00010%H\u0096\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0011H\u0016¢\u0006\u0004\b)\u0010*J\u0010\u0010,\u001a\u00020+HÖ\u0001¢\u0006\u0004\b,\u0010-R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\"\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u001a\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b6\u00107R\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u00107R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u00107R\"\u0010\u0017\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u0015\u0018\u00010\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010<R*\u0010\u0019\u001a\u0018\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0014\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u00105R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006A"}, d2 = {"Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/text/modifiers/g;", "Landroidx/compose/ui/text/AnnotatedString;", MimeTypes.BASE_TYPE_TEXT, "Landroidx/compose/ui/text/d0;", TtmlNode.TAG_STYLE, "Landroidx/compose/ui/text/font/h$b;", "fontFamilyResolver", "Lkotlin/Function1;", "Landroidx/compose/ui/text/z;", "", "onTextLayout", "Landroidx/compose/ui/text/style/p;", "overflow", "", "softWrap", "", "maxLines", "minLines", "", "Landroidx/compose/ui/text/AnnotatedString$c;", "Landroidx/compose/ui/text/t;", "placeholders", "Ly/i;", "onPlaceholderLayout", "Landroidx/compose/foundation/text/modifiers/h;", "selectionController", "Landroidx/compose/ui/graphics/x1;", TtmlNode.ATTR_TTS_COLOR, "<init>", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/h;Landroidx/compose/ui/graphics/x1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "j", "()Landroidx/compose/foundation/text/modifiers/g;", "node", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/text/modifiers/g;)V", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/compose/ui/text/AnnotatedString;", "c", "Landroidx/compose/ui/text/d0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/compose/ui/text/font/h$b;", "e", "Lkotlin/jvm/functions/Function1;", "f", "I", "g", "Z", "h", "i", "Ljava/util/List;", "l", "Landroidx/compose/foundation/text/modifiers/h;", "m", "Landroidx/compose/ui/graphics/x1;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SelectableTextAnnotatedStringElement extends l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata and from toString */
    private final AnnotatedString text;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata and from toString */
    private final d0 style;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final androidx.compose.ui.text.font.h.b fontFamilyResolver;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private final Function1 onTextLayout;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private final int overflow;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
    private final boolean softWrap;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata and from toString */
    private final int maxLines;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata and from toString */
    private final int minLines;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata and from toString */
    private final List placeholders;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata and from toString */
    private final Function1 onPlaceholderLayout;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata and from toString */
    private final h selectionController;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata and from toString */
    private final x1 color;

    private SelectableTextAnnotatedStringElement(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, Function1 function1, int i11, boolean z10, int i12, int i13, List list, Function1 function2, h hVar, x1 x1Var) {
        this.text = annotatedString;
        this.style = d0Var;
        this.fontFamilyResolver = bVar;
        this.onTextLayout = function1;
        this.overflow = i11;
        this.softWrap = z10;
        this.maxLines = i12;
        this.minLines = i13;
        this.placeholders = list;
        this.onPlaceholderLayout = function2;
        this.color = x1Var;
    }

    public /* synthetic */ SelectableTextAnnotatedStringElement(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, Function1 function1, int i11, boolean z10, int i12, int i13, List list, Function1 function2, h hVar, x1 x1Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, d0Var, bVar, function1, i11, z10, i12, i13, list, function2, hVar, x1Var);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SelectableTextAnnotatedStringElement)) {
            return false;
        }
        SelectableTextAnnotatedStringElement selectableTextAnnotatedStringElement = (SelectableTextAnnotatedStringElement) other;
        return Intrinsics.c(this.color, selectableTextAnnotatedStringElement.color) && Intrinsics.c(this.text, selectableTextAnnotatedStringElement.text) && Intrinsics.c(this.style, selectableTextAnnotatedStringElement.style) && Intrinsics.c(this.placeholders, selectableTextAnnotatedStringElement.placeholders) && Intrinsics.c(this.fontFamilyResolver, selectableTextAnnotatedStringElement.fontFamilyResolver) && this.onTextLayout == selectableTextAnnotatedStringElement.onTextLayout && p.e(this.overflow, selectableTextAnnotatedStringElement.overflow) && this.softWrap == selectableTextAnnotatedStringElement.softWrap && this.maxLines == selectableTextAnnotatedStringElement.maxLines && this.minLines == selectableTextAnnotatedStringElement.minLines && this.onPlaceholderLayout == selectableTextAnnotatedStringElement.onPlaceholderLayout && Intrinsics.c(this.selectionController, selectableTextAnnotatedStringElement.selectionController);
    }

    public int hashCode() {
        int iHashCode = ((((this.text.hashCode() * 31) + this.style.hashCode()) * 31) + this.fontFamilyResolver.hashCode()) * 31;
        Function1 function1 = this.onTextLayout;
        int iHashCode2 = (((((((((iHashCode + (function1 != null ? function1.hashCode() : 0)) * 31) + p.f(this.overflow)) * 31) + androidx.compose.foundation.e.a(this.softWrap)) * 31) + this.maxLines) * 31) + this.minLines) * 31;
        List list = this.placeholders;
        int iHashCode3 = (iHashCode2 + (list != null ? list.hashCode() : 0)) * 31;
        Function1 function2 = this.onPlaceholderLayout;
        int iHashCode4 = (((iHashCode3 + (function2 != null ? function2.hashCode() : 0)) * 31) + 0) * 31;
        x1 x1Var = this.color;
        return iHashCode4 + (x1Var != null ? x1Var.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public g a() {
        return new g(this.text, this.style, this.fontFamilyResolver, this.onTextLayout, this.overflow, this.softWrap, this.maxLines, this.minLines, this.placeholders, this.onPlaceholderLayout, this.selectionController, this.color, null, 4096, null);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(g node) {
        node.J1(this.text, this.style, this.placeholders, this.minLines, this.maxLines, this.softWrap, this.fontFamilyResolver, this.overflow, this.onTextLayout, this.onPlaceholderLayout, this.selectionController, this.color);
    }

    public String toString() {
        return "SelectableTextAnnotatedStringElement(text=" + ((Object) this.text) + ", style=" + this.style + ", fontFamilyResolver=" + this.fontFamilyResolver + ", onTextLayout=" + this.onTextLayout + ", overflow=" + ((Object) p.g(this.overflow)) + ", softWrap=" + this.softWrap + ", maxLines=" + this.maxLines + ", minLines=" + this.minLines + ", placeholders=" + this.placeholders + ", onPlaceholderLayout=" + this.onPlaceholderLayout + ", selectionController=" + this.selectionController + ", color=" + this.color + ')';
    }
}
