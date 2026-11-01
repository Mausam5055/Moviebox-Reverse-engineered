package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class r implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f69904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f69905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f69906c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f69907d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f69908e;

    private r(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView, TextView textView2) {
        this.f69904a = linearLayout;
        this.f69905b = appCompatTextView;
        this.f69906c = appCompatTextView2;
        this.f69907d = textView;
        this.f69908e = textView2;
    }

    public static r a(View view) {
        int i11 = R$id.btn_primary;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.btn_secondary;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.tv_message;
                TextView textView = (TextView) g4.b.a(view, i11);
                if (textView != null) {
                    i11 = R$id.tv_title;
                    TextView textView2 = (TextView) g4.b.a(view, i11);
                    if (textView2 != null) {
                        return new r((LinearLayout) view, appCompatTextView, appCompatTextView2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static r c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_dialog_alert, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f69904a;
    }
}
