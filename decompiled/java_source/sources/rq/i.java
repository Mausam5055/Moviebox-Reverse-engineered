package rq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.speech.SpeechRecognizerView;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f74654a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EditText f74655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f74656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f74657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f74658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SpeechRecognizerView f74659f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ImageView f74660g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameLayout f74661h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f74662i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f74663j;

    private i(ConstraintLayout constraintLayout, EditText editText, ImageView imageView, AppCompatImageView appCompatImageView, LinearLayout linearLayout, SpeechRecognizerView speechRecognizerView, ImageView imageView2, FrameLayout frameLayout, View view, TextView textView) {
        this.f74654a = constraintLayout;
        this.f74655b = editText;
        this.f74656c = imageView;
        this.f74657d = appCompatImageView;
        this.f74658e = linearLayout;
        this.f74659f = speechRecognizerView;
        this.f74660g = imageView2;
        this.f74661h = frameLayout;
        this.f74662i = view;
        this.f74663j = textView;
    }

    public static i a(View view) {
        View viewA;
        int i11 = R$id.comment_input_edit_text;
        EditText editText = (EditText) g4.b.a(view, i11);
        if (editText != null) {
            i11 = R$id.comment_input_search_icon;
            ImageView imageView = (ImageView) g4.b.a(view, i11);
            if (imageView != null) {
                i11 = R$id.iv_cancel;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.ll_top;
                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                    if (linearLayout != null) {
                        i11 = R$id.sRView;
                        SpeechRecognizerView speechRecognizerView = (SpeechRecognizerView) g4.b.a(view, i11);
                        if (speechRecognizerView != null) {
                            i11 = R$id.search_edit_clear;
                            ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                            if (imageView2 != null) {
                                i11 = R$id.search_fragment_container;
                                FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                                if (frameLayout != null && (viewA = g4.b.a(view, (i11 = R$id.top_line))) != null) {
                                    i11 = R$id.tv_search;
                                    TextView textView = (TextView) g4.b.a(view, i11);
                                    if (textView != null) {
                                        return new i((ConstraintLayout) view, editText, imageView, appCompatImageView, linearLayout, speechRecognizerView, imageView2, frameLayout, viewA, textView);
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

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_search_subject, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f74654a;
    }
}
