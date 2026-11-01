package gv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RelativeLayout f64010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f64011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f64012c;

    private i(RelativeLayout relativeLayout, RecyclerView recyclerView, LinearLayout linearLayout) {
        this.f64010a = relativeLayout;
        this.f64011b = recyclerView;
        this.f64012c = linearLayout;
    }

    public static i a(View view) {
        int i11 = R$id.transfer_sent_file_list;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.transfer_sent_file_list_empty;
            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
            if (linearLayout != null) {
                return new i((RelativeLayout) view, recyclerView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_transfer_sent, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f64010a;
    }
}
