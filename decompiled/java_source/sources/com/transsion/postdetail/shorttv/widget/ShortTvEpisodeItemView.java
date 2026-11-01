package com.transsion.postdetail.shorttv.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.Glide;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.postdetail.R$color;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.R$mipmap;
import com.transsion.postdetail.R$string;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bB+\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0017\u0010\u0015R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001e¨\u0006\""}, d2 = {"Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "ep", "", "showIndex", "(I)V", "", PushConstants.PUSH_SERVICE_TYPE_SHOW, "showPlayingImg", "(Z)V", "showLockImg", "showDownloadStatus", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "textView", "Landroid/widget/ImageView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/ImageView;", "lockImg", "c", "playingImg", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvEpisodeItemView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final TextView textView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final ImageView lockImg;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final ImageView playingImg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvEpisodeItemView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        TextView textView = new TextView(getContext());
        this.textView = textView;
        ImageView imageView = new ImageView(getContext());
        this.lockImg = imageView;
        ImageView imageView2 = new ImageView(getContext());
        this.playingImg = imageView2;
        textView.setBackgroundResource(R$drawable.post_detail_short_tv_episode_bg);
        ConstraintLayout.b bVar = new ConstraintLayout.b(-1, 0);
        bVar.I = "h,1:1";
        bVar.f7678i = 0;
        addView(textView, bVar);
        textView.setTextSize(16.0f);
        textView.setTextColor(androidx.core.content.b.getColorStateList(getContext(), R$color.post_detail_short_tv_episode_tv_color));
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setGravity(17);
        imageView.setImageResource(R$drawable.post_detail_short_tv_lock);
        ConstraintLayout.b bVar2 = new ConstraintLayout.b(-2, -2);
        bVar2.f7678i = 0;
        bVar2.f7704v = 0;
        addView(imageView, bVar2);
        int iE = com.blankj.utilcode.util.i.e(16.0f);
        int iE2 = com.blankj.utilcode.util.i.e(4.0f);
        ConstraintLayout.b bVar3 = new ConstraintLayout.b(iE, iE);
        bVar3.f7684l = 0;
        bVar3.f7700t = 0;
        bVar3.setMargins(iE2, iE2, iE2, iE2);
        imageView2.setColorFilter(androidx.core.content.b.getColor(getContext(), com.tn.lib.widget.R$color.color_07B84E));
        addView(imageView2, bVar3);
        setPadding(iE2, 0, iE2, iE2 * 2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvEpisodeItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        TextView textView = new TextView(getContext());
        this.textView = textView;
        ImageView imageView = new ImageView(getContext());
        this.lockImg = imageView;
        ImageView imageView2 = new ImageView(getContext());
        this.playingImg = imageView2;
        textView.setBackgroundResource(R$drawable.post_detail_short_tv_episode_bg);
        ConstraintLayout.b bVar = new ConstraintLayout.b(-1, 0);
        bVar.I = "h,1:1";
        bVar.f7678i = 0;
        addView(textView, bVar);
        textView.setTextSize(16.0f);
        textView.setTextColor(androidx.core.content.b.getColorStateList(getContext(), R$color.post_detail_short_tv_episode_tv_color));
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setGravity(17);
        imageView.setImageResource(R$drawable.post_detail_short_tv_lock);
        ConstraintLayout.b bVar2 = new ConstraintLayout.b(-2, -2);
        bVar2.f7678i = 0;
        bVar2.f7704v = 0;
        addView(imageView, bVar2);
        int iE = com.blankj.utilcode.util.i.e(16.0f);
        int iE2 = com.blankj.utilcode.util.i.e(4.0f);
        ConstraintLayout.b bVar3 = new ConstraintLayout.b(iE, iE);
        bVar3.f7684l = 0;
        bVar3.f7700t = 0;
        bVar3.setMargins(iE2, iE2, iE2, iE2);
        imageView2.setColorFilter(androidx.core.content.b.getColor(getContext(), com.tn.lib.widget.R$color.color_07B84E));
        addView(imageView2, bVar3);
        setPadding(iE2, 0, iE2, iE2 * 2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvEpisodeItemView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        TextView textView = new TextView(getContext());
        this.textView = textView;
        ImageView imageView = new ImageView(getContext());
        this.lockImg = imageView;
        ImageView imageView2 = new ImageView(getContext());
        this.playingImg = imageView2;
        textView.setBackgroundResource(R$drawable.post_detail_short_tv_episode_bg);
        ConstraintLayout.b bVar = new ConstraintLayout.b(-1, 0);
        bVar.I = "h,1:1";
        bVar.f7678i = 0;
        addView(textView, bVar);
        textView.setTextSize(16.0f);
        textView.setTextColor(androidx.core.content.b.getColorStateList(getContext(), R$color.post_detail_short_tv_episode_tv_color));
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setGravity(17);
        imageView.setImageResource(R$drawable.post_detail_short_tv_lock);
        ConstraintLayout.b bVar2 = new ConstraintLayout.b(-2, -2);
        bVar2.f7678i = 0;
        bVar2.f7704v = 0;
        addView(imageView, bVar2);
        int iE = com.blankj.utilcode.util.i.e(16.0f);
        int iE2 = com.blankj.utilcode.util.i.e(4.0f);
        ConstraintLayout.b bVar3 = new ConstraintLayout.b(iE, iE);
        bVar3.f7684l = 0;
        bVar3.f7700t = 0;
        bVar3.setMargins(iE2, iE2, iE2, iE2);
        imageView2.setColorFilter(androidx.core.content.b.getColor(getContext(), com.tn.lib.widget.R$color.color_07B84E));
        addView(imageView2, bVar3);
        setPadding(iE2, 0, iE2, iE2 * 2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvEpisodeItemView(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        TextView textView = new TextView(getContext());
        this.textView = textView;
        ImageView imageView = new ImageView(getContext());
        this.lockImg = imageView;
        ImageView imageView2 = new ImageView(getContext());
        this.playingImg = imageView2;
        textView.setBackgroundResource(R$drawable.post_detail_short_tv_episode_bg);
        ConstraintLayout.b bVar = new ConstraintLayout.b(-1, 0);
        bVar.I = "h,1:1";
        bVar.f7678i = 0;
        addView(textView, bVar);
        textView.setTextSize(16.0f);
        textView.setTextColor(androidx.core.content.b.getColorStateList(getContext(), R$color.post_detail_short_tv_episode_tv_color));
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setGravity(17);
        imageView.setImageResource(R$drawable.post_detail_short_tv_lock);
        ConstraintLayout.b bVar2 = new ConstraintLayout.b(-2, -2);
        bVar2.f7678i = 0;
        bVar2.f7704v = 0;
        addView(imageView, bVar2);
        int iE = com.blankj.utilcode.util.i.e(16.0f);
        int iE2 = com.blankj.utilcode.util.i.e(4.0f);
        ConstraintLayout.b bVar3 = new ConstraintLayout.b(iE, iE);
        bVar3.f7684l = 0;
        bVar3.f7700t = 0;
        bVar3.setMargins(iE2, iE2, iE2, iE2);
        imageView2.setColorFilter(androidx.core.content.b.getColor(getContext(), com.tn.lib.widget.R$color.color_07B84E));
        addView(imageView2, bVar3);
        setPadding(iE2, 0, iE2, iE2 * 2);
    }

    public final void showDownloadStatus(boolean show) {
        this.lockImg.setImageResource(R$mipmap.post_detail_short_tv_downloaded);
        this.lockImg.setVisibility(show ? 0 : 8);
    }

    public final void showIndex(int ep2) {
        if (ep2 == 0) {
            this.textView.setText(getContext().getString(R$string.short_tv_trailer));
        } else {
            this.textView.setText(String.valueOf(ep2));
        }
    }

    public final void showLockImg(boolean show) {
        this.lockImg.setImageResource(R$drawable.post_detail_short_tv_lock);
        this.lockImg.setVisibility(show ? 0 : 8);
    }

    public final void showPlayingImg(boolean show) {
        if (show) {
            if (this.playingImg.getTag() == null) {
                this.playingImg.setTag("playing");
                Glide.with(this.playingImg).load(Integer.valueOf(R$drawable.post_detail_short_tv_playing)).into(this.playingImg);
            }
            jg.c.k(this.playingImg);
        } else {
            jg.c.g(this.playingImg);
        }
        this.textView.setSelected(show);
    }
}
