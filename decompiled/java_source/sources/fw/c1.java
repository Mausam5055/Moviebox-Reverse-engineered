package fw;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.usercenter.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class c1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f62601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f62602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f62603d;

    private c1(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3) {
        this.f62600a = constraintLayout;
        this.f62601b = textView;
        this.f62602c = textView2;
        this.f62603d = textView3;
    }

    public static c1 a(View view) {
        int i11 = R$id.tvDes;
        TextView textView = (TextView) g4.b.a(view, i11);
        if (textView != null) {
            i11 = R$id.tvJump;
            TextView textView2 = (TextView) g4.b.a(view, i11);
            if (textView2 != null) {
                i11 = R$id.tvTitle;
                TextView textView3 = (TextView) g4.b.a(view, i11);
                if (textView3 != null) {
                    return new c1((ConstraintLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62600a;
    }
}
