package com.transsion.home.adapter.suboperate.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.home.R$layout;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class u extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f44506a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f44507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.transsion.home.adapter.suboperate.provider.i f44508c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final OperateItem f44509d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44510e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f44511f;

    public u(List banners, int i11, com.transsion.home.adapter.suboperate.provider.i bannerProvider, OperateItem operateItem) {
        Intrinsics.h(banners, "banners");
        Intrinsics.h(bannerProvider, "bannerProvider");
        Intrinsics.h(operateItem, "operateItem");
        this.f44506a = banners;
        this.f44507b = i11;
        this.f44508c = bannerProvider;
        this.f44509d = operateItem;
        this.f44511f = 1;
    }

    private final BannerData h(int i11) {
        int size;
        if (!this.f44506a.isEmpty() && (size = i11 % this.f44506a.size()) >= 0 && size < this.f44506a.size()) {
            return (BannerData) this.f44506a.get(size);
        }
        return null;
    }

    public final List g() {
        return this.f44506a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i11) {
        BannerData bannerDataH = h(i11);
        return (bannerDataH != null ? bannerDataH.getBiddingAdData() : null) != null ? this.f44511f : this.f44510e;
    }

    public final void i(List list) {
        Intrinsics.h(list, "<set-?>");
        this.f44506a = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.b0 holder, int i11) {
        Intrinsics.h(holder, "holder");
        if (this.f44506a.isEmpty()) {
            return;
        }
        int size = i11 % this.f44506a.size();
        if (getItemViewType(i11) == this.f44511f) {
            SubBannerADViewHolder subBannerADViewHolder = holder instanceof SubBannerADViewHolder ? (SubBannerADViewHolder) holder : null;
            if (subBannerADViewHolder != null) {
                subBannerADViewHolder.i(h(i11));
                return;
            }
            return;
        }
        SubBannerViewHolder subBannerViewHolder = holder instanceof SubBannerViewHolder ? (SubBannerViewHolder) holder : null;
        if (subBannerViewHolder != null) {
            subBannerViewHolder.g(h(i11), size);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.b0 onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        if (i11 == this.f44511f) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_sub_banner_ad, parent, false);
            Intrinsics.e(viewInflate);
            return new SubBannerADViewHolder(viewInflate);
        }
        View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_sub_view_pager, parent, false);
        Intrinsics.e(viewInflate2);
        return new SubBannerViewHolder(viewInflate2, this.f44507b, this.f44508c, this.f44509d);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.b0 holder) {
        Intrinsics.h(holder, "holder");
        super.onViewRecycled(holder);
        boolean z10 = holder instanceof SubBannerADViewHolder;
        if ((z10 ? (SubBannerADViewHolder) holder : null) != null) {
            SubBannerADViewHolder subBannerADViewHolder = z10 ? (SubBannerADViewHolder) holder : null;
            if (subBannerADViewHolder != null) {
                subBannerADViewHolder.k();
            }
        }
    }
}
