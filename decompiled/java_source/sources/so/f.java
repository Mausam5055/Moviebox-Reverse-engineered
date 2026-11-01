package so;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f75509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f75510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f75511c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f75512d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f75513e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f75514f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f75515g;

    private f(LinearLayout linearLayout, ImageView imageView, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, View view) {
        this.f75509a = linearLayout;
        this.f75510b = imageView;
        this.f75511c = linearLayout2;
        this.f75512d = textView;
        this.f75513e = textView2;
        this.f75514f = textView3;
        this.f75515g = view;
    }

    public static f a(View view) {
        View viewA;
        int i11 = R$id.ivRight;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i11 = R$id.tvCountDown;
            TextView textView = (TextView) g4.b.a(view, i11);
            if (textView != null) {
                i11 = R$id.tvEnterAd;
                TextView textView2 = (TextView) g4.b.a(view, i11);
                if (textView2 != null) {
                    i11 = R$id.tvGoAdFree;
                    TextView textView3 = (TextView) g4.b.a(view, i11);
                    if (textView3 != null && (viewA = g4.b.a(view, (i11 = R$id.view))) != null) {
                        return new f(linearLayout, imageView, linearLayout, textView, textView2, textView3, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f75509a;
    }
}
