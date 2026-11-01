package fu;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.Space;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.subtitle.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f62468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f62469c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f62470d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f62471e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Space f62472f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Space f62473g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f62474h;

    private a(ConstraintLayout constraintLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, Space space, Space space2, View view) {
        this.f62467a = constraintLayout;
        this.f62468b = frameLayout;
        this.f62469c = frameLayout2;
        this.f62470d = frameLayout3;
        this.f62471e = frameLayout4;
        this.f62472f = space;
        this.f62473g = space2;
        this.f62474h = view;
    }

    public static a a(View view) {
        View viewA;
        int i11 = R$id.flSearchContainer;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.flStyleContainer;
            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout2 != null) {
                i11 = R$id.fl_subtitle_container;
                FrameLayout frameLayout3 = (FrameLayout) g4.b.a(view, i11);
                if (frameLayout3 != null) {
                    i11 = R$id.flSyncAdjustContainer;
                    FrameLayout frameLayout4 = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout4 != null) {
                        i11 = R$id.guideline_bottom_controller;
                        Space space = (Space) g4.b.a(view, i11);
                        if (space != null) {
                            i11 = R$id.guideline_player;
                            Space space2 = (Space) g4.b.a(view, i11);
                            if (space2 != null && (viewA = g4.b.a(view, (i11 = R$id.v_bg_start))) != null) {
                                return new a((ConstraintLayout) view, frameLayout, frameLayout2, frameLayout3, frameLayout4, space, space2, viewA);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62467a;
    }
}
