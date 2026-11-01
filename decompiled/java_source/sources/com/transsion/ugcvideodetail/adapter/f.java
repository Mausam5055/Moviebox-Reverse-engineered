package com.transsion.ugcvideodetail.adapter;

import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.j;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsion/ugcvideodetail/adapter/f;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "<init>", "()V", "", "seconds", "", "C1", "(J)Ljava/lang/String;", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class f extends BaseQuickAdapter implements r6.i {
    public f() {
        super(R$layout.item_ugc_detail_for_you_list, null, 2, null);
    }

    private final String C1(long seconds) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        long hours = timeUnit.toHours(seconds);
        long j11 = 60;
        long minutes = timeUnit.toMinutes(seconds) % j11;
        long j12 = seconds % j11;
        if (hours > 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format("%d:%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(j12)}, 3));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
        String str2 = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(minutes), Long.valueOf(j12)}, 2));
        Intrinsics.g(str2, "format(...)");
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, UGCVideo item) {
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ej.f.b bVarC = ej.f.f61882a.m(getContext()).m(dk.a.b(120)).c(dk.a.b(68));
        Cover cover = item.getCover();
        String str = "";
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        ej.f.b bVarG = bVarC.g(url);
        Cover cover2 = item.getCover();
        if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
            str = thumbnail;
        }
        bVarG.l(str).d((ImageView) holder.getView(R$id.ivVideoCover));
        Long duration = item.getDuration();
        long jLongValue = duration != null ? duration.longValue() : 0L;
        if (jLongValue > 0) {
            holder.setVisible(R$id.vDurationBg, true);
            holder.setText(R$id.tvVideoDuration, C1(jLongValue));
            UGCVideoTypeKt.i((ImageView) holder.getView(R$id.ivTypeIcon), item, null, 4, null);
        } else {
            holder.setVisible(R$id.vDurationBg, false);
        }
        holder.setText(R$id.tvVideoTitle, item.getTitle());
        holder.setText(R$id.tvVideoViews, j.c(item.getWatchNum(), getContext()));
        TextView textView = (TextView) holder.getView(R$id.tvVideoTime);
        Long publishTime = item.getPublishTime();
        textView.setText(TimeUtilKt.i(publishTime != null ? publishTime.longValue() : 0L));
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
