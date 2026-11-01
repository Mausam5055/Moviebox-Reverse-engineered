package oq;

import android.content.Context;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.c0;
import com.blankj.utilcode.util.u;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.view.CornerTextView;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.g;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.search.bean.SearchSubject;
import ej.f;
import java.util.Calendar;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;
import oh.h;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f71101e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f71102f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f71103g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f71104h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f71105i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f71106j;

    public d(Context context) {
        Intrinsics.h(context, "context");
        int iA = a0.a(104.0f);
        this.f71101e = iA;
        int iA2 = a0.a(149.0f);
        this.f71102f = iA2;
        int iA3 = a0.a(48.0f);
        this.f71103g = iA3;
        int iE = h.f71021a.e(context);
        this.f71104h = iE;
        int i11 = (iE - iA3) / 3;
        this.f71105i = i11;
        this.f71106j = (int) (i11 * ((iA2 * 1.0f) / iA));
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 0;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_works_layout_vertical;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, SearchSubject item) {
        String url;
        String thumbnail;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Context context = helper.itemView.getContext();
        ImageView imageView = (ImageView) helper.itemView.findViewById(R$id.ivCover);
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).height = this.f71106j;
        ((ViewGroup.MarginLayoutParams) bVar).width = this.f71105i;
        Cover cover = item.getCover();
        if (cover != null && (url = cover.getUrl()) != null) {
            f.a aVar = f.f61882a;
            Intrinsics.e(context);
            f.b bVarC = aVar.m(context).g(url).m(this.f71105i).c(this.f71106j);
            Cover cover2 = item.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            f.b bVarL = bVarC.l(thumbnail);
            Intrinsics.e(imageView);
            bVarL.d(imageView);
        }
        helper.setText(R$id.tvSubject, item.getTitle());
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tvSubjectYear);
        if (appCompatTextView != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) "  ");
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
                    spannableStringBuilder.append((CharSequence) " / ").append((CharSequence) str);
                }
            }
            String countryName = item.getCountryName();
            if (countryName != null && countryName.length() != 0) {
                spannableStringBuilder.append((CharSequence) " / ").append((CharSequence) item.getCountryName());
            }
            int iA = g.a(item.getSubjectType());
            spannableStringBuilder.setSpan(Build.VERSION.SDK_INT >= 29 ? new ImageSpan(context, iA, 2) : new ImageSpan(context, iA, 1), 0, 1, 34);
            appCompatTextView.setText(spannableStringBuilder);
        }
        Integer seNum = item.getSeNum();
        int iIntValue = seNum != null ? seNum.intValue() : 0;
        helper.setGone(R$id.tvSeasons, iIntValue < 2);
        helper.setText(R$id.tvSeasons, context.getString(R$string.seasons, String.valueOf(iIntValue)));
        ((CornerTextView) helper.getView(R$id.ivSearchCorner)).setTextWithType(item.getCorner(), item.getSubjectType());
    }
}
