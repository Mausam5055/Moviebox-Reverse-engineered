package py;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f72682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f72683c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f72684d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f72685e;

    private f(FrameLayout frameLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f72681a = frameLayout;
        this.f72682b = appCompatTextView;
        this.f72683c = appCompatTextView2;
        this.f72684d = appCompatTextView3;
        this.f72685e = appCompatTextView4;
    }

    public static f a(View view) {
        int i11 = R$id.btn_no;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.btn_yes;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.tv_tips;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView3 != null) {
                    i11 = R$id.tv_title;
                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView4 != null) {
                        return new f((FrameLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72681a;
    }
}
