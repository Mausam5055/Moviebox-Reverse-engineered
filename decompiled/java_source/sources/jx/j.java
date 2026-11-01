package jx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f66445a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f66446b;

    private j(LinearLayout linearLayout, TextView textView) {
        this.f66445a = linearLayout;
        this.f66446b = textView;
    }

    public static j a(View view) {
        int i11 = R$id.tv_loading;
        TextView textView = (TextView) g4.b.a(view, i11);
        if (textView != null) {
            return new j((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static j c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_loading, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f66445a;
    }
}
