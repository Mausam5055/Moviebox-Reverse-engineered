package com.transsion.push.feature.activate;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.a0;
import com.transsion.ad.ps.activate.PsActivateBean;
import com.transsion.lib.push.R$id;
import com.transsion.lib.push.R$layout;
import com.transsion.lib.push.R$string;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.renderer.AbsNotificationRenderer;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivateNotificationRenderer extends AbsNotificationRenderer {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f50812f = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n0 f50813e = o0.a(l2.b(null, 1, null).plus(y0.b()));

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.transsion.push.feature.activate.ActivateNotificationRenderer$show$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.push.feature.activate.ActivateNotificationRenderer$show$1", f = "ActivateNotificationRenderer.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ PsActivateBean $adBean;
        final /* synthetic */ Context $context;
        final /* synthetic */ String $iconUrl;
        final /* synthetic */ LocalPushMessage $message;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, String str, LocalPushMessage localPushMessage, PsActivateBean psActivateBean, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = context;
            this.$iconUrl = str;
            this.$message = localPushMessage;
            this.$adBean = psActivateBean;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ActivateNotificationRenderer.this.new AnonymousClass1(this.$context, this.$iconUrl, this.$message, this.$adBean, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                ActivateNotificationRenderer activateNotificationRenderer = ActivateNotificationRenderer.this;
                Context context = this.$context;
                String str = this.$iconUrl;
                this.label = 1;
                obj = activateNotificationRenderer.j(context, str, null, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            Bitmap bitmap = (Bitmap) obj;
            ActivateNotificationRenderer.this.P(this.$context, this.$message, ActivateNotificationRenderer.this.R(bitmap != null ? bitmap.copy(Bitmap.Config.ARGB_8888, false) : null, a0.a(40.0f)), this.$adBean);
            return Unit.f67061a;
        }
    }

    private final void L(Context context, RemoteViews remoteViews, PsActivateBean psActivateBean, LocalPushMessage localPushMessage, Bitmap bitmap) {
        String title;
        String title2;
        String buttonText;
        int i11 = R$id.notification_title_tv;
        int i12 = R$string.notification_activate_title;
        if (psActivateBean == null || (title = psActivateBean.getAppName()) == null) {
            title = localPushMessage.getTitle();
        }
        remoteViews.setTextViewText(i11, context.getString(i12, title));
        int i13 = R$id.notification_content_tv;
        int i14 = R$string.notification_activate_content;
        if (psActivateBean == null || (title2 = psActivateBean.getAppName()) == null) {
            title2 = localPushMessage.getTitle();
        }
        remoteViews.setTextViewText(i13, context.getString(i14, title2));
        int i15 = R$id.btn_activate_cta;
        if (psActivateBean == null || (buttonText = psActivateBean.getButtonText()) == null) {
            buttonText = "OPEN";
        }
        remoteViews.setTextViewText(i15, buttonText);
        if (bitmap != null) {
            remoteViews.setImageViewBitmap(R$id.iv_activate_icon, bitmap);
        }
    }

    private final Bitmap M(Bitmap bitmap, float f11) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        canvas.drawRoundRect(new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight()), f11, f11, paint);
        return bitmapCreateBitmap;
    }

    private final String O(String str, String str2) throws JSONException {
        try {
            if (str == null) {
                str = "{}";
            }
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.put("clickArea", str2);
            String string = jSONObject.toString();
            Intrinsics.e(string);
            return string;
        } catch (Exception unused) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("clickArea", str2);
            String string2 = jSONObject2.toString();
            Intrinsics.e(string2);
            return string2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(final Context context, LocalPushMessage localPushMessage, Bitmap bitmap, Object obj) throws JSONException {
        String strD = d(context, "push_sdk_activate_channel", new Function0() { // from class: com.transsion.push.feature.activate.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ActivateNotificationRenderer.Q(this.f50819a, context);
            }
        });
        NotificationCompat.m mVarA = a(context, strD);
        mVarA.J(g());
        if (localPushMessage.isRefresh()) {
            mVarA.F(true);
            mVarA.t(0);
            mVarA.K(null);
            mVarA.N(new long[]{0});
        } else {
            mVarA.t(-1);
        }
        mVarA.q(localPushMessage.getTitle());
        mVarA.p(localPushMessage.getDesc());
        int iIntValue = v(localPushMessage).intValue();
        int iIntValue2 = w(localPushMessage).intValue();
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), iIntValue);
        RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), iIntValue2);
        mVarA.s(remoteViews);
        mVarA.r(remoteViews2);
        mVarA.L(new NotificationCompat.o());
        q(context, remoteViews, remoteViews2, localPushMessage, bitmap, obj);
        int iE = e(localPushMessage.getMessageId());
        PendingIntent pendingIntentS = s(context, localPushMessage);
        if (pendingIntentS == null) {
            Intent intentB = b(context, localPushMessage, iE, strD);
            PsActivateBean psActivateBean = obj instanceof PsActivateBean ? (PsActivateBean) obj : null;
            String packageName = psActivateBean != null ? psActivateBean.getPackageName() : null;
            if (packageName != null) {
                S(intentB, packageName, "content", localPushMessage);
            }
            pendingIntentS = m(context, intentB, iE, false);
        }
        mVarA.o(pendingIntentS);
        i(context, iE, mVarA);
        F(context, localPushMessage);
        E(context, localPushMessage, strD, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q(ActivateNotificationRenderer activateNotificationRenderer, Context context) {
        activateNotificationRenderer.r(context, "push_sdk_activate_channel");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bitmap R(Bitmap bitmap, int i11) {
        if (bitmap == null) {
            return null;
        }
        float f11 = i11;
        float fMin = Math.min(f11 / bitmap.getWidth(), f11 / bitmap.getHeight());
        return fMin >= 1.0f ? bitmap : Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * fMin), (int) (bitmap.getHeight() * fMin), true);
    }

    private final void S(Intent intent, String str, String str2, LocalPushMessage localPushMessage) throws JSONException {
        String strO = O(localPushMessage.getExtraMap(), str2);
        intent.putExtra("target_package_name", str);
        intent.putExtra("clickArea", str2);
        intent.putExtra("msg_extra_map", strO);
        String deeplink = localPushMessage.getDeeplink();
        if (deeplink != null) {
            intent.putExtra("deeplink", deeplink);
        }
        intent.putExtra("push_message", localPushMessage.copy((229375 & 1) != 0 ? localPushMessage.id : 0, (229375 & 2) != 0 ? localPushMessage.messageId : null, (229375 & 4) != 0 ? localPushMessage.title : null, (229375 & 8) != 0 ? localPushMessage.desc : null, (229375 & 16) != 0 ? localPushMessage.deeplink : null, (229375 & 32) != 0 ? localPushMessage.imageList : null, (229375 & 64) != 0 ? localPushMessage.pushTime : null, (229375 & 128) != 0 ? localPushMessage.source : null, (229375 & 256) != 0 ? localPushMessage.style : null, (229375 & 512) != 0 ? localPushMessage.type : null, (229375 & 1024) != 0 ? localPushMessage.receiveTime : 0L, (229375 & 2048) != 0 ? localPushMessage.msgStatus : 0, (229375 & 4096) != 0 ? localPushMessage.showTime : 0L, (229375 & 8192) != 0 ? localPushMessage.forceShow : false, (229375 & 16384) != 0 ? localPushMessage.hasScreenOn : false, (229375 & 32768) != 0 ? localPushMessage.extraMap : strO, (229375 & 65536) != 0 ? localPushMessage.builtIn : false, (229375 & 131072) != 0 ? localPushMessage.permanentMsgStatus : 0));
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public void E(Context context, LocalPushMessage message, String str, String str2) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        super.E(context, message, str, str2);
        ActivatePushFeature.f50814d.b(context);
    }

    public final void N() {
        o0.d(this.f50813e, null, 1, null);
    }

    public final void T(Context context, LocalPushMessage message, PsActivateBean adBean) throws JSONException {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        Intrinsics.h(adBean, "adBean");
        String iconUrl = adBean.getIconUrl();
        if (iconUrl == null || iconUrl.length() == 0) {
            P(context, message, null, adBean);
        } else {
            k.d(this.f50813e, null, null, new AnonymousClass1(context, iconUrl, message, adBean, null), 3, null);
        }
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public void q(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, LocalPushMessage message, Bitmap bitmap, Object obj) throws JSONException {
        String packageName;
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        PsActivateBean psActivateBean = obj instanceof PsActivateBean ? (PsActivateBean) obj : null;
        Bitmap bitmapM = bitmap != null ? M(bitmap, a0.a(8.0f)) : null;
        if (remoteViews != null) {
            L(context, remoteViews, psActivateBean, message, bitmapM);
        }
        if (remoteViews2 != null) {
            L(context, remoteViews2, psActivateBean, message, bitmapM);
        }
        if (psActivateBean == null || (packageName = psActivateBean.getPackageName()) == null) {
            return;
        }
        int iE = e(message.getMessageId()) + 1;
        Intent intentB = b(context, message, iE, t());
        S(intentB, packageName, "button", message);
        PendingIntent pendingIntentM = m(context, intentB, iE, false);
        if (remoteViews != null) {
            remoteViews.setOnClickPendingIntent(R$id.btn_activate_cta, pendingIntentM);
        }
        if (remoteViews2 != null) {
            remoteViews2.setOnClickPendingIntent(R$id.btn_activate_cta, pendingIntentM);
        }
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer, com.transsion.mpush.api.INotificationRenderer
    public void show(Context context, LocalPushMessage message) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        lg.a.C0828a.z(lg.a.f68839a, "ActivateNotificationRenderer", "不应直接调用，请使用 show(context, message, adBean)", false, 4, null);
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    protected String t() {
        return "push_sdk_activate_channel";
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    protected String u() {
        return "激活广告推送";
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public Integer v(LocalPushMessage message) {
        Intrinsics.h(message, "message");
        return Integer.valueOf(R$layout.notification_activate);
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public Integer w(LocalPushMessage message) {
        Intrinsics.h(message, "message");
        return Integer.valueOf(R$layout.notification_activate);
    }
}
