package com.transsion.subtitle.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.SecondariesSeekBar;
import com.tn.lib.view.SwitchButton;
import com.tn.lib.view.v;
import com.tn.lib.widget.R$color;
import com.transsion.subtitle.helper.LocalVideoUiType;
import com.transsion.subtitle.helper.f;
import com.transsion.subtitle.view.SubtitleOptionsView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.warkiz.widget.IndicatorSeekBar;
import com.warkiz.widget.e;
import fu.i;
import java.util.LinkedHashMap;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import lg.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0019\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 h2\u00020\u0001:\u0001CB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ!\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00062\b\b\u0002\u0010\u0017\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J+\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\u001b\u001a\u00020\u00122\b\b\u0002\u0010\u001c\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010!\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u00122\b\b\u0002\u0010 \u001a\u00020\u0012H\u0002¢\u0006\u0004\b!\u0010\"J!\u0010$\u001a\u00020\f2\u0006\u0010#\u001a\u00020\u00122\b\b\u0002\u0010 \u001a\u00020\u0012H\u0002¢\u0006\u0004\b$\u0010\"J!\u0010&\u001a\u00020\f2\u0006\u0010%\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b&\u0010\u0015J!\u0010(\u001a\u00020\f2\u0006\u0010'\u001a\u00020\u00062\b\b\u0002\u0010\u0017\u001a\u00020\u0012H\u0002¢\u0006\u0004\b(\u0010\u0019J\u000f\u0010)\u001a\u00020\fH\u0002¢\u0006\u0004\b)\u0010\u000eJ\u000f\u0010*\u001a\u00020\u0012H\u0002¢\u0006\u0004\b*\u0010+J\u0017\u0010.\u001a\u00020,2\u0006\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\fH\u0002¢\u0006\u0004\b0\u0010\u000eJ\u000f\u00101\u001a\u00020\fH\u0002¢\u0006\u0004\b1\u0010\u000eJ\u000f\u00102\u001a\u00020\fH\u0002¢\u0006\u0004\b2\u0010\u000eJS\u0010>\u001a\u00020\f2\b\u00104\u001a\u0004\u0018\u0001032\b\u00105\u001a\u0004\u0018\u00010\u00062\b\u00107\u001a\u0004\u0018\u0001062\b\u00108\u001a\u0004\u0018\u0001062\b\u0010:\u001a\u0004\u0018\u0001092\b\u0010;\u001a\u0004\u0018\u00010\u00102\b\u0010=\u001a\u0004\u0018\u00010<¢\u0006\u0004\b>\u0010?J\r\u0010@\u001a\u00020\f¢\u0006\u0004\b@\u0010\u000eJ\r\u0010A\u001a\u00020\f¢\u0006\u0004\bA\u0010\u000eR\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u00104\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u00105\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010\u0018R\u0018\u00107\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u00108\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010JR\u0018\u0010:\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010=\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0016\u0010;\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0014\u0010S\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010\u0018R\u0014\u0010U\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010\u0018R\u0016\u0010W\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010QR\u0016\u0010Y\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010\u0018R\u0016\u0010Z\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010\u0018R\u0016\u0010\\\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010[R\u0016\u0010]\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010[R\u0016\u0010_\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010QR\u0016\u0010a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010\u0018R\u0016\u0010c\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010[R\u001e\u0010e\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0083\u000e¢\u0006\f\n\u0004\be\u0010f\u0012\u0004\bg\u0010\u000e¨\u0006i"}, d2 = {"Lcom/transsion/subtitle/view/SubtitleOptionsView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "o", "()V", "n", "", "fontColorType", "", "fromRadioGroup", "G", "(Ljava/lang/String;Z)V", "fontSizeProgress", "fromSeekBar", "I", "(IZ)V", "percent", "fromSeekbar", "isSeekbarStopTouch", "K", "(IZZ)V", "openShadow", "fromSwitchButton", "x", "(ZZ)V", "openBackground", "v", "bgColorType", "C", "opacityProgress", "E", "reset", TmcStartParams.KEY_URL_SHORT, "()Z", "", "fontSizePercent", "m", "(F)F", "z", "A", "B", "Lcom/transsion/subtitle/helper/LocalVideoUiType;", "layerType", "playerContainerHeight", "Lcom/avery/subtitle/widget/SimpleSubtitleView;", "subtitleViewTop", "subtitleViewBottom", "Landroid/view/ViewGroup;", "subtitleViewGroup", "pageName", "Lcom/transsion/subtitle/helper/f;", "optionsHelper", "initOptions", "(Lcom/transsion/subtitle/helper/LocalVideoUiType;Ljava/lang/Integer;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/transsion/subtitle/helper/f;)V", "addSubtitleOptions", "removeSubtitleOptions", "Lfu/i;", "a", "Lfu/i;", "optionsViewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/subtitle/helper/LocalVideoUiType;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/avery/subtitle/widget/SimpleSubtitleView;", "e", "f", "Landroid/view/ViewGroup;", "g", "Lcom/transsion/subtitle/helper/f;", "h", "Ljava/lang/String;", "i", "dp4", "j", "subtitleViewBaseHeight", CampaignEx.JSON_KEY_AD_K, "curFontColorType", "l", "curFontSizeProgress", "curPositionPercent", "Z", "curOpenShadow", "curOpenBackground", TtmlNode.TAG_P, "curBackgroundColorType", CampaignEx.JSON_KEY_AD_Q, "curBackgroundOpacityProgress", CampaignEx.JSON_KEY_AD_R, "isSetPreviewText", "Landroid/widget/FrameLayout;", "subtitleViewContainer", "Landroid/widget/FrameLayout;", "getSubtitleViewContainer$annotations", "Companion", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"ViewConstructor"})
@SourceDebugExtension
public final class SubtitleOptionsView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private i optionsViewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private LocalVideoUiType layerType;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int playerContainerHeight;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private SimpleSubtitleView subtitleViewTop;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private SimpleSubtitleView subtitleViewBottom;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private ViewGroup subtitleViewGroup;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private f optionsHelper;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final int dp4;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final int subtitleViewBaseHeight;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String curFontColorType;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int curFontSizeProgress;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private int curPositionPercent;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean curOpenShadow;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean curOpenBackground;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private String curBackgroundColorType;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private int curBackgroundOpacityProgress;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private boolean isSetPreviewText;

    public static final class b implements e {
        b() {
        }

        @Override // com.warkiz.widget.e
        public void a(IndicatorSeekBar indicatorSeekBar) {
        }

        @Override // com.warkiz.widget.e
        public void b(IndicatorSeekBar indicatorSeekBar) {
            SubtitleOptionsView.this.I(indicatorSeekBar != null ? indicatorSeekBar.getProgress() : 0, true);
        }

        @Override // com.warkiz.widget.e
        public void c(com.warkiz.widget.f fVar) {
            SubtitleOptionsView.this.I(fVar != null ? fVar.f60799b : 0, true);
        }
    }

    public static final class c implements v {
        c() {
        }

        @Override // com.tn.lib.view.v
        public void a(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            SubtitleOptionsView.this.K((int) seekBar.getCurrentProgress(), true, true);
        }

        @Override // com.tn.lib.view.v
        public void b(SecondariesSeekBar seekBar, long j11, boolean z10) {
            Intrinsics.h(seekBar, "seekBar");
            SubtitleOptionsView.this.K((int) j11, true, false);
        }

        @Override // com.tn.lib.view.v
        public void c(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
        }
    }

    public static final class d implements e {
        d() {
        }

        @Override // com.warkiz.widget.e
        public void a(IndicatorSeekBar indicatorSeekBar) {
        }

        @Override // com.warkiz.widget.e
        public void b(IndicatorSeekBar indicatorSeekBar) {
            SubtitleOptionsView.this.E(indicatorSeekBar != null ? indicatorSeekBar.getProgress() : 0, true);
        }

        @Override // com.warkiz.widget.e
        public void c(com.warkiz.widget.f fVar) {
            SubtitleOptionsView.this.E(fVar != null ? fVar.f60799b : 0, true);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubtitleOptionsView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubtitleOptionsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubtitleOptionsView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        i iVarB = i.b(LayoutInflater.from(context), this);
        Intrinsics.g(iVarB, "inflate(...)");
        this.optionsViewBinding = iVarB;
        this.pageName = "local_video_detail";
        this.dp4 = a0.a(4.0f);
        this.subtitleViewBaseHeight = a0.a(66.0f);
        this.curFontColorType = "color_white";
        this.curFontSizeProgress = 2;
        this.curPositionPercent = 10;
        this.curOpenShadow = true;
        this.curBackgroundColorType = "color_black";
        this.curBackgroundOpacityProgress = 3;
        o();
    }

    private final void A() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("behavior", "leave");
        linkedHashMap.put("font_color", this.curFontColorType);
        f fVar = this.optionsHelper;
        linkedHashMap.put("font_size", String.valueOf(fVar != null ? Float.valueOf(fVar.g(this.curFontSizeProgress)) : null));
        linkedHashMap.put("position_bottom_percent", String.valueOf(this.curPositionPercent));
        linkedHashMap.put("shadow", String.valueOf(this.curOpenShadow));
        linkedHashMap.put("open_bg", String.valueOf(this.curOpenBackground));
        if (this.curOpenBackground) {
            linkedHashMap.put("bg_color", this.curBackgroundColorType);
            f fVar2 = this.optionsHelper;
            linkedHashMap.put("bg_opacity", String.valueOf(fVar2 != null ? Float.valueOf(fVar2.c(this.curBackgroundOpacityProgress)) : null));
        }
        hj.i.f64505a.s(this.pageName, "subtitle_options", linkedHashMap);
    }

    private final void B() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("behavior", "reset");
        hj.i.f64505a.s(this.pageName, "subtitle_options", linkedHashMap);
    }

    private final void C(String bgColorType, boolean fromRadioGroup) {
        if (fromRadioGroup) {
            this.curBackgroundColorType = bgColorType;
        } else {
            f fVar = this.optionsHelper;
            Integer numValueOf = fVar != null ? Integer.valueOf(fVar.b(bgColorType)) : null;
            RadioGroup radioGroup = this.optionsViewBinding.f62542t;
            Intrinsics.e(numValueOf);
            radioGroup.check(numValueOf.intValue());
        }
        com.transsion.baselib.report.launch.b.f43370a.b().putString("subtitle_options_bg_color", bgColorType);
        a.C0828a.f(a.f68839a, "SubtitleOptionsView", "setBackgroundColorStyle = " + bgColorType, false, 4, null);
        f fVar2 = this.optionsHelper;
        Integer numValueOf2 = fVar2 != null ? Integer.valueOf(fVar2.d(bgColorType)) : null;
        SimpleSubtitleView simpleSubtitleView = this.subtitleViewTop;
        if (simpleSubtitleView != null) {
            Intrinsics.e(numValueOf2);
            simpleSubtitleView.setBgColor(numValueOf2.intValue());
        }
        SimpleSubtitleView simpleSubtitleView2 = this.subtitleViewBottom;
        if (simpleSubtitleView2 != null) {
            Intrinsics.e(numValueOf2);
            simpleSubtitleView2.setBgColor(numValueOf2.intValue());
        }
    }

    static /* synthetic */ void D(SubtitleOptionsView subtitleOptionsView, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        subtitleOptionsView.C(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(int opacityProgress, boolean fromSeekBar) {
        if (fromSeekBar) {
            this.curBackgroundOpacityProgress = opacityProgress;
        } else {
            this.optionsViewBinding.f62546x.setProgress(opacityProgress);
        }
        com.transsion.baselib.report.launch.b.f43370a.b().putInt("subtitle_options_bg_opacity_progress", opacityProgress);
        this.optionsViewBinding.f62532j.setProgress(opacityProgress);
        f fVar = this.optionsHelper;
        Float fValueOf = fVar != null ? Float.valueOf(fVar.c(opacityProgress)) : null;
        if (fValueOf != null) {
            int iFloatValue = (int) (255 * fValueOf.floatValue());
            SimpleSubtitleView simpleSubtitleView = this.subtitleViewTop;
            if (simpleSubtitleView != null) {
                simpleSubtitleView.setBgAlpha(iFloatValue);
            }
            SimpleSubtitleView simpleSubtitleView2 = this.subtitleViewBottom;
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.setBgAlpha(iFloatValue);
            }
            com.transsion.subtitle.a.f54738a.a(SubtitleOptionsView.class.getSimpleName() + " --> setBackgroundOpacityStyle() --> opacityPercent = " + fValueOf + " --> toInt = " + iFloatValue + " --> subtitleViewTop = " + (this.subtitleViewTop != null) + " --> subtitleViewBottom = " + (this.subtitleViewBottom != null));
        }
    }

    static /* synthetic */ void F(SubtitleOptionsView subtitleOptionsView, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        subtitleOptionsView.E(i11, z10);
    }

    private final void G(String fontColorType, boolean fromRadioGroup) {
        f fVar = this.optionsHelper;
        Integer numValueOf = fVar != null ? Integer.valueOf(fVar.f(fontColorType)) : null;
        if (fromRadioGroup) {
            this.curFontColorType = fontColorType;
        } else {
            RadioGroup radioGroup = this.optionsViewBinding.f62543u;
            Intrinsics.e(numValueOf);
            radioGroup.check(numValueOf.intValue());
        }
        com.transsion.baselib.report.launch.b.f43370a.b().putString("subtitle_options_font_color", fontColorType);
        SimpleSubtitleView simpleSubtitleView = this.subtitleViewTop;
        if (simpleSubtitleView != null) {
            f fVar2 = this.optionsHelper;
            Integer numValueOf2 = fVar2 != null ? Integer.valueOf(fVar2.d(fontColorType)) : null;
            Intrinsics.e(numValueOf2);
            simpleSubtitleView.setTextColor(numValueOf2.intValue());
        }
        SimpleSubtitleView simpleSubtitleView2 = this.subtitleViewBottom;
        if (simpleSubtitleView2 != null) {
            f fVar3 = this.optionsHelper;
            Integer numValueOf3 = fVar3 != null ? Integer.valueOf(fVar3.d(fontColorType)) : null;
            Intrinsics.e(numValueOf3);
            simpleSubtitleView2.setTextColor(numValueOf3.intValue());
        }
        if (Intrinsics.c(fontColorType, "color_white")) {
            return;
        }
        this.optionsViewBinding.F.setSelected(true);
    }

    static /* synthetic */ void H(SubtitleOptionsView subtitleOptionsView, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        subtitleOptionsView.G(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(int fontSizeProgress, boolean fromSeekBar) {
        this.optionsViewBinding.f62533k.setProgress(fontSizeProgress);
        if (fromSeekBar) {
            this.curFontSizeProgress = fontSizeProgress;
        } else {
            this.optionsViewBinding.f62544v.setProgress(fontSizeProgress);
        }
        com.transsion.baselib.report.launch.b.f43370a.b().putInt("subtitle_options_font_size_progress", fontSizeProgress);
        f fVar = this.optionsHelper;
        Float fValueOf = fVar != null ? Float.valueOf(fVar.g(fontSizeProgress)) : null;
        Intrinsics.e(fValueOf);
        float fM = m(fValueOf.floatValue());
        SimpleSubtitleView simpleSubtitleView = this.subtitleViewTop;
        if (simpleSubtitleView != null) {
            simpleSubtitleView.setTextSize(fM);
        }
        SimpleSubtitleView simpleSubtitleView2 = this.subtitleViewBottom;
        if (simpleSubtitleView2 != null) {
            simpleSubtitleView2.setTextSize(fM);
        }
        if (fontSizeProgress != 2) {
            this.optionsViewBinding.F.setSelected(true);
        }
    }

    static /* synthetic */ void J(SubtitleOptionsView subtitleOptionsView, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        subtitleOptionsView.I(i11, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(int percent, boolean fromSeekbar, boolean isSeekbarStopTouch) {
        f fVar;
        LocalVideoUiType localVideoUiType = this.layerType;
        if (localVideoUiType != null && (fVar = this.optionsHelper) != null) {
            fVar.j(localVideoUiType, this.subtitleViewGroup, percent);
        }
        this.curPositionPercent = percent;
        if (fromSeekbar && isSeekbarStopTouch) {
            com.transsion.baselib.report.launch.b.f43370a.b().putInt("subtitle_options_position", percent);
        }
        if (percent != 10) {
            this.optionsViewBinding.F.setSelected(true);
        }
    }

    static /* synthetic */ void L(SubtitleOptionsView subtitleOptionsView, int i11, boolean z10, boolean z11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        if ((i12 & 4) != 0) {
            z11 = true;
        }
        subtitleOptionsView.K(i11, z10, z11);
    }

    @Deprecated
    private static /* synthetic */ void getSubtitleViewContainer$annotations() {
    }

    private final float m(float fontSizePercent) {
        int i11;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        if (com.transsion.baseui.util.b.a(context)) {
            i11 = this.layerType == LocalVideoUiType.MIDDLE ? 18 : 30;
        } else {
            i11 = this.layerType == LocalVideoUiType.MIDDLE ? 12 : 20;
        }
        return i11 * fontSizePercent;
    }

    private final void n() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        String string = bVar.b().getString("subtitle_options_font_color", "color_white");
        String str = string != null ? string : "color_white";
        this.curFontColorType = str;
        H(this, str, false, 2, null);
        int i11 = bVar.b().getInt("subtitle_options_font_size_progress", 2);
        this.curFontSizeProgress = i11;
        J(this, i11, false, 2, null);
        int i12 = bVar.b().getInt("subtitle_options_position", 10);
        this.curPositionPercent = i12;
        this.optionsViewBinding.f62545w.setProgress(i12);
        boolean z10 = bVar.b().getBoolean("subtitle_options_shadow_enabled", true);
        this.curOpenShadow = z10;
        y(this, z10, false, 2, null);
        this.curOpenBackground = bVar.b().getBoolean("subtitle_options_bg_enabled", false);
        String string2 = bVar.b().getString("subtitle_options_bg_color", "color_black");
        this.curBackgroundColorType = string2 != null ? string2 : "color_black";
        this.curBackgroundOpacityProgress = bVar.b().getInt("subtitle_options_bg_opacity_progress", 3);
        w(this, this.curOpenBackground, false, 2, null);
        boolean zU = u();
        com.transsion.subtitle.a.f54738a.a(SubtitleOptionsView.class.getSimpleName() + " --> initData() --> isOptionsChanged = " + zU);
        this.optionsViewBinding.F.setSelected(zU);
    }

    private final void o() {
        this.optionsViewBinding.f62543u.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: ju.a
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i11) {
                SubtitleOptionsView.p(this.f66296a, radioGroup, i11);
            }
        });
        this.optionsViewBinding.f62544v.setOnSeekChangeListener(new b());
        this.optionsViewBinding.f62545w.setOnSeekBarChangeListener(new c());
        this.optionsViewBinding.f62548z.setOnCheckedChangeListener(new SwitchButton.d() { // from class: ju.b
            @Override // com.tn.lib.view.SwitchButton.d
            public final void a(SwitchButton switchButton, boolean z10) {
                SubtitleOptionsView.q(this.f66297a, switchButton, z10);
            }
        });
        this.optionsViewBinding.f62547y.setOnCheckedChangeListener(new SwitchButton.d() { // from class: ju.c
            @Override // com.tn.lib.view.SwitchButton.d
            public final void a(SwitchButton switchButton, boolean z10) {
                SubtitleOptionsView.r(this.f66298a, switchButton, z10);
            }
        });
        this.optionsViewBinding.f62542t.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: ju.d
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i11) {
                SubtitleOptionsView.s(this.f66299a, radioGroup, i11);
            }
        });
        this.optionsViewBinding.f62546x.setOnSeekChangeListener(new d());
        this.optionsViewBinding.F.setOnClickListener(new View.OnClickListener() { // from class: ju.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubtitleOptionsView.t(this.f66300a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(SubtitleOptionsView subtitleOptionsView, RadioGroup radioGroup, int i11) {
        f fVar = subtitleOptionsView.optionsHelper;
        String strE = fVar != null ? fVar.e(i11) : null;
        Intrinsics.e(strE);
        subtitleOptionsView.G(strE, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(SubtitleOptionsView subtitleOptionsView, SwitchButton switchButton, boolean z10) {
        subtitleOptionsView.x(z10, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(SubtitleOptionsView subtitleOptionsView, SwitchButton switchButton, boolean z10) {
        subtitleOptionsView.v(z10, true);
    }

    private final void reset() {
        this.curFontColorType = "color_white";
        H(this, "color_white", false, 2, null);
        this.curFontSizeProgress = 2;
        J(this, 2, false, 2, null);
        this.curPositionPercent = 10;
        com.transsion.baselib.report.launch.b.f43370a.b().putInt("subtitle_options_position", this.curPositionPercent);
        L(this, this.curPositionPercent, false, false, 6, null);
        this.optionsViewBinding.f62545w.setProgress(this.curPositionPercent);
        this.curOpenShadow = true;
        y(this, true, false, 2, null);
        this.curOpenBackground = false;
        w(this, false, false, 2, null);
        this.curBackgroundColorType = "color_black";
        D(this, "color_black", false, 2, null);
        this.curBackgroundOpacityProgress = 3;
        F(this, 3, false, 2, null);
        this.optionsViewBinding.F.setSelected(false);
        B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(SubtitleOptionsView subtitleOptionsView, RadioGroup radioGroup, int i11) {
        f fVar = subtitleOptionsView.optionsHelper;
        String strA = fVar != null ? fVar.a(i11) : null;
        Intrinsics.e(strA);
        subtitleOptionsView.C(strA, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(SubtitleOptionsView subtitleOptionsView, View view) {
        if (view.isSelected()) {
            subtitleOptionsView.reset();
        }
    }

    private final boolean u() {
        return (Intrinsics.c(this.curFontColorType, "color_white") && this.curFontSizeProgress == 2 && this.curOpenShadow && !this.curOpenBackground && Intrinsics.c(this.curBackgroundColorType, "color_black") && this.curBackgroundOpacityProgress == 3 && this.curPositionPercent == 10) ? false : true;
    }

    private final void v(boolean openBackground, boolean fromSwitchButton) {
        if (fromSwitchButton) {
            this.curOpenBackground = openBackground;
        } else {
            this.optionsViewBinding.f62547y.setChecked(openBackground);
        }
        com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("subtitle_options_bg_enabled", openBackground);
        Group groupBackground = this.optionsViewBinding.f62524b;
        Intrinsics.g(groupBackground, "groupBackground");
        groupBackground.setVisibility(openBackground ? 0 : 8);
        if (!openBackground) {
            SimpleSubtitleView simpleSubtitleView = this.subtitleViewTop;
            if (simpleSubtitleView != null) {
                simpleSubtitleView.closeBg();
            }
            SimpleSubtitleView simpleSubtitleView2 = this.subtitleViewBottom;
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.closeBg();
                return;
            }
            return;
        }
        SimpleSubtitleView simpleSubtitleView3 = this.subtitleViewTop;
        if (simpleSubtitleView3 != null) {
            simpleSubtitleView3.openBg();
        }
        SimpleSubtitleView simpleSubtitleView4 = this.subtitleViewBottom;
        if (simpleSubtitleView4 != null) {
            simpleSubtitleView4.openBg();
        }
        this.optionsViewBinding.F.setSelected(true);
        SimpleSubtitleView simpleSubtitleView5 = this.subtitleViewTop;
        if (simpleSubtitleView5 != null) {
            simpleSubtitleView5.setBgdRadius(this.dp4);
        }
        SimpleSubtitleView simpleSubtitleView6 = this.subtitleViewBottom;
        if (simpleSubtitleView6 != null) {
            simpleSubtitleView6.setBgdRadius(this.dp4);
        }
        D(this, this.curBackgroundColorType, false, 2, null);
        F(this, this.curBackgroundOpacityProgress, false, 2, null);
    }

    static /* synthetic */ void w(SubtitleOptionsView subtitleOptionsView, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        subtitleOptionsView.v(z10, z11);
    }

    private final void x(boolean openShadow, boolean fromSwitchButton) {
        if (fromSwitchButton) {
            this.curOpenShadow = openShadow;
        } else {
            this.optionsViewBinding.f62548z.setChecked(openShadow);
        }
        com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("subtitle_options_shadow_enabled", openShadow);
        if (openShadow) {
            SimpleSubtitleView simpleSubtitleView = this.subtitleViewTop;
            if (simpleSubtitleView != null) {
                simpleSubtitleView.setShadowLayer(1.0f, 3.0f, 2.0f, androidx.core.content.b.getColor(getContext(), R$color.black_90));
            }
            SimpleSubtitleView simpleSubtitleView2 = this.subtitleViewBottom;
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.setShadowLayer(1.0f, 3.0f, 2.0f, androidx.core.content.b.getColor(getContext(), R$color.black_90));
            }
        } else {
            SimpleSubtitleView simpleSubtitleView3 = this.subtitleViewTop;
            if (simpleSubtitleView3 != null) {
                simpleSubtitleView3.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            }
            SimpleSubtitleView simpleSubtitleView4 = this.subtitleViewBottom;
            if (simpleSubtitleView4 != null) {
                simpleSubtitleView4.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            }
        }
        if (openShadow) {
            return;
        }
        this.optionsViewBinding.F.setSelected(true);
    }

    static /* synthetic */ void y(SubtitleOptionsView subtitleOptionsView, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        subtitleOptionsView.x(z10, z11);
    }

    private final void z() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("behavior", "enter");
        hj.i.f64505a.s(this.pageName, "subtitle_options", linkedHashMap);
    }

    public final void addSubtitleOptions() {
        z();
    }

    public final void initOptions(LocalVideoUiType layerType, Integer playerContainerHeight, SimpleSubtitleView subtitleViewTop, SimpleSubtitleView subtitleViewBottom, ViewGroup subtitleViewGroup, String pageName, f optionsHelper) {
        this.layerType = layerType;
        this.playerContainerHeight = playerContainerHeight != null ? playerContainerHeight.intValue() : 0;
        this.subtitleViewTop = subtitleViewTop;
        this.subtitleViewBottom = subtitleViewBottom;
        this.subtitleViewGroup = subtitleViewGroup;
        if (pageName != null) {
            this.pageName = pageName;
        }
        this.optionsHelper = optionsHelper;
        n();
    }

    public final void removeSubtitleOptions() {
        A();
        if (this.isSetPreviewText) {
            SimpleSubtitleView simpleSubtitleView = this.subtitleViewTop;
            if (simpleSubtitleView != null) {
                jg.c.h(simpleSubtitleView);
            }
            SimpleSubtitleView simpleSubtitleView2 = this.subtitleViewBottom;
            if (simpleSubtitleView2 != null) {
                jg.c.h(simpleSubtitleView2);
            }
            SimpleSubtitleView simpleSubtitleView3 = this.subtitleViewTop;
            if (simpleSubtitleView3 != null) {
                simpleSubtitleView3.setText("");
            }
            SimpleSubtitleView simpleSubtitleView4 = this.subtitleViewBottom;
            if (simpleSubtitleView4 != null) {
                simpleSubtitleView4.setText("");
            }
        }
    }
}
