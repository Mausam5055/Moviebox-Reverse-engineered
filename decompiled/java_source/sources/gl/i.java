package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLConstraintLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLConstraintLayout f63718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EditText f63719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f63720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f63721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImageView f63722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImageView f63723f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final RecyclerView f63724g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BLConstraintLayout f63725h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f63726i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f63727j;

    private i(BLConstraintLayout bLConstraintLayout, EditText editText, ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, RecyclerView recyclerView, BLConstraintLayout bLConstraintLayout2, View view, TextView textView) {
        this.f63718a = bLConstraintLayout;
        this.f63719b = editText;
        this.f63720c = constraintLayout;
        this.f63721d = imageView;
        this.f63722e = imageView2;
        this.f63723f = imageView3;
        this.f63724g = recyclerView;
        this.f63725h = bLConstraintLayout2;
        this.f63726i = view;
        this.f63727j = textView;
    }

    public static i a(View view) {
        View viewA;
        int i11 = R$id.etSearch;
        EditText editText = (EditText) g4.b.a(view, i11);
        if (editText != null) {
            i11 = R$id.header;
            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
            if (constraintLayout != null) {
                i11 = R$id.ivClear;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null) {
                    i11 = R$id.ivClose;
                    ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                    if (imageView2 != null) {
                        i11 = R$id.ivSearch;
                        ImageView imageView3 = (ImageView) g4.b.a(view, i11);
                        if (imageView3 != null) {
                            i11 = R$id.rvCountries;
                            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                            if (recyclerView != null) {
                                i11 = R$id.searchBar;
                                BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) g4.b.a(view, i11);
                                if (bLConstraintLayout != null && (viewA = g4.b.a(view, (i11 = R$id.topBorder))) != null) {
                                    i11 = R$id.tvTitle;
                                    TextView textView = (TextView) g4.b.a(view, i11);
                                    if (textView != null) {
                                        return new i((BLConstraintLayout) view, editText, constraintLayout, imageView, imageView2, imageView3, recyclerView, bLConstraintLayout, viewA, textView);
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

    public static i c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_tv_country_select, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLConstraintLayout getRoot() {
        return this.f63718a;
    }
}
