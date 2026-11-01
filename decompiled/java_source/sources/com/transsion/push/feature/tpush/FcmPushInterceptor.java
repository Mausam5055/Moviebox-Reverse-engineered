package com.transsion.push.feature.tpush;

import android.content.Context;
import com.blankj.utilcode.util.o;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.mpush.api.IFcmMessageInterceptor;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.config.PushMsgSource;
import com.transsion.mpush.core.config.PushMsgType;
import com.transsion.mpush.core.utils.c;
import com.transsion.push.PushManager;
import com.transsion.push.feature.sport.ServerMatchListItemData;
import com.transsion.push.feature.sport.SportsNotificationRenderer;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class FcmPushInterceptor implements IFcmMessageInterceptor {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f50843c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f50844a = LazyKt.b(new Function0() { // from class: com.transsion.push.feature.tpush.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FcmPushInterceptor.j();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f50845b = LazyKt.b(new Function0() { // from class: com.transsion.push.feature.tpush.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FcmPushInterceptor.g();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.transsion.push.feature.tpush.FcmPushInterceptor$intercept$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.transsion.push.feature.tpush.FcmPushInterceptor", f = "FcmPushInterceptor.kt", l = {77}, m = "intercept")
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FcmPushInterceptor.this.intercept(null, null, this);
        }
    }

    private final com.transsion.push.feature.sport.a d() {
        return (com.transsion.push.feature.sport.a) this.f50845b.getValue();
    }

    private final SportsNotificationRenderer e() {
        return (SportsNotificationRenderer) this.f50844a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object f(Context context, LocalPushMessage localPushMessage, Continuation continuation) throws Throwable {
        FcmPushInterceptor$handleSportsMessage$1 fcmPushInterceptor$handleSportsMessage$1;
        if (continuation instanceof FcmPushInterceptor$handleSportsMessage$1) {
            fcmPushInterceptor$handleSportsMessage$1 = (FcmPushInterceptor$handleSportsMessage$1) continuation;
            int i11 = fcmPushInterceptor$handleSportsMessage$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                fcmPushInterceptor$handleSportsMessage$1.label = i11 - Integer.MIN_VALUE;
            } else {
                fcmPushInterceptor$handleSportsMessage$1 = new FcmPushInterceptor$handleSportsMessage$1(this, continuation);
            }
        } else {
            fcmPushInterceptor$handleSportsMessage$1 = new FcmPushInterceptor$handleSportsMessage$1(this, continuation);
        }
        FcmPushInterceptor$handleSportsMessage$1 fcmPushInterceptor$handleSportsMessage$2 = fcmPushInterceptor$handleSportsMessage$1;
        Object objA = fcmPushInterceptor$handleSportsMessage$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = fcmPushInterceptor$handleSportsMessage$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objA);
                String strE = c.f47625a.e(localPushMessage.getDeeplink(), "id");
                if (strE == null || strE.length() == 0) {
                    return Unit.f67061a;
                }
                com.transsion.push.feature.sport.a aVarD = d();
                fcmPushInterceptor$handleSportsMessage$2.L$0 = context;
                fcmPushInterceptor$handleSportsMessage$2.L$1 = localPushMessage;
                fcmPushInterceptor$handleSportsMessage$2.label = 1;
                objA = com.transsion.push.feature.sport.a.C0653a.a(aVarD, null, strE, fcmPushInterceptor$handleSportsMessage$2, 1, null);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                localPushMessage = (LocalPushMessage) fcmPushInterceptor$handleSportsMessage$2.L$1;
                context = (Context) fcmPushInterceptor$handleSportsMessage$2.L$0;
                ResultKt.b(objA);
            }
            BaseDto baseDto = (BaseDto) objA;
            if (!Intrinsics.c(baseDto.getCode(), "0") || baseDto.getData() == null) {
                e().J(context, localPushMessage, null);
            } else {
                e().J(context, localPushMessage, (ServerMatchListItemData) baseDto.getData());
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            e().J(context, localPushMessage, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.push.feature.sport.a g() {
        return (com.transsion.push.feature.sport.a) zg.c.f79414e.a().h(com.transsion.push.feature.sport.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SportsNotificationRenderer j() {
        return new SportsNotificationRenderer();
    }

    public final void h() {
        IRefreshConfig iRefreshConfig = (IRefreshConfig) TheRouter.d(IRefreshConfig.class, new Object[0]);
        if (iRefreshConfig != null) {
            iRefreshConfig.a();
        }
    }

    public final void i(boolean z10) {
        k.d(o0.a(y0.b()), null, null, new FcmPushInterceptor$onLogRetrieve$1(z10, null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsion.mpush.api.IFcmMessageInterceptor
    public Object intercept(Context context, String str, Continuation continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Object objM454constructorimpl;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i11 = anonymousClass1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i11 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = anonymousClass1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            String lowerCase = null;
            if (StringsKt.c0(str, "clientLogsRetrieve", false, 2, null)) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(new JSONObject(str).optString("clientLogsRetrieve"));
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                }
                if (Result.m460isFailureimpl(objM454constructorimpl)) {
                    objM454constructorimpl = null;
                }
                String str2 = (String) objM454constructorimpl;
                if (str2 != null) {
                    lowerCase = str2.toLowerCase(Locale.ROOT);
                    Intrinsics.g(lowerCase, "toLowerCase(...)");
                }
                if (Intrinsics.c(lowerCase, "true")) {
                    i(true);
                }
                return Boxing.a(true);
            }
            if (StringsKt.c0(str, "configRefreshPush", false, 2, null)) {
                h();
                return Boxing.a(true);
            }
            LocalPushMessage localPushMessage = (LocalPushMessage) o.d(str, LocalPushMessage.class);
            if (localPushMessage == null) {
                return Boxing.a(false);
            }
            c cVar = c.f47625a;
            if (!Intrinsics.c(cVar.e(localPushMessage.getDeeplink(), "msg_type"), "SportsLiveEventRemind")) {
                return Boxing.a(false);
            }
            lg.a.C0828a.f(lg.a.f68839a, "FcmPushInterceptor", "接收到SportsLiveEventRemind的通知，deeplink:" + localPushMessage.getDeeplink(), false, 4, null);
            String strE = cVar.e(localPushMessage.getDeeplink(), "msgId");
            if (strE == null) {
                strE = "";
            }
            localPushMessage.setMessageId(strE);
            localPushMessage.setSource(PushMsgSource.SOURCE_FCM_PUSH);
            localPushMessage.setType(PushMsgType.ONLINE_JSON_PUSH.getType());
            PushManager pushManager = PushManager.getInstance();
            Long lX = StringsKt.x(strE);
            pushManager.trackArrive(lX != null ? lX.longValue() : 0L);
            anonymousClass1.label = 1;
            if (f(context, localPushMessage, anonymousClass1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Boxing.a(true);
    }
}
