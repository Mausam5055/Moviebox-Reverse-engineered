package ms;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.noober.background.view.BLTextView;
import com.transsion.shorttv.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class q implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f69893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f69894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayoutCompat f69895c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f69896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BLTextView f69897e;

    private q(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, LinearLayoutCompat linearLayoutCompat2, TextView textView, BLTextView bLTextView) {
        this.f69893a = linearLayoutCompat;
        this.f69894b = appCompatImageView;
        this.f69895c = linearLayoutCompat2;
        this.f69896d = textView;
        this.f69897e = bLTextView;
    }

    public static q a(View view) {
        int i11 = R$id.ivDefaultImage;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
            i11 = R$id.tvDesc;
            TextView textView = (TextView) g4.b.a(view, i11);
            if (textView != null) {
                i11 = R$id.tv_retry;
                BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                if (bLTextView != null) {
                    return new q(linearLayoutCompat, appCompatImageView, linearLayoutCompat, textView, bLTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f69893a;
    }
}
