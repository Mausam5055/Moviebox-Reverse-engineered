package com.transsion.search.fragment.hot.adapter;

import android.app.Activity;
import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.FragmentActivity;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.KeyboardUtils;
import com.blankj.utilcode.util.a0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.MBridgeConstans;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.search.R$drawable;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.HotCover;
import com.transsion.search.bean.HotSubject;
import com.transsion.search.fragment.hot.SearchHotFragment;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0011\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B)\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b\f\u0010\rJ'\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\u000b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0014\u0010\"\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010 ¨\u0006#"}, d2 = {"Lcom/transsion/search/fragment/hot/adapter/h;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/search/bean/HotSubject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "parentCategory", "", "parentIndex", "", "isTabLayout", "sugSource", "<init>", "(Ljava/lang/String;IZLjava/lang/String;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "subject", RequestParameters.POSITION, "", "F1", "(Landroid/view/View;Lcom/transsion/search/bean/HotSubject;I)V", "E1", "()I", "holder", WebConstants.FIELD_ITEM, "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/bean/HotSubject;)V", "F", "Ljava/lang/String;", "G", "I", "H", "Z", "J", "mIsLowDevice", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class h extends BaseQuickAdapter implements i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final String parentCategory;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int parentIndex;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final boolean isTabLayout;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final String sugSource;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final boolean mIsLowDevice;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(String parentCategory, int i11, boolean z10, String sugSource) {
        super(R$layout.item_search_hot_rank_inner, null, 2, null);
        Intrinsics.h(parentCategory, "parentCategory");
        Intrinsics.h(sugSource, "sugSource");
        this.parentCategory = parentCategory;
        this.parentIndex = i11;
        this.isTabLayout = z10;
        this.sugSource = sugSource;
        this.mIsLowDevice = ak.h.f641a.a();
    }

    public /* synthetic */ h(String str, int i11, boolean z10, String str2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i11, z10, (i12 & 8) != 0 ? "mb_sug" : str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(h hVar, HotSubject hotSubject, int i11, View view) {
        Intrinsics.e(view);
        hVar.F1(view, hotSubject, i11);
    }

    private final int E1() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? GravityCompat.END : GravityCompat.START;
    }

    private final void F1(View view, HotSubject subject, int position) {
        com.transsion.search.widget.d.f52270a.o(subject, position, this.parentCategory, this.parentIndex, this.mIsLowDevice, this.sugSource);
        if (getContext() instanceof Activity) {
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
            if (KeyboardUtils.g((Activity) context)) {
                Context context2 = getContext();
                Intrinsics.f(context2, "null cannot be cast to non-null type android.app.Activity");
                KeyboardUtils.d((Activity) context2);
            }
        }
        Integer subjectType = subject.getSubjectType();
        int value = SubjectType.SHORT_TV.getValue();
        if (subjectType == null || subjectType.intValue() != value) {
            Navigator navigatorC = TheRouter.c("/movie/detail");
            Integer subjectType2 = subject.getSubjectType();
            Navigator.x(navigatorC.F("subject_type", subjectType2 != null ? subjectType2.intValue() : SubjectType.MOVIE.getValue()).K("id", subject.getSubjectId()).K("ops", subject.getOps()), view.getContext(), null, 2, null);
        } else {
            DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
            Context context3 = getContext();
            Intrinsics.f(context3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            downloadManagerApiA.d0((FragmentActivity) context3, SearchHotFragment.PAGE_NAME, (384 & 4) != 0 ? "" : "", subject.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : null, (384 & 128) != 0 ? null : subject.getSubjectId(), (384 & 256) != 0 ? Boolean.FALSE : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, final HotSubject item) {
        String url;
        String thumbnail;
        List listL;
        Integer requireMemberType;
        String memberIcon;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        final int iG0 = g0(item);
        if (item.isMusicType()) {
            View view = holder.getView(R$id.search_hot_rank_item_image_linear);
            float f11 = this.isTabLayout ? 2 : 1;
            view.getLayoutParams().width = a0.a(80.0f * f11);
            view.getLayoutParams().height = a0.a(f11 * 45.0f);
            view.setLayoutParams(view.getLayoutParams());
            ((TextView) holder.getView(R$id.search_hot_rank_item_title_text)).setMaxLines(1);
        }
        ImageView imageView = (ImageView) holder.getView(R$id.iv_vip_type);
        TextView textView = (TextView) holder.getView(R$id.search_hot_rank_item_index_text);
        VipInfo vipInfo = item.getVipInfo();
        if (vipInfo == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
            imageView.setVisibility(8);
            textView.setVisibility(0);
            int i11 = R$drawable.bg_hot_subject_no4;
            if (iG0 == 0) {
                i11 = R$drawable.bg_hot_subject_no1;
            } else if (iG0 == 1) {
                i11 = R$drawable.bg_hot_subject_no2;
            } else if (iG0 == 2) {
                i11 = R$drawable.bg_hot_subject_no3;
            }
            holder.setText(R$id.search_hot_rank_item_index_text, String.valueOf(iG0 + 1));
            holder.setBackgroundResource(R$id.search_hot_rank_item_index_text, i11);
        } else {
            imageView.setVisibility(0);
            textView.setVisibility(8);
            RequestManager requestManagerWith = Glide.with(getContext());
            VipInfo vipInfo2 = item.getVipInfo();
            if (vipInfo2 == null || (memberIcon = vipInfo2.getMemberIcon()) == null) {
                memberIcon = "";
            }
            Intrinsics.e(requestManagerWith.load2(memberIcon).placeholder(com.tn.lib.widget.R$drawable.icon_subject_premium).into(imageView));
        }
        if (this.mIsLowDevice) {
            holder.setGone(R$id.search_hot_rank_item_image_linear, true);
        } else {
            ej.f.b bVarM = ej.f.f61882a.m(getContext());
            HotCover cover = item.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            HotCover cover2 = item.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarG.l(thumbnail).m(a0.a(50.0f)).d((ImageView) holder.getView(R$id.search_hot_rank_item_image));
        }
        holder.setText(R$id.search_hot_rank_item_title_text, item.getTitle());
        ((TextView) holder.getView(R$id.search_hot_rank_item_title_text)).setGravity(E1());
        ((TextView) holder.getView(R$id.search_hot_rank_item_subtitle_text)).setGravity(E1());
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.hot.adapter.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                h.D1(this.f52075a, item, iG0, view2);
            }
        });
        int i12 = R$id.search_hot_rank_item_corner;
        String corner = item.getCorner();
        holder.setGone(i12, corner == null || corner.length() == 0);
        int i13 = R$id.search_hot_rank_item_corner;
        String corner2 = item.getCorner();
        if (corner2 == null) {
            corner2 = "";
        }
        holder.setText(i13, corner2);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ImageSpan imageSpanA = com.transsion.search.f.a(getContext(), com.transsion.moviedetailapi.g.a(item.getSubjectType()));
        spannableStringBuilder.append((CharSequence) "￼");
        spannableStringBuilder.setSpan(imageSpanA, 0, 1, 33);
        spannableStringBuilder.append((CharSequence) "￼");
        spannableStringBuilder.setSpan(com.transsion.search.f.b(getContext()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        if (item.getImdbRatingValue() != null && !item.isMusicType()) {
            ImageSpan imageSpanA2 = com.transsion.search.f.a(getContext(), R$drawable.ic_search_result_star);
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.setSpan(imageSpanA2, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) " ");
            spannableStringBuilder.append((CharSequence) item.getImdbRatingValue());
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(com.blankj.utilcode.util.h.a(R$color.yellow_60));
            String imdbRatingValue = item.getImdbRatingValue();
            spannableStringBuilder.setSpan(foregroundColorSpan, spannableStringBuilder.length() - (imdbRatingValue != null ? imdbRatingValue.length() : 0), spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.setSpan(com.transsion.search.f.b(getContext()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        if (item.getReleaseDate() != null) {
            String releaseDate = item.getReleaseDate();
            String strSubstring = releaseDate != null ? releaseDate : "";
            if (strSubstring.length() >= 4) {
                strSubstring = strSubstring.substring(0, 4);
                Intrinsics.g(strSubstring, "substring(...)");
            }
            spannableStringBuilder.append((CharSequence) strSubstring);
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.setSpan(com.transsion.search.f.b(getContext()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        if (item.getCountryName() != null) {
            spannableStringBuilder.append((CharSequence) item.getCountryName());
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.setSpan(com.transsion.search.f.b(getContext()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        if (item.getGenre() != null) {
            String genre = item.getGenre();
            if (genre == null || (listL = StringsKt.S0(genre, new String[]{","}, false, 0, 6, null)) == null) {
                listL = CollectionsKt.l();
            }
            if (!listL.isEmpty()) {
                spannableStringBuilder.append((CharSequence) listL.get(0));
            }
        }
        ((TextView) holder.getView(R$id.search_hot_rank_item_subtitle_text)).setText(spannableStringBuilder);
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
