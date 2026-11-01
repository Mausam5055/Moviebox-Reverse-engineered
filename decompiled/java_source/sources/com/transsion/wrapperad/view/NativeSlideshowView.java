package com.transsion.wrapperad.view;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.v;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.strategy.r;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.push.PushConstants;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0015\u0010\u0016J#\u0010\u001a\u001a\u00020\f2\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00180\u0017¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\f¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\f¢\u0006\u0004\b \u0010\u001fJ\r\u0010!\u001a\u00020\f¢\u0006\u0004\b!\u0010\u001fJ\u000f\u0010\"\u001a\u00020\nH\u0002¢\u0006\u0004\b\"\u0010\u0010J\u0019\u0010&\u001a\u00020%2\b\b\u0002\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b&\u0010'J\u0019\u0010(\u001a\u00020\f2\b\b\u0002\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b(\u0010)J\u0019\u0010+\u001a\u00020\f2\b\b\u0002\u0010*\u001a\u00020#H\u0002¢\u0006\u0004\b+\u0010)J\u000f\u0010,\u001a\u00020\fH\u0002¢\u0006\u0004\b,\u0010\u001fJ\u000f\u0010-\u001a\u00020\fH\u0002¢\u0006\u0004\b-\u0010\u001fR\u0018\u00100\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00103\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R$\u00105\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u00104R\u0018\u00108\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u00107R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u00107R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010?\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010>R\u001a\u0010C\u001a\b\u0012\u0004\u0012\u00020\f0@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010ER\u0018\u0010H\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010E¨\u0006I"}, d2 = {"Lcom/transsion/wrapperad/view/NativeSlideshowView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "sceneId", "", "setSceneId", "(Ljava/lang/String;)V", "getSceneId", "()Ljava/lang/String;", "Landroid/view/View;", "referenceView", "setReferenceView", "(Landroid/view/View;)V", "getReferenceView", "()Landroid/view/View;", "", "", "ctxMap", "setCtxMap", "(Ljava/util/Map;)V", "getCtxMap", "()Ljava/util/Map;", "initAd", "()V", "affirm", PushConstants.PROVIDER_FIELD_DESTROY, "getClassTag", "", "isFail", "", "c", "(Z)J", "i", "(Z)V", "isIgnore", "e", "g", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "a", "Ljava/lang/String;", "mSceneId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/view/View;", "mReferenceView", "Ljava/util/Map;", "mCtxMap", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "topNative", "bottomNative", "Landroid/os/Handler;", "f", "Landroid/os/Handler;", "mHandler", "J", "loadFailCount", "Lkotlin/Function0;", "h", "Lkotlin/jvm/functions/Function0;", "postAdDelayed", "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", "vBottom", "j", "vTop", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NativeSlideshowView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String mSceneId;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private View mReferenceView;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Map mCtxMap;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private BiddingNativeManager topNative;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private BiddingNativeManager bottomNative;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Handler mHandler;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private long loadFailCount;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Function0 postAdDelayed;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private NativeWrapperAdView vBottom;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private NativeWrapperAdView vTop;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NativeSlideshowView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NativeSlideshowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NativeSlideshowView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.mHandler = new Handler(Looper.getMainLooper());
        this.loadFailCount = 1L;
        this.postAdDelayed = new Function0() { // from class: com.transsion.wrapperad.view.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return NativeSlideshowView.h(this.f58362a);
            }
        };
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.view_native_slideshow_layout, (ViewGroup) this, false);
        this.vTop = (NativeWrapperAdView) viewInflate.findViewById(R$id.vTop);
        this.vBottom = (NativeWrapperAdView) viewInflate.findViewById(R$id.vBottom);
        addView(viewInflate);
    }

    public /* synthetic */ NativeSlideshowView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final long c(boolean isFail) {
        if (isFail) {
            this.loadFailCount++;
        } else {
            this.loadFailCount = 1L;
        }
        long jN = com.transsion.ad.scene.a.f42201a.n(getMSceneId()) * 1000;
        long j11 = this.loadFailCount;
        return jN * j11 * j11;
    }

    private final void d() {
        if (this.bottomNative == null) {
            BiddingNativeManager biddingNativeManager = new BiddingNativeManager();
            this.bottomNative = biddingNativeManager;
            biddingNativeManager.O0(getMSceneId());
            BiddingNativeManager biddingNativeManager2 = this.topNative;
            if (biddingNativeManager2 != null) {
                biddingNativeManager2.M0(getCtxMap());
            }
            BiddingNativeManager biddingNativeManager3 = this.bottomNative;
            if (biddingNativeManager3 != null) {
                biddingNativeManager3.N0(new NativeSlideshowView$loadBottomAd$1(this));
            }
        }
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            kotlinx.coroutines.k.d(v.a(appCompatActivity), null, null, new NativeSlideshowView$loadBottomAd$2$1(this, null), 3, null);
        }
    }

    private final void e(boolean isIgnore) {
        if (!r.f42240a.j(this) && !isIgnore) {
            j(this, false, 1, null);
            return;
        }
        NativeWrapperAdView nativeWrapperAdView = this.vTop;
        if (nativeWrapperAdView == null || nativeWrapperAdView.getVisibility() != 8) {
            d();
        } else {
            g();
        }
    }

    static /* synthetic */ void f(NativeSlideshowView nativeSlideshowView, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        nativeSlideshowView.e(z10);
    }

    private final void g() {
        if (this.topNative == null) {
            BiddingNativeManager biddingNativeManager = new BiddingNativeManager();
            this.topNative = biddingNativeManager;
            biddingNativeManager.O0(getMSceneId());
            BiddingNativeManager biddingNativeManager2 = this.topNative;
            if (biddingNativeManager2 != null) {
                biddingNativeManager2.M0(getCtxMap());
            }
            BiddingNativeManager biddingNativeManager3 = this.topNative;
            if (biddingNativeManager3 != null) {
                biddingNativeManager3.N0(new NativeSlideshowView$loadTopAd$1(this));
            }
        }
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            kotlinx.coroutines.k.d(v.a(appCompatActivity), null, null, new NativeSlideshowView$loadTopAd$2$1(this, null), 3, null);
        }
    }

    private final String getClassTag() {
        String simpleName = NativeSlideshowView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(NativeSlideshowView nativeSlideshowView) {
        f(nativeSlideshowView, false, 1, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(boolean isFail) {
        Handler handler = this.mHandler;
        final Function0 function0 = this.postAdDelayed;
        handler.postDelayed(new Runnable() { // from class: com.transsion.wrapperad.view.l
            @Override // java.lang.Runnable
            public final void run() {
                NativeSlideshowView.k(function0);
            }
        }, c(isFail));
    }

    static /* synthetic */ void j(NativeSlideshowView nativeSlideshowView, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        nativeSlideshowView.i(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(Function0 function0) {
        function0.invoke();
    }

    public final void affirm() {
    }

    public final void destroy() {
        BiddingNativeManager biddingNativeManager = this.topNative;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
        BiddingNativeManager biddingNativeManager2 = this.bottomNative;
        if (biddingNativeManager2 != null) {
            biddingNativeManager2.V();
        }
        this.mHandler.removeCallbacksAndMessages(null);
    }

    public final Map<String, Object> getCtxMap() {
        Map<String, Object> map = this.mCtxMap;
        return map == null ? MapsKt.h() : map;
    }

    /* JADX INFO: renamed from: getReferenceView, reason: from getter */
    public final View getMReferenceView() {
        return this.mReferenceView;
    }

    /* JADX INFO: renamed from: getSceneId, reason: from getter */
    public final String getMSceneId() {
        return this.mSceneId;
    }

    public final void initAd() {
        e(true);
    }

    public final void setCtxMap(Map<String, ? extends Object> ctxMap) {
        this.mCtxMap = ctxMap;
    }

    public final void setReferenceView(View referenceView) {
        this.mReferenceView = referenceView;
    }

    public final void setSceneId(String sceneId) {
        this.mSceneId = sceneId;
    }
}
