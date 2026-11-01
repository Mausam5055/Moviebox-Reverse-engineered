package vq;

import ak.t;
import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.h;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.fragment.result.ResultType;
import com.transsion.search.fragment.result.ResultWrapData;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends BaseItemProvider {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(ResultWrapData resultWrapData, ImageView imageView, f fVar, BaseViewHolder baseViewHolder, View view) {
        Subject subject = resultWrapData.getSubject();
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        com.transsion.search.f.d(subject, "searchresult", context, "search_result");
        BaseProviderMultiAdapter baseProviderMultiAdapterG = fVar.g();
        if (baseProviderMultiAdapterG instanceof com.transsion.search.fragment.result.adapter.a) {
            ((com.transsion.search.fragment.result.adapter.a) baseProviderMultiAdapterG).R1(resultWrapData.getSubject(), baseViewHolder.getBindingAdapterPosition());
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return ResultType.SUBJECT.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_result_subject;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(final BaseViewHolder helper, final ResultWrapData item) {
        String url;
        String thumbnail;
        Subject subject;
        Subject subject2;
        List listL;
        Subject subject3;
        VipInfo vipInfo;
        Integer requireMemberType;
        String memberIcon;
        Cover cover;
        Cover cover2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Subject subject4 = item.getSubject();
        if (subject4 == null || !subject4.isMusicType()) {
            Resources resources = k().getResources();
            Intrinsics.g(resources, "getResources(...)");
            if (com.transsion.search.f.e(resources)) {
                ImageView imageView = (ImageView) helper.getView(R$id.search_result_provider_subject_cover);
                imageView.getLayoutParams().width = a0.a(100.0f);
                imageView.getLayoutParams().height = a0.a(140.0f);
                imageView.setLayoutParams(imageView.getLayoutParams());
            } else {
                ImageView imageView2 = (ImageView) helper.getView(R$id.search_result_provider_subject_cover);
                imageView2.getLayoutParams().width = a0.a(50.0f);
                imageView2.getLayoutParams().height = a0.a(70.0f);
                imageView2.setLayoutParams(imageView2.getLayoutParams());
                ((TextView) helper.getView(R$id.search_result_provider_subject_title)).setMaxLines(2);
            }
        } else {
            ImageView imageView3 = (ImageView) helper.getView(R$id.search_result_provider_subject_cover);
            Resources resources2 = imageView3.getResources();
            Intrinsics.g(resources2, "getResources(...)");
            if (com.transsion.search.f.e(resources2)) {
                imageView3.getLayoutParams().width = a0.a(160.0f);
                imageView3.getLayoutParams().height = a0.a(90.0f);
            } else {
                imageView3.getLayoutParams().width = a0.a(80.0f);
                imageView3.getLayoutParams().height = a0.a(45.0f);
            }
            imageView3.setLayoutParams(imageView3.getLayoutParams());
            ((TextView) helper.getView(R$id.search_result_provider_subject_title)).setMaxLines(1);
        }
        ej.f.a aVar = ej.f.f61882a;
        ej.f.b bVarM = aVar.m(k());
        Subject subject5 = item.getSubject();
        if (subject5 == null || (cover2 = subject5.getCover()) == null || (url = cover2.getUrl()) == null) {
            url = "";
        }
        ej.f.b bVarM2 = bVarM.g(url).m(a0.a(80.0f));
        Subject subject6 = item.getSubject();
        if (subject6 == null || (cover = subject6.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
            thumbnail = "";
        }
        bVarM2.l(thumbnail).d((ImageView) helper.getView(R$id.search_result_provider_subject_cover));
        ImageView imageView4 = (ImageView) helper.getView(R$id.iv_vip_type);
        Subject subject7 = item.getSubject();
        int i11 = 8;
        if (subject7 == null || (vipInfo = subject7.getVipInfo()) == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
            imageView4.setVisibility(8);
        } else {
            imageView4.setVisibility(0);
            ej.f.b bVarM3 = aVar.m(k());
            VipInfo vipInfo2 = item.getSubject().getVipInfo();
            if (vipInfo2 == null || (memberIcon = vipInfo2.getMemberIcon()) == null) {
                memberIcon = "";
            }
            bVarM3.g(memberIcon).i(R$drawable.icon_subject_premium).d(imageView4);
        }
        TextView textView = (TextView) helper.getView(R$id.search_result_provider_subject_corner);
        Subject subject8 = item.getSubject();
        String corner = subject8 != null ? subject8.getCorner() : null;
        if (corner == null || corner.length() == 0) {
            jg.c.h(textView);
        } else {
            Subject subject9 = item.getSubject();
            textView.setText(subject9 != null ? subject9.getCorner() : null);
            jg.c.k(textView);
        }
        int i12 = R$id.search_result_provider_subject_title;
        Subject subject10 = item.getSubject();
        helper.setText(i12, subject10 != null ? subject10.getTitle() : null);
        final ImageView imageView5 = (ImageView) helper.getView(R$id.search_result_provider_subject_play);
        imageView5.setOnClickListener(new View.OnClickListener() { // from class: vq.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.A(item, imageView5, this, helper, view);
            }
        });
        t tVar = t.f652a;
        if (tVar.b() && (subject3 = item.getSubject()) != null && subject3.isJumpBrowser()) {
            imageView5.setVisibility(0);
            imageView5.setImageResource(com.transsion.search.R$drawable.ic_result_arrow);
        } else if (!tVar.b() && (subject2 = item.getSubject()) != null && subject2.isJumpBrowser()) {
            imageView5.setVisibility(4);
        } else if (!tVar.b() || (subject = item.getSubject()) == null || subject.isShortTV()) {
            imageView5.setVisibility(0);
            imageView5.setImageResource(com.transsion.search.R$drawable.ic_result_download);
        } else {
            imageView5.setVisibility(0);
            imageView5.setImageResource(com.transsion.search.R$drawable.ic_result_play);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Context contextK = k();
        Subject subject11 = item.getSubject();
        ImageSpan imageSpanA = com.transsion.search.f.a(contextK, com.transsion.moviedetailapi.g.a(subject11 != null ? subject11.getSubjectType() : null));
        spannableStringBuilder.append((CharSequence) "￼");
        spannableStringBuilder.setSpan(imageSpanA, 0, 1, 33);
        spannableStringBuilder.append((CharSequence) "￼");
        spannableStringBuilder.setSpan(com.transsion.search.f.b(k()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        Subject subject12 = item.getSubject();
        if ((subject12 != null ? subject12.getImdbRate() : null) != null && !item.getSubject().isMusicType()) {
            ImageSpan imageSpanA2 = com.transsion.search.f.a(k(), com.transsion.search.R$drawable.ic_search_result_star);
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.setSpan(imageSpanA2, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) " ");
            spannableStringBuilder.append((CharSequence) item.getSubject().getImdbRate());
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(h.a(R$color.yellow_60));
            String imdbRate = item.getSubject().getImdbRate();
            spannableStringBuilder.setSpan(foregroundColorSpan, spannableStringBuilder.length() - (imdbRate != null ? imdbRate.length() : 0), spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.setSpan(com.transsion.search.f.b(k()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        Subject subject13 = item.getSubject();
        if ((subject13 != null ? subject13.getReleaseDate() : null) != null) {
            String releaseDate = item.getSubject().getReleaseDate();
            String strSubstring = releaseDate != null ? releaseDate : "";
            if (strSubstring.length() >= 4) {
                strSubstring = strSubstring.substring(0, 4);
                Intrinsics.g(strSubstring, "substring(...)");
            }
            spannableStringBuilder.append((CharSequence) strSubstring);
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.setSpan(com.transsion.search.f.b(k()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        Subject subject14 = item.getSubject();
        if ((subject14 != null ? subject14.getCountryName() : null) != null) {
            spannableStringBuilder.append((CharSequence) item.getSubject().getCountryName());
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.setSpan(com.transsion.search.f.b(k()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        Subject subject15 = item.getSubject();
        if ((subject15 != null ? subject15.getGenre() : null) != null) {
            String genre = item.getSubject().getGenre();
            if (genre == null || (listL = StringsKt.S0(genre, new String[]{","}, false, 0, 6, null)) == null) {
                listL = CollectionsKt.l();
            }
            if (!listL.isEmpty()) {
                spannableStringBuilder.append((CharSequence) listL.get(0));
            }
        }
        ((TextView) helper.getView(R$id.search_result_provider_subject_brief)).setText(spannableStringBuilder);
        TextView textView2 = (TextView) helper.getView(R$id.search_result_provider_subject_website);
        Subject subject16 = item.getSubject();
        if (subject16 != null && subject16.isJumpBrowser()) {
            i11 = 0;
        }
        textView2.setVisibility(i11);
    }
}
