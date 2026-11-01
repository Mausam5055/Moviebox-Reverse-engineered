package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f69695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f69696c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ProgressBar f69697d;

    private a(ConstraintLayout constraintLayout, TextView textView, View view, ProgressBar progressBar) {
        this.f69694a = constraintLayout;
        this.f69695b = textView;
        this.f69696c = view;
        this.f69697d = progressBar;
    }

    public static a a(View view) {
        View viewA;
        int i11 = R$id.tvLoading;
        TextView textView = (TextView) g4.b.a(view, i11);
        if (textView != null && (viewA = g4.b.a(view, (i11 = R$id.viewBg))) != null) {
            i11 = R$id.viewLoad;
            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
            if (progressBar != null) {
                return new a((ConstraintLayout) view, textView, viewA, progressBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static a c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.pay_order_id_dialog_loading, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69694a;
    }
}
