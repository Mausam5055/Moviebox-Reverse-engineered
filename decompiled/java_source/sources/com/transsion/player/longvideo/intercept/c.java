package com.transsion.player.longvideo.intercept;

import android.app.Activity;
import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.postdetail.layer.local.LocalBackAdHelper;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LongVodPageType f48117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LongVodPlayerView f48118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LifecycleCoroutineScope f48119c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f48120d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LocalBackAdHelper f48121e;

    private final LocalBackAdHelper d() {
        LongVodPlayerView longVodPlayerView = this.f48118b;
        Context context = longVodPlayerView != null ? longVodPlayerView.getContext() : null;
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        LifecycleCoroutineScope lifecycleCoroutineScopeA = appCompatActivity != null ? androidx.p009lifecycle.v.a(appCompatActivity) : null;
        this.f48119c = lifecycleCoroutineScopeA;
        LocalBackAdHelper localBackAdHelper = this.f48121e;
        if (localBackAdHelper != null) {
            return localBackAdHelper;
        }
        Intrinsics.e(lifecycleCoroutineScopeA);
        LocalBackAdHelper localBackAdHelper2 = new LocalBackAdHelper("StreamVideoBackInterstitialScene", lifecycleCoroutineScopeA, new Function0() { // from class: com.transsion.player.longvideo.intercept.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.e(this.f48109a);
            }
        }, new Function0() { // from class: com.transsion.player.longvideo.intercept.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.f(this.f48112a);
            }
        }, true);
        this.f48121e = localBackAdHelper2;
        return localBackAdHelper2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Activity e(c cVar) {
        LongVodPlayerView longVodPlayerView = cVar.f48118b;
        Context context = longVodPlayerView != null ? longVodPlayerView.getContext() : null;
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || appCompatActivity.isDestroyed() || appCompatActivity.isFinishing()) {
            return null;
        }
        return appCompatActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(c cVar) {
        LongVodPlayerView longVodPlayerView = cVar.f48118b;
        if (longVodPlayerView != null) {
            LongVodPlayerView.backClick$default(longVodPlayerView, false, false, 3, null);
        }
        return Unit.f67061a;
    }

    public final void c() {
        LocalBackAdHelper localBackAdHelper = this.f48121e;
        if (localBackAdHelper != null) {
            localBackAdHelper.o();
        }
        this.f48121e = null;
    }

    public final void g() {
        if (this.f48117a != LongVodPageType.STREAM) {
            return;
        }
        d().q(this.f48120d);
    }

    public final void h(String str) {
        this.f48120d = str;
    }

    public final void i(LongVodPlayerView longVodPlayerView) {
        this.f48118b = longVodPlayerView;
    }

    public final void j(LongVodPageType pageType) {
        Intrinsics.h(pageType, "pageType");
        this.f48117a = pageType;
    }

    public final boolean k() {
        if (this.f48117a != LongVodPageType.STREAM) {
            return false;
        }
        int iK = com.transsion.ad.scene.a.f42201a.k("StreamVideoBackInterstitialScene");
        if (System.currentTimeMillis() - com.transsion.baselib.report.launch.b.f43370a.b().getLong("show_StreamVideoBackInterstitialScene_timestamp", 0L) < ((long) (iK * 60)) * 1000) {
            ii.b.d(ii.b.f65248a, "StreamVideoBackInterstitialScene", false, 2, null);
            return false;
        }
        d().r(this.f48120d);
        return true;
    }
}
