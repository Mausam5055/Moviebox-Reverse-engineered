package py;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class u0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f72934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Group f72935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f72936c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f72937d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TnTextView f72938e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TnTextView f72939f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final BLView f72940g;

    private u0(View view, Group group, AppCompatImageView appCompatImageView, RecyclerView recyclerView, TnTextView tnTextView, TnTextView tnTextView2, BLView bLView) {
        this.f72934a = view;
        this.f72935b = group;
        this.f72936c = appCompatImageView;
        this.f72937d = recyclerView;
        this.f72938e = tnTextView;
        this.f72939f = tnTextView2;
        this.f72940g = bLView;
    }

    public static u0 a(View view) {
        int i11 = R$id.group_refresh;
        Group group = (Group) g4.b.a(view, i11);
        if (group != null) {
            i11 = R$id.iv_refresh_progress;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.tv_refresh;
                    TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                    if (tnTextView != null) {
                        i11 = R$id.tv_title;
                        TnTextView tnTextView2 = (TnTextView) g4.b.a(view, i11);
                        if (tnTextView2 != null) {
                            i11 = R$id.v_refresh;
                            BLView bLView = (BLView) g4.b.a(view, i11);
                            if (bLView != null) {
                                return new u0(view, group, appCompatImageView, recyclerView, tnTextView, tnTextView2, bLView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f72934a;
    }
}
