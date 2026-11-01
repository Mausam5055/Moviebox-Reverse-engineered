package com.transsion.postdetail.shorttv.adapter;

import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.postdetail.shorttv.widget.ShortTvEpisodeItemView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"com/transsion/postdetail/shorttv/adapter/ShortTvEpisodeListAdapter$EpisodeViewHolder", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;)V", "a", "Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;", "getView", "()Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvEpisodeListAdapter$EpisodeViewHolder extends BaseViewHolder {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final ShortTvEpisodeItemView view;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvEpisodeListAdapter$EpisodeViewHolder(ShortTvEpisodeItemView view) {
        super(view);
        Intrinsics.h(view, "view");
        this.view = view;
    }
}
