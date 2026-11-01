package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f77428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f77429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f77430c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CardView f77431d;

    private k(ConstraintLayout constraintLayout, ImageView imageView, AppCompatTextView appCompatTextView, CardView cardView) {
        this.f77428a = constraintLayout;
        this.f77429b = imageView;
        this.f77430c = appCompatTextView;
        this.f77431d = cardView;
    }

    public static k a(View view) {
        int i11 = R$id.ad_icon;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.ad_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.icon_cardview;
                CardView cardView = (CardView) g4.b.a(view, i11);
                if (cardView != null) {
                    return new k((ConstraintLayout) view, imageView, appCompatTextView, cardView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static k c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.stage_task_ssp_native_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f77428a;
    }
}
