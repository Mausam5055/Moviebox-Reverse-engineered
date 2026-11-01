package py;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class x0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f72968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f72969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Group f72970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f72971d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f72972e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f72973f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f72974g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f72975h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f72976i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f72977j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f72978k;

    private x0(View view, ConstraintLayout constraintLayout, Group group, AppCompatImageView appCompatImageView, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.f72968a = view;
        this.f72969b = constraintLayout;
        this.f72970c = group;
        this.f72971d = appCompatImageView;
        this.f72972e = linearLayout;
        this.f72973f = textView;
        this.f72974g = textView2;
        this.f72975h = textView3;
        this.f72976i = textView4;
        this.f72977j = textView5;
        this.f72978k = textView6;
    }

    public static x0 a(View view) {
        int i11 = R$id.cl_permission;
        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
        if (constraintLayout != null) {
            i11 = R$id.group_permission;
            Group group = (Group) g4.b.a(view, i11);
            if (group != null) {
                i11 = R$id.iv_icon;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.ll_content;
                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                    if (linearLayout != null) {
                        i11 = R$id.tv_available_size;
                        TextView textView = (TextView) g4.b.a(view, i11);
                        if (textView != null) {
                            i11 = R$id.tv_change;
                            TextView textView2 = (TextView) g4.b.a(view, i11);
                            if (textView2 != null) {
                                i11 = R$id.tv_path_name;
                                TextView textView3 = (TextView) g4.b.a(view, i11);
                                if (textView3 != null) {
                                    i11 = R$id.tv_permission_btn;
                                    TextView textView4 = (TextView) g4.b.a(view, i11);
                                    if (textView4 != null) {
                                        i11 = R$id.tv_permission_tips;
                                        TextView textView5 = (TextView) g4.b.a(view, i11);
                                        if (textView5 != null) {
                                            i11 = R$id.tv_permission_title;
                                            TextView textView6 = (TextView) g4.b.a(view, i11);
                                            if (textView6 != null) {
                                                return new x0(view, constraintLayout, group, appCompatImageView, linearLayout, textView, textView2, textView3, textView4, textView5, textView6);
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

    @Override // g4.a
    public View getRoot() {
        return this.f72968a;
    }
}
