package so;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLLinearLayout;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class e0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLLinearLayout f75496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f75497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f75498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f75499d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f75500e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayout f75501f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f75502g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f75503h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f75504i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f75505j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f75506k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final View f75507l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final View f75508m;

    private e0(BLLinearLayout bLLinearLayout, ConstraintLayout constraintLayout, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, AppCompatImageView appCompatImageView, LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, View view, View view2, View view3) {
        this.f75496a = bLLinearLayout;
        this.f75497b = constraintLayout;
        this.f75498c = shapeableImageView;
        this.f75499d = shapeableImageView2;
        this.f75500e = appCompatImageView;
        this.f75501f = linearLayout;
        this.f75502g = appCompatTextView;
        this.f75503h = appCompatTextView2;
        this.f75504i = appCompatTextView3;
        this.f75505j = appCompatTextView4;
        this.f75506k = view;
        this.f75507l = view2;
        this.f75508m = view3;
    }

    public static e0 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i11 = R$id.cl_subject_content;
        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
        if (constraintLayout != null) {
            i11 = R$id.iv_room_cover;
            ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView != null) {
                i11 = R$id.iv_subject_cover;
                ShapeableImageView shapeableImageView2 = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView2 != null) {
                    i11 = R$id.iv_subject_tag;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.ll_room_tag;
                        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                        if (linearLayout != null) {
                            i11 = R$id.tv_room_tag;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.tv_subject_date;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView2 != null) {
                                    i11 = R$id.tv_subject_genre;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView3 != null) {
                                        i11 = R$id.tv_subject_name;
                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView4 != null && (viewA = g4.b.a(view, (i11 = R$id.v_subject_line_1))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_subject_line_2))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.v_subject_room_line))) != null) {
                                            return new e0((BLLinearLayout) view, constraintLayout, shapeableImageView, shapeableImageView2, appCompatImageView, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, viewA, viewA2, viewA3);
                                        }
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

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLLinearLayout getRoot() {
        return this.f75496a;
    }
}
