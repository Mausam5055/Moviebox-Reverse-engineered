package com.transsion.videodetail.adapter;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.event.EventConstants;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.videodetail.R$drawable;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u001a\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B#\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J-\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00022\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001b\u0010\u001aR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010'\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010!R\u0016\u0010)\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010!R\u0014\u0010+\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010\u001dR\u0014\u0010-\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010\u001d¨\u0006."}, d2 = {"Lcom/transsion/videodetail/adapter/b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "subjectType", "", "isDynamicWidth", "layoutResId", "<init>", "(IZI)V", "holder", "isPlaying", "", "G1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z)V", WebConstants.FIELD_ITEM, "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V", "", "", "payloads", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/videodetail/bean/VideoDetailMediaSource;Ljava/util/List;)V", EventConstants.KEY_SOURCE, "F1", "(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V", "H1", "F", "I", "D1", "()I", "G", "Z", "E1", "()Z", "H", "Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "playingMediaSource", "isMovie", "J", "isEdu", "K", "screenWidth", "L", "dp8", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class b extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final int subjectType;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final boolean isDynamicWidth;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private VideoDetailMediaSource playingMediaSource;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private boolean isMovie;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private boolean isEdu;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final int screenWidth;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private final int dp8;

    public b(int i11, boolean z10, int i12) {
        super(i12, null, 2, null);
        this.subjectType = i11;
        this.isDynamicWidth = z10;
        this.isMovie = i11 == SubjectType.MOVIE.getValue();
        this.isEdu = i11 == SubjectType.EDUCATION.getValue();
        this.dp8 = dk.a.b(8);
        this.screenWidth = Math.min(y.e(), y.c());
    }

    public /* synthetic */ b(int i11, boolean z10, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, (i13 & 2) != 0 ? false : z10, (i13 & 4) != 0 ? R$layout.item_video_detail_episode : i12);
    }

    private final void G1(BaseViewHolder holder, boolean isPlaying) {
        holder.itemView.setSelected(isPlaying);
        holder.getView(R$id.tvName).setVisibility(!isPlaying ? 0 : 8);
        holder.getView(R$id.tvNameSelected).setVisibility(isPlaying ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:104:0x0193  */
    /* JADX WARN: Code duplicated, block: B:96:0x017e  */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, VideoDetailMediaSource item) {
        VipInfo vipInfo;
        boolean z10;
        Integer requireMemberType;
        Integer requireMemberType2;
        Integer requireMemberType3;
        Integer freeEpisodeCount;
        VideoDetailMediaSource videoDetailMediaSource;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        if (this.isDynamicWidth || (this.isMovie && getItemCount() > 1)) {
            ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
            int i11 = this.screenWidth;
            int i12 = this.dp8;
            layoutParams.width = ((i11 - (i12 * 6)) / 6) - i12;
        }
        VideoDetailMediaSource videoDetailMediaSource2 = this.playingMediaSource;
        G1(holder, videoDetailMediaSource2 != null && videoDetailMediaSource2.getSe() == item.getSe() && (videoDetailMediaSource = this.playingMediaSource) != null && videoDetailMediaSource.getEp() == item.getEp());
        if (this.isEdu) {
            String str = new DecimalFormat("00").format(Integer.valueOf(item.getEp()));
            TextView textView = (TextView) holder.getView(R$id.tvName);
            textView.setEllipsize(str.length() > 20 ? TextUtils.TruncateAt.MIDDLE : null);
            textView.setText(str);
            GradientTextView gradientTextView = (GradientTextView) holder.getView(R$id.tvNameSelected);
            gradientTextView.setEllipsize(str.length() > 20 ? TextUtils.TruncateAt.MIDDLE : null);
            gradientTextView.setText(str);
        } else {
            TextView textView2 = (TextView) holder.getView(R$id.tvName);
            String name = item.getName();
            textView2.setEllipsize((name != null ? name.length() : 0) > 20 ? TextUtils.TruncateAt.MIDDLE : null);
            String name2 = item.getName();
            if (name2 == null) {
                name2 = "";
            }
            textView2.setText(name2);
            GradientTextView gradientTextView2 = (GradientTextView) holder.getView(R$id.tvNameSelected);
            String name3 = item.getName();
            gradientTextView2.setEllipsize((name3 != null ? name3.length() : 0) > 20 ? TextUtils.TruncateAt.MIDDLE : null);
            String name4 = item.getName();
            gradientTextView2.setText(name4 != null ? name4 : "");
        }
        View view = holder.getView(R$id.iv_download_status);
        if (TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 0) {
            view.setRotationY(0.0f);
        } else {
            view.setRotationY(180.0f);
        }
        int i13 = 8;
        view.setVisibility(item.getDownloadBean() != null ? 0 : 8);
        VipInfo vipInfo2 = item.getVipInfo();
        int iIntValue = (vipInfo2 == null || (freeEpisodeCount = vipInfo2.getFreeEpisodeCount()) == null) ? 0 : freeEpisodeCount.intValue();
        ImageView imageView = (ImageView) holder.getView(R$id.ivPremium);
        imageView.setVisibility(0);
        VideoDetailMediaSource videoDetailMediaSource3 = this.playingMediaSource;
        if (videoDetailMediaSource3 != null && videoDetailMediaSource3.getEp() == item.getEp()) {
            VideoDetailMediaSource videoDetailMediaSource4 = this.playingMediaSource;
            if (videoDetailMediaSource4 != null && videoDetailMediaSource4.getSe() == item.getSe()) {
                imageView.setImageResource(R$mipmap.p_v2_permium_play);
                VipInfo vipInfo3 = item.getVipInfo();
                if (((vipInfo3 == null || (requireMemberType3 = vipInfo3.getRequireMemberType()) == null || requireMemberType3.intValue() != 1) ? false : true) && item.getEp() > iIntValue) {
                    i13 = 0;
                }
                imageView.setVisibility(i13);
            } else {
                vipInfo = item.getVipInfo();
                if (vipInfo == null) {
                    z10 = false;
                } else {
                    z10 = false;
                }
                if (z10) {
                    imageView.setVisibility(8);
                } else {
                    imageView.setVisibility(8);
                }
            }
        } else {
            vipInfo = item.getVipInfo();
            if (vipInfo == null && (requireMemberType = vipInfo.getRequireMemberType()) != null && requireMemberType.intValue() == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10 || item.getEp() <= iIntValue) {
                imageView.setVisibility(8);
            } else {
                imageView.setImageResource(R$mipmap.p_v2_premium_3);
                imageView.setVisibility(0);
            }
        }
        FrameLayout frameLayout = (FrameLayout) holder.getView(R$id.flContainer);
        VipInfo vipInfo4 = item.getVipInfo();
        if (!((vipInfo4 == null || (requireMemberType2 = vipInfo4.getRequireMemberType()) == null || requireMemberType2.intValue() != 1) ? false : true)) {
            frameLayout.setBackgroundResource(R$drawable.selector_video_detail_episode_bg);
            ((GradientTextView) holder.getView(R$id.tvNameSelected)).setGradientColors(androidx.core.content.b.getColor(frameLayout.getContext(), R$color.brand_new_gradient_start), androidx.core.content.b.getColor(frameLayout.getContext(), R$color.brand_new_gradient_center), androidx.core.content.b.getColor(frameLayout.getContext(), R$color.brand_new_gradient_end));
            return;
        }
        if (item.getEp() > iIntValue) {
            frameLayout.setBackgroundResource(R$drawable.selector_video_detail_episode_bg_2);
            ((GradientTextView) holder.getView(R$id.tvNameSelected)).setGradientColors(Color.parseColor("#FFDFB0"), Color.parseColor("#FFDFB0"), Color.parseColor("#FFDFB0"));
        } else {
            frameLayout.setBackgroundResource(R$drawable.selector_video_detail_episode_bg);
            ((GradientTextView) holder.getView(R$id.tvNameSelected)).setGradientColors(androidx.core.content.b.getColor(frameLayout.getContext(), R$color.brand_new_gradient_start), androidx.core.content.b.getColor(frameLayout.getContext(), R$color.brand_new_gradient_center), androidx.core.content.b.getColor(frameLayout.getContext(), R$color.brand_new_gradient_end));
        }
        if (item.getEp() == 0) {
            frameLayout.setBackgroundResource(R$drawable.selector_video_detail_episode_bg_2);
            ((GradientTextView) holder.getView(R$id.tvNameSelected)).setGradientColors(Color.parseColor("#FFDFB0"), Color.parseColor("#FFDFB0"), Color.parseColor("#FFDFB0"));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void G(BaseViewHolder holder, VideoDetailMediaSource item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        if (item.getSe() == 0) {
            item.getEp();
        }
        G1(holder, Intrinsics.c(this.playingMediaSource, item));
    }

    /* JADX INFO: renamed from: D1, reason: from getter */
    public final int getSubjectType() {
        return this.subjectType;
    }

    /* JADX INFO: renamed from: E1, reason: from getter */
    public final boolean getIsDynamicWidth() {
        return this.isDynamicWidth;
    }

    public final void F1(VideoDetailMediaSource source) {
        this.playingMediaSource = source;
        notifyDataSetChanged();
    }

    public final void H1(VideoDetailMediaSource source) {
        int i11;
        if (Intrinsics.c(this.playingMediaSource, source) || source == null) {
            return;
        }
        int i12 = 0;
        int i13 = -1;
        if (this.playingMediaSource == null) {
            i11 = -1;
            break;
        }
        Iterator<Object> it = getData().iterator();
        i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            } else if (Intrinsics.c((VideoDetailMediaSource) it.next(), this.playingMediaSource)) {
                break;
            } else {
                i11++;
            }
        }
        this.playingMediaSource = source;
        if (i11 >= 0) {
            notifyItemChanged(i11, source);
        }
        Iterator<Object> it2 = getData().iterator();
        while (it2.hasNext()) {
            if (Intrinsics.c((VideoDetailMediaSource) it2.next(), source)) {
                i13 = i12;
                break;
            }
            i12++;
        }
        if (i13 >= 0) {
            notifyItemChanged(i13, source);
        }
    }
}
