package rq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f74632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f74633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EditText f74634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f74635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f74636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProgressBar f74637f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f74638g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final RecyclerView f74639h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f74640i;

    private e(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, EditText editText, ImageView imageView, View view, ProgressBar progressBar, TextView textView, RecyclerView recyclerView, TextView textView2) {
        this.f74632a = constraintLayout;
        this.f74633b = appCompatImageView;
        this.f74634c = editText;
        this.f74635d = imageView;
        this.f74636e = view;
        this.f74637f = progressBar;
        this.f74638g = textView;
        this.f74639h = recyclerView;
        this.f74640i = textView2;
    }

    public static e a(View view) {
        View viewA;
        int i11 = R$id.clearIV;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.inputET;
            EditText editText = (EditText) g4.b.a(view, i11);
            if (editText != null) {
                i11 = R$id.iv_cancel;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null && (viewA = g4.b.a(view, (i11 = R$id.line))) != null) {
                    i11 = R$id.loadView;
                    ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                    if (progressBar != null) {
                        i11 = R$id.recentTV;
                        TextView textView = (TextView) g4.b.a(view, i11);
                        if (textView != null) {
                            i11 = R$id.f51939rv;
                            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                            if (recyclerView != null) {
                                i11 = R$id.searchTV;
                                TextView textView2 = (TextView) g4.b.a(view, i11);
                                if (textView2 != null) {
                                    return new e((ConstraintLayout) view, appCompatImageView, editText, imageView, viewA, progressBar, textView, recyclerView, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_publish_work, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f74632a;
    }
}
