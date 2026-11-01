package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f77417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CardView f77418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CardView f77419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f77420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImageView f77421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f77422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f77423g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ProgressBar f77424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ProgressBar f77425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f77426j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f77427k;

    private j(ConstraintLayout constraintLayout, CardView cardView, CardView cardView2, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, ProgressBar progressBar, ProgressBar progressBar2, TextView textView3, TextView textView4) {
        this.f77417a = constraintLayout;
        this.f77418b = cardView;
        this.f77419c = cardView2;
        this.f77420d = imageView;
        this.f77421e = imageView2;
        this.f77422f = textView;
        this.f77423g = textView2;
        this.f77424h = progressBar;
        this.f77425i = progressBar2;
        this.f77426j = textView3;
        this.f77427k = textView4;
    }

    public static j a(View view) {
        int i11 = R$id.dot_1;
        CardView cardView = (CardView) g4.b.a(view, i11);
        if (cardView != null) {
            i11 = R$id.dot_2;
            CardView cardView2 = (CardView) g4.b.a(view, i11);
            if (cardView2 != null) {
                i11 = R$id.point_icon_1;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null) {
                    i11 = R$id.point_icon_2;
                    ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                    if (imageView2 != null) {
                        i11 = R$id.point_text_1;
                        TextView textView = (TextView) g4.b.a(view, i11);
                        if (textView != null) {
                            i11 = R$id.point_text_2;
                            TextView textView2 = (TextView) g4.b.a(view, i11);
                            if (textView2 != null) {
                                i11 = R$id.progress_1;
                                ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                if (progressBar != null) {
                                    i11 = R$id.progress_2;
                                    ProgressBar progressBar2 = (ProgressBar) g4.b.a(view, i11);
                                    if (progressBar2 != null) {
                                        i11 = R$id.title_1;
                                        TextView textView3 = (TextView) g4.b.a(view, i11);
                                        if (textView3 != null) {
                                            i11 = R$id.title_2;
                                            TextView textView4 = (TextView) g4.b.a(view, i11);
                                            if (textView4 != null) {
                                                return new j((ConstraintLayout) view, cardView, cardView2, imageView, imageView2, textView, textView2, progressBar, progressBar2, textView3, textView4);
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

    public static j c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.stage_task_progress_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f77417a;
    }
}
