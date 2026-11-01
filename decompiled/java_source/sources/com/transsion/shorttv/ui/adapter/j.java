package com.transsion.shorttv.ui.adapter;

import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment;
import com.transsion.shorttv.ui.widget.ShortTvVideoItemView;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class j extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ShortTvDetailListFragment f53127e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f53128f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f53129g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f53130h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f53131i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f53132j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f53133k;

    public j(ShortTvDetailListFragment fragment, boolean z10, String str, String str2, boolean z11) {
        Intrinsics.h(fragment, "fragment");
        this.f53127e = fragment;
        this.f53128f = z10;
        this.f53129g = str;
        this.f53130h = str2;
        this.f53131i = z11;
        this.f53132j = 1;
        this.f53133k = R$layout.short_tv_item_video;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f53132j;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f53133k;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public BaseViewHolder r(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        com.transsion.shorttv.utils.e.a aVar = com.transsion.shorttv.utils.e.f53649c;
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
    public void b(BaseViewHolder holder, js.k item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        if (item instanceof js.e) {
            ShortTvVideoItemView shortTvVideoItemView = (ShortTvVideoItemView) holder.getView(R$id.view_video_item);
            js.e eVar = (js.e) item;
            ShortTvDetailListFragment shortTvDetailListFragment = this.f53127e;
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            com.transsion.shorttv.ui.widget.d.a.a(shortTvVideoItemView, eVar, shortTvDetailListFragment, baseProviderMultiAdapterG != null ? Integer.valueOf(baseProviderMultiAdapterG.g0(item)) : null, this.f53128f, this.f53129g, this.f53130h, false, this.f53131i, 64, null);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void f(BaseViewHolder helper, js.k item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        if (item instanceof js.e) {
            Object objK0 = CollectionsKt.k0(payloads);
            ShortTvVideoItemView shortTvVideoItemView = (ShortTvVideoItemView) helper.getView(R$id.view_video_item);
            if (!(objK0 instanceof Integer)) {
                if (objK0 instanceof Boolean) {
                    shortTvVideoItemView.updateLockState((js.e) item);
                }
            } else {
                js.e eVar = (js.e) item;
                ShortTvDetailListFragment shortTvDetailListFragment = this.f53127e;
                BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
                shortTvVideoItemView.setData(eVar, shortTvDetailListFragment, baseProviderMultiAdapterG != null ? Integer.valueOf(baseProviderMultiAdapterG.g0(item)) : null, this.f53128f, this.f53129g, this.f53130h, true, this.f53131i);
            }
        }
    }
}
