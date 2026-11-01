package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class o implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f62832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f62833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f62834c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f62835d;

    private o(LinearLayoutCompat linearLayoutCompat, TextView textView, TextView textView2, TextView textView3) {
        this.f62832a = linearLayoutCompat;
        this.f62833b = textView;
        this.f62834c = textView2;
        this.f62835d = textView3;
    }

    public static o a(View view) {
        int i11 = R$id.btnEdit;
        TextView textView = (TextView) g4.b.a(view, i11);
        if (textView != null) {
            i11 = R$id.btnFollowers;
            TextView textView2 = (TextView) g4.b.a(view, i11);
            if (textView2 != null) {
                i11 = R$id.btnFollowing;
                TextView textView3 = (TextView) g4.b.a(view, i11);
                if (textView3 != null) {
                    return new o((LinearLayoutCompat) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_user_center, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f62832a;
    }
}
