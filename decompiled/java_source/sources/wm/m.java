package wm;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.member.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class m implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f77812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f77813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f77814c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f77815d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f77816e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f77817f;

    private m(LinearLayout linearLayout, ImageView imageView, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.f77812a = linearLayout;
        this.f77813b = imageView;
        this.f77814c = textView;
        this.f77815d = textView2;
        this.f77816e = textView3;
        this.f77817f = textView4;
    }

    public static m a(View view) {
        int i11 = R$id.iv_close;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.tv_pay_btn;
            TextView textView = (TextView) g4.b.a(view, i11);
            if (textView != null) {
                i11 = R$id.tv_pay_cancel_btn;
                TextView textView2 = (TextView) g4.b.a(view, i11);
                if (textView2 != null) {
                    i11 = R$id.tv_pay_failed_content;
                    TextView textView3 = (TextView) g4.b.a(view, i11);
                    if (textView3 != null) {
                        i11 = R$id.tv_pay_failed_title;
                        TextView textView4 = (TextView) g4.b.a(view, i11);
                        if (textView4 != null) {
                            return new m((LinearLayout) view, imageView, textView, textView2, textView3, textView4);
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
        return this.f77812a;
    }
}
