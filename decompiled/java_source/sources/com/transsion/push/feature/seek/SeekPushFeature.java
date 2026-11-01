package com.transsion.push.feature.seek;

import android.content.Context;
import com.transsion.mpush.api.INotificationRenderer;
import com.transsion.mpush.api.IPushFeature;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.config.PushMsgType;
import com.transsion.mpush.core.utils.PushPreference;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
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

/* JADX INFO: loaded from: classes6.dex */
public final class SeekPushFeature implements IPushFeature {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f50821d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f50822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n0 f50823b = o0.a(l2.b(null, 1, null).plus(y0.b()));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private INotificationRenderer f50824c = new b();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(Context context) {
            Intrinsics.h(context, "context");
            long j11 = context.getSharedPreferences("seek_push_prefs", 0).getLong("key_seek_show_time", 0L);
            if (j11 == 0) {
                return false;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j11);
            Calendar calendar2 = Calendar.getInstance();
            return calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
        }

        public final void b(Context context) {
            Intrinsics.h(context, "context");
            context.getSharedPreferences("seek_push_prefs", 0).edit().putLong("key_seek_show_time", System.currentTimeMillis()).apply();
        }
    }

    /* JADX INFO: renamed from: com.transsion.push.feature.seek.SeekPushFeature$onTrigger$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.push.feature.seek.SeekPushFeature$onTrigger$1", f = "SeekPushFeature.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $source;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i11, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$source = i11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = SeekPushFeature.this.new AnonymousClass1(this.$source, continuation);
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
            SeekPushFeature seekPushFeature = SeekPushFeature.this;
            int i11 = this.$source;
            try {
                Result.Companion companion = Result.INSTANCE;
                seekPushFeature.b(i11);
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            int i12 = this.$source;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                lg.a.C0828a.l(lg.a.f68839a, "PushRegisterManager", "【求片推送】处理触发异常，触发源：" + i12 + "，异常：" + thM457exceptionOrNullimpl, false, 4, null);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i11) {
        Object next;
        String title;
        String desc;
        a aVar = f50821d;
        Context context = this.f50822a;
        Context context2 = null;
        if (context == null) {
            Intrinsics.z("context");
            context = null;
        }
        if (aVar.a(context)) {
            lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "【求片推送】当天已展示，跳过", false, 4, null);
            return;
        }
        PushPreference pushPreference = PushPreference.f47608a;
        Context context3 = this.f50822a;
        if (context3 == null) {
            Intrinsics.z("context");
            context3 = null;
        }
        List listH = pushPreference.h(context3);
        List list = listH;
        if (list == null || list.isEmpty()) {
            lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "【求片推送】seekingItems 缓存为空", false, 4, null);
            return;
        }
        Iterator it = listH.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            LocalPushMessage localPushMessage = (LocalPushMessage) next;
            if (localPushMessage != null && localPushMessage.getDeeplink() != null && (((title = localPushMessage.getTitle()) != null && title.length() != 0) || ((desc = localPushMessage.getDesc()) != null && desc.length() != 0))) {
                break;
            }
        }
        LocalPushMessage localPushMessage2 = (LocalPushMessage) next;
        if (localPushMessage2 == null) {
            lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "【求片推送】无有效消息", false, 4, null);
            return;
        }
        localPushMessage2.setType(PushMsgType.SUBJECT_SEEKING.getType());
        lg.a.C0828a.r(lg.a.f68839a, "PushRegisterManager", new String[]{"【求片推送】准备展示，消息ID：" + localPushMessage2.getMessageId() + "，标题：" + localPushMessage2.getTitle()}, false, 4, null);
        ln.b bVar = ln.b.f68987a;
        Context context4 = this.f50822a;
        if (context4 == null) {
            Intrinsics.z("context");
            context4 = null;
        }
        bVar.j(context4, localPushMessage2);
        INotificationRenderer iNotificationRenderer = this.f50824c;
        Context context5 = this.f50822a;
        if (context5 == null) {
            Intrinsics.z("context");
        } else {
            context2 = context5;
        }
        iNotificationRenderer.show(context2, localPushMessage2);
    }

    private final void c() {
        Object objM454constructorimpl;
        INotificationRenderer iNotificationRenderer = this.f50824c;
        Context context = null;
        b bVar = iNotificationRenderer instanceof b ? (b) iNotificationRenderer : null;
        if (bVar == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Context context2 = this.f50822a;
            if (context2 == null) {
                Intrinsics.z("context");
            } else {
                context = context2;
            }
            bVar.l(context);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "PushRegisterManager", "【求片推送】预创建通知渠道失败：" + thM457exceptionOrNullimpl, false, 4, null);
        }
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void destroy() {
        o0.d(this.f50823b, null, 1, null);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void init(Context context) {
        Intrinsics.h(context, "context");
        this.f50822a = context;
        c();
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void onMessageReceive(String str, Object obj) {
        IPushFeature.DefaultImpls.onMessageReceive(this, str, obj);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void onTrigger(int i11) {
        if (i11 == 4 || i11 == 1 || i11 == 2) {
            lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "【求片推送】收到触发事件，触发源：" + i11, false, 4, null);
            k.d(this.f50823b, null, null, new AnonymousClass1(i11, null), 3, null);
        }
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public boolean refreshMessage(Object message) {
        Intrinsics.h(message, "message");
        if (!(message instanceof LocalPushMessage)) {
            return false;
        }
        LocalPushMessage localPushMessage = (LocalPushMessage) message;
        if (!Intrinsics.c(localPushMessage.getType(), PushMsgType.SUBJECT_SEEKING.getType())) {
            return false;
        }
        INotificationRenderer iNotificationRenderer = this.f50824c;
        Context context = this.f50822a;
        if (context == null) {
            Intrinsics.z("context");
            context = null;
        }
        iNotificationRenderer.show(context, localPushMessage);
        return true;
    }
}
