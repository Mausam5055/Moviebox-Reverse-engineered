package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f62675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Button f62676c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatEditText f62677d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f62678e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RecyclerView f62679f;

    private h(LinearLayout linearLayout, Button button, Button button2, AppCompatEditText appCompatEditText, LinearLayout linearLayout2, RecyclerView recyclerView) {
        this.f62674a = linearLayout;
        this.f62675b = button;
        this.f62676c = button2;
        this.f62677d = appCompatEditText;
        this.f62678e = linearLayout2;
        this.f62679f = recyclerView;
    }

    public static h a(View view) {
        int i11 = R$id.btnCustomInformation;
        Button button = (Button) g4.b.a(view, i11);
        if (button != null) {
            i11 = R$id.btnReset;
            Button button2 = (Button) g4.b.a(view, i11);
            if (button2 != null) {
                i11 = R$id.f56663et;
                AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
                if (appCompatEditText != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i11 = R$id.f56666rv;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null) {
                        return new h(linearLayout, button, button2, appCompatEditText, linearLayout, recyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_mcc, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f62674a;
    }
}
