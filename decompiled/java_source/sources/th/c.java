package th;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextSwitcher;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f76221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f76222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f76223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CardView f76224d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f76225e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextSwitcher f76226f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f76227g;

    private c(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, CardView cardView, TextView textView, TextSwitcher textSwitcher, TextView textView2) {
        this.f76221a = linearLayout;
        this.f76222b = appCompatImageView;
        this.f76223c = appCompatImageView2;
        this.f76224d = cardView;
        this.f76225e = textView;
        this.f76226f = textSwitcher;
        this.f76227g = textView2;
    }

    public static native c a(View view);

    public static native c c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10);

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public native LinearLayout getRoot();
}
