package com.transsion.mpush.core.renderer;

import android.R;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.util.g0;
import com.transsion.mpush.api.IPushImageLoader;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.activity.SdkPushClickActivity;
import com.transsion.mpush.core.config.PushSdkConfig;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap f47568a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f47569b = new Object();

    public static final class a implements IPushImageLoader.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f47570a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Continuation f47571b;

        a(AtomicBoolean atomicBoolean, Continuation continuation) {
            this.f47570a = atomicBoolean;
            this.f47571b = continuation;
        }

        @Override // com.transsion.mpush.api.IPushImageLoader.Callback
        public void onFailed(Exception exc) {
            if (this.f47570a.compareAndSet(false, true)) {
                lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "suspendLoadImage: failed " + exc, false, 4, null);
                this.f47571b.resumeWith(Result.m454constructorimpl(null));
            }
        }

        @Override // com.transsion.mpush.api.IPushImageLoader.Callback
        public void onSuccess(Bitmap bitmap) {
            Intrinsics.h(bitmap, "bitmap");
            if (this.f47570a.compareAndSet(false, true)) {
                lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"suspendLoadImage: success"}, false, 4, null);
                this.f47571b.resumeWith(Result.m454constructorimpl(bitmap));
            }
        }
    }

    private final boolean h(Context context, String str) {
        if (Build.VERSION.SDK_INT < 26) {
            return true;
        }
        Object systemService = context.getSystemService("notification");
        NotificationManager notificationManager = systemService instanceof NotificationManager ? (NotificationManager) systemService : null;
        return (notificationManager == null || notificationManager.getNotificationChannel(str) == null) ? false : true;
    }

    public static /* synthetic */ Object k(i iVar, Context context, String str, Integer num, Continuation continuation, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: suspendLoadImage");
        }
        if ((i11 & 4) != 0) {
            num = null;
        }
        return iVar.j(context, str, num, continuation);
    }

    public static /* synthetic */ PendingIntent n(i iVar, Context context, Intent intent, int i11, boolean z10, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: wrapPendingIntent");
        }
        if ((i12 & 8) != 0) {
            z10 = false;
        }
        return iVar.m(context, intent, i11, z10);
    }

    protected NotificationCompat.m a(Context context, String channelId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(channelId, "channelId");
        NotificationCompat.m mVarI = new NotificationCompat.m(context, channelId).J(g()).G(2).l(true).y(channelId).z(false).P(System.currentTimeMillis()).I(true);
        Intrinsics.g(mVarI, "setShowWhen(...)");
        return mVarI;
    }

    protected final Intent b(Context context, LocalPushMessage message, int i11, String str) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        Intent intent = new Intent(context, (Class<?>) SdkPushClickActivity.class);
        intent.putExtra("msg_id", message.getMessageId());
        intent.putExtra("msg_uri", message.getDeeplink());
        intent.putExtra("msg_type", message.getType());
        intent.putExtra("push_message", message);
        intent.putExtra("notification_id", i11);
        if (str != null) {
            intent.putExtra("channel_id", str);
        }
        intent.putExtra("screen_status", ln.b.f68987a.e(context));
        intent.putExtra("msg_source", message.getSource());
        intent.putExtra("msg_style", message.getStyle());
        intent.addFlags(ASTNode.DEOP);
        return intent;
    }

    protected void c(Context context, String channelId, String name, int i11, String str) {
        Intrinsics.h(context, "context");
        Intrinsics.h(channelId, "channelId");
        Intrinsics.h(name, "name");
        if (Build.VERSION.SDK_INT >= 26) {
            Object systemService = context.getSystemService("notification");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            NotificationManager notificationManager = (NotificationManager) systemService;
            if (notificationManager.getNotificationChannel(channelId) != null) {
                return;
            }
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "createNotificationChannel: creating channel " + channelId + " (" + name + ")", false, 4, null);
            g0.a();
            NotificationChannel notificationChannelA = m.f.a(channelId, name, i11);
            notificationChannelA.setDescription(str);
            notificationChannelA.enableLights(true);
            notificationChannelA.enableVibration(true);
            notificationChannelA.setShowBadge(true);
            notificationChannelA.setLockscreenVisibility(1);
            notificationManager.createNotificationChannel(notificationChannelA);
        }
    }

    protected final String d(Context context, String channelId, Function0 createChannelAction) {
        Object objM454constructorimpl;
        Intrinsics.h(context, "context");
        Intrinsics.h(channelId, "channelId");
        Intrinsics.h(createChannelAction, "createChannelAction");
        if (Build.VERSION.SDK_INT < 26) {
            return channelId;
        }
        Object obj = this.f47568a.get(channelId);
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.c(obj, bool)) {
            return channelId;
        }
        synchronized (this.f47569b) {
            if (Intrinsics.c(this.f47568a.get(channelId), bool)) {
                return channelId;
            }
            if (h(context, channelId)) {
                this.f47568a.put(channelId, bool);
                return channelId;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                createChannelAction.invoke();
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "ensureChannelIdForRender: create channel failed, channelId=" + channelId + ", error=" + thM457exceptionOrNullimpl, false, 4, null);
            }
            if (h(context, channelId)) {
                this.f47568a.put(channelId, Boolean.TRUE);
            } else {
                lg.a.C0828a.z(lg.a.f68839a, "M_PUSH_SDK", "ensureChannelIdForRender: channel still missing after create, channelId=" + channelId, false, 4, null);
            }
            return channelId;
        }
    }

    protected final int e(String str) {
        if (TextUtils.isEmpty(str)) {
            return Math.abs((int) System.currentTimeMillis());
        }
        return Math.abs(str != null ? str.hashCode() : 0);
    }

    protected final int f(boolean z10) {
        if (Build.VERSION.SDK_INT >= 31) {
            return z10 ? 167772160 : 201326592;
        }
        return ASTNode.NOJIT;
    }

    public final int g() {
        PushSdkConfig pushSdkConfigI = ln.a.f68978a.i();
        return pushSdkConfigI.getSmallIconRes() != 0 ? pushSdkConfigI.getSmallIconRes() : R.drawable.ic_dialog_email;
    }

    protected final void i(Context context, int i11, NotificationCompat.m builder) {
        Intrinsics.h(context, "context");
        Intrinsics.h(builder, "builder");
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "notify id: " + i11, false, 4, null);
        try {
            if (Build.VERSION.SDK_INT < 33 || androidx.core.content.b.checkSelfPermission(context, "android.permission.POST_NOTIFICATIONS") == 0) {
                androidx.core.app.t.d(context).f(i11, builder.c());
            } else {
                lg.a.C0828a.z(c0828a, "M_PUSH_SDK", "notify skipped: POST_NOTIFICATIONS permission not granted", false, 4, null);
            }
        } catch (Exception e11) {
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "notify error: " + e11, false, 4, null);
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object j(Context context, String str, Integer num, Continuation continuation) {
        if (str.length() == 0) {
            return null;
        }
        lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"suspendLoadImage: loading " + str}, false, 4, null);
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.c(continuation));
        ln.a.f68978a.f().loadImage(context, str, Boxing.d(num != null ? num.intValue() : 0), new a(new AtomicBoolean(false), safeContinuation));
        Object objA = safeContinuation.a();
        if (objA == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objA;
    }

    public void l(Context context) {
        Intrinsics.h(context, "context");
    }

    protected final PendingIntent m(Context context, Intent intent, int i11, boolean z10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(intent, "intent");
        PendingIntent activity = PendingIntent.getActivity(context, i11, intent, f(z10));
        Intrinsics.g(activity, "getActivity(...)");
        return activity;
    }
}
