package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.CustomTextViewGroup;

/* JADX INFO: loaded from: classes5.dex */
public final class q implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17450a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f17451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f17452c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f17453d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CustomTextViewGroup f17454e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f17455f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final CustomTextViewGroup f17456g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CustomTextViewGroup f17457h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f17458i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f17459j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CustomTextViewGroup f17460k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final View f17461l;

    private q(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, LinearLayout linearLayout, CustomTextViewGroup customTextViewGroup, AppCompatTextView appCompatTextView, CustomTextViewGroup customTextViewGroup2, CustomTextViewGroup customTextViewGroup3, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, CustomTextViewGroup customTextViewGroup4, View view) {
        this.f17450a = constraintLayout;
        this.f17451b = frameLayout;
        this.f17452c = appCompatImageView;
        this.f17453d = linearLayout;
        this.f17454e = customTextViewGroup;
        this.f17455f = appCompatTextView;
        this.f17456g = customTextViewGroup2;
        this.f17457h = customTextViewGroup3;
        this.f17458i = appCompatTextView2;
        this.f17459j = appCompatTextView3;
        this.f17460k = customTextViewGroup4;
        this.f17461l = view;
    }

    public static q a(View view) {
        View viewA;
        int i11 = R$id.extension_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.ivMovieContent;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.ll_score;
                LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                if (linearLayout != null) {
                    i11 = R$id.tv_category;
                    CustomTextViewGroup customTextViewGroup = (CustomTextViewGroup) g4.b.a(view, i11);
                    if (customTextViewGroup != null) {
                        i11 = R$id.tvDes;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.tv_duration;
                            CustomTextViewGroup customTextViewGroup2 = (CustomTextViewGroup) g4.b.a(view, i11);
                            if (customTextViewGroup2 != null) {
                                i11 = R$id.tv_genre;
                                CustomTextViewGroup customTextViewGroup3 = (CustomTextViewGroup) g4.b.a(view, i11);
                                if (customTextViewGroup3 != null) {
                                    i11 = R$id.tvMovieInfo;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView2 != null) {
                                        i11 = R$id.tvMovieTitle;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView3 != null) {
                                            i11 = R$id.tv_students;
                                            CustomTextViewGroup customTextViewGroup4 = (CustomTextViewGroup) g4.b.a(view, i11);
                                            if (customTextViewGroup4 != null && (viewA = g4.b.a(view, (i11 = R$id.v_detail_hot_zone))) != null) {
                                                return new q((ConstraintLayout) view, frameLayout, appCompatImageView, linearLayout, customTextViewGroup, appCompatTextView, customTextViewGroup2, customTextViewGroup3, appCompatTextView2, appCompatTextView3, customTextViewGroup4, viewA);
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

    public static q c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subject_edu_header, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17450a;
    }
}
