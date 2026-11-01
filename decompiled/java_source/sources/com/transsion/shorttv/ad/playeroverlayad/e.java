package com.transsion.shorttv.ad.playeroverlayad;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.shorttv.ad.common.STCommonNativeAdHelper;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f52732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n0 f52733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final STCommonNativeAdHelper f52734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ShortTvPlayerOverlayAdContainer f52735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e7.e f52736e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Long f52737f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f52738g;

    public static final class a extends e7.e {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ ShortTvPlayerOverlayAdContainer f52740g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ Function0 f52741h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer, Function0 function0, long j11) {
            super(j11, 1000L);
            this.f52740g = shortTvPlayerOverlayAdContainer;
            this.f52741h = function0;
        }

        @Override // e7.e
        public void e() {
            e.this.o(this.f52741h);
        }

        @Override // e7.e
        public void f(long j11) {
            long jCeil = (long) Math.ceil(j11 / 1000.0f);
            e.this.f52737f = Long.valueOf(jCeil);
            TextView countdownView = this.f52740g.getCountdownView();
            if (countdownView != null) {
                countdownView.setText(jCeil + "s");
            }
        }
    }

    public e(String sceneId, n0 lifecycleScope) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(lifecycleScope, "lifecycleScope");
        this.f52732a = sceneId;
        this.f52733b = lifecycleScope;
        STCommonNativeAdHelper sTCommonNativeAdHelper = new STCommonNativeAdHelper(sceneId, lifecycleScope);
        sTCommonNativeAdHelper.r("overlay");
        this.f52734c = sTCommonNativeAdHelper;
    }

    private final void g() {
        e7.e eVar = this.f52736e;
        if (eVar != null) {
            eVar.d();
        }
        this.f52736e = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(e eVar, Function0 function0, View view) {
        eVar.o(function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer, final e eVar) {
        NativeWrapperAdView nativeAdView = shortTvPlayerOverlayAdContainer.getNativeAdView();
        if (nativeAdView != null) {
            STCommonNativeAdHelper sTCommonNativeAdHelper = eVar.f52734c;
            Context contextA = com.cloud.sdk.commonutil.util.e.a();
            Intrinsics.g(contextA, "getContext(...)");
            sTCommonNativeAdHelper.s(new f(contextA), nativeAdView, new Function1() { // from class: com.transsion.shorttv.ad.playeroverlayad.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return e.n(this.f52731a, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n(e eVar, boolean z10) {
        if (z10) {
            eVar.f52738g = System.currentTimeMillis();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(Function0 function0) {
        f();
        function0.invoke();
    }

    public final void f() {
        STCommonNativeAdHelper.n(this.f52734c, 0, 1, null);
        g();
        this.f52737f = null;
        ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer = this.f52735d;
        if (shortTvPlayerOverlayAdContainer != null) {
            shortTvPlayerOverlayAdContainer.removeAdView();
        }
        ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer2 = this.f52735d;
        if (shortTvPlayerOverlayAdContainer2 != null) {
            shortTvPlayerOverlayAdContainer2.setVisibility(8);
        }
        this.f52735d = null;
        this.f52738g = 0L;
    }

    public final long h() {
        return this.f52738g;
    }

    public final void i(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.f52734c.q(callback);
    }

    public final void j() {
        g();
        ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer = this.f52735d;
        if (shortTvPlayerOverlayAdContainer != null) {
            shortTvPlayerOverlayAdContainer.removeAdView();
        }
        ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer2 = this.f52735d;
        if (shortTvPlayerOverlayAdContainer2 != null) {
            shortTvPlayerOverlayAdContainer2.setVisibility(8);
        }
    }

    public final void k(final ShortTvPlayerOverlayAdContainer adContainerView, final Function0 timerEndCallback) {
        Intrinsics.h(adContainerView, "adContainerView");
        Intrinsics.h(timerEndCallback, "timerEndCallback");
        adContainerView.setVisibility(0);
        adContainerView.bringToFront();
        ImageView closeView = adContainerView.getCloseView();
        if (closeView != null) {
            closeView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ad.playeroverlayad.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e.l(this.f52727a, timerEndCallback, view);
                }
            });
        }
        adContainerView.addAdView();
        adContainerView.post(new Runnable() { // from class: com.transsion.shorttv.ad.playeroverlayad.c
            @Override // java.lang.Runnable
            public final void run() {
                e.m(adContainerView, this);
            }
        });
        this.f52735d = adContainerView;
        g();
        Long lValueOf = this.f52737f;
        if (lValueOf == null) {
            lValueOf = Long.valueOf(com.transsion.ad.scene.a.f42201a.e("ShortTvPlayerOverlayScene"));
            if (lValueOf.longValue() <= 0) {
                lValueOf = null;
            }
            if (lValueOf == null) {
                TextView countdownView = adContainerView.getCountdownView();
                if (countdownView != null) {
                    countdownView.setVisibility(8);
                    return;
                }
                return;
            }
        }
        long jLongValue = lValueOf.longValue();
        TextView countdownView2 = adContainerView.getCountdownView();
        if (countdownView2 != null) {
            countdownView2.setVisibility(0);
        }
        a aVar = new a(adContainerView, timerEndCallback, jLongValue * 1000);
        this.f52736e = aVar;
        aVar.g();
    }
}
