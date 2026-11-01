package qv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLTextView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f73705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f73706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f73707c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f73708d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImageView f73709e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLTextView f73710f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f73711g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f73712h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f73713i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f73714j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f73715k;

    private b(LinearLayout linearLayout, ConstraintLayout constraintLayout, View view, FrameLayout frameLayout, ImageView imageView, BLTextView bLTextView, TextView textView, TextView textView2, View view2, View view3, View view4) {
        this.f73705a = linearLayout;
        this.f73706b = constraintLayout;
        this.f73707c = view;
        this.f73708d = frameLayout;
        this.f73709e = imageView;
        this.f73710f = bLTextView;
        this.f73711g = textView;
        this.f73712h = textView2;
        this.f73713i = view2;
        this.f73714j = view3;
        this.f73715k = view4;
    }

    public static b a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        int i11 = R$id.clImmCommentContent;
        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
        if (constraintLayout != null && (viewA = g4.b.a(view, (i11 = R$id.divider))) != null) {
            i11 = R$id.fl_comment_container;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.iv_close;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null) {
                    i11 = R$id.tv_comment;
                    BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                    if (bLTextView != null) {
                        i11 = R$id.tvTitle;
                        TextView textView = (TextView) g4.b.a(view, i11);
                        if (textView != null) {
                            i11 = R$id.tvTitleCount;
                            TextView textView2 = (TextView) g4.b.a(view, i11);
                            if (textView2 != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_bottom))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.vTopLine))) != null && (viewA4 = g4.b.a(view, (i11 = R$id.vTopSpace))) != null) {
                                return new b((LinearLayout) view, constraintLayout, viewA, frameLayout, imageView, bLTextView, textView, textView2, viewA2, viewA3, viewA4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_ugc_imm_video_comment, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f73705a;
    }
}
