package com.transsnet.downloader.adapter;

import android.graphics.Color;
import android.widget.ImageView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.moviedetailapi.bean.DownloadResolutionItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$drawable;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ-\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00022\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/transsnet/downloader/adapter/r;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "<init>", "()V", "holder", "", "selected", WebConstants.FIELD_ITEM, "", "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ZLcom/transsion/moviedetailapi/bean/DownloadResolutionItem;)V", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;)V", "", "", "payloads", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;Ljava/util/List;)V", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "E1", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "F", "Lcom/transsion/moviedetailapi/bean/Subject;", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class r extends BaseQuickAdapter implements r6.i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private Subject subject;

    public r() {
        super(R$layout.item_download_re_resolution, null, 2, null);
    }

    private final void D1(BaseViewHolder holder, boolean selected, DownloadResolutionItem item) {
        Subject subject;
        Integer requireMemberType;
        ImageView imageView = (ImageView) holder.getView(R$id.iv_resolution);
        GradientTextView gradientTextView = (GradientTextView) holder.getView(R$id.tv_resolution_selected);
        boolean z10 = false;
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        int iT = iPremiumApi != null ? iPremiumApi.t() : 720;
        VipInfo vipInfo = item.getVipInfo();
        boolean z11 = !(vipInfo == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) || com.transsnet.downloader.util.b0.f59921a.a(String.valueOf(item.getResolution())) >= iT;
        Subject subject2 = this.subject;
        if ((subject2 == null || !subject2.isEduType()) && ((subject = this.subject) == null || !subject.isMusicType())) {
            z10 = z11;
        }
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", "DownloadResResolutionTabAdapter --> refresh() --> resolution = " + item.getResolution() + " --> vipResolutionRatio = " + iT + " --> isVipSource = " + z10, false, 4, null);
        if (z10) {
            imageView.setImageResource(R$mipmap.p_v2_premium_2);
            jg.c.k(imageView);
            gradientTextView.setGradientColors(Color.parseColor("#FFDFB0"), Color.parseColor("#FFDFB0"), Color.parseColor("#FFDFB0"));
            if (selected) {
                holder.itemView.setBackgroundResource(R$drawable.p_v2_resolution_ratio_2_bg);
                return;
            } else {
                holder.itemView.setBackgroundResource(R$drawable.p_v2_resolution_ratio_3_bg);
                return;
            }
        }
        jg.c.g(imageView);
        if (selected) {
            gradientTextView.setGradientColors(androidx.core.content.b.getColor(imageView.getContext(), R$color.brand_gradient_start), androidx.core.content.b.getColor(imageView.getContext(), R$color.brand_gradient_center), androidx.core.content.b.getColor(imageView.getContext(), R$color.brand_gradient_end));
            holder.itemView.setBackgroundResource(R$drawable.p_v2_resolution_ratio_1_bg);
        } else {
            gradientTextView.setGradientColors(androidx.core.content.b.getColor(imageView.getContext(), R$color.white_80), androidx.core.content.b.getColor(imageView.getContext(), R$color.white_80), androidx.core.content.b.getColor(imageView.getContext(), R$color.white_80));
            holder.itemView.setBackgroundResource(R$drawable.p_v2_resolution_ratio_3_bg);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, DownloadResolutionItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        D1(holder, item.isSelected(), item);
        holder.setText(R$id.tv_resolution_selected, item.getResolution() + "P");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void G(BaseViewHolder holder, DownloadResolutionItem item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(payloads.size() - 1);
        if (obj instanceof Boolean) {
            D1(holder, ((Boolean) obj).booleanValue(), item);
        }
    }

    public final void E1(Subject subject) {
        this.subject = subject;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
