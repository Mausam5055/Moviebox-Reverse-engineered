package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EditTextWithClear f62605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EditTextWithClear f62606c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final EditTextWithClear f62607d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f62608e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f62609f;

    private d(LinearLayout linearLayout, EditTextWithClear editTextWithClear, EditTextWithClear editTextWithClear2, EditTextWithClear editTextWithClear3, TextView textView, TextView textView2) {
        this.f62604a = linearLayout;
        this.f62605b = editTextWithClear;
        this.f62606c = editTextWithClear2;
        this.f62607d = editTextWithClear3;
        this.f62608e = textView;
        this.f62609f = textView2;
    }

    public static d a(View view) {
        int i11 = R$id.edDeeplink;
        EditTextWithClear editTextWithClear = (EditTextWithClear) g4.b.a(view, i11);
        if (editTextWithClear != null) {
            i11 = R$id.etAppId;
            EditTextWithClear editTextWithClear2 = (EditTextWithClear) g4.b.a(view, i11);
            if (editTextWithClear2 != null) {
                i11 = R$id.etSceneId;
                EditTextWithClear editTextWithClear3 = (EditTextWithClear) g4.b.a(view, i11);
                if (editTextWithClear3 != null) {
                    i11 = R$id.tvApiOpen;
                    TextView textView = (TextView) g4.b.a(view, i11);
                    if (textView != null) {
                        i11 = R$id.tvDpOpen;
                        TextView textView2 = (TextView) g4.b.a(view, i11);
                        if (textView2 != null) {
                            return new d((LinearLayout) view, editTextWithClear, editTextWithClear2, editTextWithClear3, textView, textView2);
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
        View viewInflate = layoutInflater.inflate(R$layout.activity_lab_miniapp_sdk, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f62604a;
    }
}
