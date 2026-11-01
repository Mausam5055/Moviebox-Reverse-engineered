package wm;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.member.R$id;
import com.transsion.member.view.CheckInView;
import com.transsion.member.view.GradientTextView;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f77746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CheckBox f77747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GradientTextView f77748c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f77749d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f77750e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CheckInView f77751f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f77752g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f77753h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GradientTextView f77754i;

    private g(LinearLayout linearLayout, CheckBox checkBox, GradientTextView gradientTextView, ImageView imageView, AppCompatImageView appCompatImageView, CheckInView checkInView, TextView textView, TextView textView2, GradientTextView gradientTextView2) {
        this.f77746a = linearLayout;
        this.f77747b = checkBox;
        this.f77748c = gradientTextView;
        this.f77749d = imageView;
        this.f77750e = appCompatImageView;
        this.f77751f = checkInView;
        this.f77752g = textView;
        this.f77753h = textView2;
        this.f77754i = gradientTextView2;
    }

    public static g a(View view) {
        int i11 = R$id.dialog_ignore;
        CheckBox checkBox = (CheckBox) g4.b.a(view, i11);
        if (checkBox != null) {
            i11 = R$id.go_purchase_member;
            GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
            if (gradientTextView != null) {
                i11 = R$id.ic_tips;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null) {
                    i11 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.member_check_in_view;
                        CheckInView checkInView = (CheckInView) g4.b.a(view, i11);
                        if (checkInView != null) {
                            i11 = R$id.member_tips;
                            TextView textView = (TextView) g4.b.a(view, i11);
                            if (textView != null) {
                                i11 = R$id.point_tips;
                                TextView textView2 = (TextView) g4.b.a(view, i11);
                                if (textView2 != null) {
                                    i11 = R$id.title;
                                    GradientTextView gradientTextView2 = (GradientTextView) g4.b.a(view, i11);
                                    if (gradientTextView2 != null) {
                                        return new g((LinearLayout) view, checkBox, gradientTextView, imageView, appCompatImageView, checkInView, textView, textView2, gradientTextView2);
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
    public LinearLayout getRoot() {
        return this.f77746a;
    }
}
