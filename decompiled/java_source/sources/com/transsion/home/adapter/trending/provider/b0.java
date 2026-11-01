package com.transsion.home.adapter.trending.provider;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.baseui.adapter.BaseItemBindingProvider;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.SingleImagePage;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.PostItemType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b0 extends BaseItemBindingProvider {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f44720h = BaseItemBindingProvider.f43410f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f44721g = com.blankj.utilcode.util.y.e() - dk.a.b(24);

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(BaseViewHolder baseViewHolder, OperateItem operateItem, View view) {
        String deepLink;
        rl.c.f74547a.f(baseViewHolder.getBindingAdapterPosition(), operateItem);
        SingleImagePage page = operateItem.getPage();
        if (page == null || (deepLink = page.getDeepLink()) == null) {
            deepLink = operateItem.getDeepLink();
        }
        if (deepLink != null) {
            ak.k.h(deepLink, null, 1, null);
        }
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void y(gl.j0 binding, final BaseViewHolder helper, final OperateItem item) {
        Image image;
        String url;
        String thumbnail;
        Image image2;
        Image image3;
        Image image4;
        Integer width;
        Image image5;
        Integer height;
        Intrinsics.h(binding, "binding");
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        binding.f63748c.setText(item.getTitle());
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.trending.provider.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b0.C(helper, item, view);
            }
        });
        SingleImagePage page = item.getPage();
        int iIntValue = (page == null || (image5 = page.getImage()) == null || (height = image5.getHeight()) == null) ? 0 : height.intValue();
        SingleImagePage page2 = item.getPage();
        int iIntValue2 = (page2 == null || (image4 = page2.getImage()) == null || (width = image4.getWidth()) == null) ? 1 : width.intValue();
        int i11 = this.f44721g;
        float f11 = ((i11 * iIntValue) * 1.0f) / iIntValue2;
        lg.a.C0828a c0828a = lg.a.f68839a;
        SingleImagePage page3 = item.getPage();
        lg.a.C0828a.f(c0828a, "SingleImage", "imgH:" + iIntValue + ",imgW:" + iIntValue2 + " imageViewHeight:" + f11 + ", imageViewWidth:" + i11 + "， url:" + ((page3 == null || (image3 = page3.getImage()) == null) ? null : image3.getUrl()), false, 4, null);
        ViewGroup.LayoutParams layoutParams = binding.f63747b.getLayoutParams();
        layoutParams.height = (int) f11;
        binding.f63747b.setLayoutParams(layoutParams);
        SingleImagePage page4 = item.getPage();
        if (page4 == null || (image = page4.getImage()) == null || (url = image.getUrl()) == null) {
            return;
        }
        ej.f.a aVar = ej.f.f61882a;
        Context context = binding.f63747b.getContext();
        Intrinsics.g(context, "getContext(...)");
        ej.f.b bVarG = aVar.m(context).g(url);
        SingleImagePage page5 = item.getPage();
        if (page5 == null || (image2 = page5.getImage()) == null || (thumbnail = image2.getThumbnail()) == null) {
            thumbnail = "";
        }
        ej.f.b bVarM = bVarG.l(thumbnail).m(this.f44721g);
        ShapeableImageView ivCover = binding.f63747b;
        Intrinsics.g(ivCover, "ivCover");
        bVarM.d(ivCover);
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public gl.j0 z(LayoutInflater inflater, ViewGroup parent) {
        Intrinsics.h(inflater, "inflater");
        Intrinsics.h(parent, "parent");
        gl.j0 j0VarC = gl.j0.c(LayoutInflater.from(k()), parent, false);
        Intrinsics.g(j0VarC, "inflate(...)");
        return j0VarC;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.SINGLE_IMAGE.ordinal();
    }
}
