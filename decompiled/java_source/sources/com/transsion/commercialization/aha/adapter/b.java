package com.transsion.commercialization.aha.adapter;

import android.content.Context;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.bean.AhaGameAllGames;
import com.transsion.bean.GameLayoutType;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.R$layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return GameLayoutType.ITEM_INFO.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_aha_game_item_provider_layout;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, AhaGameAllGames item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.ivIcon);
        if (shapeableImageView != null) {
            ej.f.a aVar = ej.f.f61882a;
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            String iconPictureLink = item.getIconPictureLink();
            if (iconPictureLink == null) {
                iconPictureLink = "";
            }
            bVarM.g(iconPictureLink).d(shapeableImageView);
        }
        helper.setText(R$id.tvName, item.getName());
        helper.setText(R$id.tvStarNum, item.getRate());
        helper.setText(R$id.tvDescription, item.getDescription());
    }
}
