package so;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class q0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f75685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f75686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f75687c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f75688d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f75689e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f75690f;

    private q0(LinearLayout linearLayout, ImageView imageView, LinearLayout linearLayout2, TextView textView, TextView textView2, View view) {
        this.f75685a = linearLayout;
        this.f75686b = imageView;
        this.f75687c = linearLayout2;
        this.f75688d = textView;
        this.f75689e = textView2;
        this.f75690f = view;
    }

    public static q0 a(View view) {
        View viewA;
        int i11 = R$id.ivRight;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i11 = R$id.tvCountDown;
            TextView textView = (TextView) g4.b.a(view, i11);
            if (textView != null) {
                i11 = R$id.tvGetAdFree;
                TextView textView2 = (TextView) g4.b.a(view, i11);
                if (textView2 != null && (viewA = g4.b.a(view, (i11 = R$id.view))) != null) {
                    return new q0(linearLayout, imageView, linearLayout, textView, textView2, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f75685a;
    }
}
