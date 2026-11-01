package com.transsion.wrapperad.activate.ui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baselib.helper.f;
import com.transsion.baseui.activity.BaseMusicFloatActivity;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.memberapi.MemberSource;
import com.transsion.memberapi.SkuPromotionContent;
import com.transsion.memberapi.SkuPromotionItem;
import com.transsion.memberapi.SkuPromotionSku;
import com.transsion.wrapperad.activate.ui.MemberPromotionView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ey.g;
import ii.b;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import lg.a;
import ti.n;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 82\u00020\u0001:\u0001\u001dB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\bH\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001b\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u00100\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010-R\u0016\u00102\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010!R\u0014\u00105\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u00104R\u0014\u00107\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u0010-¨\u00069"}, d2 = {"Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "wasShown", "", "h", "(Z)V", "Lcom/transsion/memberapi/SkuPromotionItem;", "skuPromotionItem", "l", "(Lcom/transsion/memberapi/SkuPromotionItem;)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "performClick", "()Z", "onDetachedFromWindow", "()V", "Landroid/app/Activity;", "activity", "onActivityResume", "(Landroid/app/Activity;)V", "onActivityPause", "Ley/g;", "a", "Ley/g;", "binding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "isShowingNotified", "Ljava/lang/Runnable;", "c", "Ljava/lang/Runnable;", "autoDismissRunnable", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "traceId", "", "e", "F", "touchDownX", "f", "touchDownY", "g", "hasExceededTouchSlop", "", "I", "touchSlop", "i", "swipeUpCloseThreshold", "Companion", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MemberPromotionView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final g binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private boolean isShowingNotified;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Runnable autoDismissRunnable;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String traceId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private float touchDownX;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private float touchDownY;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean hasExceededTouchSlop;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final int touchSlop;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final float swipeUpCloseThreshold;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MemberPromotionView(final Context context) {
        super(context);
        Intrinsics.h(context, "context");
        g gVarC = g.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(gVarC, "inflate(...)");
        this.binding = gVarC;
        this.autoDismissRunnable = new Runnable() { // from class: zx.h
            @Override // java.lang.Runnable
            public final void run() {
                MemberPromotionView.g(this.f79503a);
            }
        };
        this.traceId = "";
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.swipeUpCloseThreshold = getResources().getDisplayMetrics().density * 48.0f;
        TextView textView = gVarC.f62105f;
        textView.setPaintFlags(textView.getPaintFlags() | 16);
        setClickable(true);
        setFocusable(true);
        setOnClickListener(new View.OnClickListener() { // from class: zx.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MemberPromotionView.f(context, this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(Context context, MemberPromotionView memberPromotionView, View view) {
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity == null) {
            return;
        }
        memberPromotionView.h(true);
        f fVar = f.f43269a;
        String simpleName = activity.getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        fVar.f(simpleName, "membership_push", memberPromotionView.traceId, "", 2);
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null) {
            IPremiumApi.a.d(iPremiumApi, activity, MemberSource.SOURCE_MEMBER_PROMOTION, null, false, null, 24, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(MemberPromotionView memberPromotionView) {
        memberPromotionView.h(true);
        a.C0828a.f(a.f68839a, "premium_discount", "会员PUSH，自动关闭", false, 4, null);
    }

    private final void h(boolean wasShown) {
        removeCallbacks(this.autoDismissRunnable);
        setVisibility(8);
        if (this.isShowingNotified) {
            this.isShowingNotified = false;
            b.f65248a.e("MemberPUSH", wasShown);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(Activity activity, final MemberPromotionView memberPromotionView, SkuPromotionItem skuPromotionItem) {
        Intrinsics.h(skuPromotionItem, "skuPromotionItem");
        b bVar = b.f65248a;
        if (bVar.a("MemberPUSH")) {
            if ((activity instanceof BaseMusicFloatActivity) && ((BaseMusicFloatActivity) activity).isShowMemberPushViewTip()) {
                memberPromotionView.l(skuPromotionItem);
                memberPromotionView.setVisibility(0);
                memberPromotionView.isShowingNotified = true;
                bVar.f("MemberPUSH", new Function0() { // from class: zx.j
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MemberPromotionView.j(this.f79506a);
                    }
                });
                memberPromotionView.postDelayed(memberPromotionView.autoDismissRunnable, 5000L);
                a.C0828a.f(a.f68839a, "premium_discount", "会员PUSH，展示", false, 4, null);
                IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
                if (iPremiumApi != null) {
                    iPremiumApi.n();
                }
                memberPromotionView.traceId = n.f76264a.b();
                f fVar = f.f43269a;
                String simpleName = activity.getClass().getSimpleName();
                Intrinsics.g(simpleName, "getSimpleName(...)");
                fVar.h(simpleName, "membership_push", memberPromotionView.traceId, "", 2);
            } else {
                b.d(bVar, "MemberPUSH", false, 2, null);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(MemberPromotionView memberPromotionView) {
        memberPromotionView.h(true);
        a.C0828a.f(a.f68839a, "premium_discount", "会员PUSH，被高优场景关闭", false, 4, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(MemberPromotionView memberPromotionView, Throwable it) {
        Intrinsics.h(it, "it");
        a.C0828a.f(a.f68839a, "premium_discount", "会员PUSH，不满足展示条件 --> " + it.getMessage(), false, 4, null);
        memberPromotionView.setVisibility(8);
        return Unit.f67061a;
    }

    private final void l(SkuPromotionItem skuPromotionItem) {
        TextView textView = this.binding.f62108i;
        SkuPromotionContent promotionContent = skuPromotionItem.getPromotionContent();
        textView.setText(promotionContent != null ? promotionContent.getTitle() : null);
        TextView textView2 = this.binding.f62107h;
        SkuPromotionContent promotionContent2 = skuPromotionItem.getPromotionContent();
        textView2.setText(promotionContent2 != null ? promotionContent2.getSubTitle() : null);
        GradientTextView gradientTextView = this.binding.f62106g;
        SkuPromotionSku sku = skuPromotionItem.getSku();
        String currencySymbol = sku != null ? sku.getCurrencySymbol() : null;
        SkuPromotionSku sku2 = skuPromotionItem.getSku();
        gradientTextView.setText(currencySymbol + (sku2 != null ? sku2.getDiscountPrice() : null));
        TextView textView3 = this.binding.f62105f;
        SkuPromotionSku sku3 = skuPromotionItem.getSku();
        String currencySymbol2 = sku3 != null ? sku3.getCurrencySymbol() : null;
        SkuPromotionSku sku4 = skuPromotionItem.getSku();
        textView3.setText(currencySymbol2 + (sku4 != null ? sku4.getPrice() : null));
        this.binding.f62106g.setGradientColors(Color.parseColor("#FE7D2F"), Color.parseColor("#FE7D2F"), Color.parseColor("#FB4C3D"));
    }

    public final void onActivityPause(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    public final void onActivityResume(final Activity activity) {
        Intrinsics.h(activity, "activity");
        setVisibility(8);
        if (!b.f65248a.a("MemberPUSH")) {
            a.C0828a.f(a.f68839a, "premium_discount", "会员PUSH，不满足展示条件 --> AdSceneCoordinator.canShow = false", false, 4, null);
            return;
        }
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            iPremiumApi.e(context, new Function1() { // from class: zx.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MemberPromotionView.i(activity, this, (SkuPromotionItem) obj);
                }
            }, new Function1() { // from class: zx.g
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MemberPromotionView.k(this.f79502a, (Throwable) obj);
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        h(getVisibility() == 0);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.h(event, "event");
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            this.touchDownX = event.getX();
            this.touchDownY = event.getY();
            this.hasExceededTouchSlop = false;
            setPressed(true);
        } else if (actionMasked == 1) {
            setPressed(false);
            float y10 = this.touchDownY - event.getY();
            float fAbs = Math.abs(event.getX() - this.touchDownX);
            if (y10 >= this.swipeUpCloseThreshold && y10 > fAbs) {
                h(true);
                a.C0828a.f(a.f68839a, "premium_discount", "会员PUSH，上滑关闭", false, 4, null);
            } else if (!this.hasExceededTouchSlop) {
                performClick();
            }
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                setPressed(false);
                this.touchDownX = 0.0f;
                this.touchDownY = 0.0f;
                this.hasExceededTouchSlop = false;
            }
        } else if (Math.abs(event.getX() - this.touchDownX) > this.touchSlop || Math.abs(event.getY() - this.touchDownY) > this.touchSlop) {
            this.hasExceededTouchSlop = true;
        }
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }
}
