package cy;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.TextView;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.wrapperad.R$drawable;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b0 extends com.transsion.ad.bidding.base.r {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f60941e = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Runnable f60942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f60943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f60944d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends di.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f60946e;

        b(View view) {
            this.f60946e = view;
        }

        @Override // di.a
        public void n(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            b0.this.f60944d = System.currentTimeMillis();
            b0.L(b0.this, this.f60946e, 0L, 2, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    private final void G(View view) {
        this.f60943c = true;
        TextView textView = (TextView) view.findViewById(R$id.call_to_action);
        if (textView == null) {
            return;
        }
        textView.setBackgroundResource(R$drawable.ad_shape_gradient);
        textView.setTextColor(Color.parseColor("#FF000000"));
    }

    private final void K(final View view, long j11) {
        if (this.f60943c) {
            return;
        }
        Runnable runnable = this.f60942b;
        if (runnable != null) {
            view.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: cy.z
            @Override // java.lang.Runnable
            public final void run() {
                b0.M(view, this);
            }
        };
        this.f60942b = runnable2;
        Intrinsics.e(runnable2);
        view.postDelayed(runnable2, j11);
    }

    static /* synthetic */ void L(b0 b0Var, View view, long j11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j11 = 3000;
        }
        b0Var.K(view, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(View view, b0 b0Var) {
        if (view.isAttachedToWindow() && view.isShown()) {
            b0Var.N(view);
        }
    }

    private final void N(View view) {
        if (this.f60943c) {
            return;
        }
        this.f60943c = true;
        final TextView textView = (TextView) view.findViewById(R$id.call_to_action);
        if (textView == null) {
            return;
        }
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(textView, "textColor", new ArgbEvaluator(), Integer.valueOf(Color.parseColor("#CCFFFFFF")), Integer.valueOf(Color.parseColor("#FF000000")));
        objectAnimatorOfObject.setDuration(500L);
        objectAnimatorOfObject.start();
        textView.postDelayed(new Runnable() { // from class: cy.a0
            @Override // java.lang.Runnable
            public final void run() {
                b0.O(textView);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(TextView textView) {
        textView.setBackgroundResource(R$drawable.ad_shape_gradient);
        textView.setTextColor(Color.parseColor("#FF000000"));
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer A() {
        return Integer.valueOf(R$id.flVolumeContainer);
    }

    public final void H(View rootView) {
        Intrinsics.h(rootView, "rootView");
        if (this.f60943c) {
            G(rootView);
            return;
        }
        TextView textView = (TextView) rootView.findViewById(R$id.call_to_action);
        if (textView == null) {
            return;
        }
        textView.setBackgroundResource(R$drawable.ad_shape_gray);
        textView.setTextColor(Color.parseColor("#CCFFFFFF"));
        if (this.f60944d == 0) {
            Runnable runnable = this.f60942b;
            if (runnable != null) {
                rootView.removeCallbacks(runnable);
            }
            this.f60942b = null;
            return;
        }
        long jCurrentTimeMillis = 3000 - (System.currentTimeMillis() - this.f60944d);
        if (jCurrentTimeMillis <= 0) {
            G(rootView);
        } else {
            K(rootView, jCurrentTimeMillis);
        }
    }

    public final di.a I(View rootView) {
        Intrinsics.h(rootView, "rootView");
        return new b(rootView);
    }

    public final void J(View rootView) {
        Intrinsics.h(rootView, "rootView");
        if (this.f60943c || this.f60944d == 0) {
            return;
        }
        Runnable runnable = this.f60942b;
        if (runnable != null) {
            rootView.removeCallbacks(runnable);
        }
        this.f60942b = null;
        G(rootView);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer c() {
        return Integer.valueOf(R$id.adChoicesView);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer h() {
        return Integer.valueOf(R$id.store_mark_view);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer i() {
        return Integer.valueOf(R$id.adIcon);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer l() {
        return Integer.valueOf(R$id.call_to_action);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer m() {
        return Integer.valueOf(R$id.native_ad_body);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer s() {
        return Integer.valueOf(R$id.native_ad_icon);
    }

    @Override // com.transsion.ad.bidding.base.r
    public int t() {
        return R$layout.native_trending_native_layout_style_2;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer v() {
        return Integer.valueOf(R$id.coverview);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer z() {
        return Integer.valueOf(R$id.native_ad_title);
    }
}
