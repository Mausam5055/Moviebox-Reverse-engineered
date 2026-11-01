package wm;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.member.R$id;
import com.transsion.member.view.MemberBasicView;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f77741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f77742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f77743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final MemberBasicView f77744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConstraintLayout f77745e;

    private f(FrameLayout frameLayout, ImageView imageView, AppCompatTextView appCompatTextView, MemberBasicView memberBasicView, ConstraintLayout constraintLayout) {
        this.f77741a = frameLayout;
        this.f77742b = imageView;
        this.f77743c = appCompatTextView;
        this.f77744d = memberBasicView;
        this.f77745e = constraintLayout;
    }

    public static f a(View view) {
        int i11 = R$id.iv_member_close;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.iv_premium;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.member_basic_view;
                MemberBasicView memberBasicView = (MemberBasicView) g4.b.a(view, i11);
                if (memberBasicView != null) {
                    i11 = R$id.titleLayout;
                    ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                    if (constraintLayout != null) {
                        return new f((FrameLayout) view, imageView, appCompatTextView, memberBasicView, constraintLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f77741a;
    }
}
