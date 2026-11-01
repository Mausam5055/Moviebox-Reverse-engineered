package com.transsion.shorttv_pugc.ui.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.Glide;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.noober.background.drawable.DrawableCreator;
import com.noober.background.view.BLTextView;
import com.transsion.push.PushConstants;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$drawable;
import com.transsion.shorttv.R$mipmap;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bB+\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0012¢\u0006\u0004\b\u0017\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0012¢\u0006\u0004\b\u0018\u0010\u0015J\u0015\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0012¢\u0006\u0004\b\u0019\u0010\u0015J\r\u0010\u001a\u001a\u00020\u000f¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0012¢\u0006\u0004\b\u001c\u0010\u0015R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010&\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010#R\u0014\u0010(\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010#¨\u0006)"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/widget/ShortTvDownloadEpItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "ep", "", "showIndex", "(I)V", "", "select", "setSelect", "(Z)V", PushConstants.PUSH_SERVICE_TYPE_SHOW, "showPlayingImg", "showDownloadLockImg", "showPlayLockImg", "playRemoveSelect", "()V", "showDownloadImg", "Lcom/noober/background/view/BLTextView;", "a", "Lcom/noober/background/view/BLTextView;", "textView", "Landroid/widget/ImageView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/ImageView;", "lockImg", "c", "playingImg", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "selectImg", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvDownloadEpItemView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final BLTextView textView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final ImageView lockImg;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final ImageView playingImg;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final ImageView selectImg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvDownloadEpItemView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        BLTextView bLTextView = new BLTextView(getContext());
        this.textView = bLTextView;
        ImageView imageView = new ImageView(getContext());
        this.lockImg = imageView;
        ImageView imageView2 = new ImageView(getContext());
        this.playingImg = imageView2;
        ImageView imageView3 = new ImageView(getContext());
        this.selectImg = imageView3;
        int iA = com.blankj.utilcode.util.a0.a(4.0f);
        int iA2 = com.blankj.utilcode.util.a0.a(6.0f);
        bLTextView.setBackground(new DrawableCreator.Builder().setCornersRadius(iA).setSolidColor(getContext().getResources().getColor(R$color.short_tv_white_10)).build());
        ConstraintLayout.b bVar = new ConstraintLayout.b(-1, 0);
        bVar.I = "h,1:1";
        bVar.f7678i = 0;
        addView(bLTextView, bVar);
        bLTextView.setTextSize(16.0f);
        bLTextView.setTextColor(androidx.core.content.b.getColorStateList(getContext(), R$color.short_tv_selector_download_ep_text));
        bLTextView.setTypeface(Typeface.DEFAULT_BOLD);
        bLTextView.setGravity(17);
        imageView.setImageResource(R$mipmap.short_tv_ic_lock);
        ConstraintLayout.b bVar2 = new ConstraintLayout.b(-2, -2);
        bVar2.f7678i = 0;
        bVar2.f7704v = 0;
        addView(imageView, bVar2);
        imageView3.setImageDrawable(androidx.core.content.b.getDrawable(getContext(), R$drawable.short_tv_selector_download_group_check));
        int i11 = iA2 * 2;
        ConstraintLayout.b bVar3 = new ConstraintLayout.b(i11, i11);
        bVar3.f7704v = 0;
        bVar3.f7684l = 0;
        bVar3.setMarginEnd(iA2);
        ((ViewGroup.MarginLayoutParams) bVar3).bottomMargin = iA2;
        addView(imageView3, bVar3);
        int i12 = iA * 4;
        ConstraintLayout.b bVar4 = new ConstraintLayout.b(i12, i12);
        bVar4.f7684l = 0;
        bVar4.f7700t = 0;
        bVar4.setMargins(iA, iA, iA, iA);
        imageView2.setColorFilter(androidx.core.content.b.getColor(getContext(), R$color.short_tv_main));
        addView(imageView2, bVar4);
        setPadding(iA, 0, iA, iA * 2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvDownloadEpItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        BLTextView bLTextView = new BLTextView(getContext());
        this.textView = bLTextView;
        ImageView imageView = new ImageView(getContext());
        this.lockImg = imageView;
        ImageView imageView2 = new ImageView(getContext());
        this.playingImg = imageView2;
        ImageView imageView3 = new ImageView(getContext());
        this.selectImg = imageView3;
        int iA = com.blankj.utilcode.util.a0.a(4.0f);
        int iA2 = com.blankj.utilcode.util.a0.a(6.0f);
        bLTextView.setBackground(new DrawableCreator.Builder().setCornersRadius(iA).setSolidColor(getContext().getResources().getColor(R$color.short_tv_white_10)).build());
        ConstraintLayout.b bVar = new ConstraintLayout.b(-1, 0);
        bVar.I = "h,1:1";
        bVar.f7678i = 0;
        addView(bLTextView, bVar);
        bLTextView.setTextSize(16.0f);
        bLTextView.setTextColor(androidx.core.content.b.getColorStateList(getContext(), R$color.short_tv_selector_download_ep_text));
        bLTextView.setTypeface(Typeface.DEFAULT_BOLD);
        bLTextView.setGravity(17);
        imageView.setImageResource(R$mipmap.short_tv_ic_lock);
        ConstraintLayout.b bVar2 = new ConstraintLayout.b(-2, -2);
        bVar2.f7678i = 0;
        bVar2.f7704v = 0;
        addView(imageView, bVar2);
        imageView3.setImageDrawable(androidx.core.content.b.getDrawable(getContext(), R$drawable.short_tv_selector_download_group_check));
        int i11 = iA2 * 2;
        ConstraintLayout.b bVar3 = new ConstraintLayout.b(i11, i11);
        bVar3.f7704v = 0;
        bVar3.f7684l = 0;
        bVar3.setMarginEnd(iA2);
        ((ViewGroup.MarginLayoutParams) bVar3).bottomMargin = iA2;
        addView(imageView3, bVar3);
        int i12 = iA * 4;
        ConstraintLayout.b bVar4 = new ConstraintLayout.b(i12, i12);
        bVar4.f7684l = 0;
        bVar4.f7700t = 0;
        bVar4.setMargins(iA, iA, iA, iA);
        imageView2.setColorFilter(androidx.core.content.b.getColor(getContext(), R$color.short_tv_main));
        addView(imageView2, bVar4);
        setPadding(iA, 0, iA, iA * 2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvDownloadEpItemView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        BLTextView bLTextView = new BLTextView(getContext());
        this.textView = bLTextView;
        ImageView imageView = new ImageView(getContext());
        this.lockImg = imageView;
        ImageView imageView2 = new ImageView(getContext());
        this.playingImg = imageView2;
        ImageView imageView3 = new ImageView(getContext());
        this.selectImg = imageView3;
        int iA = com.blankj.utilcode.util.a0.a(4.0f);
        int iA2 = com.blankj.utilcode.util.a0.a(6.0f);
        bLTextView.setBackground(new DrawableCreator.Builder().setCornersRadius(iA).setSolidColor(getContext().getResources().getColor(R$color.short_tv_white_10)).build());
        ConstraintLayout.b bVar = new ConstraintLayout.b(-1, 0);
        bVar.I = "h,1:1";
        bVar.f7678i = 0;
        addView(bLTextView, bVar);
        bLTextView.setTextSize(16.0f);
        bLTextView.setTextColor(androidx.core.content.b.getColorStateList(getContext(), R$color.short_tv_selector_download_ep_text));
        bLTextView.setTypeface(Typeface.DEFAULT_BOLD);
        bLTextView.setGravity(17);
        imageView.setImageResource(R$mipmap.short_tv_ic_lock);
        ConstraintLayout.b bVar2 = new ConstraintLayout.b(-2, -2);
        bVar2.f7678i = 0;
        bVar2.f7704v = 0;
        addView(imageView, bVar2);
        imageView3.setImageDrawable(androidx.core.content.b.getDrawable(getContext(), R$drawable.short_tv_selector_download_group_check));
        int i12 = iA2 * 2;
        ConstraintLayout.b bVar3 = new ConstraintLayout.b(i12, i12);
        bVar3.f7704v = 0;
        bVar3.f7684l = 0;
        bVar3.setMarginEnd(iA2);
        ((ViewGroup.MarginLayoutParams) bVar3).bottomMargin = iA2;
        addView(imageView3, bVar3);
        int i13 = iA * 4;
        ConstraintLayout.b bVar4 = new ConstraintLayout.b(i13, i13);
        bVar4.f7684l = 0;
        bVar4.f7700t = 0;
        bVar4.setMargins(iA, iA, iA, iA);
        imageView2.setColorFilter(androidx.core.content.b.getColor(getContext(), R$color.short_tv_main));
        addView(imageView2, bVar4);
        setPadding(iA, 0, iA, iA * 2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvDownloadEpItemView(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        BLTextView bLTextView = new BLTextView(getContext());
        this.textView = bLTextView;
        ImageView imageView = new ImageView(getContext());
        this.lockImg = imageView;
        ImageView imageView2 = new ImageView(getContext());
        this.playingImg = imageView2;
        ImageView imageView3 = new ImageView(getContext());
        this.selectImg = imageView3;
        int iA = com.blankj.utilcode.util.a0.a(4.0f);
        int iA2 = com.blankj.utilcode.util.a0.a(6.0f);
        bLTextView.setBackground(new DrawableCreator.Builder().setCornersRadius(iA).setSolidColor(getContext().getResources().getColor(R$color.short_tv_white_10)).build());
        ConstraintLayout.b bVar = new ConstraintLayout.b(-1, 0);
        bVar.I = "h,1:1";
        bVar.f7678i = 0;
        addView(bLTextView, bVar);
        bLTextView.setTextSize(16.0f);
        bLTextView.setTextColor(androidx.core.content.b.getColorStateList(getContext(), R$color.short_tv_selector_download_ep_text));
        bLTextView.setTypeface(Typeface.DEFAULT_BOLD);
        bLTextView.setGravity(17);
        imageView.setImageResource(R$mipmap.short_tv_ic_lock);
        ConstraintLayout.b bVar2 = new ConstraintLayout.b(-2, -2);
        bVar2.f7678i = 0;
        bVar2.f7704v = 0;
        addView(imageView, bVar2);
        imageView3.setImageDrawable(androidx.core.content.b.getDrawable(getContext(), R$drawable.short_tv_selector_download_group_check));
        int i13 = iA2 * 2;
        ConstraintLayout.b bVar3 = new ConstraintLayout.b(i13, i13);
        bVar3.f7704v = 0;
        bVar3.f7684l = 0;
        bVar3.setMarginEnd(iA2);
        ((ViewGroup.MarginLayoutParams) bVar3).bottomMargin = iA2;
        addView(imageView3, bVar3);
        int i14 = iA * 4;
        ConstraintLayout.b bVar4 = new ConstraintLayout.b(i14, i14);
        bVar4.f7684l = 0;
        bVar4.f7700t = 0;
        bVar4.setMargins(iA, iA, iA, iA);
        imageView2.setColorFilter(androidx.core.content.b.getColor(getContext(), R$color.short_tv_main));
        addView(imageView2, bVar4);
        setPadding(iA, 0, iA, iA * 2);
    }

    public final void playRemoveSelect() {
        ct.b.b(this.selectImg);
    }

    public final void setSelect(boolean select) {
        this.selectImg.setSelected(select);
    }

    public final void showDownloadImg(boolean show) {
        if (show) {
            ct.b.b(this.selectImg);
            this.lockImg.setImageResource(R$mipmap.short_tv_ic_download_sub);
        }
        this.lockImg.setVisibility(show ? 0 : 8);
    }

    public final void showDownloadLockImg(boolean show) {
        if (show) {
            ct.b.b(this.selectImg);
            this.lockImg.setImageResource(R$mipmap.short_tv_ic_lock);
        } else {
            ct.b.d(this.selectImg);
        }
        this.lockImg.setVisibility(show ? 0 : 8);
    }

    public final void showIndex(int ep2) {
        this.textView.setText(String.valueOf(ep2));
    }

    public final void showPlayLockImg(boolean show) {
        ct.b.b(this.selectImg);
        this.lockImg.setImageResource(R$mipmap.short_tv_ic_lock);
        this.lockImg.setVisibility(show ? 0 : 8);
    }

    public final void showPlayingImg(boolean show) {
        if (show) {
            if (this.playingImg.getTag() == null) {
                this.playingImg.setTag("playing");
                Glide.with(this.playingImg).load(Integer.valueOf(R$mipmap.short_tv_ic_playing)).into(this.playingImg);
            }
            ct.b.d(this.playingImg);
        } else {
            ct.b.b(this.playingImg);
        }
        this.textView.setSelected(show);
    }
}
