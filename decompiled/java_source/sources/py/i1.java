package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class i1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f72762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f72763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f72764c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f72765d;

    private i1(LinearLayout linearLayout, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, TextView textView) {
        this.f72762a = linearLayout;
        this.f72763b = appCompatImageView;
        this.f72764c = linearLayout2;
        this.f72765d = textView;
    }

    public static i1 a(View view) {
        int i11 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            int i12 = R$id.tvTip;
            TextView textView = (TextView) g4.b.a(view, i12);
            if (textView != null) {
                return new i1(linearLayout, appCompatImageView, linearLayout, textView);
            }
            i11 = i12;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static i1 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_lottery_tip_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f72762a;
    }
}
