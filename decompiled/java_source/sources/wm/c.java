package wm;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.member.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f77715a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f77716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f77717c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f77718d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f77719e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f77720f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final RecyclerView f77721g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f77722h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f77723i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f77724j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f77725k;

    private c(FrameLayout frameLayout, View view, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3, View view2) {
        this.f77715a = frameLayout;
        this.f77716b = view;
        this.f77717c = constraintLayout;
        this.f77718d = constraintLayout2;
        this.f77719e = appCompatImageView;
        this.f77720f = appCompatImageView2;
        this.f77721g = recyclerView;
        this.f77722h = textView;
        this.f77723i = textView2;
        this.f77724j = textView3;
        this.f77725k = view2;
    }

    public static c a(View view) {
        View viewA;
        int i11 = R$id.MeBg1;
        View viewA2 = g4.b.a(view, i11);
        if (viewA2 != null) {
            i11 = R$id.MeBg2;
            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
            if (constraintLayout != null) {
                i11 = R$id.clRoot;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) g4.b.a(view, i11);
                if (constraintLayout2 != null) {
                    i11 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.ivPremium;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView2 != null) {
                            i11 = R$id.rvMemberRights;
                            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                            if (recyclerView != null) {
                                i11 = R$id.tvGetAd;
                                TextView textView = (TextView) g4.b.a(view, i11);
                                if (textView != null) {
                                    i11 = R$id.tvPay;
                                    TextView textView2 = (TextView) g4.b.a(view, i11);
                                    if (textView2 != null) {
                                        i11 = R$id.tvTitle;
                                        TextView textView3 = (TextView) g4.b.a(view, i11);
                                        if (textView3 != null && (viewA = g4.b.a(view, (i11 = R$id.viewBtnBg))) != null) {
                                            return new c((FrameLayout) view, viewA2, constraintLayout, constraintLayout2, appCompatImageView, appCompatImageView2, recyclerView, textView, textView2, textView3, viewA);
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
    public FrameLayout getRoot() {
        return this.f77715a;
    }
}
