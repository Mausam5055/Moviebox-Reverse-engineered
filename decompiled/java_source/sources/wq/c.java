package wq;

import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.c0;
import com.blankj.utilcode.util.u;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.g;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.search.bean.SuggestEntity;
import ej.f;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 1;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.fragment_search_suggest_movie_layout;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, SuggestEntity item) {
        String url;
        Integer seNum;
        String strQ1;
        Cover cover;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        f.b bVarM = f.f61882a.m(k());
        Subject subject = item.getSubject();
        String str = "";
        if (subject == null || (cover = subject.getCover()) == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        bVarM.g(url).d((ImageView) helper.getView(R$id.ivCover));
        int i11 = R$id.tvTitle;
        com.transsion.search.fragment.suggest.d.Companion aVar = com.transsion.search.fragment.suggest.d.INSTANCE;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        com.transsion.search.fragment.suggest.d dVar = baseProviderMultiAdapterG instanceof com.transsion.search.fragment.suggest.d ? (com.transsion.search.fragment.suggest.d) baseProviderMultiAdapterG : null;
        if (dVar != null && (strQ1 = dVar.getMKeyWord()) != null) {
            str = strQ1;
        }
        Subject subject2 = item.getSubject();
        helper.setText(i11, aVar.a(str, subject2 != null ? subject2.getTitle() : null));
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tvDes);
        if (appCompatTextView != null) {
            Subject subject3 = item.getSubject();
            Date dateL = c0.l(subject3 != null ? subject3.getReleaseDate() : null, "yyyy-MM-dd");
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(dateL);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) String.valueOf(calendar.get(1)));
            Subject subject4 = item.getSubject();
            String[] strArrA = u.a(subject4 != null ? subject4.getGenre() : null, ",");
            if (strArrA != null) {
                for (String str2 : strArrA) {
                    spannableStringBuilder.append((CharSequence) " · ").append((CharSequence) str2);
                }
            }
            Subject subject5 = item.getSubject();
            if (!TextUtils.isEmpty(subject5 != null ? subject5.getCountryName() : null)) {
                SpannableStringBuilder spannableStringBuilderAppend = spannableStringBuilder.append((CharSequence) " · ");
                Subject subject6 = item.getSubject();
                spannableStringBuilderAppend.append((CharSequence) (subject6 != null ? subject6.getCountryName() : null));
            }
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) "  ");
            spannableStringBuilder2.append((CharSequence) spannableStringBuilder.toString());
            Subject subject7 = item.getSubject();
            int iA = g.a(subject7 != null ? subject7.getSubjectType() : null);
            spannableStringBuilder2.setSpan(Build.VERSION.SDK_INT >= 29 ? new ImageSpan(appCompatTextView.getContext(), iA, 2) : new ImageSpan(appCompatTextView.getContext(), iA, 1), 0, 1, 34);
            appCompatTextView.setText(spannableStringBuilder2);
        }
        int i12 = R$id.tvScore;
        Subject subject8 = item.getSubject();
        helper.setText(i12, String.valueOf(subject8 != null ? subject8.getImdbRate() : null));
        Subject subject9 = item.getSubject();
        int iIntValue = (subject9 == null || (seNum = subject9.getSeNum()) == null) ? 0 : seNum.intValue();
        helper.setGone(R$id.tvSeasons, iIntValue <= 1);
        String string = k().getString(R$string.seasons, String.valueOf(iIntValue));
        Intrinsics.g(string, "getString(...)");
        helper.setText(R$id.tvSeasons, z(string));
    }

    public final String z(String input) {
        Intrinsics.h(input, "input");
        List listS0 = StringsKt.S0(input, new String[]{" "}, false, 0, 6, null);
        if (listS0.size() != 2) {
            return "";
        }
        String lowerCase = (listS0.get(1) + " " + listS0.get(0)).toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }
}
