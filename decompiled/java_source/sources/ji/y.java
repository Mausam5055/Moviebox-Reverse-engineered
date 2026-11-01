package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class y implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f66192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f66193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Button f66194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Button f66195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f66196e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f66197f;

    private y(LinearLayoutCompat linearLayoutCompat, Button button, Button button2, Button button3, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f66192a = linearLayoutCompat;
        this.f66193b = button;
        this.f66194c = button2;
        this.f66195d = button3;
        this.f66196e = recyclerView;
        this.f66197f = appCompatTextView;
    }

    public static y a(View view) {
        int i11 = R$id.btn;
        Button button = (Button) g4.b.a(view, i11);
        if (button != null) {
            i11 = R$id.btnLogger;
            Button button2 = (Button) g4.b.a(view, i11);
            if (button2 != null) {
                i11 = R$id.btnRequestDetailLog;
                Button button3 = (Button) g4.b.a(view, i11);
                if (button3 != null) {
                    i11 = R$id.f41778rv;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null) {
                        i11 = R$id.tvConfig;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            return new y((LinearLayoutCompat) view, button, button2, button3, recyclerView, appCompatTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static y c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static y d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_ps_offer_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f66192a;
    }
}
