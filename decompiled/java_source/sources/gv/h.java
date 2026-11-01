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
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RelativeLayout f64007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f64008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f64009c;

    private h(RelativeLayout relativeLayout, RecyclerView recyclerView, LinearLayout linearLayout) {
        this.f64007a = relativeLayout;
        this.f64008b = recyclerView;
        this.f64009c = linearLayout;
    }

    public static h a(View view) {
        int i11 = R$id.transfer_receive_file_list;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.transfer_sent_file_list_empty;
            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
            if (linearLayout != null) {
                return new h((RelativeLayout) view, recyclerView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_transfer_received, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f64007a;
    }
}
