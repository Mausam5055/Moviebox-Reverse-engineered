package so;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f75535a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f75536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayoutCompat f75537c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f75538d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f75539e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f75540f;

    private h(FrameLayout frameLayout, ImageView imageView, LinearLayoutCompat linearLayoutCompat, TextView textView, TextView textView2, TextView textView3) {
        this.f75535a = frameLayout;
        this.f75536b = imageView;
        this.f75537c = linearLayoutCompat;
        this.f75538d = textView;
        this.f75539e = textView2;
        this.f75540f = textView3;
    }

    public static h a(View view) {
        int i11 = R$id.ivSelect;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.llSelect;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
            if (linearLayoutCompat != null) {
                i11 = R$id.tvBtnCancel;
                TextView textView = (TextView) g4.b.a(view, i11);
                if (textView != null) {
                    i11 = R$id.tvBtnDownload;
                    TextView textView2 = (TextView) g4.b.a(view, i11);
                    if (textView2 != null) {
                        i11 = R$id.tvTip;
                        TextView textView3 = (TextView) g4.b.a(view, i11);
                        if (textView3 != null) {
                            return new h((FrameLayout) view, imageView, linearLayoutCompat, textView, textView2, textView3);
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
        return this.f75535a;
    }
}
