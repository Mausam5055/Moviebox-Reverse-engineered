package kk;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.task.wheel.LuckyWheelView;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f66855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f66856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LuckyWheelView f66857c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f66858d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f66859e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f66860f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f66861g;

    private f(LinearLayout linearLayout, AppCompatImageView appCompatImageView, LuckyWheelView luckyWheelView, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.f66855a = linearLayout;
        this.f66856b = appCompatImageView;
        this.f66857c = luckyWheelView;
        this.f66858d = linearLayout2;
        this.f66859e = textView;
        this.f66860f = textView2;
        this.f66861g = textView3;
    }

    public static f a(View view) {
        int i11 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.luckyWheel;
            LuckyWheelView luckyWheelView = (LuckyWheelView) g4.b.a(view, i11);
            if (luckyWheelView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i11 = R$id.spinNowBtn;
                TextView textView = (TextView) g4.b.a(view, i11);
                if (textView != null) {
                    i11 = R$id.tvTitle1;
                    TextView textView2 = (TextView) g4.b.a(view, i11);
                    if (textView2 != null) {
                        i11 = R$id.tvTitle2;
                        TextView textView3 = (TextView) g4.b.a(view, i11);
                        if (textView3 != null) {
                            return new f(linearLayout, appCompatImageView, luckyWheelView, linearLayout, textView, textView2, textView3);
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
        return this.f66855a;
    }
}
