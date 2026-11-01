package bj;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.audio.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f16565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f16566c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f16567d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f16568e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f16569f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f16570g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatImageView f16571h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatImageView f16572i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ProgressBar f16573j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f16574k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f16575l;

    private d(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, ConstraintLayout constraintLayout4, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, ProgressBar progressBar, TextView textView, TextView textView2) {
        this.f16564a = constraintLayout;
        this.f16565b = constraintLayout2;
        this.f16566c = constraintLayout3;
        this.f16567d = constraintLayout4;
        this.f16568e = appCompatImageView;
        this.f16569f = appCompatImageView2;
        this.f16570g = appCompatImageView3;
        this.f16571h = appCompatImageView4;
        this.f16572i = appCompatImageView5;
        this.f16573j = progressBar;
        this.f16574k = textView;
        this.f16575l = textView2;
    }

    public static d a(View view) {
        int i11 = R$id.clExpansion;
        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
        if (constraintLayout != null) {
            i11 = R$id.clPackUp;
            ConstraintLayout constraintLayout2 = (ConstraintLayout) g4.b.a(view, i11);
            if (constraintLayout2 != null) {
                ConstraintLayout constraintLayout3 = (ConstraintLayout) view;
                i11 = R$id.iv_history;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.iv_next;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView2 != null) {
                        i11 = R$id.ivPackUp;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView3 != null) {
                            i11 = R$id.iv_play;
                            AppCompatImageView appCompatImageView4 = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView4 != null) {
                                i11 = R$id.iv_remove;
                                AppCompatImageView appCompatImageView5 = (AppCompatImageView) g4.b.a(view, i11);
                                if (appCompatImageView5 != null) {
                                    i11 = R$id.pbSubject;
                                    ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                    if (progressBar != null) {
                                        i11 = R$id.tvAudioName;
                                        TextView textView = (TextView) g4.b.a(view, i11);
                                        if (textView != null) {
                                            i11 = R$id.tvAudioTime;
                                            TextView textView2 = (TextView) g4.b.a(view, i11);
                                            if (textView2 != null) {
                                                return new d(constraintLayout3, constraintLayout, constraintLayout2, constraintLayout3, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, progressBar, textView, textView2);
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

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16564a;
    }
}
