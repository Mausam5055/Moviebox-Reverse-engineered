package com.transsion.ugcvideodetail.adapter;

import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import com.transsion.ugcvideodetail.widget.UGCImmVideoItemView;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final UGCImmVideoDetailFragment f55998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f55999f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f56000g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f56001h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f56002i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f56003j;

    public c(UGCImmVideoDetailFragment fragment, String trackId, String str, String str2) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(trackId, "trackId");
        this.f55998e = fragment;
        this.f55999f = trackId;
        this.f56000g = str;
        this.f56001h = str2;
        this.f56002i = 1;
        this.f56003j = R$layout.item_ugc_imm_video_detail;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f56002i;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f56003j;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder holder, UGCImmVideo item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        UGCImmVideoItemView uGCImmVideoItemView = (UGCImmVideoItemView) holder.getView(R$id.viewImmVideoItem);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        uGCImmVideoItemView.setData(baseProviderMultiAdapterG != null ? Integer.valueOf(baseProviderMultiAdapterG.g0(item)) : null, this.f55998e, this.f55999f, this.f56000g, this.f56001h, item);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void f(BaseViewHolder helper, UGCImmVideo item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        Object objK0 = CollectionsKt.k0(payloads);
        UGCImmVideoItemView uGCImmVideoItemView = (UGCImmVideoItemView) helper.getView(R$id.viewImmVideoItem);
        if (objK0 instanceof Integer) {
            uGCImmVideoItemView.setDownloadStatus(((Number) objK0).intValue());
        }
    }
}
