package wm;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.member.R$id;
import com.transsion.member.view.MemberProView;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f77762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f77763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f77764c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final MemberProView f77765d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConstraintLayout f77766e;

    private i(FrameLayout frameLayout, ImageView imageView, AppCompatTextView appCompatTextView, MemberProView memberProView, ConstraintLayout constraintLayout) {
        this.f77762a = frameLayout;
        this.f77763b = imageView;
        this.f77764c = appCompatTextView;
        this.f77765d = memberProView;
        this.f77766e = constraintLayout;
    }

    public static i a(View view) {
        int i11 = R$id.iv_member_close;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.iv_premium;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.member_pro_view;
                MemberProView memberProView = (MemberProView) g4.b.a(view, i11);
                if (memberProView != null) {
                    i11 = R$id.titleLayout;
                    ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                    if (constraintLayout != null) {
                        return new i((FrameLayout) view, imageView, appCompatTextView, memberProView, constraintLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f77762a;
    }
}
