package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class w implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f63857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f63858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f63859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f63860d;

    private w(LinearLayout linearLayout, FrameLayout frameLayout, View view, ConstraintLayout constraintLayout) {
        this.f63857a = linearLayout;
        this.f63858b = frameLayout;
        this.f63859c = view;
        this.f63860d = constraintLayout;
    }

    public static w a(View view) {
        View viewA;
        int i11 = R$id.fl_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null && (viewA = g4.b.a(view, (i11 = R$id.sub_room_header_bg))) != null) {
            i11 = R$id.sub_room_title_layout;
            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
            if (constraintLayout != null) {
                return new w((LinearLayout) view, frameLayout, viewA, constraintLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static w c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f63857a;
    }
}
