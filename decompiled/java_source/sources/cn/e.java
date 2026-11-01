package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.CustomTextViewGroup;
import com.transsion.moviedetail.view.InfoExtendView;

/* JADX INFO: loaded from: classes5.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Flow f17339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InfoExtendView f17340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f17341d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f17342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CustomTextViewGroup f17343f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f17344g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CustomTextViewGroup f17345h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CustomTextViewGroup f17346i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayoutCompat f17347j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f17348k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final CustomTextViewGroup f17349l;

    private e(ConstraintLayout constraintLayout, Flow flow, InfoExtendView infoExtendView, AppCompatImageView appCompatImageView, LinearLayout linearLayout, CustomTextViewGroup customTextViewGroup, AppCompatImageView appCompatImageView2, CustomTextViewGroup customTextViewGroup2, CustomTextViewGroup customTextViewGroup3, LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, CustomTextViewGroup customTextViewGroup4) {
        this.f17338a = constraintLayout;
        this.f17339b = flow;
        this.f17340c = infoExtendView;
        this.f17341d = appCompatImageView;
        this.f17342e = linearLayout;
        this.f17343f = customTextViewGroup;
        this.f17344g = appCompatImageView2;
        this.f17345h = customTextViewGroup2;
        this.f17346i = customTextViewGroup3;
        this.f17347j = linearLayoutCompat;
        this.f17348k = appCompatTextView;
        this.f17349l = customTextViewGroup4;
    }

    public static e a(View view) {
        int i11 = R$id.flow;
        Flow flow = (Flow) g4.b.a(view, i11);
        if (flow != null) {
            i11 = R$id.infoExtendView;
            InfoExtendView infoExtendView = (InfoExtendView) g4.b.a(view, i11);
            if (infoExtendView != null) {
                i11 = R$id.ivMovieContent;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.ll_score;
                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                    if (linearLayout != null) {
                        i11 = R$id.tv_category;
                        CustomTextViewGroup customTextViewGroup = (CustomTextViewGroup) g4.b.a(view, i11);
                        if (customTextViewGroup != null) {
                            i11 = R$id.tv_close;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView2 != null) {
                                i11 = R$id.tv_duration;
                                CustomTextViewGroup customTextViewGroup2 = (CustomTextViewGroup) g4.b.a(view, i11);
                                if (customTextViewGroup2 != null) {
                                    i11 = R$id.tv_genre;
                                    CustomTextViewGroup customTextViewGroup3 = (CustomTextViewGroup) g4.b.a(view, i11);
                                    if (customTextViewGroup3 != null) {
                                        i11 = R$id.tv_header_toolbar;
                                        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                                        if (linearLayoutCompat != null) {
                                            i11 = R$id.tvMovieTitle;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView != null) {
                                                i11 = R$id.tv_students;
                                                CustomTextViewGroup customTextViewGroup4 = (CustomTextViewGroup) g4.b.a(view, i11);
                                                if (customTextViewGroup4 != null) {
                                                    return new e((ConstraintLayout) view, flow, infoExtendView, appCompatImageView, linearLayout, customTextViewGroup, appCompatImageView2, customTextViewGroup2, customTextViewGroup3, linearLayoutCompat, appCompatTextView, customTextViewGroup4);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_edu_info_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17338a;
    }
}
