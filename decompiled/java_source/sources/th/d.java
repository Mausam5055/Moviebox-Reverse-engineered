package th;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;
import com.tn.lib.widget.TnTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f76228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f76229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TnTextView f76230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayoutCompat f76231d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TitleLayout f76232e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TnTextView f76233f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TnTextView f76234g;

    private d(View view, AppCompatImageView appCompatImageView, TnTextView tnTextView, LinearLayoutCompat linearLayoutCompat, TitleLayout titleLayout, TnTextView tnTextView2, TnTextView tnTextView3) {
        this.f76228a = view;
        this.f76229b = appCompatImageView;
        this.f76230c = tnTextView;
        this.f76231d = linearLayoutCompat;
        this.f76232e = titleLayout;
        this.f76233f = tnTextView2;
        this.f76234g = tnTextView3;
    }

    public static d a(View view) {
        int i11 = R$id.bg_no_connection;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.go_to_setting;
            TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
            if (tnTextView != null) {
                i11 = R$id.ll_no_connection_tip;
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                if (linearLayoutCompat != null) {
                    i11 = R$id.ll_title;
                    TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                    if (titleLayout != null) {
                        i11 = R$id.no_connection_title;
                        TnTextView tnTextView2 = (TnTextView) g4.b.a(view, i11);
                        if (tnTextView2 != null) {
                            i11 = R$id.retry;
                            TnTextView tnTextView3 = (TnTextView) g4.b.a(view, i11);
                            if (tnTextView3 != null) {
                                return new d(view, appCompatImageView, tnTextView, linearLayoutCompat, titleLayout, tnTextView2, tnTextView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static d b(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R$layout.view_no_connection, viewGroup);
        return a(viewGroup);
    }

    @Override // g4.a
    public View getRoot() {
        return this.f76228a;
    }
}
