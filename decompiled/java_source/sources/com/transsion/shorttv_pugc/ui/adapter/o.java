package com.transsion.shorttv_pugc.ui.adapter;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.base.widget.ShortTvGradientTextView;
import com.transsion.shorttv_pugc.bean.Cover;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\u000e2\u000e\u0010\r\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0001H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0012\u001a\u00020\u00112\u000e\u0010\r\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0001H\u0016¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/adapter/o;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "Lr6/l;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V", "baseQuickAdapter", "Lr6/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;", "Lr6/g;", "f", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/g;", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class o extends BaseQuickAdapter implements r6.i, r6.l {
    public o() {
        super(R$layout.pugc_short_tv_item_episode, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:22:0x0068  */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, ShorttvModel.UGCVideo item) {
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        et.b.a aVar = et.b.f61995a;
        Context context = getContext();
        ImageView imageView = (ImageView) holder.getView(R$id.iv_cover);
        Cover cover = item.getCover();
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        Cover cover2 = item.getCover();
        aVar.j(context, imageView, url, (8120 & 8) != 0 ? aVar.c() : 0, (8120 & 16) != 0 ? aVar.b() : 0, (8120 & 32) != 0, (8120 & 64) != 0 ? "" : (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail, (8120 & 128) != 0, (8120 & 256) != 0, (8120 & 512) != 0 ? false : false, (8120 & 1024) != 0 ? false : false, (8120 & 2048) != 0 ? false : false, (8120 & 4096) != 0 ? 25 : 0);
        TextView textView = (TextView) holder.getView(R$id.tv_title);
        String epTitle = item.getEpTitle();
        if (epTitle == null) {
            epTitle = item.getTitle();
        } else {
            if (StringsKt.q0(epTitle)) {
                epTitle = null;
            }
            if (epTitle == null) {
                epTitle = item.getTitle();
            }
        }
        textView.setText(epTitle);
        int i11 = R$id.tv_duration;
        Long duration = item.getDuration();
        holder.setText(i11, duration != null ? ShortTvExtKt.p(duration.longValue()) : null);
        holder.setText(R$id.tv_language, item.getCorner());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String watchNum = item.getWatchNum();
        spannableStringBuilder.append((CharSequence) ((watchNum != null ? ShortTvExtKt.t(watchNum) : null) + " views"));
        spannableStringBuilder.append((CharSequence) "￼");
        spannableStringBuilder.setSpan(ShortTvExtKt.f(getContext()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        String releaseDate = item.getReleaseDate();
        spannableStringBuilder.append((CharSequence) String.valueOf(releaseDate != null ? ShortTvExtKt.q(releaseDate) : null));
        holder.setText(R$id.tv_info, spannableStringBuilder);
        int i12 = R$id.v_corner;
        String corner = item.getCorner();
        holder.setVisible(i12, !(corner == null || corner.length() == 0));
        ShortTvGradientTextView shortTvGradientTextView = (ShortTvGradientTextView) holder.getView(R$id.tv_title);
        if (item.isSelected()) {
            shortTvGradientTextView.setGradientColors(androidx.core.content.b.getColor(getContext(), R$color.short_tv_main_gradient_start), androidx.core.content.b.getColor(getContext(), R$color.short_tv_main_gradient_center), androidx.core.content.b.getColor(getContext(), R$color.short_tv_main_gradient_end));
        } else {
            shortTvGradientTextView.setGradientColors(androidx.core.content.b.getColor(getContext(), R$color.short_tv_white_80), androidx.core.content.b.getColor(getContext(), R$color.short_tv_white_80), androidx.core.content.b.getColor(getContext(), R$color.short_tv_white_80));
        }
    }

    @Override // r6.i
    public r6.f b(BaseQuickAdapter baseQuickAdapter) {
        Intrinsics.h(baseQuickAdapter, "baseQuickAdapter");
        return new r6.f(baseQuickAdapter);
    }

    @Override // r6.l
    public r6.g f(BaseQuickAdapter baseQuickAdapter) {
        Intrinsics.h(baseQuickAdapter, "baseQuickAdapter");
        return new r6.g(baseQuickAdapter);
    }
}
