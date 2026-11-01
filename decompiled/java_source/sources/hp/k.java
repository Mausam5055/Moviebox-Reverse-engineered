package hp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.CustomHeader;

/* JADX INFO: loaded from: classes6.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f64810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f64811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f64812c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ProgressBar f64813d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f64814e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayout f64815f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayout f64816g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CustomHeader f64817h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f64818i;

    private k(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ProgressBar progressBar, RecyclerView recyclerView, LinearLayout linearLayout, LinearLayout linearLayout2, CustomHeader customHeader, TextView textView3) {
        this.f64810a = constraintLayout;
        this.f64811b = textView;
        this.f64812c = textView2;
        this.f64813d = progressBar;
        this.f64814e = recyclerView;
        this.f64815f = linearLayout;
        this.f64816g = linearLayout2;
        this.f64817h = customHeader;
        this.f64818i = textView3;
    }

    public static k a(View view) {
        int i11 = R$id.confirmTV;
        TextView textView = (TextView) g4.b.a(view, i11);
        if (textView != null) {
            i11 = R$id.selectNumTV;
            TextView textView2 = (TextView) g4.b.a(view, i11);
            if (textView2 != null) {
                i11 = R$id.select_video_loading;
                ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                if (progressBar != null) {
                    i11 = R$id.select_video_recycler;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null) {
                        i11 = R$id.sv_lock_view;
                        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                        if (linearLayout != null) {
                            i11 = R$id.sv_no_content_view;
                            LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                            if (linearLayout2 != null) {
                                i11 = R$id.sv_title_bar;
                                CustomHeader customHeader = (CustomHeader) g4.b.a(view, i11);
                                if (customHeader != null) {
                                    i11 = R$id.sv_tv_grant;
                                    TextView textView3 = (TextView) g4.b.a(view, i11);
                                    if (textView3 != null) {
                                        return new k((ConstraintLayout) view, textView, textView2, progressBar, recyclerView, linearLayout, linearLayout2, customHeader, textView3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.upload_select_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f64810a;
    }
}
