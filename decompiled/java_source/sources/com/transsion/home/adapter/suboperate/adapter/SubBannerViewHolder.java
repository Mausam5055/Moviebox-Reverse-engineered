package com.transsion.home.adapter.suboperate.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.tn.lib.widget.R$string;
import com.transsion.gslb.Utils;
import com.transsion.home.R$id;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Image;
import com.transsnet.downloader.DownloadManagerApi;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class SubBannerViewHolder extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f44452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.transsion.home.adapter.suboperate.provider.i f44453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final OperateItem f44454c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final View f44455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final View f44456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ImageView f44457f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubBannerViewHolder(View itemView, int i11, com.transsion.home.adapter.suboperate.provider.i bannerProvider, OperateItem operateItem) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        Intrinsics.h(bannerProvider, "bannerProvider");
        Intrinsics.h(operateItem, "operateItem");
        this.f44452a = i11;
        this.f44453b = bannerProvider;
        this.f44454c = operateItem;
        View viewFindViewById = itemView.findViewById(R$id.home_sub_pager_items_status);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f44455d = viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.home_sub_pager_items_top_mask);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f44456e = viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.home_sub_pager_item_image);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f44457f = (ImageView) viewFindViewById3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(BannerData bannerData, SubBannerViewHolder subBannerViewHolder, int i11, View view) {
        String deepLink = bannerData.getDeepLink();
        if (deepLink != null) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            Uri uriG = com.transsion.baselib.helper.b.f43264a.g(Uri.parse(deepLink + "&module_name=opt_banner_free&autoPlay=true&ops=" + bannerData.getOps()));
            if (uriG != null) {
                ak.k.o(uriG);
            }
            subBannerViewHolder.k(bannerData, i11, DownloadManagerApi.x0(DownloadManagerApi.f58398j.a(), bannerData.getSubjectId(), null, false, false, 12, null) ? "play_subject" : "download_subject");
        }
    }

    private final GradientDrawable i(String str) {
        int color = Color.parseColor(str);
        int iRed = Color.red(color);
        int iGreen = Color.green(color);
        int iBlue = Color.blue(color);
        int iArgb = Color.argb(255, iRed, iGreen, iBlue);
        int iArgb2 = Color.argb(153, iRed, iGreen, iBlue);
        int iArgb3 = Color.argb(0, iRed, iGreen, iBlue);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setGradientType(0);
        gradientDrawable.setColors(new int[]{iArgb, iArgb2, iArgb3});
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        return gradientDrawable;
    }

    private final void j(BannerData bannerData, int i11) {
        if (this.f44453b.T(bannerData != null ? bannerData.getSubjectId() : null)) {
            HashMap map = new HashMap();
            map.put("event_type", "browse_banner");
            map.put("sequence", String.valueOf(i11));
            map.put("tabId", String.valueOf(this.f44452a));
            if (bannerData != null) {
                il.b.c(bannerData, map);
            }
            il.b.a(this.f44454c, map);
            com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.f44452a), map);
        }
    }

    private final void k(BannerData bannerData, int i11, String str) {
        HashMap map = new HashMap();
        map.put("event_type", "click_banner_poster");
        map.put("sequence", String.valueOf(i11));
        map.put("module_name", str);
        map.put("tabId", String.valueOf(this.f44452a));
        if (bannerData != null) {
            il.b.c(bannerData, map);
        }
        il.b.a(this.f44454c, map);
        com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.f44452a), map);
    }

    public final void g(final BannerData bannerData, final int i11) {
        String url;
        String thumbnail;
        if (bannerData == null) {
            return;
        }
        oh.h hVar = oh.h.f71021a;
        Context context = this.f44457f.getContext();
        Intrinsics.g(context, "getContext(...)");
        int iE = hVar.e(context);
        if (bannerData.getBuiltIn()) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SubBannerViewHolder$bindData$1(bannerData, this, null), 3, null);
        } else {
            ej.f.a aVar = ej.f.f61882a;
            Context context2 = this.f44457f.getContext();
            Intrinsics.g(context2, "getContext(...)");
            ej.f.b bVarM = aVar.m(context2);
            Image image = bannerData.getImage();
            String str = "";
            if (image == null || (url = image.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarM2 = bVarM.g(url).m(iE);
            Image image2 = bannerData.getImage();
            if (image2 != null && (thumbnail = image2.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarM2.l(str).d(this.f44457f);
        }
        this.f44455d.getLayoutParams().height = com.blankj.utilcode.util.d.c() + a0.a(44.0f);
        Image image3 = bannerData.getImage();
        String averageHueDark = image3 != null ? image3.getAverageHueDark() : null;
        if (averageHueDark != null && StringsKt.c0(averageHueDark, Utils.SEPARATOR, false, 2, null)) {
            this.f44455d.setBackgroundColor(Color.parseColor(averageHueDark));
            this.f44456e.setBackground(i(averageHueDark));
        }
        j(bannerData, i11);
        this.f44457f.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.adapter.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubBannerViewHolder.h(bannerData, this, i11, view);
            }
        });
    }

    public final ImageView getImageView() {
        return this.f44457f;
    }
}
