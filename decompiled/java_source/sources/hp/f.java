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
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f64754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProgressBar f64755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f64756c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f64757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f64758e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CustomHeader f64759f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f64760g;

    private f(ConstraintLayout constraintLayout, ProgressBar progressBar, RecyclerView recyclerView, LinearLayout linearLayout, LinearLayout linearLayout2, CustomHeader customHeader, TextView textView) {
        this.f64754a = constraintLayout;
        this.f64755b = progressBar;
        this.f64756c = recyclerView;
        this.f64757d = linearLayout;
        this.f64758e = linearLayout2;
        this.f64759f = customHeader;
        this.f64760g = textView;
    }

    public static f a(View view) {
        int i11 = R$id.select_video_loading;
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
                            TextView textView = (TextView) g4.b.a(view, i11);
                            if (textView != null) {
                                return new f((ConstraintLayout) view, progressBar, recyclerView, linearLayout, linearLayout2, customHeader, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_select_music, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f64754a;
    }
}
