package com.transsion.push.feature.activate;

import android.content.Context;
import android.content.SharedPreferences;
import com.blankj.utilcode.util.c0;
import com.cloud.tmc.integration.net.UrlKt;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.transsion.ad.ps.activate.PSActivateManager;
import com.transsion.ad.ps.activate.PsActivateBean;
import com.transsion.ad.scene.d;
import com.transsion.lib.push.R$string;
import com.transsion.mpush.api.IPushFeature;
import com.transsion.mpush.api.LocalPushMessage;
import ih.b;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
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
public final class ActivatePushFeature implements IPushFeature {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f50814d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f50815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n0 f50816b = o0.a(l2.b(null, 1, null).plus(y0.b()));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ActivateNotificationRenderer f50817c = new ActivateNotificationRenderer();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(Context context) {
            Intrinsics.h(context, "context");
            long j11 = context.getSharedPreferences("activate_push_prefs", 0).getLong("key_activate_show_time", 0L);
            return j11 != 0 && c0.f(j11);
        }

        public final void b(Context context) {
            Intrinsics.h(context, "context");
            lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "【激活广告推送】记录展示时间", false, 4, null);
            SharedPreferences sharedPreferences = context.getSharedPreferences("activate_push_prefs", 0);
            Intrinsics.g(sharedPreferences, "getSharedPreferences(...)");
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putLong("key_activate_show_time", System.currentTimeMillis());
            editorEdit.apply();
        }
    }

    /* JADX INFO: renamed from: com.transsion.push.feature.activate.ActivatePushFeature$onTrigger$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.push.feature.activate.ActivatePushFeature$onTrigger$1", f = "ActivatePushFeature.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = ActivatePushFeature.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objM454constructorimpl;
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            ActivatePushFeature activatePushFeature = ActivatePushFeature.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                activatePushFeature.d();
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                lg.a.C0828a.l(lg.a.f68839a, "PushRegisterManager", "【激活广告推送】处理异常：" + thM457exceptionOrNullimpl, false, 4, null);
            }
            return Unit.f67061a;
        }
    }

    private final boolean b(String str) {
        com.transsion.baseui.util.a aVar = com.transsion.baseui.util.a.f43502a;
        Context context = this.f50815a;
        if (context == null) {
            Intrinsics.z("context");
            context = null;
        }
        return aVar.c(context, str);
    }

    private final boolean c() {
        JsonElement jsonElement;
        JsonElement jsonElement2;
        JsonObject jsonObjectB = d.f42204a.b("ActivatePushScene");
        int asInt = (jsonObjectB == null || (jsonElement2 = jsonObjectB.get("pushStart")) == null) ? 13 : jsonElement2.getAsInt();
        int asInt2 = (jsonObjectB == null || (jsonElement = jsonObjectB.get("pushSlot")) == null) ? 4 : jsonElement.getAsInt();
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "PushRegisterManager", "【激活广告推送】时间窗口配置：startHour=" + asInt + ", timeSpan=" + asInt2, false, 4, null);
        if (asInt2 <= 0) {
            lg.a.C0828a.f(c0828a, "PushRegisterManager", "【激活广告推送】推送时间跨度为 0，已禁用", false, 4, null);
            return false;
        }
        if (asInt2 >= 24) {
            return true;
        }
        Calendar calendar = Calendar.getInstance();
        int i11 = (calendar.get(11) * 60) + calendar.get(12);
        int i12 = asInt * 60;
        int i13 = (asInt2 * 60) + i12;
        lg.a.C0828a.f(c0828a, "PushRegisterManager", "【激活广告推送】当前时间 " + calendar.get(11) + ":" + calendar.get(12) + "，转换为分钟：" + i11 + "，窗口：" + i12 + ".." + (i13 <= 1440 ? i13 : i13 % 1440), false, 4, null);
        if (i13 <= 1440) {
            if (i12 > i11 || i11 >= i13) {
                return false;
            }
        } else if (i11 < i12 && i11 >= i13 % 1440) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() throws JSONException {
        Object objM454constructorimpl;
        a aVar = f50814d;
        Context context = this.f50815a;
        Context context2 = null;
        if (context == null) {
            Intrinsics.z("context");
            context = null;
        }
        if (aVar.a(context)) {
            lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "【激活广告推送】当天已展示，跳过", false, 4, null);
            return;
        }
        if (!c()) {
            lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "【激活广告推送】不在推送时间段内，跳过", false, 4, null);
            return;
        }
        PSActivateManager pSActivateManager = PSActivateManager.f42171a;
        if (!pSActivateManager.d()) {
            lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "【激活广告推送】无可用广告，跳过间隔限制请求广告", false, 4, null);
            f(this, MapsKt.l(TuplesKt.a("reason", "no_ad"), TuplesKt.a("trigger_source", "4")), null, null, 6, null);
            pSActivateManager.f(true);
            return;
        }
        int i11 = 0;
        while (i11 < 10) {
            i11++;
            PsActivateBean psActivateBeanB = PSActivateManager.f42171a.b();
            if (psActivateBeanB == null) {
                break;
            }
            if (b(psActivateBeanB.getPackageName())) {
                lg.a.C0828a.r(lg.a.f68839a, "PushRegisterManager", new String[]{"【激活广告推送】有可用广告，准备展示，应用：" + psActivateBeanB.getAppName()}, false, 4, null);
                Pair pairA = TuplesKt.a("reason", "ad_available");
                Pair pairA2 = TuplesKt.a("trigger_source", "4");
                String packageName = psActivateBeanB.getPackageName();
                if (packageName == null) {
                    packageName = "";
                }
                Pair pairA3 = TuplesKt.a("packageName", packageName);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(b.f65241a.i());
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                }
                Map mapL = MapsKt.l(pairA, pairA2, pairA3, TuplesKt.a(UrlKt.KEY_MINI_GAID, Result.m460isFailureimpl(objM454constructorimpl) ? "" : objM454constructorimpl));
                Context context3 = this.f50815a;
                if (context3 == null) {
                    Intrinsics.z("context");
                    context3 = null;
                }
                String string = context3.getString(R$string.notification_activate_title, psActivateBeanB.getAppName());
                Context context4 = this.f50815a;
                if (context4 == null) {
                    Intrinsics.z("context");
                    context4 = null;
                }
                LocalPushMessage localPushMessageE = e(mapL, string, context4.getString(R$string.notification_activate_content, psActivateBeanB.getAppName()));
                ActivateNotificationRenderer activateNotificationRenderer = this.f50817c;
                Context context5 = this.f50815a;
                if (context5 == null) {
                    Intrinsics.z("context");
                } else {
                    context2 = context5;
                }
                activateNotificationRenderer.T(context2, localPushMessageE, psActivateBeanB);
                return;
            }
            lg.a.C0828a.r(lg.a.f68839a, "PushRegisterManager", new String[]{"【激活广告推送】应用未安装，跳过：" + psActivateBeanB.getAppName()}, false, 4, null);
        }
        lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "【激活广告推送】有广告但全部未安装，跳过间隔限制请求广告", false, 4, null);
        f(this, MapsKt.l(TuplesKt.a("reason", "ad_unavailable"), TuplesKt.a("trigger_source", "4")), null, null, 6, null);
        PSActivateManager.f42171a.f(true);
    }

    private final LocalPushMessage e(Map map, String str, String str2) {
        LocalPushMessage localPushMessage = new LocalPushMessage(0, null, null, null, null, null, null, null, null, null, 0L, 0, 0L, false, false, null, false, 0, 262143, null);
        localPushMessage.setMessageId("activate_push_message_" + System.currentTimeMillis());
        localPushMessage.setSource("activate_push");
        localPushMessage.setType("activate_push");
        localPushMessage.setExtraMap(new JSONObject(map).toString());
        if (str != null) {
            localPushMessage.setTitle(str);
        }
        if (str2 != null) {
            localPushMessage.setDesc(str2);
        }
        localPushMessage.setDeeplink("oneroom://com.community.oneroom?type=/main/tab&channel=activate_push&utm_source=activate_push");
        ln.b bVar = ln.b.f68987a;
        Context context = this.f50815a;
        if (context == null) {
            Intrinsics.z("context");
            context = null;
        }
        bVar.j(context, localPushMessage);
        return localPushMessage;
    }

    static /* synthetic */ LocalPushMessage f(ActivatePushFeature activatePushFeature, Map map, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = null;
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        return activatePushFeature.e(map, str, str2);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void destroy() {
        o0.d(this.f50816b, null, 1, null);
        this.f50817c.N();
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void init(Context context) {
        Intrinsics.h(context, "context");
        this.f50815a = context;
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void onMessageReceive(String str, Object obj) {
        IPushFeature.DefaultImpls.onMessageReceive(this, str, obj);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void onTrigger(int i11) {
        if (i11 != 4) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "【激活广告推送】收到 TIMER 触发", false, 4, null);
        k.d(this.f50816b, null, null, new AnonymousClass1(null), 3, null);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public boolean refreshMessage(Object message) {
        Intrinsics.h(message, "message");
        return false;
    }
}
