package rq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RelativeLayout f74622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EditText f74623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f74624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f74625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f74626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProgressBar f74627f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final RelativeLayout f74628g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final RecyclerView f74629h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f74630i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f74631j;

    private d(RelativeLayout relativeLayout, EditText editText, ImageView imageView, AppCompatImageView appCompatImageView, LinearLayout linearLayout, ProgressBar progressBar, RelativeLayout relativeLayout2, RecyclerView recyclerView, TextView textView, TextView textView2) {
        this.f74622a = relativeLayout;
        this.f74623b = editText;
        this.f74624c = imageView;
        this.f74625d = appCompatImageView;
        this.f74626e = linearLayout;
        this.f74627f = progressBar;
        this.f74628g = relativeLayout2;
        this.f74629h = recyclerView;
        this.f74630i = textView;
        this.f74631j = textView2;
    }

    public static d a(View view) {
        int i11 = R$id.comment_input_edit_text;
        EditText editText = (EditText) g4.b.a(view, i11);
        if (editText != null) {
            i11 = R$id.iv_cancel;
            ImageView imageView = (ImageView) g4.b.a(view, i11);
            if (imageView != null) {
                i11 = R$id.iv_clear;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.ll_top;
                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                    if (linearLayout != null) {
                        i11 = R$id.load_view;
                        ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                        if (progressBar != null) {
                            i11 = R$id.rl_tips;
                            RelativeLayout relativeLayout = (RelativeLayout) g4.b.a(view, i11);
                            if (relativeLayout != null) {
                                i11 = R$id.f51939rv;
                                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                if (recyclerView != null) {
                                    i11 = R$id.tv_clear;
                                    TextView textView = (TextView) g4.b.a(view, i11);
                                    if (textView != null) {
                                        i11 = R$id.tv_search;
                                        TextView textView2 = (TextView) g4.b.a(view, i11);
                                        if (textView2 != null) {
                                            return new d((RelativeLayout) view, editText, imageView, appCompatImageView, linearLayout, progressBar, relativeLayout, recyclerView, textView, textView2);
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

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_publish_search, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f74622a;
    }
}
