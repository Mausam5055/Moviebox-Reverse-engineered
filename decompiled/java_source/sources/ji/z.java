package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class z implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f66198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f66199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatEditText f66200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f66201d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f66202e;

    private z(LinearLayout linearLayout, Button button, AppCompatEditText appCompatEditText, RecyclerView recyclerView, TextView textView) {
        this.f66198a = linearLayout;
        this.f66199b = button;
        this.f66200c = appCompatEditText;
        this.f66201d = recyclerView;
        this.f66202e = textView;
    }

    public static z a(View view) {
        int i11 = R$id.btn;
        Button button = (Button) g4.b.a(view, i11);
        if (button != null) {
            i11 = R$id.etScene;
            AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
            if (appCompatEditText != null) {
                i11 = R$id.f41778rv;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.tvTitle;
                    TextView textView = (TextView) g4.b.a(view, i11);
                    if (textView != null) {
                        return new z((LinearLayout) view, button, appCompatEditText, recyclerView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static z c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static z d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_scene_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f66198a;
    }
}
