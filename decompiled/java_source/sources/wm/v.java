package wm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.view.MemberBasicView;
import com.transsion.member.view.MemberProView;

/* JADX INFO: loaded from: classes6.dex */
public final class v implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ScrollView f77904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f77905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f77906c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final MemberBasicView f77907d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MemberProView f77908e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayout f77909f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayout f77910g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f77911h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f77912i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f77913j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f77914k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f77915l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final View f77916m;

    private v(ScrollView scrollView, RecyclerView recyclerView, LinearLayout linearLayout, MemberBasicView memberBasicView, MemberProView memberProView, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, View view) {
        this.f77904a = scrollView;
        this.f77905b = recyclerView;
        this.f77906c = linearLayout;
        this.f77907d = memberBasicView;
        this.f77908e = memberProView;
        this.f77909f = linearLayout2;
        this.f77910g = linearLayout3;
        this.f77911h = textView;
        this.f77912i = textView2;
        this.f77913j = textView3;
        this.f77914k = textView4;
        this.f77915l = textView5;
        this.f77916m = view;
    }

    public static v a(View view) {
        View viewA;
        int i11 = R$id.iv_rights_list;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.layout_feedback;
            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
            if (linearLayout != null) {
                i11 = R$id.layout_premium_basic;
                MemberBasicView memberBasicView = (MemberBasicView) g4.b.a(view, i11);
                if (memberBasicView != null) {
                    i11 = R$id.layout_premium_pro;
                    MemberProView memberProView = (MemberProView) g4.b.a(view, i11);
                    if (memberProView != null) {
                        i11 = R$id.layout_user_basic_status;
                        LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                        if (linearLayout2 != null) {
                            i11 = R$id.ll_feature_rights;
                            LinearLayout linearLayout3 = (LinearLayout) g4.b.a(view, i11);
                            if (linearLayout3 != null) {
                                i11 = R$id.tv_agreement_content;
                                TextView textView = (TextView) g4.b.a(view, i11);
                                if (textView != null) {
                                    i11 = R$id.tv_agreement_title;
                                    TextView textView2 = (TextView) g4.b.a(view, i11);
                                    if (textView2 != null) {
                                        i11 = R$id.tv_basic_renew;
                                        TextView textView3 = (TextView) g4.b.a(view, i11);
                                        if (textView3 != null) {
                                            i11 = R$id.tv_feedback;
                                            TextView textView4 = (TextView) g4.b.a(view, i11);
                                            if (textView4 != null) {
                                                i11 = R$id.tv_promo_code;
                                                TextView textView5 = (TextView) g4.b.a(view, i11);
                                                if (textView5 != null && (viewA = g4.b.a(view, (i11 = R$id.view_feedback_divider))) != null) {
                                                    return new v((ScrollView) view, recyclerView, linearLayout, memberBasicView, memberProView, linearLayout2, linearLayout3, textView, textView2, textView3, textView4, textView5, viewA);
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

    public static v c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_premium_content, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ScrollView getRoot() {
        return this.f77904a;
    }
}
