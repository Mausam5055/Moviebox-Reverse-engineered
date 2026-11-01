package com.transsion.home.adapter.suboperate.adapter;

import android.content.Context;
import android.net.Uri;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.hisavana.common.bean.TAdNativeInfo;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.trending.BannerADDataHelper;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.DownloadManagerApi;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class SubBannerChildPagerAdapter extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f44436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f44437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final OperateItem f44438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f44439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44440e;

    public static final class SubViewPagerViewHolder extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f44441a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final OperateItem f44442b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ImageView f44443c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ImageView f44444d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final TextView f44445e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final TextView f44446f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubViewPagerViewHolder(View itemView, int i11, OperateItem operateItem) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            Intrinsics.h(operateItem, "operateItem");
            this.f44441a = i11;
            this.f44442b = operateItem;
            View viewFindViewById = itemView.findViewById(R$id.contentIV);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            this.f44443c = (ImageView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R$id.playIV);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            this.f44444d = (ImageView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R$id.titleTV);
            Intrinsics.g(viewFindViewById3, "findViewById(...)");
            this.f44445e = (TextView) viewFindViewById3;
            View viewFindViewById4 = itemView.findViewById(R$id.desTV);
            Intrinsics.g(viewFindViewById4, "findViewById(...)");
            this.f44446f = (TextView) viewFindViewById4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit h(BannerData bannerData, SubViewPagerViewHolder subViewPagerViewHolder, int i11, View it) {
            Intrinsics.h(it, "it");
            String deepLink = bannerData.getDeepLink();
            if (deepLink != null) {
                if (!nh.m.f70474a.e()) {
                    uh.b.f76753a.d(R$string.no_network_toast);
                    return Unit.f67061a;
                }
                Uri uriG = com.transsion.baselib.helper.b.f43264a.g(Uri.parse(deepLink + "&module_name=opt_banner_free&autoPlay=true&ops=" + bannerData.getOps()));
                if (uriG != null) {
                    ak.k.o(uriG);
                }
                subViewPagerViewHolder.j(bannerData, i11, DownloadManagerApi.x0(DownloadManagerApi.f58398j.a(), bannerData.getSubjectId(), null, false, false, 12, null) ? "play_subject" : "download_subject");
            }
            return Unit.f67061a;
        }

        private final SpannableString i(Subject subject) {
            int iIndexOf;
            List listR0;
            StringBuilder sb2 = new StringBuilder();
            String releaseDate = subject.getReleaseDate();
            String genre = subject.getGenre();
            String str = (genre == null || (listR0 = StringsKt.R0(genre, new char[]{','}, false, 0, 6, null)) == null) ? null : (String) CollectionsKt.k0(listR0);
            if (releaseDate != null && releaseDate.length() != 0) {
                sb2.append(" | ");
                sb2.append(releaseDate);
            }
            if (str != null) {
                sb2.append(" | ");
                sb2.append(str);
            }
            SpannableString spannableString = new SpannableString(sb2);
            if (releaseDate != null && releaseDate.length() != 0) {
                ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(Utils.a().getResources().getColor(R$color.white_20));
                ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(Utils.a().getResources().getColor(R$color.white_60));
                spannableString.setSpan(foregroundColorSpan, 0, 3, 17);
                spannableString.setSpan(foregroundColorSpan2, 3, releaseDate.length() + 3, 17);
            }
            if (str != null && (iIndexOf = sb2.indexOf(str)) >= 3) {
                ForegroundColorSpan foregroundColorSpan3 = new ForegroundColorSpan(Utils.a().getResources().getColor(R$color.white_20));
                ForegroundColorSpan foregroundColorSpan4 = new ForegroundColorSpan(Utils.a().getResources().getColor(R$color.white_60));
                spannableString.setSpan(foregroundColorSpan3, iIndexOf - 3, iIndexOf, 17);
                spannableString.setSpan(foregroundColorSpan4, iIndexOf, sb2.length(), 17);
            }
            return spannableString;
        }

        private final void j(BannerData bannerData, int i11, String str) {
            HashMap map = new HashMap();
            map.put("event_type", "click_banner_poster");
            map.put("sequence", String.valueOf(i11));
            map.put("module_name", str);
            map.put("tabId", String.valueOf(this.f44441a));
            if (bannerData != null) {
                il.b.c(bannerData, map);
            }
            il.b.a(this.f44442b, map);
            com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.f44441a), map);
        }

        private final void k(BannerData bannerData, ImageView imageView) {
            if (!(bannerData != null ? Intrinsics.c(bannerData.getHasResource(), Boolean.TRUE) : false)) {
                imageView.setImageResource(R$drawable.ic_trending_arrow);
            } else if (!ak.t.f652a.b() || bannerData.getSubjectType() == SubjectType.SHORT_TV.getValue()) {
                imageView.setImageResource(R$drawable.ic_trending_download);
            } else {
                imageView.setImageResource(R$drawable.ic_trending_play);
            }
        }

        public final void g(final BannerData bannerData, final int i11) {
            String url;
            String thumbnail;
            Cover cover;
            Cover cover2;
            Intrinsics.h(bannerData, "bannerData");
            Subject subject = bannerData.getSubject();
            if (subject == null || (cover2 = subject.getCover()) == null || (url = cover2.getUrl()) == null) {
                Image image = bannerData.getImage();
                url = image != null ? image.getUrl() : null;
            }
            Subject subject2 = bannerData.getSubject();
            if (subject2 == null || (cover = subject2.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
                Image image2 = bannerData.getImage();
                thumbnail = image2 != null ? image2.getThumbnail() : null;
            }
            if (bannerData.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1(url, this, null), 3, null);
            } else {
                ej.f.a aVar = ej.f.f61882a;
                Context context = this.f44443c.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                if (url == null) {
                    url = "";
                }
                ej.f.b bVarG = bVarM.g(url);
                if (thumbnail == null) {
                    thumbnail = "";
                }
                bVarG.l(thumbnail).i(R$mipmap.ic_img_placeholder).m(dk.a.b(40)).c(dk.a.b(56)).d(this.f44443c);
            }
            this.itemView.setClickable(false);
            Subject subject3 = bannerData.getSubject();
            if (subject3 != null) {
                TextView textView = this.f44445e;
                String title = subject3.getTitle();
                textView.setText(title != null ? title : "");
                SpannableString spannableStringI = i(subject3);
                if (spannableStringI.length() > 0) {
                    this.f44446f.setText(spannableStringI);
                    this.f44446f.setCompoundDrawablesWithIntrinsicBounds(com.transsion.moviedetailapi.g.a(subject3.getSubjectType()), 0, 0, 0);
                }
            }
            if (bannerData.getSubject() == null) {
                this.f44445e.setText(bannerData.getContent());
                this.f44446f.setText((CharSequence) null);
            }
            CharSequence text = this.f44446f.getText();
            if (text == null || text.length() == 0) {
                this.f44446f.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            }
            TextView textView2 = this.f44446f;
            CharSequence text2 = textView2.getText();
            textView2.setVisibility(text2 == null || text2.length() == 0 ? 8 : 0);
            View itemView = this.itemView;
            Intrinsics.g(itemView, "itemView");
            jg.c.c(itemView, 0L, new Function1() { // from class: com.transsion.home.adapter.suboperate.adapter.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SubBannerChildPagerAdapter.SubViewPagerViewHolder.h(bannerData, this, i11, (View) obj);
                }
            }, 1, null);
            k(bannerData, this.f44444d);
        }

        public final ImageView getImageView() {
            return this.f44443c;
        }
    }

    public static final class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ImageView f44447a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ImageView f44448b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ImageView f44449c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final TextView f44450d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final TextView f44451e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View itemView) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            View viewFindViewById = itemView.findViewById(R$id.iconBg);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            this.f44447a = (ImageView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R$id.contentIV);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            this.f44448b = (ImageView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R$id.playIV);
            Intrinsics.g(viewFindViewById3, "findViewById(...)");
            this.f44449c = (ImageView) viewFindViewById3;
            View viewFindViewById4 = itemView.findViewById(R$id.titleTV);
            Intrinsics.g(viewFindViewById4, "findViewById(...)");
            this.f44450d = (TextView) viewFindViewById4;
            View viewFindViewById5 = itemView.findViewById(R$id.desTV);
            Intrinsics.g(viewFindViewById5, "findViewById(...)");
            this.f44451e = (TextView) viewFindViewById5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit i(View it) {
            Intrinsics.h(it, "it");
            BannerADDataHelper.f44654a.l();
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit j(AdMaterialList adMaterialList, AdPlans adPlans, View it) {
            Intrinsics.h(it, "it");
            com.transsion.ad.strategy.b.f42227a.a(adMaterialList != null ? adMaterialList.getDeeplink() : null, adMaterialList != null ? adMaterialList.getH5Link() : null, adPlans);
            return Unit.f67061a;
        }

        public final void h(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            final AdPlans plans;
            String url;
            String thumbnail;
            if (biddingIntermediateMaterialBean == null || (plans = biddingIntermediateMaterialBean.getPlans()) == null) {
                return;
            }
            TAdNativeInfo nativeInfo = biddingIntermediateMaterialBean.getNativeInfo();
            if (nativeInfo != null) {
                this.f44450d.setText(nativeInfo.getTitle());
                this.f44451e.setText(nativeInfo.getDescription());
                RequestManager requestManagerWith = Glide.with(this.f44447a.getContext());
                TAdNativeInfo.Image icon = nativeInfo.getIcon();
                requestManagerWith.load2(icon != null ? icon.getUrl() : null).transform(new hg.a(50, 8, true)).into(this.f44447a);
                this.f44448b.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                RequestManager requestManagerWith2 = Glide.with(this.f44448b.getContext());
                TAdNativeInfo.Image icon2 = nativeInfo.getIcon();
                requestManagerWith2.load2(icon2 != null ? icon2.getUrl() : null).placeholder(R$mipmap.ic_img_placeholder).into(this.f44448b);
                this.f44449c.setImageResource(R$drawable.ic_trending_arrow);
                View itemView = this.itemView;
                Intrinsics.g(itemView, "itemView");
                jg.c.c(itemView, 0L, new Function1() { // from class: com.transsion.home.adapter.suboperate.adapter.g
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SubBannerChildPagerAdapter.a.i((View) obj);
                    }
                }, 1, null);
                return;
            }
            com.transsion.ad.monopoly.plan.b bVar = com.transsion.ad.monopoly.plan.b.f42169a;
            AdMaterialList adMaterialListC = bVar.c(plans);
            MbAdImage mbAdImageA = bVar.a(plans);
            this.f44448b.setImageResource(R$mipmap.ic_img_placeholder);
            ej.f.a aVar = ej.f.f61882a;
            Context context = this.f44448b.getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            String str = "";
            if (mbAdImageA == null || (url = mbAdImageA.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            if (mbAdImageA != null && (thumbnail = mbAdImageA.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarG.l(str).i(R$mipmap.ic_img_placeholder).m(dk.a.b(40)).c(dk.a.b(56)).d(this.f44448b);
            this.f44448b.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.f44450d.setText(adMaterialListC != null ? adMaterialListC.getTitle() : null);
            this.f44451e.setText(adMaterialListC != null ? adMaterialListC.getDesc() : null);
            this.f44451e.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            this.f44449c.setImageResource(R$drawable.ic_trending_arrow);
            final AdMaterialList adMaterialListC2 = bVar.c(plans);
            View itemView2 = this.itemView;
            Intrinsics.g(itemView2, "itemView");
            jg.c.c(itemView2, 0L, new Function1() { // from class: com.transsion.home.adapter.suboperate.adapter.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SubBannerChildPagerAdapter.a.j(adMaterialListC2, plans, (View) obj);
                }
            }, 1, null);
        }
    }

    public SubBannerChildPagerAdapter(List banners, int i11, OperateItem operateItem) {
        Intrinsics.h(banners, "banners");
        Intrinsics.h(operateItem, "operateItem");
        this.f44436a = banners;
        this.f44437b = i11;
        this.f44438c = operateItem;
        this.f44440e = 1;
    }

    private final BannerData g(int i11) {
        int size;
        if (!this.f44436a.isEmpty() && (size = i11 % this.f44436a.size()) >= 0 && size < this.f44436a.size()) {
            return (BannerData) this.f44436a.get(size);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i11) {
        BannerData bannerDataG = g(i11);
        return (bannerDataG != null ? bannerDataG.getBiddingAdData() : null) != null ? this.f44440e : this.f44439d;
    }

    public final void h(List list) {
        Intrinsics.h(list, "<set-?>");
        this.f44436a = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.b0 holder, int i11) {
        Intrinsics.h(holder, "holder");
        if (this.f44436a.isEmpty()) {
            return;
        }
        int size = i11 % this.f44436a.size();
        BannerData bannerData = (BannerData) this.f44436a.get(size);
        if (bannerData == null) {
            return;
        }
        if (holder instanceof a) {
            ((a) holder).h(bannerData.getBiddingAdData());
        } else if (holder instanceof SubViewPagerViewHolder) {
            ((SubViewPagerViewHolder) holder).g(bannerData, size);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.b0 onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_sub_top_banner_card, parent, false);
        if (i11 == this.f44440e) {
            Intrinsics.e(viewInflate);
            return new a(viewInflate);
        }
        Intrinsics.e(viewInflate);
        return new SubViewPagerViewHolder(viewInflate, this.f44437b, this.f44438c);
    }
}
