package com.transsion.shorttv_pugc.ui.adapter;

import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment;
import com.transsion.shorttv_pugc.ui.widget.ShortTvVideoItemView;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ShortTvDetailListFragment f54019e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f54020f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f54021g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f54022h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f54023i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f54024j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f54025k;

    public g(ShortTvDetailListFragment fragment, boolean z10, String str, String str2, boolean z11) {
        Intrinsics.h(fragment, "fragment");
        this.f54019e = fragment;
        this.f54020f = z10;
        this.f54021g = str;
        this.f54022h = str2;
        this.f54023i = z11;
        this.f54024j = 1;
        this.f54025k = R$layout.pugc_short_tv_item_video;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f54024j;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f54025k;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public BaseViewHolder r(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        com.transsion.shorttv_pugc.utils.e.a aVar = com.transsion.shorttv_pugc.utils.e.f54441c;
        if (!aVar.a().d().isEmpty()) {
            View view = (View) aVar.a().d().remove(0);
            if (view.getParent() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                return new BaseViewHolder(view);
            }
        }
        return super.r(parent, i11);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder holder, ShorttvModel.UGCVideo item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ShortTvVideoItemView shortTvVideoItemView = (ShortTvVideoItemView) holder.getView(R$id.view_video_item);
        ShortTvDetailListFragment shortTvDetailListFragment = this.f54019e;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        com.transsion.shorttv_pugc.ui.widget.a.C0671a.a(shortTvVideoItemView, item, shortTvDetailListFragment, baseProviderMultiAdapterG != null ? Integer.valueOf(baseProviderMultiAdapterG.g0(item)) : null, this.f54020f, this.f54021g, this.f54022h, false, this.f54023i, 64, null);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void f(BaseViewHolder helper, ShorttvModel.UGCVideo item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        Object objK0 = CollectionsKt.k0(payloads);
        ShortTvVideoItemView shortTvVideoItemView = (ShortTvVideoItemView) helper.getView(R$id.view_video_item);
        if (objK0 instanceof Integer) {
            ShortTvDetailListFragment shortTvDetailListFragment = this.f54019e;
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            shortTvVideoItemView.setData(item, shortTvDetailListFragment, baseProviderMultiAdapterG != null ? Integer.valueOf(baseProviderMultiAdapterG.g0(item)) : null, this.f54020f, this.f54021g, this.f54022h, true, this.f54023i);
        } else if (objK0 instanceof Boolean) {
            shortTvVideoItemView.updateLockState(item);
        }
    }
}
