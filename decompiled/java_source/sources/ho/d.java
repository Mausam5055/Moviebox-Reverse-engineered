package ho;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.player.longvideo.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f64568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f64569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f64570c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f64571d;

    private d(LinearLayout linearLayout, TextView textView, TextView textView2, LinearLayout linearLayout2) {
        this.f64568a = linearLayout;
        this.f64569b = textView;
        this.f64570c = textView2;
        this.f64571d = linearLayout2;
    }

    public static d a(View view) {
        int i11 = R$id.tv_loading;
        TextView textView = (TextView) g4.b.a(view, i11);
        if (textView != null) {
            i11 = R$id.tv_speed;
            TextView textView2 = (TextView) g4.b.a(view, i11);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new d(linearLayout, textView, textView2, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f64568a;
    }
}
