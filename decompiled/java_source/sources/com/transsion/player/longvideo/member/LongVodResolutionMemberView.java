package com.transsion.player.longvideo.member;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.blankj.utilcode.util.Utils;
import com.cloud.config.utils.XLogUtil;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import com.transsion.player.longvideo.intercept.h0;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0013\u0010\u000eR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/transsion/player/longvideo/member/LongVodResolutionMemberView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lgo/b;", XLogUtil.TAG, "Lgo/a;", "longVdPlayerBean", "", "setConfig", "(Lgo/b;Lgo/a;)V", "", TtmlNode.ATTR_TTS_COLOR, "setTextColor", "(I)V", "setGradientColorsV2", "Lcom/transsion/baseui/widget/GradientTextView;", "a", "Lcom/transsion/baseui/widget/GradientTextView;", "gradientTextView", "Landroid/widget/ImageView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/ImageView;", "ivMember", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LongVodResolutionMemberView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private GradientTextView gradientTextView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ImageView ivMember;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public LongVodResolutionMemberView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LongVodResolutionMemberView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.long_vod_resolution_member_layout, (ViewGroup) this, false);
        View viewFindViewById = viewInflate.findViewById(R$id.gradientTextView);
        Intrinsics.f(viewFindViewById, "null cannot be cast to non-null type com.transsion.baseui.widget.GradientTextView");
        this.gradientTextView = (GradientTextView) viewFindViewById;
        View viewFindViewById2 = viewInflate.findViewById(R$id.ivMember);
        Intrinsics.f(viewFindViewById2, "null cannot be cast to non-null type android.widget.ImageView");
        this.ivMember = (ImageView) viewFindViewById2;
        addView(viewInflate);
    }

    public /* synthetic */ LongVodResolutionMemberView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    public final void setConfig(go.b config, go.a longVdPlayerBean) {
        Intrinsics.h(config, "config");
        GradientTextView gradientTextView = this.gradientTextView;
        if (gradientTextView != null) {
            gradientTextView.setGravity(17);
            ImageView imageView = this.ivMember;
            if (imageView != null) {
                jg.c.j(imageView, h0.f48139a.e(longVdPlayerBean != null ? longVdPlayerBean.m() : null, config.d()));
            }
            if (config.e()) {
                setGradientColorsV2(config, longVdPlayerBean);
            } else {
                gradientTextView.setGradientColors(androidx.core.content.b.getColor(Utils.a(), R$color.white), androidx.core.content.b.getColor(Utils.a(), R$color.white), androidx.core.content.b.getColor(Utils.a(), R$color.white));
            }
            gradientTextView.setTextSize(16.0f);
            Context context = gradientTextView.getContext();
            Intrinsics.g(context, "getContext(...)");
            gradientTextView.setTypeface(jg.a.c(context));
            gradientTextView.setText(config.d());
        }
    }

    public final void setGradientColorsV2(go.b config, go.a longVdPlayerBean) {
        Intrinsics.h(config, "config");
        if (h0.f48139a.e(longVdPlayerBean != null ? longVdPlayerBean.m() : null, config.d())) {
            GradientTextView gradientTextView = this.gradientTextView;
            if (gradientTextView != null) {
                gradientTextView.setGradientColors(Color.parseColor("#FED47D"), Color.parseColor("#FED47D"), Color.parseColor("#FEBD3C"));
                return;
            }
            return;
        }
        GradientTextView gradientTextView2 = this.gradientTextView;
        if (gradientTextView2 != null) {
            gradientTextView2.setGradientColors(androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_start), androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_center), androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_end));
        }
    }

    public final void setTextColor(int color) {
        GradientTextView gradientTextView = this.gradientTextView;
        if (gradientTextView != null) {
            gradientTextView.setTextColor(color);
        }
    }
}
