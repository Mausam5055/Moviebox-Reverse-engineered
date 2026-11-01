package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class v0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f62953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLView f62954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TnTextView f62955d;

    private v0(ConstraintLayout constraintLayout, RecyclerView recyclerView, BLView bLView, TnTextView tnTextView) {
        this.f62952a = constraintLayout;
        this.f62953b = recyclerView;
        this.f62954c = bLView;
        this.f62955d = tnTextView;
    }

    public static v0 a(View view) {
        int i11 = R$id.deviceList;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.deviceListBackground;
            BLView bLView = (BLView) g4.b.a(view, i11);
            if (bLView != null) {
                i11 = R$id.linkedDevicesTitle;
                TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                if (tnTextView != null) {
                    return new v0((ConstraintLayout) view, recyclerView, bLView, tnTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static v0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_device_management_devices, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62952a;
    }
}
