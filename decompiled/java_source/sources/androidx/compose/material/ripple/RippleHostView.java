package androidx.compose.material.ripple;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import y.m;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 @2\u00020\u0001:\u00012B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\nJ\u001f\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J7\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\rH\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJN\u0010+\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\r2\u0006\u0010$\u001a\u00020#2\u0006\u0010&\u001a\u00020%2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\b0'ø\u0001\u0000¢\u0006\u0004\b)\u0010*J\r\u0010,\u001a\u00020\b¢\u0006\u0004\b,\u0010\u0019J(\u0010/\u001a\u00020\b2\u0006\u0010!\u001a\u00020 2\u0006\u0010$\u001a\u00020#2\u0006\u0010&\u001a\u00020%ø\u0001\u0000¢\u0006\u0004\b-\u0010.J\r\u00100\u001a\u00020\b¢\u0006\u0004\b0\u0010\u0019R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u00105R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006A"}, d2 = {"Landroidx/compose/material/ripple/RippleHostView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "bounded", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Z)V", "pressed", "setRippleState", "", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "changed", "l", "t", CampaignEx.JSON_KEY_AD_R, "onLayout", "(ZIIII)V", "refreshDrawableState", "()V", "Landroid/graphics/drawable/Drawable;", "who", "invalidateDrawable", "(Landroid/graphics/drawable/Drawable;)V", "Lp/k$b;", "interaction", "Ly/m;", "size", "radius", "Landroidx/compose/ui/graphics/u1;", TtmlNode.ATTR_TTS_COLOR, "", "alpha", "Lkotlin/Function0;", "onInvalidateRipple", "addRipple-KOepWvA", "(Lp/k$b;ZJIJFLkotlin/jvm/functions/Function0;)V", "addRipple", "removeRipple", "setRippleProperties-07v42R4", "(JJF)V", "setRippleProperties", "disposeRipple", "Landroidx/compose/material/ripple/k;", "a", "Landroidx/compose/material/ripple/k;", "ripple", "Ljava/lang/Boolean;", "", "c", "Ljava/lang/Long;", "lastRippleStateChangeTimeMillis", "Ljava/lang/Runnable;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/Runnable;", "resetRippleRunnable", "e", "Lkotlin/jvm/functions/Function0;", "Companion", "material-ripple_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RippleHostView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private k ripple;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Boolean bounded;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Long lastRippleStateChangeTimeMillis;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Runnable resetRippleRunnable;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function0 onInvalidateRipple;
    public static final int $stable = 8;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f3463f = {R.attr.state_pressed, R.attr.state_enabled};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f3464g = new int[0];

    public RippleHostView(Context context) {
        super(context);
    }

    private final void b(boolean bounded) {
        k kVar = new k(bounded);
        setBackground(kVar);
        this.ripple = kVar;
    }

    private final void setRippleState(boolean pressed) {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        Runnable runnable = this.resetRippleRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
            runnable.run();
        }
        Long l11 = this.lastRippleStateChangeTimeMillis;
        long jLongValue = jCurrentAnimationTimeMillis - (l11 != null ? l11.longValue() : 0L);
        if (pressed || jLongValue >= 5) {
            int[] iArr = pressed ? f3463f : f3464g;
            k kVar = this.ripple;
            if (kVar != null) {
                kVar.setState(iArr);
            }
        } else {
            Runnable runnable2 = new Runnable() { // from class: androidx.compose.material.ripple.g
                @Override // java.lang.Runnable
                public final void run() {
                    RippleHostView.setRippleState$lambda$2(this.f3502a);
                }
            };
            this.resetRippleRunnable = runnable2;
            postDelayed(runnable2, 50L);
        }
        this.lastRippleStateChangeTimeMillis = Long.valueOf(jCurrentAnimationTimeMillis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setRippleState$lambda$2(RippleHostView rippleHostView) {
        k kVar = rippleHostView.ripple;
        if (kVar != null) {
            kVar.setState(f3464g);
        }
        rippleHostView.resetRippleRunnable = null;
    }

    /* JADX INFO: renamed from: addRipple-KOepWvA, reason: not valid java name */
    public final void m78addRippleKOepWvA(p.k.b interaction, boolean bounded, long size, int radius, long color, float alpha, Function0<Unit> onInvalidateRipple) {
        if (this.ripple == null || !Intrinsics.c(Boolean.valueOf(bounded), this.bounded)) {
            b(bounded);
            this.bounded = Boolean.valueOf(bounded);
        }
        k kVar = this.ripple;
        Intrinsics.e(kVar);
        this.onInvalidateRipple = onInvalidateRipple;
        kVar.c(radius);
        m79setRippleProperties07v42R4(size, color, alpha);
        if (bounded) {
            kVar.setHotspot(y.g.m(interaction.a()), y.g.n(interaction.a()));
        } else {
            kVar.setHotspot(kVar.getBounds().centerX(), kVar.getBounds().centerY());
        }
        setRippleState(true);
    }

    public final void disposeRipple() {
        this.onInvalidateRipple = null;
        Runnable runnable = this.resetRippleRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
            Runnable runnable2 = this.resetRippleRunnable;
            Intrinsics.e(runnable2);
            runnable2.run();
        } else {
            k kVar = this.ripple;
            if (kVar != null) {
                kVar.setState(f3464g);
            }
        }
        k kVar2 = this.ripple;
        if (kVar2 == null) {
            return;
        }
        kVar2.setVisible(false, false);
        unscheduleDrawable(kVar2);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable who) {
        Function0 function0 = this.onInvalidateRipple;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int l11, int t11, int r11, int b11) {
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View
    public void refreshDrawableState() {
    }

    public final void removeRipple() {
        setRippleState(false);
    }

    /* JADX INFO: renamed from: setRippleProperties-07v42R4, reason: not valid java name */
    public final void m79setRippleProperties07v42R4(long size, long color, float alpha) {
        k kVar = this.ripple;
        if (kVar == null) {
            return;
        }
        kVar.b(color, alpha);
        Rect rect = new Rect(0, 0, MathKt.d(m.i(size)), MathKt.d(m.g(size)));
        setLeft(rect.left);
        setTop(rect.top);
        setRight(rect.right);
        setBottom(rect.bottom);
        kVar.setBounds(rect);
    }
}
