package hp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.CustomPublishHeader;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RelativeLayout f64725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f64726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CustomPublishHeader f64727c;

    private b(RelativeLayout relativeLayout, FrameLayout frameLayout, CustomPublishHeader customPublishHeader) {
        this.f64725a = relativeLayout;
        this.f64726b = frameLayout;
        this.f64727c = customPublishHeader;
    }

    public static b a(View view) {
        int i11 = R$id.fl_content;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.sv_title_bar;
            CustomPublishHeader customPublishHeader = (CustomPublishHeader) g4.b.a(view, i11);
            if (customPublishHeader != null) {
                return new b((RelativeLayout) view, frameLayout, customPublishHeader);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_film_review, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f64725a;
    }
}
