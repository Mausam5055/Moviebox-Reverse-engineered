package th;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$id;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f76215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f76216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TitleLayout f76217c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayoutCompat f76218d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f76219e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f76220f;

    private b(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, TitleLayout titleLayout, LinearLayoutCompat linearLayoutCompat2, TextView textView, TextView textView2) {
        this.f76215a = linearLayoutCompat;
        this.f76216b = appCompatImageView;
        this.f76217c = titleLayout;
        this.f76218d = linearLayoutCompat2;
        this.f76219e = textView;
        this.f76220f = textView2;
    }

    public static b a(View view) {
        int i11 = R$id.ivDefaultImage;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.llTitle;
            TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
            if (titleLayout != null) {
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
                i11 = R$id.tvDesc;
                TextView textView = (TextView) g4.b.a(view, i11);
                if (textView != null) {
                    i11 = R$id.tv_retry;
                    TextView textView2 = (TextView) g4.b.a(view, i11);
                    if (textView2 != null) {
                        return new b(linearLayoutCompat, appCompatImageView, titleLayout, linearLayoutCompat, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f76215a;
    }
}
