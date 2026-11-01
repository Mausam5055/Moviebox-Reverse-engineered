package com.transsion.mpush.core.renderer;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.transsion.mpush.R$string;
import com.transsion.mpush.api.INotificationRenderer;
import com.transsion.mpush.api.IPushImageLoader;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.config.MsgShowStatus;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbsNotificationRenderer extends i implements INotificationRenderer {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f47545d = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n0 f47546c = o0.a(l2.b(null, 1, null).plus(y0.b()));

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements IPushImageLoader.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LocalPushMessage f47547a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AbsNotificationRenderer f47548b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f47549c;

        b(LocalPushMessage localPushMessage, AbsNotificationRenderer absNotificationRenderer, Context context) {
            this.f47547a = localPushMessage;
            this.f47548b = absNotificationRenderer;
            this.f47549c = context;
        }

        @Override // com.transsion.mpush.api.IPushImageLoader.Callback
        public void onFailed(Exception exc) {
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【渲染层】图片加载失败，消息ID：" + this.f47547a.getMessageId() + "，异常：" + exc, false, 4, null);
            AbsNotificationRenderer.A(this.f47548b, this.f47549c, this.f47547a, null, null, 8, null);
        }

        @Override // com.transsion.mpush.api.IPushImageLoader.Callback
        public void onSuccess(Bitmap bitmap) {
            Intrinsics.h(bitmap, "bitmap");
            lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【渲染层】图片加载成功，消息ID：" + this.f47547a.getMessageId() + "，图片尺寸：" + bitmap.getWidth() + "x" + bitmap.getHeight()}, false, 4, null);
            AbsNotificationRenderer.A(this.f47548b, this.f47549c, this.f47547a, bitmap, null, 8, null);
        }
    }

    public static /* synthetic */ void A(AbsNotificationRenderer absNotificationRenderer, Context context, LocalPushMessage localPushMessage, Bitmap bitmap, Object obj, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: internalShow");
        }
        if ((i11 & 8) != 0) {
            obj = null;
        }
        absNotificationRenderer.z(context, localPushMessage, bitmap, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(AbsNotificationRenderer absNotificationRenderer, Context context, String str) {
        absNotificationRenderer.r(context, str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(AbsNotificationRenderer absNotificationRenderer, Context context, String str) {
        absNotificationRenderer.r(context, str);
        return Unit.f67061a;
    }

    public void C(Context context, LocalPushMessage message, String str, Exception e11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        Intrinsics.h(e11, "e");
    }

    public void D(NotificationCompat.m builder, LocalPushMessage message, Bitmap bitmap) {
        Intrinsics.h(builder, "builder");
        Intrinsics.h(message, "message");
    }

    public void E(Context context, LocalPushMessage message, String str, String str2) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        ln.b.f68987a.k(context, message, str, str2);
    }

    protected void F(Context context, LocalPushMessage msgBean) {
        Intrinsics.h(context, "context");
        Intrinsics.h(msgBean, "msgBean");
        kotlinx.coroutines.k.d(this.f47546c, null, null, new AbsNotificationRenderer$updateMsgStatus$1(msgBean, context, null), 3, null);
    }

    @Override // com.transsion.mpush.core.renderer.i
    public void l(final Context context) {
        Intrinsics.h(context, "context");
        final String strT = t();
        d(context, strT, new Function0() { // from class: com.transsion.mpush.core.renderer.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AbsNotificationRenderer.G(this.f47559a, context, strT);
            }
        });
    }

    public void q(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, LocalPushMessage message, Bitmap bitmap, Object obj) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
    }

    protected void r(Context context, String channelId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(channelId, "channelId");
        c(context, channelId, u(), 4, context.getString(R$string.push_channel_standard_desc));
    }

    public PendingIntent s(Context context, LocalPushMessage message) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        return null;
    }

    @Override // com.transsion.mpush.api.INotificationRenderer
    public void show(Context context, LocalPushMessage message) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.l(c0828a, "M_PUSH_SDK", "【渲染层】开始渲染通知，消息ID：" + message.getMessageId() + "，消息类型：" + message.getStyle() + "，标题：" + message.getTitle(), false, 4, null);
        String strX = x(message);
        int iY = y(context, message);
        if (strX == null || strX.length() == 0) {
            lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "【渲染层】消息无图片，直接展示，消息ID：" + message.getMessageId(), false, 4, null);
            A(this, context, message, null, null, 8, null);
            return;
        }
        lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【渲染层】开始加载图片，消息ID：" + message.getMessageId() + "，图片URL：" + strX}, false, 4, null);
        ln.a.f68978a.f().loadImage(context, strX, Integer.valueOf(iY), new b(message, this, context));
    }

    protected String t() {
        return "push_sdk_standard_channel";
    }

    protected String u() {
        String string = Utils.a().getString(R$string.push_channel_standard_name);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    public Integer v(LocalPushMessage message) {
        Intrinsics.h(message, "message");
        return null;
    }

    public Integer w(LocalPushMessage message) {
        Intrinsics.h(message, "message");
        return null;
    }

    protected String x(LocalPushMessage message) {
        Intrinsics.h(message, "message");
        List imageArray = message.getImageArray();
        if (imageArray.isEmpty()) {
            return null;
        }
        return (String) imageArray.get(0);
    }

    protected int y(Context context, LocalPushMessage message) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        return Intrinsics.c(message.getStyle(), LocalPushMessage.STYLE_VERTICAL_TYPE) ? a0.a(100.0f) : y.e() - a0.a(80.0f);
    }

    public final void z(final Context context, LocalPushMessage message, Bitmap bitmap, Object obj) {
        RemoteViews remoteViews;
        RemoteViews remoteViews2;
        RemoteViews remoteViews3;
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "[AbsNotificationRenderer] internalShow -> Start. Bitmap Present: " + (bitmap != null), false, 4, null);
        final String strT = t();
        try {
            String strD = d(context, strT, new Function0() { // from class: com.transsion.mpush.core.renderer.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AbsNotificationRenderer.B(this.f47556a, context, strT);
                }
            });
            try {
                NotificationCompat.m mVarJ = a(context, strD).J(g());
                Intrinsics.g(mVarJ, "setSmallIcon(...)");
                RemoteViews remoteViews4 = null;
                if (message.isRefresh()) {
                    lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "【渲染层】静默刷新模式，关闭声音和震动，消息ID：" + message.getMessageId(), false, 4, null);
                    mVarJ.F(true);
                    mVarJ.t(0);
                    remoteViews4 = null;
                    mVarJ.K(null);
                    mVarJ.N(new long[]{0});
                } else {
                    mVarJ.t(-1);
                }
                Integer numV = v(message);
                Integer numW = w(message);
                if (numV == null && numW == null) {
                    remoteViews = remoteViews4;
                    lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "【渲染层】使用默认样式，消息ID：" + message.getMessageId(), false, 4, null);
                    D(mVarJ, message, bitmap);
                } else {
                    remoteViews = remoteViews4;
                    lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【渲染层】使用自定义布局，消息ID：" + message.getMessageId() + "，收起态ID：" + numV + "，展开态ID：" + numW}, false, 4, null);
                    String packageName = context.getPackageName();
                    if (numV != null) {
                        RemoteViews remoteViews5 = new RemoteViews(packageName, numV.intValue());
                        mVarJ.s(remoteViews5);
                        remoteViews2 = remoteViews5;
                    } else {
                        remoteViews2 = remoteViews;
                    }
                    if (numW != null) {
                        RemoteViews remoteViews6 = new RemoteViews(packageName, numW.intValue());
                        mVarJ.r(remoteViews6);
                        remoteViews3 = remoteViews6;
                    } else {
                        remoteViews3 = remoteViews;
                    }
                    mVarJ.L(new NotificationCompat.o());
                    q(context, remoteViews2, remoteViews3, message, bitmap, obj);
                }
                PendingIntent pendingIntentS = s(context, message);
                if (pendingIntentS == null) {
                    int iE = e(message.getMessageId());
                    pendingIntentS = i.n(this, context, b(context, message, iE, strD), iE, false, 8, null);
                }
                mVarJ.o(pendingIntentS);
                int iE2 = e(message.getMessageId());
                lg.a.C0828a.l(c0828a, "M_PUSH_SDK", "【渲染层】通知发送成功，消息ID：" + message.getMessageId() + "，通知ID：" + iE2, false, 4, null);
                i(context, iE2, mVarJ);
                if (message.getMessageId() != null) {
                    F(context, message);
                }
                lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "[AbsNotificationRenderer] internalShow ->refresh msg can:" + message.isRefresh(), false, 4, null);
                if (message.isRefresh()) {
                    return;
                }
                E(context, message, strD, bitmap == null ? MsgShowStatus.STATUS_IMG_ERROR : remoteViews);
                if (ln.a.f68978a.i().getEnableRefresh()) {
                    Intent intent = new Intent("com.transsion.mpush.action.NEW_MESSAGE");
                    intent.putExtra("message", message);
                    r1.a.b(context).d(intent);
                    lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "[AbsNotificationRenderer] internalShow -> Broadcast sent for refresh", false, 4, null);
                }
            } catch (Exception e11) {
                e = e11;
                strT = strD;
                lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "[AbsNotificationRenderer] internalShow -> Failed: " + e, false, 4, null);
                e.printStackTrace();
                C(context, message, strT, e);
            }
        } catch (Exception e12) {
            e = e12;
        }
    }
}
