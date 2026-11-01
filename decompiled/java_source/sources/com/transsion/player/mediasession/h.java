package com.transsion.player.mediasession;

import android.app.Application;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.core.app.z;
import androidx.media.session.MediaButtonReceiver;
import androidx.media3.common.util.g0;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.transsion.player.R$mipmap;
import com.transsion.player.R$string;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f48400b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static MediaSessionCompat f48401c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static MediaService f48402d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static MediaItem f48403e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Integer f48404f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Bitmap f48405g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f48399a = new h();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f48406h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final a f48407i = new a();

    public static final class a extends CustomTarget {
        a() {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(Drawable drawable) {
            i.f48408a.a(h.f48399a.i() + " --> loadAlbum --> onLoadCleared() ---> 加载失败");
        }

        @Override // com.bumptech.glide.request.target.CustomTarget, com.bumptech.glide.request.target.Target
        public void onLoadFailed(Drawable drawable) {
            super.onLoadFailed(drawable);
            i iVar = i.f48408a;
            h hVar = h.f48399a;
            iVar.a(hVar.i() + " --> loadAlbum --> onLoadFailed() ---> 加载失败");
            h.f48405g = BitmapFactory.decodeResource(Utils.a().getResources(), R$mipmap.player_ic_notification_icon);
            hVar.o(h.f48402d, h.f48403e, h.f48404f, h.f48401c);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(Bitmap resource, Transition transition) {
            Intrinsics.h(resource, "resource");
            String str = h.f48406h;
            MediaItem mediaItem = h.f48403e;
            if (TextUtils.equals(str, mediaItem != null ? mediaItem.getCoverUrl() : null)) {
                h.f48405g = resource;
                h.f48399a.o(h.f48402d, h.f48403e, h.f48404f, h.f48401c);
            }
        }
    }

    private h() {
    }

    private final Bitmap h(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return q(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String i() {
        String simpleName = h.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final String k(String str) {
        return oo.h.f71079a.b(str, a0.a(48.0f), (120 & 4) != 0 ? true : true, (120 & 8) != 0, (120 & 16) != 0 ? 0 : 0, (120 & 32) != 0 ? false : false, (120 & 64) != 0 ? false : false);
    }

    private final void m(MediaService mediaService, MediaItem mediaItem, Integer num, MediaSessionCompat mediaSessionCompat) {
        String title;
        String subTitle;
        f48402d = mediaService;
        f48403e = mediaItem;
        f48404f = num;
        f48401c = mediaSessionCompat;
        n();
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        NotificationCompat.m mVar = new NotificationCompat.m(applicationA, "MUSIC_NOTIFICATION_ID");
        String str = "VideoPlayer";
        if (mediaItem == null || (title = mediaItem.getTitle()) == null) {
            title = "VideoPlayer";
        }
        NotificationCompat.m mVarQ = mVar.q(title);
        if (mediaItem != null && (subTitle = mediaItem.getSubTitle()) != null) {
            str = subTitle;
        }
        NotificationCompat.m mVarP = mVarQ.p(str);
        Intrinsics.g(mVarP, "setContentText(...)");
        Bitmap bitmap = f48405g;
        if (bitmap == null) {
            mVarP.A(BitmapFactory.decodeResource(Utils.a().getResources(), R$mipmap.player_ic_push_small_logo));
        } else {
            mVarP.A(bitmap);
        }
        mVarP.u(MusicNotificationBroadcastReceiver.INSTANCE.a());
        Object systemService = null;
        if ((mediaItem != null ? mediaItem.getPendingIntent() : null) != null) {
            mVarP.o(mediaItem.getPendingIntent());
        }
        mVarP.O(1);
        if (num != null && num.intValue() == 3) {
            mVarP.b(new NotificationCompat.b.a(R$mipmap.player_pause, "pause", MediaButtonReceiver.a(applicationA, 2L)).a());
        } else {
            mVarP.b(new NotificationCompat.b.a(R$mipmap.player_play, MediaItem.MUSIC_FLOAT_STATE_PLAY, MediaButtonReceiver.a(applicationA, 4L)).a());
        }
        androidx.media.app.c cVar = new androidx.media.app.c();
        MediaSessionCompat mediaSessionCompat2 = f48401c;
        mVarP.L(cVar.q(mediaSessionCompat2 != null ? mediaSessionCompat2.b() : null).r(0));
        mVarP.J(R$mipmap.player_ic_push_small_logo);
        try {
            Notification notificationC = mVarP.c();
            Intrinsics.e(notificationC);
            notificationC.flags = 224;
            if (f48400b) {
                if (mediaService != null) {
                    try {
                        systemService = mediaService.getSystemService("notification");
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                        return;
                    }
                }
                Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
                ((NotificationManager) systemService).notify(89757, notificationC);
                return;
            }
            if (!com.blankj.utilcode.util.c.l()) {
                i.f48408a.b("Service is restricted, cannot start foreground.");
                return;
            }
            if (mediaService != null) {
                try {
                    mediaService.startForeground(89757, notificationC);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                    try {
                        Object systemService2 = mediaService.getSystemService("notification");
                        Intrinsics.f(systemService2, "null cannot be cast to non-null type android.app.NotificationManager");
                        ((NotificationManager) systemService2).notify(89757, notificationC);
                    } catch (Throwable th4) {
                        th4.printStackTrace();
                    }
                }
            }
            f48400b = true;
        } catch (Throwable unused) {
        }
    }

    private final void n() {
        Object objM454constructorimpl;
        String coverUrl;
        MediaItem mediaItem = f48403e;
        String coverUrl2 = mediaItem != null ? mediaItem.getCoverUrl() : null;
        if (TextUtils.isEmpty(coverUrl2) || TextUtils.equals(f48406h, coverUrl2)) {
            return;
        }
        f48406h = coverUrl2;
        if (coverUrl2 != null && StringsKt.c0(coverUrl2, "http", false, 2, null)) {
            f48405g = null;
            RequestBuilder requestBuilderDiskCacheStrategy = Glide.with(Utils.a()).asBitmap().centerInside().diskCacheStrategy(DiskCacheStrategy.DATA);
            MediaItem mediaItem2 = f48403e;
            if (mediaItem2 == null || (coverUrl = mediaItem2.getCoverUrl()) == null) {
                coverUrl = "";
            }
            Intrinsics.e(requestBuilderDiskCacheStrategy.load2(k(coverUrl)).into(f48407i));
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            f48405g = f48399a.h(f48406h);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            f48405g = BitmapFactory.decodeResource(Utils.a().getResources(), R$mipmap.player_ic_push_small_logo);
        }
        m(f48402d, f48403e, f48404f, f48401c);
    }

    private final Bitmap q(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int iA = a0.a(48.0f);
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int iRound = 1;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            int i11 = options.outWidth;
            int i12 = options.outHeight;
            if (i11 <= iA && i12 <= iA) {
                options.inJustDecodeBounds = false;
                return BitmapFactory.decodeFile(str, options);
            }
            if (i12 > iA || i11 > iA) {
                float f11 = iA;
                iRound = Math.round(RangesKt.e(i12 / f11, i11 / f11));
            }
            options.inSampleSize = iRound;
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    public final int j() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    public final void l() {
        i.f48408a.a(i() + " --> initNotificationChannel() --> 初始化 通知的 渠道");
        Object systemService = Utils.a().getSystemService("notification");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        if (Build.VERSION.SDK_INT >= 26) {
            g0.a();
            NotificationChannel notificationChannelA = m.f.a("MUSIC_NOTIFICATION_ID", Utils.a().getString(R$string.player_notification_name), 3);
            notificationChannelA.setSound(null, null);
            notificationChannelA.setDescription("playing media");
            notificationManager.createNotificationChannel(notificationChannelA);
        }
        MusicNotificationBroadcastReceiver.INSTANCE.b();
    }

    public final void o(MediaService mediaService, MediaItem mediaItem, Integer num, MediaSessionCompat mediaSessionCompat) {
        if (mediaItem != null) {
            m(mediaService, mediaItem, num, mediaSessionCompat);
            return;
        }
        i.f48408a.b(i() + " --> notifyNotification() --> mediaItem == null --> return");
        p();
    }

    public final void p() {
        MediaService mediaService = f48402d;
        if (mediaService != null) {
            z.a(mediaService, 1);
        }
        Object systemService = Utils.a().getSystemService("notification");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).cancel(89757);
        f48400b = false;
    }

    public final void r(boolean z10) {
        f48400b = z10;
    }
}
