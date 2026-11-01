package com.transsion.push.feature.seek;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.renderer.AbsNotificationRenderer;
import com.transsion.mpush.core.renderer.s;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends AbsNotificationRenderer {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f50825f = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f50826e = LazyKt.b(new Function0() { // from class: com.transsion.push.feature.seek.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.J();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final s I() {
        return (s) this.f50826e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final s J() {
        return new s();
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public void E(Context context, LocalPushMessage message, String str, String str2) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        super.E(context, message, str, str2);
        SeekPushFeature.f50821d.b(context);
    }

    @Override // com.transsion.mpush.core.renderer.i
    protected NotificationCompat.m a(Context context, String channelId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(channelId, "channelId");
        NotificationCompat.m mVarL = super.a(context, channelId).E(true).l(false);
        Intrinsics.g(mVarL, "setAutoCancel(...)");
        return mVarL;
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public void q(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, LocalPushMessage message, Bitmap bitmap, Object obj) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        I().q(context, remoteViews, remoteViews2, message, bitmap, obj);
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    protected String t() {
        return "push_sdk_seek_channel";
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    protected String u() {
        return "求片推送";
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public Integer v(LocalPushMessage message) {
        Intrinsics.h(message, "message");
        return I().v(message);
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public Integer w(LocalPushMessage message) {
        Intrinsics.h(message, "message");
        return I().w(message);
    }
}
