package com.transsion.mpush.core.renderer;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.transsion.mpush.R$id;
import com.transsion.mpush.R$layout;
import com.transsion.mpush.api.LocalPushMessage;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class s extends AbsNotificationRenderer {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f47575e = LazyKt.b(new Function0() { // from class: com.transsion.mpush.core.renderer.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(s.O());
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f47576f = LazyKt.b(new Function0() { // from class: com.transsion.mpush.core.renderer.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(s.P());
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f47577g = LazyKt.b(new Function0() { // from class: com.transsion.mpush.core.renderer.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Float.valueOf(s.R());
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f47578h = LazyKt.b(new Function0() { // from class: com.transsion.mpush.core.renderer.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(s.Q());
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Lazy f47579i = LazyKt.b(new Function0() { // from class: com.transsion.mpush.core.renderer.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(s.S());
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f47580j = LazyKt.b(new Function0() { // from class: com.transsion.mpush.core.renderer.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(s.T());
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f47581k = LazyKt.b(new Function0() { // from class: com.transsion.mpush.core.renderer.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(s.e0(this.f47574a));
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final int O() {
        return a0.a(100.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int P() {
        return a0.a(168.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int Q() {
        return a0.a(40.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float R() {
        return a0.a(4.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int S() {
        return a0.a(56.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int T() {
        return a0.a(71.0f);
    }

    private final Bitmap U(Context context, Bitmap bitmap, boolean z10) {
        Bitmap bitmapA = com.transsion.mpush.core.utils.c.f47625a.a(context, bitmap, z10 ? a0() : b0(), z10 ? V() : W(), ln.a.f68978a.i().getDefaultImgRes(), (64 & 32) != 0 ? 8 : (int) X(), (64 & 64) != 0 ? false : false);
        return bitmapA == null ? bitmap : bitmapA;
    }

    private final int V() {
        return ((Number) this.f47575e.getValue()).intValue();
    }

    private final int W() {
        return ((Number) this.f47576f.getValue()).intValue();
    }

    private final float X() {
        return ((Number) this.f47577g.getValue()).floatValue();
    }

    private final int Y() {
        return ((Number) this.f47578h.getValue()).intValue();
    }

    private final int Z() {
        return ((Number) this.f47579i.getValue()).intValue();
    }

    private final int a0() {
        return ((Number) this.f47580j.getValue()).intValue();
    }

    private final int b0() {
        return ((Number) this.f47581k.getValue()).intValue();
    }

    private final Bitmap c0(Context context, Bitmap bitmap, boolean z10) {
        Bitmap bitmapA = com.transsion.mpush.core.utils.c.f47625a.a(context, bitmap, z10 ? Y() : V(), Z(), ln.a.f68978a.i().getDefaultImgRes(), (64 & 32) != 0 ? 8 : (int) X(), (64 & 64) != 0 ? false : false);
        return bitmapA == null ? bitmap : bitmapA;
    }

    private final boolean d0(LocalPushMessage localPushMessage) {
        return !Intrinsics.c(localPushMessage.getStyle(), "101");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int e0(s sVar) {
        return y.e() - sVar.V();
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public void q(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, LocalPushMessage message, Bitmap bitmap, Object obj) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        boolean zD0 = d0(message);
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【本地渲染】开始绑定自定义视图，消息ID：" + message.getMessageId() + "，类型：" + (zD0 ? "竖屏" : "横屏")}, false, 4, null);
        if (remoteViews2 != null) {
            remoteViews2.setTextViewText(R$id.push_notification_title, message.getTitle());
            remoteViews2.setTextViewText(R$id.push_notification_content, message.getDesc());
            remoteViews2.setImageViewBitmap(R$id.push_notification_cimage, U(context, bitmap, zD0));
        }
        if (remoteViews != null) {
            remoteViews.setTextViewText(R$id.push_notification_title, message.getTitle());
            remoteViews.setImageViewBitmap(R$id.push_notification_cimage, c0(context, bitmap, zD0));
        }
        lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【本地渲染】视图绑定完成"}, false, 4, null);
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public Integer v(LocalPushMessage message) {
        Intrinsics.h(message, "message");
        return d0(message) ? Integer.valueOf(R$layout.push_sdk_notification_portrait_collapsed) : Integer.valueOf(R$layout.push_sdk_notification_collapsed);
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public Integer w(LocalPushMessage message) {
        Intrinsics.h(message, "message");
        return d0(message) ? Integer.valueOf(R$layout.push_sdk_notification_portrait) : Integer.valueOf(R$layout.push_sdk_notification_landscape);
    }
}
