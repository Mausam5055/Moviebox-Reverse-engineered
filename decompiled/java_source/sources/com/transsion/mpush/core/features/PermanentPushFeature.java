package com.transsion.mpush.core.features;

import android.content.Context;
import com.transsion.mpush.api.IPushFeature;
import com.transsion.mpush.api.PermanentPushMessage;
import com.transsion.mpush.core.config.PagerConfig;
import com.transsion.mpush.core.config.PermanentConfig;
import com.transsion.mpush.core.db.PushDatabase;
import com.transsion.mpush.core.net.PushNetworkApi;
import com.transsion.mpush.core.net.SdkBaseDto;
import com.transsion.mpush.core.net.SdkPermanentMsgResp;
import com.transsion.mpush.core.renderer.v;
import com.transsion.mpush.core.utils.PushPreference;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import zg.c;

/* JADX INFO: loaded from: classes6.dex */
public final class PermanentPushFeature implements IPushFeature {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f47533b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PermanentConfig f47538g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private t1 f47541j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f47532a = "PUSH_SHOW";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n0 f47534c = o0.a(l2.b(null, 1, null).plus(y0.b()));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v f47535d = new v();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f47536e = LazyKt.b(new Function0() { // from class: com.transsion.mpush.core.features.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PermanentPushFeature.m();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CopyOnWriteArrayList f47537f = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f47539h = "1";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f47540i = 10;

    /* JADX INFO: renamed from: com.transsion.mpush.core.features.PermanentPushFeature$init$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.mpush.core.features.PermanentPushFeature$init$1", f = "PermanentPushFeature.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        int label;
        final /* synthetic */ PermanentPushFeature this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, PermanentPushFeature permanentPushFeature, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = context;
            this.this$0 = permanentPushFeature;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$context, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            List all = PushDatabase.INSTANCE.b(this.$context).k0().getAll();
            if (!all.isEmpty()) {
                this.this$0.f47537f.addAll(all);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.mpush.core.features.PermanentPushFeature$onTrigger$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.mpush.core.features.PermanentPushFeature$onTrigger$1", f = "PermanentPushFeature.kt", l = {71}, m = "invokeSuspend")
    static final class C10691 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $source;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10691(int i11, Continuation<? super C10691> continuation) {
            super(2, continuation);
            this.$source = i11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C10691 c10691 = PermanentPushFeature.this.new C10691(this.$source, continuation);
            c10691.L$0 = obj;
            return c10691;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10691) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objM454constructorimpl;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            try {
                if (i11 == 0) {
                    ResultKt.b(obj);
                    PermanentPushFeature permanentPushFeature = PermanentPushFeature.this;
                    int i12 = this.$source;
                    Result.Companion companion = Result.INSTANCE;
                    this.label = 1;
                    if (permanentPushFeature.n(i12, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            PermanentPushFeature permanentPushFeature2 = PermanentPushFeature.this;
            int i13 = this.$source;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                lg.a.C0828a.l(lg.a.f68839a, permanentPushFeature2.f47532a, "【常驻推送】处理触发异常，触发源：" + i13 + "，异常：" + thM457exceptionOrNullimpl, false, 4, null);
            }
            return Unit.f67061a;
        }
    }

    private final void i(PermanentConfig permanentConfig) {
        long interval = ((long) (permanentConfig.getInterval() * 60)) * 1000;
        PushPreference pushPreference = PushPreference.f47608a;
        Context context = this.f47533b;
        if (context == null) {
            Intrinsics.z("context");
            context = null;
        }
        if (System.currentTimeMillis() - pushPreference.d(context) >= interval) {
            t1 t1Var = this.f47541j;
            if (t1Var != null) {
                t1.a.b(t1Var, null, 1, null);
            }
            this.f47541j = k.d(this.f47534c, null, null, new PermanentPushFeature$checkRequest$1(this, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    public final Object k(Continuation continuation) throws Throwable {
        PermanentPushFeature$fetchPushData$1 permanentPushFeature$fetchPushData$1;
        Context context;
        boolean z10;
        if (continuation instanceof PermanentPushFeature$fetchPushData$1) {
            permanentPushFeature$fetchPushData$1 = (PermanentPushFeature$fetchPushData$1) continuation;
            int i11 = permanentPushFeature$fetchPushData$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                permanentPushFeature$fetchPushData$1.label = i11 - Integer.MIN_VALUE;
            } else {
                permanentPushFeature$fetchPushData$1 = new PermanentPushFeature$fetchPushData$1(this, continuation);
            }
        } else {
            permanentPushFeature$fetchPushData$1 = new PermanentPushFeature$fetchPushData$1(this, continuation);
        }
        PermanentPushFeature$fetchPushData$1 permanentPushFeature$fetchPushData$2 = permanentPushFeature$fetchPushData$1;
        Object obj = permanentPushFeature$fetchPushData$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = permanentPushFeature$fetchPushData$2.label;
        String str = "1";
        Context context2 = null;
        try {
            if (i12 == 0) {
                ResultKt.b(obj);
                PushPreference pushPreference = PushPreference.f47608a;
                Context context3 = this.f47533b;
                if (context3 == null) {
                    Intrinsics.z("context");
                    context3 = null;
                }
                boolean zM = pushPreference.m(context3);
                String str2 = this.f47539h;
                if (str2 == null || str2.length() == 0 || !zM) {
                    this.f47539h = "1";
                }
                com.transsion.mpush.core.utils.b bVar = com.transsion.mpush.core.utils.b.f47609a;
                Context context4 = this.f47533b;
                if (context4 == null) {
                    Intrinsics.z("context");
                    context = null;
                } else {
                    context = context4;
                }
                PermanentConfig permanentConfig = this.f47538g;
                com.transsion.mpush.core.utils.b.c cVarC = com.transsion.mpush.core.utils.b.c(bVar, context, permanentConfig != null ? permanentConfig.getStartTime() : null, 480, 60, 0, null, 32, null);
                if (!cVarC.e()) {
                    lg.a.C0828a.f(lg.a.f68839a, this.f47532a, "【常驻推送】未到达请求时间，跳过网络拉取，当前：" + bVar.f(cVarC.c()) + "，基准时间：" + bVar.f(cVarC.a()) + "，散列偏移：" + cVarC.d() + "min，实际请求时间：" + bVar.f(cVarC.b()) + "，seed来源：" + bVar.u(cVarC.f()), false, 4, null);
                    return Unit.f67061a;
                }
                boolean zC = Intrinsics.c(this.f47539h, "1");
                lg.a.C0828a.l(lg.a.f68839a, this.f47532a, "【常驻推送】开始网络拉取数据，页码：" + this.f47539h + "，首页请求：" + zC, false, 4, null);
                PushNetworkApi pushNetworkApiL = l();
                String apiPathPrefix = ln.a.f68978a.i().getApiPathPrefix();
                String str3 = this.f47539h;
                permanentPushFeature$fetchPushData$2.Z$0 = zC;
                permanentPushFeature$fetchPushData$2.label = 1;
                Object permanentPushData$default = PushNetworkApi.DefaultImpls.getPermanentPushData$default(pushNetworkApiL, apiPathPrefix, null, str3, null, permanentPushFeature$fetchPushData$2, 10, null);
                if (permanentPushData$default == objF) {
                    return objF;
                }
                z10 = zC;
                obj = permanentPushData$default;
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                z10 = permanentPushFeature$fetchPushData$2.Z$0;
                ResultKt.b(obj);
            }
            SdkBaseDto sdkBaseDto = (SdkBaseDto) obj;
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.r(c0828a, this.f47532a, new String[]{"【常驻推送】网络请求响应，响应码：" + sdkBaseDto.getCode()}, false, 4, null);
            if (Intrinsics.c(sdkBaseDto.getCode(), "0")) {
                SdkPermanentMsgResp sdkPermanentMsgResp = (SdkPermanentMsgResp) sdkBaseDto.getData();
                if (sdkPermanentMsgResp != null) {
                    List<PermanentPushMessage> items = sdkPermanentMsgResp.getItems();
                    List<PermanentPushMessage> list = items;
                    if (list == null || list.isEmpty()) {
                        lg.a.C0828a.f(c0828a, this.f47532a, "【常驻推送】网络拉取成功，但消息列表为空", false, 4, null);
                    } else {
                        lg.a.C0828a.l(c0828a, this.f47532a, "【常驻推送】网络拉取成功，获取 " + items.size() + " 条消息", false, 4, null);
                        if (z10) {
                            this.f47537f.clear();
                            PushDatabase.Companion companion = PushDatabase.INSTANCE;
                            Context context5 = this.f47533b;
                            if (context5 == null) {
                                Intrinsics.z("context");
                                context5 = null;
                            }
                            companion.b(context5).k0().clear();
                            lg.a.C0828a.r(c0828a, this.f47532a, new String[]{"【常驻推送】首页请求，已清空旧数据"}, false, 4, null);
                        }
                        this.f47537f.addAll(0, items);
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (PermanentPushMessage permanentPushMessage : this.f47537f) {
                            String subjectId = permanentPushMessage.getSubjectId();
                            if (!linkedHashMap.containsKey(subjectId)) {
                                linkedHashMap.put(subjectId, permanentPushMessage);
                            }
                        }
                        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(linkedHashMap.values());
                        this.f47537f = copyOnWriteArrayList;
                        lg.a.C0828a.r(lg.a.f68839a, this.f47532a, new String[]{"【常驻推送】去重后缓存消息数：" + copyOnWriteArrayList.size()}, false, 4, null);
                        PushDatabase.Companion companion2 = PushDatabase.INSTANCE;
                        Context context6 = this.f47533b;
                        if (context6 == null) {
                            Intrinsics.z("context");
                            context6 = null;
                        }
                        companion2.b(context6).k0().b(this.f47537f);
                    }
                    PermanentConfig cfg = sdkPermanentMsgResp.getCfg();
                    if (cfg != null) {
                        cfg.setTitle(sdkPermanentMsgResp.getTitle());
                        this.f47538g = cfg;
                        PushPreference pushPreference2 = PushPreference.f47608a;
                        Context context7 = this.f47533b;
                        if (context7 == null) {
                            Intrinsics.z("context");
                            context7 = null;
                        }
                        pushPreference2.p(context7, cfg);
                    }
                    PagerConfig pager = sdkPermanentMsgResp.getPager();
                    String nextPage = pager != null ? pager.getNextPage() : null;
                    PagerConfig pager2 = sdkPermanentMsgResp.getPager();
                    if (pager2 != null && pager2.getHasMore() && nextPage != null && nextPage.length() != 0) {
                        str = nextPage;
                    }
                    this.f47539h = str;
                    PushPreference pushPreference3 = PushPreference.f47608a;
                    Context context8 = this.f47533b;
                    if (context8 == null) {
                        Intrinsics.z("context");
                        context8 = null;
                    }
                    pushPreference3.q(context8, this.f47539h);
                    Context context9 = this.f47533b;
                    if (context9 == null) {
                        Intrinsics.z("context");
                    } else {
                        context2 = context9;
                    }
                    pushPreference3.y(context2, System.currentTimeMillis());
                    o();
                }
            } else {
                lg.a.C0828a.l(c0828a, this.f47532a, "【常驻推送】网络拉取失败，响应码：" + sdkBaseDto.getCode(), false, 4, null);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            lg.a.C0828a.l(lg.a.f68839a, this.f47532a, "【常驻推送】网络拉取异常：" + e11, false, 4, null);
            Collections.shuffle(this.f47537f);
        }
        return Unit.f67061a;
    }

    private final PushNetworkApi l() {
        return (PushNetworkApi) this.f47536e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PushNetworkApi m() {
        return (PushNetworkApi) c.f79414e.a().h(PushNetworkApi.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object n(int i11, Continuation continuation) throws Throwable {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.r(c0828a, this.f47532a, new String[]{"【常驻推送】开始处理触发，触发源：" + i11}, false, 4, null);
        Context context = null;
        if (this.f47537f.isEmpty()) {
            PushDatabase.Companion companion = PushDatabase.INSTANCE;
            Context context2 = this.f47533b;
            if (context2 == null) {
                Intrinsics.z("context");
                context2 = null;
            }
            List all = companion.b(context2).k0().getAll();
            List list = all;
            if (!list.isEmpty()) {
                this.f47537f.addAll(list);
                lg.a.C0828a.r(c0828a, this.f47532a, new String[]{"【常驻推送】从数据库加载 " + all.size() + " 条缓存消息"}, false, 4, null);
            }
        }
        PushPreference pushPreference = PushPreference.f47608a;
        Context context3 = this.f47533b;
        if (context3 == null) {
            Intrinsics.z("context");
        } else {
            context = context3;
        }
        boolean zM = pushPreference.m(context);
        boolean z10 = this.f47537f.size() < this.f47540i || !zM;
        lg.a.C0828a.r(c0828a, this.f47532a, new String[]{"【常驻推送】检查拉取需求，需要拉取：" + z10 + "，缓存数：" + this.f47537f.size() + "，今日已拉取：" + zM}, false, 4, null);
        if (z10) {
            Object objK = k(continuation);
            return objK == IntrinsicsKt.f() ? objK : Unit.f67061a;
        }
        o();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        PermanentConfig permanentConfig = this.f47538g;
        if (permanentConfig == null) {
            permanentConfig = new PermanentConfig(true, null, 0, null, 12, null);
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.r(c0828a, this.f47532a, new String[]{"【常驻推送】开始展示常驻通知，启用状态：" + permanentConfig.getEnable() + "，消息数：" + this.f47537f.size()}, false, 4, null);
        Context context = null;
        if (!permanentConfig.getEnable()) {
            lg.a.C0828a.f(c0828a, this.f47532a, "【常驻推送】常驻推送未启用，取消通知", false, 4, null);
            v vVar = this.f47535d;
            Context context2 = this.f47533b;
            if (context2 == null) {
                Intrinsics.z("context");
            } else {
                context = context2;
            }
            vVar.t(context);
            return;
        }
        if (!p(permanentConfig)) {
            lg.a.C0828a.f(c0828a, this.f47532a, "【常驻推送】未到展示时间，跳过展示", false, 4, null);
            return;
        }
        if (permanentConfig.getInterval() > 0) {
            i(permanentConfig);
        }
        lg.a.C0828a.r(c0828a, this.f47532a, new String[]{"【常驻推送】调用渲染器展示通知，传递 " + this.f47537f.size() + " 条消息"}, false, 4, null);
        v vVar2 = this.f47535d;
        Context context3 = this.f47533b;
        if (context3 == null) {
            Intrinsics.z("context");
        } else {
            context = context3;
        }
        vVar2.J(context, CollectionsKt.R0(this.f47537f), permanentConfig);
    }

    private final boolean p(PermanentConfig permanentConfig) {
        String startTime = permanentConfig.getStartTime();
        if (startTime == null || startTime.length() == 0) {
            return true;
        }
        try {
            List listS0 = StringsKt.S0(startTime, new String[]{":"}, false, 0, 6, null);
            if (listS0.size() < 2) {
                return true;
            }
            int i11 = Integer.parseInt((String) listS0.get(0));
            int i12 = Integer.parseInt((String) listS0.get(1));
            Calendar calendar = Calendar.getInstance();
            int i13 = calendar.get(11);
            int i14 = calendar.get(12);
            lg.a.C0828a.f(lg.a.f68839a, this.f47532a, "timeReady, cur:" + i13 + ":" + i14 + ",time:" + i11, false, 4, null);
            if (i13 <= i11) {
                return i13 == i11 && i14 >= i12;
            }
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    private final void q() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            v vVar = this.f47535d;
            Context context = this.f47533b;
            if (context == null) {
                Intrinsics.z("context");
                context = null;
            }
            vVar.l(context);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, this.f47532a, "【常驻推送】预创建通知渠道失败：" + thM457exceptionOrNullimpl, false, 4, null);
        }
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void destroy() {
        o0.d(this.f47534c, null, 1, null);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void init(Context context) {
        Intrinsics.h(context, "context");
        this.f47533b = context;
        q();
        PushPreference pushPreference = PushPreference.f47608a;
        this.f47538g = pushPreference.c(context);
        String strE = pushPreference.e(context);
        if (strE == null) {
            strE = "1";
        }
        this.f47539h = strE;
        if (this.f47537f.isEmpty()) {
            k.d(this.f47534c, null, null, new AnonymousClass1(context, this, null), 3, null);
        }
    }

    public final void j(String id2) {
        Intrinsics.h(id2, "id");
        k.d(this.f47534c, null, null, new PermanentPushFeature$consumeMessage$1(this, id2, null), 3, null);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void onMessageReceive(String str, Object obj) {
        IPushFeature.DefaultImpls.onMessageReceive(this, str, obj);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void onTrigger(int i11) {
        lg.a.C0828a.l(lg.a.f68839a, this.f47532a, "【常驻推送】收到触发事件，触发源：" + i11 + "，开始处理", false, 4, null);
        k.d(this.f47534c, null, null, new C10691(i11, null), 3, null);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public boolean refreshMessage(Object message) {
        Object next;
        Intrinsics.h(message, "message");
        if (!(message instanceof PermanentPushMessage)) {
            return false;
        }
        Iterator it = this.f47537f.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((PermanentPushMessage) next).getSubjectId(), ((PermanentPushMessage) message).getSubjectId()));
        PermanentPushMessage permanentPushMessage = (PermanentPushMessage) next;
        if (permanentPushMessage != null) {
            permanentPushMessage.setRefresh(true);
        }
        o();
        return true;
    }
}
