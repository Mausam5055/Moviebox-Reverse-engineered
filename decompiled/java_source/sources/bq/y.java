package bq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.tn.lib.view.RoomJoinAnimationView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class y implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f16897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Group f16898c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f16899d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b0 f16900e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c0 f16901f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f16902g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BLTextView f16903h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f16904i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f16905j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f16906k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final RoomJoinAnimationView f16907l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final View f16908m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final BLView f16909n;

    private y(ConstraintLayout constraintLayout, FrameLayout frameLayout, Group group, ShapeableImageView shapeableImageView, b0 b0Var, c0 c0Var, AppCompatTextView appCompatTextView, BLTextView bLTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, RoomJoinAnimationView roomJoinAnimationView, View view, BLView bLView) {
        this.f16896a = constraintLayout;
        this.f16897b = frameLayout;
        this.f16898c = group;
        this.f16899d = shapeableImageView;
        this.f16900e = b0Var;
        this.f16901f = c0Var;
        this.f16902g = appCompatTextView;
        this.f16903h = bLTextView;
        this.f16904i = appCompatTextView2;
        this.f16905j = appCompatTextView3;
        this.f16906k = appCompatTextView4;
        this.f16907l = roomJoinAnimationView;
        this.f16908m = view;
        this.f16909n = bLView;
    }

    public static y a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.fl_new_post_cover;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.group_new_post;
            Group group = (Group) g4.b.a(view, i11);
            if (group != null) {
                i11 = R$id.iv_cover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView != null && (viewA = g4.b.a(view, (i11 = R$id.layout_new_post_image))) != null) {
                    b0 b0VarA = b0.a(viewA);
                    i11 = R$id.layout_new_post_video;
                    View viewA3 = g4.b.a(view, i11);
                    if (viewA3 != null) {
                        c0 c0VarA = c0.a(viewA3);
                        i11 = R$id.tv_member;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.tv_new_count;
                            BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                            if (bLTextView != null) {
                                i11 = R$id.tv_new_post_content;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView2 != null) {
                                    i11 = R$id.tv_tag;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView3 != null) {
                                        i11 = R$id.tv_title;
                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView4 != null) {
                                            i11 = R$id.v_join;
                                            RoomJoinAnimationView roomJoinAnimationView = (RoomJoinAnimationView) g4.b.a(view, i11);
                                            if (roomJoinAnimationView != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_line))) != null) {
                                                i11 = R$id.v_new_post_bg;
                                                BLView bLView = (BLView) g4.b.a(view, i11);
                                                if (bLView != null) {
                                                    return new y((ConstraintLayout) view, frameLayout, group, shapeableImageView, b0VarA, c0VarA, appCompatTextView, bLTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, roomJoinAnimationView, viewA2, bLView);
                                                }
                                            }
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

    public static y c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_room_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16896a;
    }
}
