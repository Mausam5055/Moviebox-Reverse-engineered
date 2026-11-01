package com.transsion.mpush.core.renderer;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.util.g0;
import com.blankj.utilcode.util.a0;
import com.transsion.mpush.R$string;
import com.transsion.mpush.api.PermanentPushMessage;
import com.transsion.mpush.core.activity.SdkPushClickActivity;
import com.transsion.mpush.core.config.PermanentConfig;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbsPermanentNotificationRenderer extends i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f47550h = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile long f47552d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n0 f47551c = o0.a(l2.b(null, 1, null).plus(y0.b()));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile String f47553e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f47554f = 600000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f47555g = a0.a(100.0f);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(final Context context, List list, List list2, PermanentConfig permanentConfig) {
        RemoteViews remoteViews;
        RemoteViews remoteViews2;
        boolean z10 = true;
        try {
            final String strX = x();
            d(context, strX, new Function0() { // from class: com.transsion.mpush.core.renderer.h
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AbsPermanentNotificationRenderer.F(this.f47565a, context, strX);
                }
            });
            NotificationCompat.m mVarI = a(context, strX).y("PermanentGroup").z(false).E(true).l(false).I(false);
            Intrinsics.g(mVarI, "setShowWhen(...)");
            PermanentPushMessage permanentPushMessage = (PermanentPushMessage) CollectionsKt.k0(list);
            if (permanentPushMessage == null || !permanentPushMessage.getIsRefresh()) {
                mVarI.t(-1);
            } else {
                lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "[AbsPermanentNotificationRenderer] internalShow -> Silent Refresh", false, 4, null);
                mVarI.F(true);
                mVarI.t(0);
                mVarI.K(null);
                mVarI.N(new long[]{0});
            }
            Integer numZ = z(list);
            Integer numA = A(list);
            if (numZ == null && numA == null) {
                lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "internalShow: using default style", false, 4, null);
                I(mVarI, list, list2, permanentConfig);
            } else {
                lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "internalShow: using custom views collapsed=" + numZ + ", expanded=" + numA, false, 4, null);
                String packageName = context.getPackageName();
                if (numZ != null) {
                    remoteViews = new RemoteViews(packageName, numZ.intValue());
                    mVarI.s(remoteViews);
                } else {
                    remoteViews = null;
                }
                if (numA != null) {
                    RemoteViews remoteViews3 = new RemoteViews(packageName, numA.intValue());
                    mVarI.r(remoteViews3);
                    remoteViews2 = remoteViews3;
                } else {
                    remoteViews2 = null;
                }
                mVarI.L(new NotificationCompat.o());
                mVarI.O(1);
                mVarI.G(2);
                if (Build.VERSION.SDK_INT >= 26) {
                    mVarI.t(0);
                }
                s(context, remoteViews, remoteViews2, list, list2, permanentConfig);
            }
            mVarI.o(w(this, context, null, B(), "10010", 2, null));
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【常驻渲染】常驻通知发送成功，通知ID：10010，消息数：" + list.size(), false, 4, null);
            i(context, 10010, mVarI);
            String strC = C(list);
            if (!Intrinsics.c(strC, this.f47553e)) {
                this.f47553e = strC;
                PermanentPushMessage permanentPushMessage2 = (PermanentPushMessage) CollectionsKt.k0(list);
                if (permanentPushMessage2 != null) {
                    List list3 = list2;
                    if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                        Iterator it = list3.iterator();
                        do {
                            if (!it.hasNext()) {
                                z10 = false;
                                break;
                            }
                        } while (((Bitmap) it.next()) == null);
                    } else {
                        z10 = false;
                        break;
                    }
                    ln.b.f68987a.i(context, permanentPushMessage2, strX, z10);
                }
            }
            this.f47552d = System.currentTimeMillis();
            PermanentPushMessage permanentPushMessage3 = (PermanentPushMessage) CollectionsKt.k0(list);
            if (permanentPushMessage3 == null || permanentPushMessage3.getIsRefresh() || !ln.a.f68978a.i().getEnableRefresh()) {
                return;
            }
            Intent intent = new Intent("com.transsion.mpush.action.NEW_MESSAGE");
            intent.putExtra("message", permanentPushMessage3);
            r1.a.b(context).d(intent);
        } catch (Exception e11) {
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "internalShow: failed " + e11, false, 4, null);
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(AbsPermanentNotificationRenderer absPermanentNotificationRenderer, Context context, String str) {
        absPermanentNotificationRenderer.u(context, str);
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    static /* synthetic */ Object H(AbsPermanentNotificationRenderer absPermanentNotificationRenderer, Context context, List list, Continuation continuation) throws Throwable {
        AbsPermanentNotificationRenderer$loadImages$1 absPermanentNotificationRenderer$loadImages$1;
        if (continuation instanceof AbsPermanentNotificationRenderer$loadImages$1) {
            absPermanentNotificationRenderer$loadImages$1 = (AbsPermanentNotificationRenderer$loadImages$1) continuation;
            int i11 = absPermanentNotificationRenderer$loadImages$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                absPermanentNotificationRenderer$loadImages$1.label = i11 - Integer.MIN_VALUE;
            } else {
                absPermanentNotificationRenderer$loadImages$1 = new AbsPermanentNotificationRenderer$loadImages$1(absPermanentNotificationRenderer, continuation);
            }
        } else {
            absPermanentNotificationRenderer$loadImages$1 = new AbsPermanentNotificationRenderer$loadImages$1(absPermanentNotificationRenderer, continuation);
        }
        Object objE = absPermanentNotificationRenderer$loadImages$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = absPermanentNotificationRenderer$loadImages$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(objE);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objE);
            }
        }
        ResultKt.b(objE);
        int i13 = RangesKt.i(list.size(), 10);
        lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "loadImages: starting load for " + i13 + " images", false, 4, null);
        AbsPermanentNotificationRenderer$loadImages$deferredList$1 absPermanentNotificationRenderer$loadImages$deferredList$1 = new AbsPermanentNotificationRenderer$loadImages$deferredList$1(i13, list, absPermanentNotificationRenderer, context, null);
        absPermanentNotificationRenderer$loadImages$1.label = 1;
        objE = o0.e(absPermanentNotificationRenderer$loadImages$deferredList$1, absPermanentNotificationRenderer$loadImages$1);
        if (objE == objF) {
            return objF;
        }
        absPermanentNotificationRenderer$loadImages$1.label = 2;
        objE = kotlinx.coroutines.f.a((List) objE, absPermanentNotificationRenderer$loadImages$1);
        return objE == objF ? objF : objE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K(AbsPermanentNotificationRenderer absPermanentNotificationRenderer, Context context, String str) {
        absPermanentNotificationRenderer.u(context, str);
        return Unit.f67061a;
    }

    public static /* synthetic */ PendingIntent w(AbsPermanentNotificationRenderer absPermanentNotificationRenderer, Context context, PermanentPushMessage permanentPushMessage, String str, String str2, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createPermanentClickIntent");
        }
        if ((i11 & 2) != 0) {
            permanentPushMessage = null;
        }
        if ((i11 & 4) != 0) {
            str = null;
        }
        if ((i11 & 8) != 0) {
            str2 = null;
        }
        return absPermanentNotificationRenderer.v(context, permanentPushMessage, str, str2);
    }

    public Integer A(List messages) {
        Intrinsics.h(messages, "messages");
        return null;
    }

    protected final String B() {
        String mainDeepLink = ln.a.f68978a.i().getMainDeepLink();
        if (mainDeepLink == null || mainDeepLink.length() <= 0) {
            return null;
        }
        return mainDeepLink + "&channel=permanent_push&msgId=111&msg_type=11";
    }

    protected final String C(List messages) {
        Intrinsics.h(messages, "messages");
        StringBuilder sb2 = new StringBuilder();
        int i11 = 0;
        for (Object obj : messages) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            PermanentPushMessage permanentPushMessage = (PermanentPushMessage) obj;
            if (i11 <= 9) {
                sb2.append(permanentPushMessage.getSubjectId());
            }
            i11 = i12;
        }
        com.transsion.mpush.core.utils.c cVar = com.transsion.mpush.core.utils.c.f47625a;
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return cVar.d(string);
    }

    protected final int D() {
        return this.f47555g;
    }

    protected Object G(Context context, List list, Continuation continuation) {
        return H(this, context, list, continuation);
    }

    public void I(NotificationCompat.m builder, List messages, List bitmaps, PermanentConfig permanentConfig) {
        Intrinsics.h(builder, "builder");
        Intrinsics.h(messages, "messages");
        Intrinsics.h(bitmaps, "bitmaps");
    }

    public final void J(Context context, List messages, PermanentConfig permanentConfig) {
        Intrinsics.h(context, "context");
        Intrinsics.h(messages, "messages");
        if (messages.isEmpty()) {
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【常驻渲染】消息列表为空，跳过渲染", false, 4, null);
            return;
        }
        String strC = C(messages);
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.l(c0828a, "M_PUSH_SDK", "【常驻渲染】开始渲染常驻通知，消息数：" + messages.size() + "，消息ID：" + strC, false, 4, null);
        if (!Intrinsics.c(strC, this.f47553e) || System.currentTimeMillis() - this.f47552d >= this.f47554f) {
            kotlinx.coroutines.k.d(this.f47551c, null, null, new AbsPermanentNotificationRenderer$show$1(messages, this, context, permanentConfig, null), 3, null);
        } else {
            lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "【常驻渲染】相同内容刷新频率限制，跳过渲染", false, 4, null);
        }
    }

    @Override // com.transsion.mpush.core.renderer.i
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
            notificationChannelA.enableLights(false);
            notificationChannelA.enableVibration(false);
            notificationChannelA.setShowBadge(false);
            notificationChannelA.setLockscreenVisibility(1);
            notificationManager.createNotificationChannel(notificationChannelA);
        }
    }

    @Override // com.transsion.mpush.core.renderer.i
    public void l(final Context context) {
        Intrinsics.h(context, "context");
        final String strX = x();
        d(context, strX, new Function0() { // from class: com.transsion.mpush.core.renderer.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AbsPermanentNotificationRenderer.K(this.f47562a, context, strX);
            }
        });
    }

    public void s(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, List messages, List bitmaps, PermanentConfig permanentConfig) {
        Intrinsics.h(context, "context");
        Intrinsics.h(messages, "messages");
        Intrinsics.h(bitmaps, "bitmaps");
    }

    public final void t(Context context) {
        Intrinsics.h(context, "context");
        androidx.core.app.t.d(context).b(10010);
    }

    protected void u(Context context, String channelId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(channelId, "channelId");
        c(context, channelId, y(context), 4, context.getString(R$string.push_channel_permanent_desc));
    }

    protected final PendingIntent v(Context context, PermanentPushMessage permanentPushMessage, String str, String str2) {
        String subjectId;
        String deeplink;
        String subjectId2;
        Intrinsics.h(context, "context");
        Intent intent = new Intent(context, (Class<?>) SdkPushClickActivity.class);
        if (str2 == null) {
            subjectId = permanentPushMessage != null ? permanentPushMessage.getSubjectId() : null;
        } else {
            subjectId = str2;
        }
        intent.putExtra("msg_id", subjectId);
        if (str == null) {
            deeplink = permanentPushMessage != null ? permanentPushMessage.getDeeplink() : null;
        } else {
            deeplink = str;
        }
        intent.putExtra("msg_uri", deeplink);
        intent.putExtra("is_permanent", true);
        intent.putExtra("permanent_id", permanentPushMessage != null ? permanentPushMessage.getSubjectId() : null);
        intent.putExtra("msg_type", 11);
        intent.setFlags(ASTNode.DEOP);
        if (permanentPushMessage != null && (subjectId2 = permanentPushMessage.getSubjectId()) != null) {
            str2 = subjectId2;
        }
        return i.n(this, context, intent, (str2 + str).hashCode(), false, 8, null);
    }

    protected String x() {
        return "push_sdk_permanent";
    }

    protected String y(Context context) {
        Intrinsics.h(context, "context");
        String string = context.getString(R$string.push_channel_permanent_name);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    public Integer z(List messages) {
        Intrinsics.h(messages, "messages");
        return null;
    }
}
