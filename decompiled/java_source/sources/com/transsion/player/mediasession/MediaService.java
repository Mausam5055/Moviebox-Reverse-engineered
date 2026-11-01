package com.transsion.player.mediasession;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media.MediaBrowserServiceCompat;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\u0003J)\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J+\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00042\u0012\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0013H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u0003¨\u0006\u001c"}, d2 = {"Lcom/transsion/player/mediasession/MediaService;", "Landroidx/media/MediaBrowserServiceCompat;", "<init>", "()V", "", "s", "()Ljava/lang/String;", "", "t", "onCreate", "clientPackageName", "", "clientUid", "Landroid/os/Bundle;", "rootHints", "Landroidx/media/MediaBrowserServiceCompat$e;", "f", "(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$e;", "parentId", "Landroidx/media/MediaBrowserServiceCompat$k;", "", "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;", "result", "g", "(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$k;)V", "onDestroy", "j", "a", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MediaService extends MediaBrowserServiceCompat {
    private final String s() {
        String simpleName = MediaService.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final void t() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(this, "media_service_id");
            mediaSessionCompat.d(true);
            mediaSessionCompat.i(new PlaybackStateCompat.d().b(775L).a());
            mediaSessionCompat.e(new f(mediaSessionCompat, this));
            r(mediaSessionCompat.b());
            mediaSessionCompat.g(PendingIntent.getBroadcast(this, 1, new Intent(this, (Class<?>) MusicIntentReceiver.class), h.f48399a.j()));
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        i.f48408a.b(s() + " --> initMediaSessionCompat() --> it = " + thM457exceptionOrNullimpl);
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public MediaBrowserServiceCompat.e f(String clientPackageName, int clientUid, Bundle rootHints) {
        Intrinsics.h(clientPackageName, "clientPackageName");
        return new MediaBrowserServiceCompat.e("media_service_id", null);
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public void g(String parentId, MediaBrowserServiceCompat.k result) {
        Intrinsics.h(parentId, "parentId");
        Intrinsics.h(result, "result");
        result.f(null);
    }

    @Override // androidx.media.MediaBrowserServiceCompat, android.app.Service
    public void onCreate() {
        super.onCreate();
        i.f48408a.a(s() + " --> onCreate()");
        h.f48399a.l();
        t();
    }

    @Override // androidx.media.MediaBrowserServiceCompat, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        i.f48408a.b(s() + " --> onDestroy() --> 服务销毁的时候停止通知");
    }
}
