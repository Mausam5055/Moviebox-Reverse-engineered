package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f77347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f77348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EditText f77349c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final EditText f77350d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EditText f77351e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EditText f77352f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final EditText f77353g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final EditText f77354h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatImageView f77355i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayout f77356j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinearLayout f77357k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final LinearLayout f77358l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ScrollView f77359m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f77360n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ConstraintLayout f77361o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f77362p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final TextView f77363q;

    private c(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, EditText editText6, AppCompatImageView appCompatImageView, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, ScrollView scrollView, AppCompatTextView appCompatTextView2, ConstraintLayout constraintLayout2, TextView textView, TextView textView2) {
        this.f77347a = constraintLayout;
        this.f77348b = appCompatTextView;
        this.f77349c = editText;
        this.f77350d = editText2;
        this.f77351e = editText3;
        this.f77352f = editText4;
        this.f77353g = editText5;
        this.f77354h = editText6;
        this.f77355i = appCompatImageView;
        this.f77356j = linearLayout;
        this.f77357k = linearLayout2;
        this.f77358l = linearLayout3;
        this.f77359m = scrollView;
        this.f77360n = appCompatTextView2;
        this.f77361o = constraintLayout2;
        this.f77362p = textView;
        this.f77363q = textView2;
    }

    public static c a(View view) {
        int i11 = R$id.btn_submit;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.et_address;
            EditText editText = (EditText) g4.b.a(view, i11);
            if (editText != null) {
                i11 = R$id.et_alt_phone;
                EditText editText2 = (EditText) g4.b.a(view, i11);
                if (editText2 != null) {
                    i11 = R$id.et_email;
                    EditText editText3 = (EditText) g4.b.a(view, i11);
                    if (editText3 != null) {
                        i11 = R$id.et_fullname;
                        EditText editText4 = (EditText) g4.b.a(view, i11);
                        if (editText4 != null) {
                            i11 = R$id.et_main_phone;
                            EditText editText5 = (EditText) g4.b.a(view, i11);
                            if (editText5 != null) {
                                i11 = R$id.et_postal;
                                EditText editText6 = (EditText) g4.b.a(view, i11);
                                if (editText6 != null) {
                                    i11 = R$id.iv_back;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                                    if (appCompatImageView != null) {
                                        i11 = R$id.ll_alt_phone_cc;
                                        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                        if (linearLayout != null) {
                                            i11 = R$id.ll_main_phone_cc;
                                            LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                                            if (linearLayout2 != null) {
                                                i11 = R$id.ll_main_phone_container;
                                                LinearLayout linearLayout3 = (LinearLayout) g4.b.a(view, i11);
                                                if (linearLayout3 != null) {
                                                    i11 = R$id.scrollView;
                                                    ScrollView scrollView = (ScrollView) g4.b.a(view, i11);
                                                    if (scrollView != null) {
                                                        i11 = R$id.title;
                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                        if (appCompatTextView2 != null) {
                                                            i11 = R$id.titleLayout;
                                                            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                                                            if (constraintLayout != null) {
                                                                i11 = R$id.tv_alt_phone_cc;
                                                                TextView textView = (TextView) g4.b.a(view, i11);
                                                                if (textView != null) {
                                                                    i11 = R$id.tv_main_phone_cc;
                                                                    TextView textView2 = (TextView) g4.b.a(view, i11);
                                                                    if (textView2 != null) {
                                                                        return new c((ConstraintLayout) view, appCompatTextView, editText, editText2, editText3, editText4, editText5, editText6, appCompatImageView, linearLayout, linearLayout2, linearLayout3, scrollView, appCompatTextView2, constraintLayout, textView, textView2);
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

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_claim_reward, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f77347a;
    }
}
