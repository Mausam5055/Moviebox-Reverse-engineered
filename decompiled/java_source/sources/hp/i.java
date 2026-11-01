package hp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f64802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinearLayout f64803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f64804c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f64805d;

    private i(FrameLayout frameLayout, LinearLayout linearLayout, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f64802a = frameLayout;
        this.f64803b = linearLayout;
        this.f64804c = recyclerView;
        this.f64805d = appCompatTextView;
    }

    public static i a(View view) {
        int i11 = R$id.ll_gps;
        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
        if (linearLayout != null) {
            i11 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.tv_gps_btn;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    return new i((FrameLayout) view, linearLayout, recyclerView, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_select_location, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f64802a;
    }
}
