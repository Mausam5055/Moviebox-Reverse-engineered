package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class d1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageButton f62614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f62615c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f62616d;

    private d1(LinearLayout linearLayout, AppCompatImageButton appCompatImageButton, LinearLayout linearLayout2, AppCompatTextView appCompatTextView) {
        this.f62613a = linearLayout;
        this.f62614b = appCompatImageButton;
        this.f62615c = linearLayout2;
        this.f62616d = appCompatTextView;
    }

    public static d1 a(View view) {
        int i11 = R$id.btn_back;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) g4.b.a(view, i11);
        if (appCompatImageButton != null) {
            i11 = R$id.rlContent;
            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
            if (linearLayout != null) {
                i11 = R$id.tv_title;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    return new d1((LinearLayout) view, appCompatImageButton, linearLayout, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static d1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.use_activity_webview_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f62613a;
    }
}
