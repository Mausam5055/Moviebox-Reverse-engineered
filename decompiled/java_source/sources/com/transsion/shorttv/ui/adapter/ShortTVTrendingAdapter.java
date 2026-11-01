package com.transsion.shorttv.ui.adapter;

import android.content.Context;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.c0;
import com.blankj.utilcode.util.u;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u000e\u001a\u00020\r*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u00020\r*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u00152\u000e\u0010\u0014\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0001H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/shorttv/bean/Subject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "pageName", "", "isDownloadBtn", "<init>", "(Ljava/lang/String;Z)V", "Landroidx/appcompat/widget/AppCompatImageView;", WebConstants.FIELD_ITEM, "", "E1", "(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv/bean/Subject;)V", "F1", "holder", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/Subject;)V", "baseQuickAdapter", "Lr6/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;", "F", "Ljava/lang/String;", "G", "Z", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTVTrendingAdapter extends BaseQuickAdapter implements r6.i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final String pageName;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final boolean isDownloadBtn;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTVTrendingAdapter(String pageName, boolean z10) {
        super(R$layout.short_tv_item_trending, null, 2, null);
        Intrinsics.h(pageName, "pageName");
        this.pageName = pageName;
        this.isDownloadBtn = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(BaseViewHolder baseViewHolder, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        baseViewHolder.itemView.performClick();
    }

    private final void E1(AppCompatImageView appCompatImageView, Subject subject) {
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new ShortTVTrendingAdapter$loadBuiltInCover$1(subject, appCompatImageView, null), 3, null);
    }

    private final void F1(AppCompatImageView appCompatImageView, Subject subject) {
        String thumbnail;
        String url;
        as.b.a aVar = as.b.f16104a;
        Context context = appCompatImageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        Cover cover = subject.getCover();
        String str = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
        int i11 = R$color.short_tv_module_04;
        Cover cover2 = subject.getCover();
        aVar.j(context, appCompatImageView, str, (8096 & 8) != 0 ? aVar.c() : i11, (8096 & 16) != 0 ? aVar.b() : 0, (8096 & 32) != 0, (8096 & 64) != 0 ? "" : (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail, (8096 & 128) != 0, (8096 & 256) != 0, (8096 & 512) != 0 ? false : false, (8096 & 1024) != 0 ? false : false, (8096 & 2048) != 0 ? false : false, (8096 & 4096) != 0 ? 25 : 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(final BaseViewHolder holder, Subject item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        holder.getView(R$id.tv_title_trending).setVisibility(item.getShowTitle() ? 0 : 8);
        if (item.getNonAdDelegate() != null) {
            ((FrameLayout) holder.getView(R$id.flAdContainer)).setVisibility(0);
            ((Group) holder.getView(R$id.group)).setVisibility(8);
            ur.b bVar = ur.b.f76890a;
            Context context = getContext();
            BiddingNativeManager nonAdDelegate = item.getNonAdDelegate();
            com.transsion.ad.bidding.base.r rVarA = bVar.a(context, nonAdDelegate != null ? nonAdDelegate.getMSceneId() : null);
            NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) holder.getViewOrNull(R$id.flAdContainer);
            if (nativeWrapperAdView != null) {
                BiddingNativeManager nonAdDelegate2 = item.getNonAdDelegate();
                BiddingNativeManager nonAdDelegate3 = item.getNonAdDelegate();
                nativeWrapperAdView.bindNativeView(nonAdDelegate2, rVarA, nonAdDelegate3 != null ? nonAdDelegate3.n0() : null);
                return;
            }
            return;
        }
        ((FrameLayout) holder.getView(R$id.flAdContainer)).setVisibility(8);
        ((Group) holder.getView(R$id.group)).setVisibility(0);
        AppCompatImageView appCompatImageView = (AppCompatImageView) holder.getView(R$id.iv_cover);
        if (item.getBuiltIn()) {
            E1(appCompatImageView, item);
        } else {
            F1(appCompatImageView, item);
        }
        TextView textView = (TextView) holder.getView(R$id.tv_title);
        textView.setText(item.getTitle());
        boolean z10 = new StaticLayout(item.getTitle(), textView.getPaint(), y.e() - a0.a(139.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false).getLineCount() > 1;
        TextView textView2 = (TextView) holder.getView(R$id.tv_type);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String releaseDate = item.getReleaseDate();
        if (releaseDate != null && releaseDate.length() != 0) {
            Date dateL = c0.l(item.getReleaseDate(), "yyyy-MM-dd");
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(dateL);
            spannableStringBuilder.append((CharSequence) String.valueOf(calendar.get(1)));
        }
        String[] strArrA = u.a(item.getGenre(), ",");
        if (strArrA != null) {
            for (String str : strArrA) {
                spannableStringBuilder.append((CharSequence) " · ").append((CharSequence) str);
            }
        }
        String countryName = item.getCountryName();
        if (countryName != null && countryName.length() != 0) {
            spannableStringBuilder.append((CharSequence) " · ").append((CharSequence) item.getCountryName());
        }
        textView2.setText(spannableStringBuilder);
        List tags = item.getTags();
        if (tags == null) {
            tags = new ArrayList();
        }
        RecyclerView recyclerView = (RecyclerView) holder.getView(R$id.rv_list);
        if (tags.isEmpty()) {
            yr.b.b(recyclerView);
        } else {
            s sVar = new s(CollectionsKt.U0(tags));
            sVar.w1(new p6.d() { // from class: com.transsion.shorttv.ui.adapter.e
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    ShortTVTrendingAdapter.D1(holder, baseQuickAdapter, view, i11);
                }
            });
            FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(recyclerView.getContext());
            flexboxLayoutManager.c0(0);
            flexboxLayoutManager.d0(1);
            flexboxLayoutManager.e0(0);
            recyclerView.setLayoutManager(flexboxLayoutManager);
            if (recyclerView.getItemDecorationCount() <= 0) {
                recyclerView.addItemDecoration(new com.transsion.shorttv.base.widget.f(a0.a(4.0f)));
            }
            recyclerView.setAdapter(sVar);
            yr.b.e(recyclerView);
        }
        TextView textView3 = (TextView) holder.getView(R$id.tv_desc);
        textView3.setMaxLines(z10 ? 1 : 2);
        String str2 = this.pageName;
        if (Intrinsics.c(str2, "minitv_explore")) {
            textView3.setText(item.getDescription());
        } else if (Intrinsics.c(str2, "minitv_favorite")) {
            textView3.setText(item.getTotalEpisode() + " EPs");
        }
        TextView textView4 = (TextView) holder.getView(R$id.btn_download);
        textView4.setText(this.isDownloadBtn ? Utils.a().getString(R$string.short_tv_download) : Utils.a().getString(R$string.short_tv_play));
        textView4.setCompoundDrawablesWithIntrinsicBounds(this.isDownloadBtn ? R$mipmap.short_tv_ic_download_white : R$mipmap.short_tv_ic_play_white_trending, 0, 0, 0);
    }

    @Override // r6.i
    public r6.f b(BaseQuickAdapter baseQuickAdapter) {
        Intrinsics.h(baseQuickAdapter, "baseQuickAdapter");
        return new r6.f(baseQuickAdapter);
    }
}
