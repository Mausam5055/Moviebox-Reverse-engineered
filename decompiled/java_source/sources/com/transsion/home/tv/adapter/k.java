package com.transsion.home.tv.adapter;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLFrameLayout;
import com.noober.background.view.BLTextView;
import com.transsion.home.R$dimen;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.tv.bean.ImageInfo;
import com.transsion.home.tv.bean.TvChannelItem;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class k extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function2 f45599e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function0 f45600f;

    public k(Function2 click, Function0 firstChannelId) {
        Intrinsics.h(click, "click");
        Intrinsics.h(firstChannelId, "firstChannelId");
        this.f45599e = click;
        this.f45600f = firstChannelId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(k kVar, TvChannelItem tvChannelItem, BaseViewHolder baseViewHolder, View view) {
        kVar.f45599e.invoke(tvChannelItem, Integer.valueOf(baseViewHolder.getBindingAdapterPosition()));
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.TV_CHANNEL_ITEM.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_tv_channel;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(final BaseViewHolder helper, OperateItem item) {
        Resources resources;
        int i11;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        final TvChannelItem tvChannelItem = item.getTvChannelItem();
        if (tvChannelItem == null) {
            return;
        }
        BLTextView bLTextView = (BLTextView) helper.getView(R$id.tvChannelName);
        String title = tvChannelItem.getTitle();
        if (title == null) {
            title = "";
        }
        bLTextView.setText(title);
        BLTextView bLTextView2 = (BLTextView) helper.getView(R$id.tvLanguage);
        List<String> languageCodes = tvChannelItem.getLanguageCodes();
        String str = languageCodes != null ? (String) CollectionsKt.k0(languageCodes) : null;
        if (str == null) {
            str = "";
        }
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        bLTextView2.setText(upperCase);
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getView(R$id.ivChannelFlag);
        ImageInfo countryFlagImage = tvChannelItem.getCountryFlagImage();
        String url = countryFlagImage != null ? countryFlagImage.getUrl() : null;
        String str2 = url != null ? url : "";
        if (TextUtils.isEmpty(str2)) {
            shapeableImageView.setImageResource(R$drawable.ic_tv_country_flag_default);
        } else {
            ej.f.f61882a.m(k()).g(str2).l(str2).i(R$drawable.ic_tv_country_flag_default).d(shapeableImageView);
        }
        BLFrameLayout bLFrameLayout = (BLFrameLayout) helper.getView(R$id.btnWatch);
        boolean z10 = tvChannelItem.getChannelId() != null && Intrinsics.c(tvChannelItem.getChannelId(), this.f45600f.invoke());
        int dimensionPixelSize = k().getResources().getDimensionPixelSize(z10 ? R$dimen.dp_4 : R$dimen.dp_16);
        if (z10) {
            resources = k().getResources();
            i11 = R$dimen.dp_8;
        } else {
            resources = k().getResources();
            i11 = R$dimen.dp_16;
        }
        int dimensionPixelSize2 = resources.getDimensionPixelSize(i11);
        ViewGroup.LayoutParams layoutParams = bLFrameLayout.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
        if (bVar != null) {
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = dimensionPixelSize;
            ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = dimensionPixelSize2;
            bLFrameLayout.setLayoutParams(bVar);
        }
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.tv.adapter.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                k.A(this.f45596a, tvChannelItem, helper, view);
            }
        });
    }
}
