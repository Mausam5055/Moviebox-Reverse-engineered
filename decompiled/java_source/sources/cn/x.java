package cn;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.transsion.moviedetail.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class x implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f17529a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f17530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f17531c;

    private x(LinearLayout linearLayout, FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f17529a = linearLayout;
        this.f17530b = frameLayout;
        this.f17531c = frameLayout2;
    }

    public static x a(View view) {
        int i11 = R$id.fl_empty_View;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.fl_room;
            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout2 != null) {
                return new x((LinearLayout) view, frameLayout, frameLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f17529a;
    }
}
