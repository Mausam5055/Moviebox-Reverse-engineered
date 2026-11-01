package hp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.LoadingAnimView;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.ObservableScrollView;
import com.transsion.publish.view.operation.OperationBarView;
import com.transsion.publish.view.operation.OperationVerticalBarView;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RelativeLayout f64778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BubbleTextView f64779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EditText f64780c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final EditText f64781d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f64782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FrameLayout f64783f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ImageView f64784g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImageView f64785h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RelativeLayout f64786i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayout f64787j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LoadingAnimView f64788k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final OperationVerticalBarView f64789l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final OperationBarView f64790m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final RatingBar f64791n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final RelativeLayout f64792o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final RelativeLayout f64793p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final RelativeLayout f64794q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final RecyclerView f64795r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final RecyclerView f64796s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ObservableScrollView f64797t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final TextView f64798u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final TextView f64799v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final TextView f64800w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final View f64801x;

    private h(RelativeLayout relativeLayout, BubbleTextView bubbleTextView, EditText editText, EditText editText2, FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView, ImageView imageView2, RelativeLayout relativeLayout2, LinearLayout linearLayout, LoadingAnimView loadingAnimView, OperationVerticalBarView operationVerticalBarView, OperationBarView operationBarView, RatingBar ratingBar, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RecyclerView recyclerView, RecyclerView recyclerView2, ObservableScrollView observableScrollView, TextView textView, TextView textView2, TextView textView3, View view) {
        this.f64778a = relativeLayout;
        this.f64779b = bubbleTextView;
        this.f64780c = editText;
        this.f64781d = editText2;
        this.f64782e = frameLayout;
        this.f64783f = frameLayout2;
        this.f64784g = imageView;
        this.f64785h = imageView2;
        this.f64786i = relativeLayout2;
        this.f64787j = linearLayout;
        this.f64788k = loadingAnimView;
        this.f64789l = operationVerticalBarView;
        this.f64790m = operationBarView;
        this.f64791n = ratingBar;
        this.f64792o = relativeLayout3;
        this.f64793p = relativeLayout4;
        this.f64794q = relativeLayout5;
        this.f64795r = recyclerView;
        this.f64796s = recyclerView2;
        this.f64797t = observableScrollView;
        this.f64798u = textView;
        this.f64799v = textView2;
        this.f64800w = textView3;
        this.f64801x = view;
    }

    public static h a(View view) {
        View viewA;
        int i11 = R$id.activity_tip;
        BubbleTextView bubbleTextView = (BubbleTextView) g4.b.a(view, i11);
        if (bubbleTextView != null) {
            i11 = R$id.et_des;
            EditText editText = (EditText) g4.b.a(view, i11);
            if (editText != null) {
                i11 = R$id.et_title;
                EditText editText2 = (EditText) g4.b.a(view, i11);
                if (editText2 != null) {
                    i11 = R$id.fl_top;
                    FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout != null) {
                        i11 = R$id.fr_title;
                        FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                        if (frameLayout2 != null) {
                            i11 = R$id.iv_cover;
                            ImageView imageView = (ImageView) g4.b.a(view, i11);
                            if (imageView != null) {
                                i11 = R$id.iv_cover_ic;
                                ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                                if (imageView2 != null) {
                                    i11 = R$id.ll_list;
                                    RelativeLayout relativeLayout = (RelativeLayout) g4.b.a(view, i11);
                                    if (relativeLayout != null) {
                                        i11 = R$id.ll_top;
                                        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                        if (linearLayout != null) {
                                            i11 = R$id.loading_view;
                                            LoadingAnimView loadingAnimView = (LoadingAnimView) g4.b.a(view, i11);
                                            if (loadingAnimView != null) {
                                                i11 = R$id.oper_vertical_view;
                                                OperationVerticalBarView operationVerticalBarView = (OperationVerticalBarView) g4.b.a(view, i11);
                                                if (operationVerticalBarView != null) {
                                                    i11 = R$id.oper_view;
                                                    OperationBarView operationBarView = (OperationBarView) g4.b.a(view, i11);
                                                    if (operationBarView != null) {
                                                        i11 = R$id.rb_star;
                                                        RatingBar ratingBar = (RatingBar) g4.b.a(view, i11);
                                                        if (ratingBar != null) {
                                                            i11 = R$id.rl_add_cover;
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) g4.b.a(view, i11);
                                                            if (relativeLayout2 != null) {
                                                                RelativeLayout relativeLayout3 = (RelativeLayout) view;
                                                                i11 = R$id.rl_star;
                                                                RelativeLayout relativeLayout4 = (RelativeLayout) g4.b.a(view, i11);
                                                                if (relativeLayout4 != null) {
                                                                    i11 = R$id.rv_link;
                                                                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                                                    if (recyclerView != null) {
                                                                        i11 = R$id.rv_select;
                                                                        RecyclerView recyclerView2 = (RecyclerView) g4.b.a(view, i11);
                                                                        if (recyclerView2 != null) {
                                                                            i11 = R$id.scrollView;
                                                                            ObservableScrollView observableScrollView = (ObservableScrollView) g4.b.a(view, i11);
                                                                            if (observableScrollView != null) {
                                                                                i11 = R$id.tv_click_stars;
                                                                                TextView textView = (TextView) g4.b.a(view, i11);
                                                                                if (textView != null) {
                                                                                    i11 = R$id.tv_star_tips;
                                                                                    TextView textView2 = (TextView) g4.b.a(view, i11);
                                                                                    if (textView2 != null) {
                                                                                        i11 = R$id.tv_title_tips;
                                                                                        TextView textView3 = (TextView) g4.b.a(view, i11);
                                                                                        if (textView3 != null && (viewA = g4.b.a(view, (i11 = R$id.view_line2))) != null) {
                                                                                            return new h(relativeLayout3, bubbleTextView, editText, editText2, frameLayout, frameLayout2, imageView, imageView2, relativeLayout, linearLayout, loadingAnimView, operationVerticalBarView, operationBarView, ratingBar, relativeLayout2, relativeLayout3, relativeLayout4, recyclerView, recyclerView2, observableScrollView, textView, textView2, textView3, viewA);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_film_review, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f64778a;
    }
}
