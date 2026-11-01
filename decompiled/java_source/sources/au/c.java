package au;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.subroom.R$id;
import com.transsion.subroom.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f16141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f16142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f16143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f16144d;

    private c(FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f16141a = frameLayout;
        this.f16142b = appCompatImageView;
        this.f16143c = appCompatTextView;
        this.f16144d = appCompatTextView2;
    }

    public static c a(View view) {
        int i11 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.tvMessage;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tvTitle;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    return new c((FrameLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static c c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_warning_message, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f16141a;
    }
}
