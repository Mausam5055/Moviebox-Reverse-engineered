package com.transsion.shorttv_pugc.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.bean.BannerData;
import com.transsion.shorttv_pugc.bean.Image;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTVBannerAdapter extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f54002a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Function3 f54003b;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(BannerData bannerData, ShortTVBannerAdapter shortTVBannerAdapter, int i11, View view) {
        Function3 function3;
        if (bannerData == null || (function3 = shortTVBannerAdapter.f54003b) == null) {
            return;
        }
        Intrinsics.e(view);
        function3.invoke(view, Integer.valueOf(i11), bannerData);
    }

    public final List getData() {
        return this.f54002a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f54002a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(b holder, final int i11) {
        Image image;
        String thumbnail;
        Image image2;
        String url;
        Boolean hasResource;
        Intrinsics.h(holder, "holder");
        final BannerData bannerData = (BannerData) this.f54002a.get(i11);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.adapter.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTVBannerAdapter.i(bannerData, this, i11, view);
            }
        });
        if (bannerData == null || !bannerData.getBuiltIn()) {
            et.b.a aVar = et.b.f61995a;
            Context context = holder.itemView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ShapeableImageView ivCover = holder.f().f69764b;
            Intrinsics.g(ivCover, "ivCover");
            aVar.j(context, ivCover, (bannerData == null || (image2 = bannerData.getImage()) == null || (url = image2.getUrl()) == null) ? "" : url, (8120 & 8) != 0 ? aVar.c() : R$color.short_tv_module_04, (8120 & 16) != 0 ? aVar.b() : 0, (8120 & 32) != 0, (8120 & 64) != 0 ? "" : (bannerData == null || (image = bannerData.getImage()) == null || (thumbnail = image.getThumbnail()) == null) ? "" : thumbnail, (8120 & 128) != 0, (8120 & 256) != 0, (8120 & 512) != 0 ? false : false, (8120 & 1024) != 0 ? false : false, (8120 & 2048) != 0 ? false : false, (8120 & 4096) != 0 ? 25 : 0);
        } else {
            kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new ShortTVBannerAdapter$onBindViewHolder$1$2(bannerData, holder, null), 3, null);
        }
        holder.f().f69766d.setText(bannerData != null ? bannerData.getContent() : null);
        AppCompatImageView ivPlay = holder.f().f69765c;
        Intrinsics.g(ivPlay, "ivPlay");
        ivPlay.setVisibility((bannerData == null || (hasResource = bannerData.getHasResource()) == null) ? false : hasResource.booleanValue() ? 0 : 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.short_tv_item_banner, parent, false);
        Intrinsics.e(viewInflate);
        return new b(viewInflate);
    }

    public final void k(Function3 listener) {
        Intrinsics.h(listener, "listener");
        this.f54003b = listener;
    }

    public final void setData(List list) {
        Intrinsics.h(list, "list");
        this.f54002a.clear();
        this.f54002a.addAll(list);
        notifyDataSetChanged();
    }
}
