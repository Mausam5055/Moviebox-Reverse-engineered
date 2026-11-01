package com.transsion.push.feature.toolbar;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.util.g0;
import com.blankj.utilcode.util.Utils;
import com.transsion.lib.push.R$string;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import m.f;

/* JADX INFO: loaded from: classes6.dex */
public final class ToolbarNotificationUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ToolbarNotificationUtils f50834a = new ToolbarNotificationUtils();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f50835b = 790343710;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map f50836c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final NotificationManager f50837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ToolbarNoticeConfig f50838e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f50839f;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50840a;

        static {
            int[] iArr = new int[NoticeIntentType.values().length];
            try {
                iArr[NoticeIntentType.SEARCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NoticeIntentType.TOP_10.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NoticeIntentType.SETTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NoticeIntentType.CONTENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f50840a = iArr;
        }
    }

    static {
        Object systemService = Utils.a().getSystemService("notification");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        f50837d = notificationManager;
        if (Build.VERSION.SDK_INT >= 26) {
            g0.a();
            notificationManager.createNotificationChannel(f.a("mbx_tool_notice", Utils.a().getString(R$string.tool_notice_name), 2));
        }
    }

    private ToolbarNotificationUtils() {
    }

    private final native void A();

    private final native void B(RemoteViews remoteViews, Pair pair);

    private final native void C(RemoteViews remoteViews, Pair pair);

    private final native void D(RemoteViews remoteViews, Pair pair);

    private final native void E();

    /* JADX INFO: Access modifiers changed from: private */
    public static final native Unit F(Pair pair, Bitmap bitmap, Bitmap bitmap2);

    private final native void h(RemoteViews remoteViews, boolean z10);

    private final native boolean j(long j11, int i11);

    private final native int l();

    private final native PendingIntent m(String str, String str2);

    private final native int n();

    private final native Pair o();

    private final native int p();

    private final native NotificationCompat.m q(Pair pair, Pair pair2);

    private final native boolean r();

    /* JADX INFO: Access modifiers changed from: private */
    public final native boolean s(int i11);

    /* JADX INFO: Access modifiers changed from: private */
    public final native Object t(String str, Continuation continuation);

    private final native void u(Pair pair, Function2 function2);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void w(ToolbarNoticeConfig toolbarNoticeConfig);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native Unit x(boolean z10);

    private final native void z(String str);

    public final native void G();

    public final native void i();

    public final native String k(NoticeIntentType noticeIntentType);

    public final native void v(Intent intent);

    public final native void y();
}
