package com.transsion.mpush.core.renderer;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.blankj.utilcode.util.Utils;
import com.transsion.mpush.R$dimen;
import com.transsion.mpush.R$id;
import com.transsion.mpush.R$layout;
import com.transsion.mpush.api.PermanentPushMessage;
import com.transsion.mpush.core.config.PermanentConfig;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class v extends AbsPermanentNotificationRenderer {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Lazy f47582i = LazyKt.b(new Function0() { // from class: com.transsion.mpush.core.renderer.t
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(v.Q());
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f47583j = LazyKt.b(new Function0() { // from class: com.transsion.mpush.core.renderer.u
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(v.P());
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Integer[] f47584k = {Integer.valueOf(R$id.imageIv1), Integer.valueOf(R$id.imageIv2), Integer.valueOf(R$id.imageIv3), Integer.valueOf(R$id.imageIv4), Integer.valueOf(R$id.imageIv5), Integer.valueOf(R$id.imageIv6), Integer.valueOf(R$id.imageIv7), Integer.valueOf(R$id.imageIv8), Integer.valueOf(R$id.imageIv9), Integer.valueOf(R$id.imageIv10)};

    private final int N() {
        return ((Number) this.f47583j.getValue()).intValue();
    }

    private final int O() {
        return ((Number) this.f47582i.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int P() {
        return (int) Utils.a().getResources().getDimension(R$dimen.push_permanent_image_height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int Q() {
        return (int) Utils.a().getResources().getDimension(R$dimen.push_permanent_image_width);
    }

    private final Bitmap R(Bitmap bitmap) {
        try {
            com.transsion.mpush.core.utils.c cVar = com.transsion.mpush.core.utils.c.f47625a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            return cVar.a(applicationA, bitmap, O(), N(), ln.a.f68978a.i().getDefaultImgRes(), (64 & 32) != 0 ? 8 : cVar.c(4.0f), (64 & 64) != 0 ? false : false);
        } catch (Exception e11) {
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "toResizeBitmap: failed " + e11, false, 4, null);
            return null;
        }
    }

    @Override // com.transsion.mpush.core.renderer.AbsPermanentNotificationRenderer
    public Integer A(List messages) {
        Intrinsics.h(messages, "messages");
        return Integer.valueOf(R$layout.push_notification_permanent_big);
    }

    @Override // com.transsion.mpush.core.renderer.AbsPermanentNotificationRenderer
    public void s(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, List list, List bitmaps, PermanentConfig permanentConfig) {
        Bitmap bitmapR;
        List messages = list;
        Intrinsics.h(context, "context");
        Intrinsics.h(messages, "messages");
        Intrinsics.h(bitmaps, "bitmaps");
        lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【常驻渲染】开始绑定自定义视图，消息数：" + list.size() + "，图片数：" + bitmaps.size()}, false, 4, null);
        String title = permanentConfig != null ? permanentConfig.getTitle() : null;
        String title2 = (title == null || title.length() == 0) ? ((PermanentPushMessage) CollectionsKt.i0(list)).getTitle() : permanentConfig.getTitle();
        if (title2 == null) {
            title2 = "";
        }
        if (remoteViews != null) {
            remoteViews.setTextViewText(R$id.push_notification_title, title2);
        }
        if (remoteViews2 != null) {
            remoteViews2.setTextViewText(R$id.push_notification_title, title2);
        }
        int i11 = 0;
        int i12 = 0;
        for (Object obj : bitmaps) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                CollectionsKt.u();
            }
            Bitmap bitmap = (Bitmap) obj;
            PermanentPushMessage permanentPushMessage = (PermanentPushMessage) CollectionsKt.l0(messages, i12);
            if (permanentPushMessage != null && (bitmapR = R(bitmap)) != null) {
                if (i12 < 3 && remoteViews != null) {
                    int iIntValue = this.f47584k[i12].intValue();
                    remoteViews.setImageViewBitmap(iIntValue, bitmapR);
                    remoteViews.setViewVisibility(iIntValue, i11);
                    remoteViews.setOnClickPendingIntent(iIntValue, AbsPermanentNotificationRenderer.w(this, context, permanentPushMessage, null, null, 12, null));
                }
                if (remoteViews2 != null) {
                    Integer[] numArr = this.f47584k;
                    if (i12 < numArr.length) {
                        int iIntValue2 = numArr[i12].intValue();
                        remoteViews2.setImageViewBitmap(iIntValue2, bitmapR);
                        remoteViews2.setViewVisibility(iIntValue2, 0);
                        remoteViews2.setOnClickPendingIntent(iIntValue2, i12 == this.f47584k.length + (-1) ? AbsPermanentNotificationRenderer.w(this, context, null, B(), String.valueOf(i12), 2, null) : AbsPermanentNotificationRenderer.w(this, context, permanentPushMessage, null, null, 12, null));
                    }
                }
            }
            messages = list;
            i12 = i13;
            i11 = 0;
        }
        int length = this.f47584k.length;
        for (int size = bitmaps.size(); size < length; size++) {
            if (size < 3 && remoteViews != null) {
                remoteViews.setViewVisibility(this.f47584k[size].intValue(), 8);
            }
            if (remoteViews2 != null) {
                remoteViews2.setViewVisibility(this.f47584k[size].intValue(), 8);
            }
        }
        if (bitmaps.size() <= 5) {
            if (remoteViews2 != null) {
                remoteViews2.setViewVisibility(R$id.content_layout_2, 8);
            }
        } else if (remoteViews2 != null) {
            remoteViews2.setViewVisibility(R$id.content_layout_2, 0);
        }
        lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【常驻渲染】视图绑定完成"}, false, 4, null);
    }

    @Override // com.transsion.mpush.core.renderer.AbsPermanentNotificationRenderer
    public Integer z(List messages) {
        Intrinsics.h(messages, "messages");
        return Integer.valueOf(R$layout.push_notification_permanent_small);
    }
}
