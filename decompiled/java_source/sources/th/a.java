package th;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f76212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f76213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TitleLayout f76214c;

    private a(ConstraintLayout constraintLayout, FrameLayout frameLayout, TitleLayout titleLayout) {
        this.f76212a = constraintLayout;
        this.f76213b = frameLayout;
        this.f76214c = titleLayout;
    }

    public static a a(View view) {
        int i11 = R$id.container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.tool_bar;
            TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
            if (titleLayout != null) {
                return new a((ConstraintLayout) view, frameLayout, titleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_fragment_title, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f76212a;
    }
}
