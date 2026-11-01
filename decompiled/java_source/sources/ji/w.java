package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.JsonViewer;

/* JADX INFO: loaded from: classes6.dex */
public final class w implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f66186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JsonViewer f66187b;

    private w(LinearLayout linearLayout, JsonViewer jsonViewer) {
        this.f66186a = linearLayout;
        this.f66187b = jsonViewer;
    }

    public static w a(View view) {
        int i11 = R$id.jsonViewer;
        JsonViewer jsonViewer = (JsonViewer) g4.b.a(view, i11);
        if (jsonViewer != null) {
            return new w((LinearLayout) view, jsonViewer);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static w c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_plan_detail_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f66186a;
    }
}
