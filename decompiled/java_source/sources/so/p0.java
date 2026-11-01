package so;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class p0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f75672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f75673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f75674c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f75675d;

    private p0(LinearLayout linearLayout, TextView textView, TextView textView2, LinearLayout linearLayout2) {
        this.f75672a = linearLayout;
        this.f75673b = textView;
        this.f75674c = textView2;
        this.f75675d = linearLayout2;
    }

    public static p0 a(View view) {
        int i11 = R$id.tv_loading;
        TextView textView = (TextView) g4.b.a(view, i11);
        if (textView != null) {
            i11 = R$id.tv_speed;
            TextView textView2 = (TextView) g4.b.a(view, i11);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new p0(linearLayout, textView, textView2, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f75672a;
    }
}
