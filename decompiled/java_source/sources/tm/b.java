package tm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.baseui.widget.text.GradientTextView;
import com.transsion.mbwidget.R$id;
import com.transsion.mbwidget.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f76284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f76285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f76286c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final GradientTextView f76287d;

    private b(LinearLayout linearLayout, TextView textView, ImageView imageView, GradientTextView gradientTextView) {
        this.f76284a = linearLayout;
        this.f76285b = textView;
        this.f76286c = imageView;
        this.f76287d = gradientTextView;
    }

    public static b a(View view) {
        int i11 = R$id.addTv;
        TextView textView = (TextView) g4.b.a(view, i11);
        if (textView != null) {
            i11 = R$id.closeIV;
            ImageView imageView = (ImageView) g4.b.a(view, i11);
            if (imageView != null) {
                i11 = R$id.tipsTv;
                GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                if (gradientTextView != null) {
                    return new b((LinearLayout) view, textView, imageView, gradientTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_widget_add, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f76284a;
    }
}
