package com.transsion.ugcvideodetail.adapter;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.j;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import lj.i1;
import r6.k;
import r6.l;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0011\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0010\u0010\u0011J-\u0010\u0015\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J#\u0010\u001a\u001a\u00020\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/transsion/ugcvideodetail/adapter/g;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Llj/i1;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "Lr6/l;", "", "isDialog", "<init>", "(Z)V", "holder", WebConstants.FIELD_ITEM, "isPlaying", "", "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Llj/i1;Z)V", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Llj/i1;)V", "", "", "payloads", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Llj/i1;Ljava/util/List;)V", "", "videoId", "previousVideoId", "E1", "(Ljava/lang/String;Ljava/lang/String;)V", "F", "Z", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class g extends BaseQuickAdapter implements r6.i, l {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final boolean isDialog;

    public static final class a extends CustomTarget {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TextView f56004a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56005b;

        a(TextView textView, String str) {
            this.f56004a = textView;
            this.f56005b = str;
        }

        @Override // com.bumptech.glide.request.target.Target
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onResourceReady(Drawable resource, Transition transition) {
            Intrinsics.h(resource, "resource");
            int iB = dk.a.b(12);
            resource.setBounds(0, 0, iB, iB);
            com.transsion.baseui.widget.c cVar = new com.transsion.baseui.widget.c(resource, this.f56004a, 0, dk.a.b(4));
            SpannableString spannableString = new SpannableString("\u200b" + this.f56005b);
            spannableString.setSpan(cVar, 0, 1, 17);
            this.f56004a.setText(spannableString);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(Drawable drawable) {
            if (drawable == 0 || !(drawable instanceof Animatable)) {
                return;
            }
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                animatable.stop();
            }
        }
    }

    public g() {
        this(false, 1, null);
    }

    public g(boolean z10) {
        super(z10 ? R$layout.item_ugc_video_detail_play_list_dialog_item : R$layout.item_ugc_video_detail_play_list, null, 2, null);
        this.isDialog = z10;
    }

    public /* synthetic */ g(boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0010  */
    private final void D1(BaseViewHolder holder, i1 item, boolean isPlaying) {
        String strVideoEpTitle = item.videoEpTitle();
        if (strVideoEpTitle == null) {
            strVideoEpTitle = item.videoTitle();
        } else {
            if (StringsKt.q0(strVideoEpTitle)) {
                strVideoEpTitle = null;
            }
            if (strVideoEpTitle == null) {
                strVideoEpTitle = item.videoTitle();
            }
        }
        if (!isPlaying) {
            TextView textView = (TextView) holder.getView(R$id.tvTitle);
            jg.c.k(textView);
            textView.setText(strVideoEpTitle);
            jg.c.g(holder.getView(R$id.tvTitleGradient));
            return;
        }
        jg.c.g(holder.getView(R$id.tvTitle));
        TextView textView2 = (TextView) holder.getView(R$id.tvTitleGradient);
        jg.c.k(textView2);
        if (this.isDialog) {
            textView2.setText(strVideoEpTitle);
        } else {
            Intrinsics.e(Glide.with(holder.itemView.getContext()).load2(Integer.valueOf(R$mipmap.base_ic_brand_color_playing)).into(new a(textView2, strVideoEpTitle)));
        }
    }

    public static /* synthetic */ void F1(g gVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        gVar.E1(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, i1 item) {
        String strVideoUGCWatchNum;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ej.f.b bVarM = ej.f.f61882a.m(getContext());
        String strVideoCoverUrl = item.videoCoverUrl();
        if (strVideoCoverUrl == null) {
            strVideoCoverUrl = "";
        }
        ej.f.b bVarC = bVarM.g(strVideoCoverUrl).m(dk.a.b(120)).c(dk.a.b(68));
        String strVideoThumbnail = item.videoThumbnail();
        bVarC.l(strVideoThumbnail != null ? strVideoThumbnail : "").d((ImageView) holder.getView(R$id.ivCover));
        String strVideoCorner = item.videoCorner();
        if (strVideoCorner == null || strVideoCorner.length() == 0) {
            holder.setVisible(R$id.tvTag, false);
        } else {
            holder.setVisible(R$id.tvTag, true);
            holder.setText(R$id.tvTag, item.videoCorner());
        }
        Long lVideoDuration = item.videoDuration();
        long jLongValue = lVideoDuration != null ? lVideoDuration.longValue() : 0L;
        if (jLongValue > 0) {
            holder.setVisible(R$id.vDurationBg, true);
            holder.setText(R$id.tvDuration, TimeUtilKt.q(jLongValue));
            ImageView imageView = (ImageView) holder.getView(R$id.ivTypeIcon);
            if (item instanceof UGCVideo) {
                UGCVideoTypeKt.i(imageView, (UGCVideo) item, null, 4, null);
            } else if (item instanceof DownloadBean) {
                DownloadBean downloadBean = (DownloadBean) item;
                UGCVideoTypeKt.j(imageView, downloadBean.getUgcCateLev1Id(), downloadBean.getUgcCateLev2Id(), downloadBean.getUgcCateLev3Id(), downloadBean.getUgcCateLev4Id(), downloadBean.getUgcVideoType());
            } else {
                imageView.setImageResource(UGCVideoTypeKt.e(item.videoUGCType()));
            }
        } else {
            holder.setVisible(R$id.vDurationBg, false);
        }
        if (this.isDialog && (strVideoUGCWatchNum = item.videoUGCWatchNum()) != null && strVideoUGCWatchNum.length() != 0) {
            holder.setText(R$id.tvVideoViews, j.c(item.videoUGCWatchNum(), getContext()));
        }
        D1(holder, item, item.isVideoPlaying());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void G(BaseViewHolder holder, i1 item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object objV0 = CollectionsKt.v0(payloads);
        if (objV0 instanceof Boolean) {
            D1(holder, item, ((Boolean) objV0).booleanValue());
        }
    }

    public final void E1(String videoId, String previousVideoId) {
        if (videoId == null || videoId.length() == 0) {
            return;
        }
        int i11 = -1;
        int i12 = 0;
        if (previousVideoId == null || previousVideoId.length() == 0 || Intrinsics.c(previousVideoId, videoId)) {
            int i13 = 0;
            for (Object obj : getData()) {
                int i14 = i13 + 1;
                if (i13 < 0) {
                    CollectionsKt.u();
                }
                i1 i1Var = (i1) obj;
                if (i1Var.isVideoPlaying()) {
                    i1Var.setVideoIsPlaying(false);
                    notifyItemChanged(i13, Boolean.FALSE);
                }
                i13 = i14;
            }
        } else {
            Iterator<Object> it = getData().iterator();
            int i15 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i15 = -1;
                    break;
                } else if (Intrinsics.c(((i1) it.next()).videoUGCId(), previousVideoId)) {
                    break;
                } else {
                    i15++;
                }
            }
            Integer numValueOf = Integer.valueOf(i15);
            if (numValueOf.intValue() < 0) {
                numValueOf = null;
            }
            if (numValueOf != null) {
                int iIntValue = numValueOf.intValue();
                ((i1) getData().get(iIntValue)).setVideoIsPlaying(false);
                notifyItemChanged(iIntValue, Boolean.FALSE);
            }
        }
        Iterator<Object> it2 = getData().iterator();
        while (it2.hasNext()) {
            if (Intrinsics.c(((i1) it2.next()).videoUGCId(), videoId)) {
                i11 = i12;
                break;
            }
            i12++;
        }
        Integer numValueOf2 = Integer.valueOf(i11);
        Integer num = numValueOf2.intValue() >= 0 ? numValueOf2 : null;
        if (num != null) {
            int iIntValue2 = num.intValue();
            ((i1) getData().get(iIntValue2)).setVideoIsPlaying(true);
            notifyItemChanged(iIntValue2, Boolean.TRUE);
        }
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }

    @Override // r6.l
    public /* bridge */ /* synthetic */ r6.g f(BaseQuickAdapter baseQuickAdapter) {
        return k.a(this, baseQuickAdapter);
    }
}
