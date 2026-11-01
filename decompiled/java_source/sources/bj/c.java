package bj;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.audio.R$id;
import com.transsion.audio.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f16557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f16558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f16559c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayoutCompat f16560d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f16561e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SwipeRefreshLayout f16562f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f16563g;

    private c(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, LinearLayoutCompat linearLayoutCompat2, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, AppCompatTextView appCompatTextView) {
        this.f16557a = linearLayoutCompat;
        this.f16558b = appCompatImageView;
        this.f16559c = shapeableImageView;
        this.f16560d = linearLayoutCompat2;
        this.f16561e = recyclerView;
        this.f16562f = swipeRefreshLayout;
        this.f16563g = appCompatTextView;
    }

    public static c a(View view) {
        int i11 = R$id.iv_enter;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.iv_subject_cover;
            ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView != null) {
                i11 = R$id.ll_subject;
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                if (linearLayoutCompat != null) {
                    i11 = R$id.rv_list;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null) {
                        i11 = R$id.swipe_refresh;
                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) g4.b.a(view, i11);
                        if (swipeRefreshLayout != null) {
                            i11 = R$id.tv_subject_name;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                return new c((LinearLayoutCompat) view, appCompatImageView, shapeableImageView, linearLayoutCompat, recyclerView, swipeRefreshLayout, appCompatTextView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_relate_subject, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f16557a;
    }
}
