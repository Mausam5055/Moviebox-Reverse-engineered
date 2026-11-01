package ex;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.version.update.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f62035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f62036c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f62037d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConstraintLayout f62038e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ScrollView f62039f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f62040g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f62041h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f62042i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f62043j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f62044k;

    private a(LinearLayout linearLayout, TextView textView, TextView textView2, ImageView imageView, ConstraintLayout constraintLayout, ScrollView scrollView, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.f62034a = linearLayout;
        this.f62035b = textView;
        this.f62036c = textView2;
        this.f62037d = imageView;
        this.f62038e = constraintLayout;
        this.f62039f = scrollView;
        this.f62040g = textView3;
        this.f62041h = textView4;
        this.f62042i = textView5;
        this.f62043j = textView6;
        this.f62044k = textView7;
    }

    public static a a(View view) {
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
                                                return new a((LinearLayout) view, textView, textView2, imageView, constraintLayout, scrollView, textView3, textView4, textView5, textView6, textView7);
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
    public LinearLayout getRoot() {
        return this.f62034a;
    }
}
