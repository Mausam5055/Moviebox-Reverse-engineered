package py;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.viewpager2.widget.ViewPager2;
import com.tn.lib.view.indicator.CircleIndicator;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class o implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f72858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f72859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewPager2 f72860c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CircleIndicator f72861d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f72862e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f72863f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f72864g;

    private o(LinearLayout linearLayout, TextView textView, ViewPager2 viewPager2, CircleIndicator circleIndicator, AppCompatImageView appCompatImageView, TextView textView2, TextView textView3) {
        this.f72858a = linearLayout;
        this.f72859b = textView;
        this.f72860c = viewPager2;
        this.f72861d = circleIndicator;
        this.f72862e = appCompatImageView;
        this.f72863f = textView2;
        this.f72864g = textView3;
    }

    public static o a(View view) {
        int i11 = R$id.guide_desc;
        TextView textView = (TextView) g4.b.a(view, i11);
        if (textView != null) {
            i11 = R$id.guide_pager;
            ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
            if (viewPager2 != null) {
                i11 = R$id.indicator;
                CircleIndicator circleIndicator = (CircleIndicator) g4.b.a(view, i11);
                if (circleIndicator != null) {
                    i11 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.next;
                        TextView textView2 = (TextView) g4.b.a(view, i11);
                        if (textView2 != null) {
                            i11 = R$id.title;
                            TextView textView3 = (TextView) g4.b.a(view, i11);
                            if (textView3 != null) {
                                return new o((LinearLayout) view, textView, viewPager2, circleIndicator, appCompatImageView, textView2, textView3);
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
        return this.f72858a;
    }
}
