package ex;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.version.update.R$id;
import com.transsion.version.update.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f62046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f62047c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f62048d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConstraintLayout f62049e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ScrollView f62050f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f62051g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f62052h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f62053i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f62054j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f62055k;

    private b(LinearLayout linearLayout, TextView textView, TextView textView2, ImageView imageView, ConstraintLayout constraintLayout, ScrollView scrollView, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.f62045a = linearLayout;
        this.f62046b = textView;
        this.f62047c = textView2;
        this.f62048d = imageView;
        this.f62049e = constraintLayout;
        this.f62050f = scrollView;
        this.f62051g = textView3;
        this.f62052h = textView4;
        this.f62053i = textView5;
        this.f62054j = textView6;
        this.f62055k = textView7;
    }

    public static b a(View view) {
        int i11 = R$id.btSkip;
        TextView textView = (TextView) g4.b.a(view, i11);
        if (textView != null) {
            i11 = R$id.btUpdate;
            TextView textView2 = (TextView) g4.b.a(view, i11);
            if (textView2 != null) {
                i11 = R$id.iv_icon;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null) {
                    i11 = R$id.layout_bottom;
                    ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                    if (constraintLayout != null) {
                        i11 = R$id.scrollView;
                        ScrollView scrollView = (ScrollView) g4.b.a(view, i11);
                        if (scrollView != null) {
                            i11 = R$id.tvDetails;
                            TextView textView3 = (TextView) g4.b.a(view, i11);
                            if (textView3 != null) {
                                i11 = R$id.tvName;
                                TextView textView4 = (TextView) g4.b.a(view, i11);
                                if (textView4 != null) {
                                    i11 = R$id.tvSize;
                                    TextView textView5 = (TextView) g4.b.a(view, i11);
                                    if (textView5 != null) {
                                        i11 = R$id.tvTitle;
                                        TextView textView6 = (TextView) g4.b.a(view, i11);
                                        if (textView6 != null) {
                                            i11 = R$id.tvVersion;
                                            TextView textView7 = (TextView) g4.b.a(view, i11);
                                            if (textView7 != null) {
                                                return new b((LinearLayout) view, textView, textView2, imageView, constraintLayout, scrollView, textView3, textView4, textView5, textView6, textView7);
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

    public static b c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_update_layout_white_theme, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f62045a;
    }
}
