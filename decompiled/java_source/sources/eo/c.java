package eo;

import android.app.NotificationManager;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f61923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f61924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f61925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f61926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f61927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile int f61928f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Lazy f61929g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Lazy f61930h;

    public static final class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10, Uri uri) {
            super.onChange(z10, uri);
            c.f61923a.d();
        }
    }

    static {
        c cVar = new c();
        f61923a = cVar;
        f61924b = true;
        f61925c = 200;
        f61926d = 100;
        f61927e = 15;
        f61928f = 100;
        f61929g = LazyKt.b(new Function0() { // from class: eo.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.i();
            }
        });
        f61930h = LazyKt.b(new Function0() { // from class: eo.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.j();
            }
        });
        Utils.a().getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, new a(new Handler()));
        try {
            Result.Companion companion = Result.INSTANCE;
            f61927e = cVar.f().getStreamMaxVolume(3);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        f61923a.h();
    }

    private c() {
    }

    private final AudioManager f() {
        return (AudioManager) f61929g.getValue();
    }

    private final NotificationManager g() {
        return (NotificationManager) f61930h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AudioManager i() {
        Object systemService = Utils.a().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        return (AudioManager) systemService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NotificationManager j() {
        Object systemService = Utils.a().getSystemService("notification");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        return (NotificationManager) systemService;
    }

    public final void c(int i11, float f11) {
        float f12 = (i11 + f11) / 100.0f;
        int i12 = f61927e;
        int i13 = (int) (f12 * i12);
        if (i13 <= 0) {
            i12 = 0;
        } else if (i13 < i12) {
            i12 = i13;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("preVolume:");
        sb2.append(i11);
        sb2.append(", volume:");
        sb2.append(i12);
        try {
            if (f().isVolumeFixed() && !f61924b) {
                return;
            }
            f().setStreamVolume(3, i12, 0);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public final void d() {
        try {
            Result.Companion companion = Result.INSTANCE;
            int streamVolume = f().getStreamVolume(3);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("checkCurVolume volume:");
            sb2.append(streamVolume);
            if (streamVolume < f61927e) {
                int i11 = f61928f;
                int i12 = f61927e;
                int i13 = f61926d;
                if ((i11 * i12) / i13 != streamVolume) {
                    f61928f = (streamVolume * i13) / i12;
                }
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final int e() {
        return f61928f;
    }

    public final void h() {
        try {
            Result.Companion companion = Result.INSTANCE;
            f61924b = g().isNotificationPolicyAccessGranted();
            int streamVolume = f().getStreamVolume(3);
            f61928f = (f61926d * streamVolume) / f61927e;
            Result.m454constructorimpl(Integer.valueOf(Log.d("AppVolumeManager", "curVolume:" + f61928f + ", volume:" + streamVolume + " system:" + f61927e)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final int k(int i11) {
        int iF = RangesKt.f(RangesKt.i(f61928f + i11, f61925c), 0);
        if (iF <= f61926d) {
            c(f61928f, i11);
        }
        f61928f = iF;
        return iF;
    }
}
