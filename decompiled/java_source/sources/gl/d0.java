package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class d0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f63673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f63674c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f63675d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f63676e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FrameLayout f63677f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ImageView f63678g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConstraintLayout f63679h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TitleLayout f63680i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TnTextView f63681j;

    private d0(ConstraintLayout constraintLayout, View view, View view2, RecyclerView recyclerView, FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView, ConstraintLayout constraintLayout2, TitleLayout titleLayout, TnTextView tnTextView) {
        this.f63672a = constraintLayout;
        this.f63673b = view;
        this.f63674c = view2;
        this.f63675d = recyclerView;
        this.f63676e = frameLayout;
        this.f63677f = frameLayout2;
        this.f63678g = imageView;
        this.f63679h = constraintLayout2;
        this.f63680i = titleLayout;
        this.f63681j = tnTextView;
    }

    public static d0 a(View view) {
        View viewA;
        int i11 = R$id.film_list_color_mask;
        View viewA2 = g4.b.a(view, i11);
        if (viewA2 != null && (viewA = g4.b.a(view, (i11 = R$id.film_list_gradient))) != null) {
            i11 = R$id.ranking_category_recycler;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.ranking_error;
                FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                if (frameLayout != null) {
                    i11 = R$id.ranking_list_container;
                    FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout2 != null) {
                        i11 = R$id.ranking_list_cover;
                        ImageView imageView = (ImageView) g4.b.a(view, i11);
                        if (imageView != null) {
                            i11 = R$id.ranking_loading_frame;
                            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                            if (constraintLayout != null) {
                                i11 = R$id.ranking_title;
                                TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                                if (titleLayout != null) {
                                    i11 = R$id.tv_titleText;
                                    TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                                    if (tnTextView != null) {
                                        return new d0((ConstraintLayout) view, viewA2, viewA, recyclerView, frameLayout, frameLayout2, imageView, constraintLayout, titleLayout, tnTextView);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static d0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_ranking, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63672a;
    }
}
