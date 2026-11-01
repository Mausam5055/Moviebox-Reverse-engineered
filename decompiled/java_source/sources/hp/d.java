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
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f64742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f64743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f64744c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ProgressBar f64745d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f64746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayout f64747f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayout f64748g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CustomHeader f64749h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f64750i;

    private d(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ProgressBar progressBar, RecyclerView recyclerView, LinearLayout linearLayout, LinearLayout linearLayout2, CustomHeader customHeader, TextView textView3) {
        this.f64742a = constraintLayout;
        this.f64743b = textView;
        this.f64744c = textView2;
        this.f64745d = progressBar;
        this.f64746e = recyclerView;
        this.f64747f = linearLayout;
        this.f64748g = linearLayout2;
        this.f64749h = customHeader;
        this.f64750i = textView3;
    }

    public static d a(View view) {
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
                                        return new d((ConstraintLayout) view, textView, textView2, progressBar, recyclerView, linearLayout, linearLayout2, customHeader, textView3);
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

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_select_image, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f64742a;
    }
}
