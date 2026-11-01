package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17300a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f17301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f17302c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f17303d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f17304e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayout f17305f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final RecyclerView f17306g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NestedScrollView f17307h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ConstraintLayout f17308i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f17309j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f17310k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f17311l;

    private b(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, LinearLayout linearLayout, RecyclerView recyclerView, NestedScrollView nestedScrollView, ConstraintLayout constraintLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView) {
        this.f17300a = constraintLayout;
        this.f17301b = appCompatImageView;
        this.f17302c = appCompatImageView2;
        this.f17303d = appCompatImageView3;
        this.f17304e = appCompatImageView4;
        this.f17305f = linearLayout;
        this.f17306g = recyclerView;
        this.f17307h = nestedScrollView;
        this.f17308i = constraintLayout2;
        this.f17309j = appCompatTextView;
        this.f17310k = appCompatTextView2;
        this.f17311l = textView;
    }

    public static b a(View view) {
        int i11 = R$id.ivBack;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ivCover;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.ivDownload;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView3 != null) {
                    i11 = R$id.ivShare;
                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView4 != null) {
                        i11 = R$id.llContent;
                        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                        if (linearLayout != null) {
                            i11 = R$id.rvStaff;
                            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                            if (recyclerView != null) {
                                i11 = R$id.scrollView;
                                NestedScrollView nestedScrollView = (NestedScrollView) g4.b.a(view, i11);
                                if (nestedScrollView != null) {
                                    i11 = R$id.topLayout;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                                    if (constraintLayout != null) {
                                        i11 = R$id.tvMovieDesc;
                                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView != null) {
                                            i11 = R$id.tvMovieName;
                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView2 != null) {
                                                i11 = R$id.tvStaffTitle;
                                                TextView textView = (TextView) g4.b.a(view, i11);
                                                if (textView != null) {
                                                    return new b((ConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, linearLayout, recyclerView, nestedScrollView, constraintLayout, appCompatTextView, appCompatTextView2, textView);
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

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_movie_poster_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17300a;
    }
}
