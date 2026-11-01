package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f62571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f62572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayoutCompat f62573c;

    private a(LinearLayoutCompat linearLayoutCompat, FrameLayout frameLayout, LinearLayoutCompat linearLayoutCompat2) {
        this.f62571a = linearLayoutCompat;
        this.f62572b = frameLayout;
        this.f62573c = linearLayoutCompat2;
    }

    public static a a(View view) {
        int i11 = R$id.flComments;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
        }
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
        return new a(linearLayoutCompat, frameLayout, linearLayoutCompat);
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_dev, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f62571a;
    }
}
