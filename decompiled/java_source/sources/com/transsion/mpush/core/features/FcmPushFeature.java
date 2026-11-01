package com.transsion.mpush.core.features;

import android.content.Context;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.firebase.messaging.RemoteMessage;
import com.transsion.mpush.api.IFcmMessageInterceptor;
import com.transsion.mpush.api.INotificationRenderer;
import com.transsion.mpush.api.IPushFeature;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.config.PushMsgSource;
import com.transsion.mpush.core.config.PushMsgType;
import com.transsion.mpush.core.fcm.m;
import com.transsion.mpush.core.renderer.i;
import com.transsion.mpush.core.renderer.k;
import com.transsion.mpush.core.utils.c;
import com.transsion.push.PushManager;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class FcmPushFeature implements IPushFeature {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f47518f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f47519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n0 f47520b = o0.a(l2.b(null, 1, null).plus(y0.b()));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private INotificationRenderer f47521c = new k();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private IFcmMessageInterceptor f47522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Function0 f47523e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.transsion.mpush.core.features.FcmPushFeature$onMessageReceive$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.mpush.core.features.FcmPushFeature$onMessageReceive$1", f = "FcmPushFeature.kt", l = {TmcConstants.NOTIFY_ADDHOME_API_SHOW}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Object $message;
        final /* synthetic */ String $msgId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Object obj, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$msgId = str;
            this.$message = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FcmPushFeature.this.new AnonymousClass1(this.$msgId, this.$message, continuation);
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
                FcmPushFeature fcmPushFeature = FcmPushFeature.this;
                String str = this.$msgId;
                Object obj2 = this.$message;
                this.label = 1;
                if (fcmPushFeature.c(str, obj2, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:50:0x010e A[Catch: Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:12:0x0039, B:45:0x0100, B:50:0x010e, B:52:0x0135, B:54:0x013f, B:56:0x0162, B:58:0x016c, B:60:0x0173, B:62:0x01e7, B:64:0x01ec, B:19:0x004c, B:22:0x0052, B:31:0x0085, B:33:0x008b, B:34:0x0093, B:36:0x00b6, B:38:0x00e6, B:40:0x00ea, B:41:0x00ee, B:23:0x0066, B:25:0x006a, B:26:0x007a, B:28:0x007e), top: B:69:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0135 A[Catch: Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:12:0x0039, B:45:0x0100, B:50:0x010e, B:52:0x0135, B:54:0x013f, B:56:0x0162, B:58:0x016c, B:60:0x0173, B:62:0x01e7, B:64:0x01ec, B:19:0x004c, B:22:0x0052, B:31:0x0085, B:33:0x008b, B:34:0x0093, B:36:0x00b6, B:38:0x00e6, B:40:0x00ea, B:41:0x00ee, B:23:0x0066, B:25:0x006a, B:26:0x007a, B:28:0x007e), top: B:69:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:54:0x013f A[Catch: Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:12:0x0039, B:45:0x0100, B:50:0x010e, B:52:0x0135, B:54:0x013f, B:56:0x0162, B:58:0x016c, B:60:0x0173, B:62:0x01e7, B:64:0x01ec, B:19:0x004c, B:22:0x0052, B:31:0x0085, B:33:0x008b, B:34:0x0093, B:36:0x00b6, B:38:0x00e6, B:40:0x00ea, B:41:0x00ee, B:23:0x0066, B:25:0x006a, B:26:0x007a, B:28:0x007e), top: B:69:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0162 A[Catch: Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:12:0x0039, B:45:0x0100, B:50:0x010e, B:52:0x0135, B:54:0x013f, B:56:0x0162, B:58:0x016c, B:60:0x0173, B:62:0x01e7, B:64:0x01ec, B:19:0x004c, B:22:0x0052, B:31:0x0085, B:33:0x008b, B:34:0x0093, B:36:0x00b6, B:38:0x00e6, B:40:0x00ea, B:41:0x00ee, B:23:0x0066, B:25:0x006a, B:26:0x007a, B:28:0x007e), top: B:69:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:58:0x016c A[Catch: Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:12:0x0039, B:45:0x0100, B:50:0x010e, B:52:0x0135, B:54:0x013f, B:56:0x0162, B:58:0x016c, B:60:0x0173, B:62:0x01e7, B:64:0x01ec, B:19:0x004c, B:22:0x0052, B:31:0x0085, B:33:0x008b, B:34:0x0093, B:36:0x00b6, B:38:0x00e6, B:40:0x00ea, B:41:0x00ee, B:23:0x0066, B:25:0x006a, B:26:0x007a, B:28:0x007e), top: B:69:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0171  */
    /* JADX WARN: Code duplicated, block: B:62:0x01e7 A[Catch: Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:12:0x0039, B:45:0x0100, B:50:0x010e, B:52:0x0135, B:54:0x013f, B:56:0x0162, B:58:0x016c, B:60:0x0173, B:62:0x01e7, B:64:0x01ec, B:19:0x004c, B:22:0x0052, B:31:0x0085, B:33:0x008b, B:34:0x0093, B:36:0x00b6, B:38:0x00e6, B:40:0x00ea, B:41:0x00ee, B:23:0x0066, B:25:0x006a, B:26:0x007a, B:28:0x007e), top: B:69:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:63:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Instruction removed from duplicated block: B:50:0x010e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:54:0x013f, please report this as an issue */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object c(String str, Object obj, Continuation continuation) throws Throwable {
        FcmPushFeature$handleMessage$1 fcmPushFeature$handleMessage$1;
        String string;
        String str2;
        LocalPushMessage localPushMessage;
        Long lX;
        long jLongValue;
        Context context;
        String str3 = str;
        if (continuation instanceof FcmPushFeature$handleMessage$1) {
            fcmPushFeature$handleMessage$1 = (FcmPushFeature$handleMessage$1) continuation;
            int i11 = fcmPushFeature$handleMessage$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                fcmPushFeature$handleMessage$1.label = i11 - Integer.MIN_VALUE;
            } else {
                fcmPushFeature$handleMessage$1 = new FcmPushFeature$handleMessage$1(this, continuation);
            }
        } else {
            fcmPushFeature$handleMessage$1 = new FcmPushFeature$handleMessage$1(this, continuation);
        }
        Object obj2 = fcmPushFeature$handleMessage$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = fcmPushFeature$handleMessage$1.label;
        boolean z10 = false;
        Context context2 = null;
        try {
            if (i12 == 0) {
                ResultKt.b(obj2);
                if (obj instanceof RemoteMessage) {
                    Map<String, String> data = ((RemoteMessage) obj).getData();
                    Intrinsics.f(data, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
                    string = new JSONObject(data).toString();
                } else if (obj instanceof Map) {
                    Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
                    string = new JSONObject((Map) obj).toString();
                } else {
                    string = obj instanceof String ? (String) obj : null;
                }
                if (string == null) {
                    lg.a.C0828a.l(lg.a.f68839a, "FcmPushFeature", "【FCM推送】消息解析失败，消息ID：" + str3 + "，消息类型不支持：" + (obj != null ? obj.getClass().getSimpleName() : null), false, 4, null);
                    return Unit.f67061a;
                }
                lg.a.C0828a.r(lg.a.f68839a, "FcmPushFeature", new String[]{"【FCM推送】消息解析成功，消息ID：" + str3 + "，Payload长度：" + string.length()}, false, 4, null);
                IFcmMessageInterceptor iFcmMessageInterceptor = this.f47522d;
                if (iFcmMessageInterceptor != null) {
                    Context context3 = this.f47519a;
                    if (context3 == null) {
                        Intrinsics.z("context");
                        context3 = null;
                    }
                    fcmPushFeature$handleMessage$1.L$0 = str3;
                    fcmPushFeature$handleMessage$1.L$1 = string;
                    fcmPushFeature$handleMessage$1.label = 1;
                    Object objIntercept = iFcmMessageInterceptor.intercept(context3, string, fcmPushFeature$handleMessage$1);
                    if (objIntercept == objF) {
                        return objF;
                    }
                    String str4 = string;
                    obj2 = objIntercept;
                    str2 = str4;
                }
                if (z10) {
                    lg.a.C0828a.r(lg.a.f68839a, "FcmPushFeature", new String[]{"【FCM推送】消息已被拦截器处理，消息ID：" + str3 + "，处理结束"}, false, 4, null);
                    return Unit.f67061a;
                }
                localPushMessage = (LocalPushMessage) o.d(string, LocalPushMessage.class);
                if (localPushMessage == null) {
                    lg.a.C0828a.l(lg.a.f68839a, "FcmPushFeature", "【FCM推送】消息解析为LocalPushMessage失败，消息ID：" + str3 + "，消息终止", false, 4, null);
                    return Unit.f67061a;
                }
                PushManager pushManager = PushManager.getInstance();
                lX = StringsKt.x(str3);
                if (lX != null) {
                    jLongValue = lX.longValue();
                } else {
                    jLongValue = 0;
                }
                pushManager.trackArrive(jLongValue);
                localPushMessage.setMessageId(str3);
                localPushMessage.setSource(PushMsgSource.SOURCE_FCM_PUSH);
                localPushMessage.setType(PushMsgType.ONLINE_JSON_PUSH.getType());
                String strE = c.f47625a.e(localPushMessage.getDeeplink(), "msg_type");
                lg.a.C0828a c0828a = lg.a.f68839a;
                lg.a.C0828a.l(c0828a, "FcmPushFeature", "【FCM推送】识别为本地推送消息，消息ID：" + str3 + "，消息类型：" + strE + "，标题：" + localPushMessage.getTitle(), false, 4, null);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("【FCM推送】开始展示通知，消息ID：");
                sb2.append(str3);
                lg.a.C0828a.r(c0828a, "FcmPushFeature", new String[]{sb2.toString()}, false, 4, null);
                INotificationRenderer iNotificationRenderer = this.f47521c;
                context = this.f47519a;
                if (context == null) {
                    Intrinsics.z("context");
                } else {
                    context2 = context;
                }
                iNotificationRenderer.show(context2, localPushMessage);
                return Unit.f67061a;
            }
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str2 = (String) fcmPushFeature$handleMessage$1.L$1;
            str3 = (String) fcmPushFeature$handleMessage$1.L$0;
            ResultKt.b(obj2);
            if (((Boolean) obj2).booleanValue()) {
                string = str2;
                z10 = true;
            } else {
                string = str2;
            }
            if (z10) {
                lg.a.C0828a.r(lg.a.f68839a, "FcmPushFeature", new String[]{"【FCM推送】消息已被拦截器处理，消息ID：" + str3 + "，处理结束"}, false, 4, null);
                return Unit.f67061a;
            }
            localPushMessage = (LocalPushMessage) o.d(string, LocalPushMessage.class);
            if (localPushMessage == null) {
                lg.a.C0828a.l(lg.a.f68839a, "FcmPushFeature", "【FCM推送】消息解析为LocalPushMessage失败，消息ID：" + str3 + "，消息终止", false, 4, null);
                return Unit.f67061a;
            }
            PushManager pushManager2 = PushManager.getInstance();
            lX = StringsKt.x(str3);
            if (lX != null) {
                jLongValue = lX.longValue();
            } else {
                jLongValue = 0;
            }
            pushManager2.trackArrive(jLongValue);
            localPushMessage.setMessageId(str3);
            localPushMessage.setSource(PushMsgSource.SOURCE_FCM_PUSH);
            localPushMessage.setType(PushMsgType.ONLINE_JSON_PUSH.getType());
            String strE2 = c.f47625a.e(localPushMessage.getDeeplink(), "msg_type");
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            lg.a.C0828a.l(c0828a2, "FcmPushFeature", "【FCM推送】识别为本地推送消息，消息ID：" + str3 + "，消息类型：" + strE2 + "，标题：" + localPushMessage.getTitle(), false, 4, null);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("【FCM推送】开始展示通知，消息ID：");
            sb3.append(str3);
            lg.a.C0828a.r(c0828a2, "FcmPushFeature", new String[]{sb3.toString()}, false, 4, null);
            INotificationRenderer iNotificationRenderer2 = this.f47521c;
            context = this.f47519a;
            if (context == null) {
                Intrinsics.z("context");
            } else {
                context2 = context;
            }
            iNotificationRenderer2.show(context2, localPushMessage);
            return Unit.f67061a;
        } catch (Exception e11) {
            lg.a.C0828a.l(lg.a.f68839a, "FcmPushFeature", "【FCM推送】消息处理异常，消息ID：" + str3 + "，异常：" + e11, false, 4, null);
            e11.printStackTrace();
        }
    }

    private final void e() {
        Object objM454constructorimpl;
        Object obj = this.f47521c;
        Context context = null;
        i iVar = obj instanceof i ? (i) obj : null;
        if (iVar == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Context context2 = this.f47519a;
            if (context2 == null) {
                Intrinsics.z("context");
            } else {
                context = context2;
            }
            iVar.l(context);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "FcmPushFeature", "【FCM推送】预创建通知渠道失败：" + thM457exceptionOrNullimpl, false, 4, null);
        }
    }

    public final Function0 b() {
        return this.f47523e;
    }

    public final void d(IFcmMessageInterceptor interceptor) {
        Intrinsics.h(interceptor, "interceptor");
        this.f47522d = interceptor;
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void destroy() {
        o0.d(this.f47520b, null, 1, null);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void init(Context context) {
        Intrinsics.h(context, "context");
        this.f47519a = context;
        e();
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void onMessageReceive(String msgId, Object obj) {
        Intrinsics.h(msgId, "msgId");
        lg.a.C0828a.l(lg.a.f68839a, "FcmPushFeature", "【FCM推送】收到FCM消息，消息ID：" + msgId + "，开始处理", false, 4, null);
        kotlinx.coroutines.k.d(this.f47520b, null, null, new AnonymousClass1(msgId, obj, null), 3, null);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void onTrigger(int i11) {
        if (i11 == 3) {
            lg.a.C0828a.r(lg.a.f68839a, "FcmPushFeature", new String[]{"【FCM推送】NETWORK_CONNECTED，执行 token 校验上报"}, false, 4, null);
            m.f47511a.h();
        }
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public boolean refreshMessage(Object message) {
        Intrinsics.h(message, "message");
        if (!(message instanceof LocalPushMessage)) {
            return false;
        }
        LocalPushMessage localPushMessage = (LocalPushMessage) message;
        if (!Intrinsics.c(localPushMessage.getSource(), PushMsgSource.SOURCE_FCM_PUSH)) {
            return false;
        }
        INotificationRenderer iNotificationRenderer = this.f47521c;
        Context context = this.f47519a;
        if (context == null) {
            Intrinsics.z("context");
            context = null;
        }
        iNotificationRenderer.show(context, localPushMessage);
        return true;
    }
}
