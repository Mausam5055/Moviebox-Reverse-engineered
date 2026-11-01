package py;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.view.CircleProgressBar;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72781a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CircleProgressBar f72782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f72783c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f72784d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f72785e;

    private k(FrameLayout frameLayout, CircleProgressBar circleProgressBar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view) {
        this.f72781a = frameLayout;
        this.f72782b = circleProgressBar;
        this.f72783c = appCompatTextView;
        this.f72784d = appCompatTextView2;
        this.f72785e = view;
    }

    public static k a(View view) {
        View viewA;
        int i11 = R$id.progress_bar;
        CircleProgressBar circleProgressBar = (CircleProgressBar) g4.b.a(view, i11);
        if (circleProgressBar != null) {
            i11 = R$id.tv_progress;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tv_tips;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null && (viewA = g4.b.a(view, (i11 = R$id.v_bg))) != null) {
                    return new k((FrameLayout) view, circleProgressBar, appCompatTextView, appCompatTextView2, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72781a;
    }
}
