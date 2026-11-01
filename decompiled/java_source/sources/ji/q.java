package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class q implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f66163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f66164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Button f66165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatEditText f66166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f66167e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RecyclerView f66168f;

    private q(LinearLayout linearLayout, Button button, Button button2, AppCompatEditText appCompatEditText, LinearLayout linearLayout2, RecyclerView recyclerView) {
        this.f66163a = linearLayout;
        this.f66164b = button;
        this.f66165c = button2;
        this.f66166d = appCompatEditText;
        this.f66167e = linearLayout2;
        this.f66168f = recyclerView;
    }

    public static q a(View view) {
        int i11 = R$id.btnCustomInformation;
        Button button = (Button) g4.b.a(view, i11);
        if (button != null) {
            i11 = R$id.btnReset;
            Button button2 = (Button) g4.b.a(view, i11);
            if (button2 != null) {
                i11 = R$id.f41777et;
                AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
                if (appCompatEditText != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i11 = R$id.f41778rv;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null) {
                        return new q(linearLayout, button, button2, appCompatEditText, linearLayout, recyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static q c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_mcc_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f66163a;
    }
}
