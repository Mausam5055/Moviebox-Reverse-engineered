package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class x implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f66188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f66189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f66190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f66191d;

    private x(LinearLayout linearLayout, Button button, RecyclerView recyclerView, TextView textView) {
        this.f66188a = linearLayout;
        this.f66189b = button;
        this.f66190c = recyclerView;
        this.f66191d = textView;
    }

    public static x a(View view) {
        int i11 = R$id.btn;
        Button button = (Button) g4.b.a(view, i11);
        if (button != null) {
            i11 = R$id.f41778rv;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.tvTitle;
                TextView textView = (TextView) g4.b.a(view, i11);
                if (textView != null) {
                    return new x((LinearLayout) view, button, recyclerView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static x c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static x d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_plans_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f66188a;
    }
}
