package com.transsion.moviedetail.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.z;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.moviedetail.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0014¢\u0006\u0004\b\u0010\u0010\u000eR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/transsion/moviedetail/view/WatchModeTipsView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "n", "()V", "checkShow", "onDetachedFromWindow", "Lcn/z;", "a", "Lcn/z;", "mViewBinding", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "hasShow", "Ljava/lang/Runnable;", "c", "Lkotlin/Lazy;", "getDelayShow", "()Ljava/lang/Runnable;", "delayShow", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WatchModeTipsView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private z mViewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private boolean hasShow;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy delayShow;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WatchModeTipsView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WatchModeTipsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchModeTipsView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.hasShow = com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("watch_mode_tips", false);
        n();
        this.delayShow = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.view.v
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WatchModeTipsView.l(this.f47417a);
            }
        });
    }

    private final Runnable getDelayShow() {
        return (Runnable) this.delayShow.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Runnable l(final WatchModeTipsView watchModeTipsView) {
        return new Runnable() { // from class: com.transsion.moviedetail.view.y
            @Override // java.lang.Runnable
            public final void run() {
                WatchModeTipsView.m(this.f47420a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(WatchModeTipsView watchModeTipsView) {
        jg.c.k(watchModeTipsView);
        com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("watch_mode_tips", true);
    }

    private final void n() {
        z zVarA = z.a(View.inflate(getContext(), R$layout.layout_watch_mode_tips, this));
        this.mViewBinding = zVarA;
        if (zVarA != null) {
            AppCompatTextView goWatchTv = zVarA.f17538c;
            Intrinsics.g(goWatchTv, "goWatchTv");
            jg.c.c(goWatchTv, 0L, new Function1() { // from class: com.transsion.moviedetail.view.w
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WatchModeTipsView.o(this.f47418a, (View) obj);
                }
            }, 1, null);
            ImageView closeWatchTv = zVarA.f17537b;
            Intrinsics.g(closeWatchTv, "closeWatchTv");
            jg.c.c(closeWatchTv, 0L, new Function1() { // from class: com.transsion.moviedetail.view.x
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WatchModeTipsView.p(this.f47419a, (View) obj);
                }
            }, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o(WatchModeTipsView watchModeTipsView, View it) {
        Intrinsics.h(it, "it");
        Navigator.x(TheRouter.c("/profile/watch_option"), watchModeTipsView.getContext(), null, 2, null);
        jg.c.g(watchModeTipsView);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p(WatchModeTipsView watchModeTipsView, View it) {
        Intrinsics.h(it, "it");
        jg.c.g(watchModeTipsView);
        return Unit.f67061a;
    }

    public final void checkShow() {
        if (this.hasShow || ak.t.f652a.b()) {
            jg.c.g(this);
        } else {
            removeCallbacks(getDelayShow());
            post(getDelayShow());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(getDelayShow());
    }
}
