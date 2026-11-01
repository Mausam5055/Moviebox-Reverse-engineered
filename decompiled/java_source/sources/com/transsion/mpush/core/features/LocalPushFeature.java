package com.transsion.mpush.core.features;

import android.content.Context;
import android.graphics.Bitmap;
import com.blankj.utilcode.util.NetworkUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import com.transsion.mpush.api.INotificationRenderer;
import com.transsion.mpush.api.IPushFeature;
import com.transsion.mpush.api.IPushImageLoader;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.config.PushConfig;
import com.transsion.mpush.core.config.PushMsgType;
import com.transsion.mpush.core.db.PushDatabase;
import com.transsion.mpush.core.interceptor.LocalFrequencyController;
import com.transsion.mpush.core.net.PushNetworkApi;
import com.transsion.mpush.core.net.SdkBaseDto;
import com.transsion.mpush.core.net.SdkPullMsgResp;
import com.transsion.mpush.core.renderer.i;
import com.transsion.mpush.core.renderer.s;
import com.transsion.mpush.core.utils.PushPreference;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.List;
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
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.coroutines.k;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import zg.c;

/* JADX INFO: loaded from: classes6.dex */
public final class LocalPushFeature implements IPushFeature {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f47524g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f47525a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile List f47529e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n0 f47526b = o0.a(l2.b(null, 1, null).plus(y0.b()));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private INotificationRenderer f47527c = new s();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f47528d = LazyKt.b(new Function0() { // from class: com.transsion.mpush.core.features.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LocalPushFeature.i();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f47530f = true;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements IPushImageLoader.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f47531a;

        b(String str) {
            this.f47531a = str;
        }

        @Override // com.transsion.mpush.api.IPushImageLoader.Callback
        public void onFailed(Exception exc) {
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】图片预加载失败：" + this.f47531a, false, 4, null);
        }

        @Override // com.transsion.mpush.api.IPushImageLoader.Callback
        public void onSuccess(Bitmap bitmap) {
            Intrinsics.h(bitmap, "bitmap");
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】图片预加载成功：" + this.f47531a, false, 4, null);
        }
    }

    /* JADX INFO: renamed from: com.transsion.mpush.core.features.LocalPushFeature$onTrigger$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.mpush.core.features.LocalPushFeature$onTrigger$1", f = "LocalPushFeature.kt", l = {TsExtractor.TS_STREAM_TYPE_DVBSUBS}, m = "invokeSuspend")
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
            AnonymousClass1 anonymousClass1 = LocalPushFeature.this.new AnonymousClass1(this.$source, continuation);
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
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            try {
                if (i11 == 0) {
                    ResultKt.b(obj);
                    LocalPushFeature localPushFeature = LocalPushFeature.this;
                    int i12 = this.$source;
                    Result.Companion companion = Result.INSTANCE;
                    this.label = 1;
                    if (localPushFeature.m(i12, this) == objF) {
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
            int i13 = this.$source;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】处理触发异常，触发源：" + i13 + "，异常：" + thM457exceptionOrNullimpl, false, 4, null);
            }
            return Unit.f67061a;
        }
    }

    private final PushNetworkApi e() {
        return (PushNetworkApi) this.f47528d.getValue();
    }

    private final boolean f() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(NetworkUtils.n()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        Boolean bool = (Boolean) objM454constructorimpl;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:39:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(int i11, Continuation continuation) throws Throwable {
        LocalPushFeature$loadPresetData$1 localPushFeature$loadPresetData$1;
        List listJ;
        mn.a aVarJ0;
        List list;
        Context context;
        if (continuation instanceof LocalPushFeature$loadPresetData$1) {
            localPushFeature$loadPresetData$1 = (LocalPushFeature$loadPresetData$1) continuation;
            int i12 = localPushFeature$loadPresetData$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                localPushFeature$loadPresetData$1.label = i12 - Integer.MIN_VALUE;
            } else {
                localPushFeature$loadPresetData$1 = new LocalPushFeature$loadPresetData$1(this, continuation);
            }
        } else {
            localPushFeature$loadPresetData$1 = new LocalPushFeature$loadPresetData$1(this, continuation);
        }
        Object obj = localPushFeature$loadPresetData$1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = localPushFeature$loadPresetData$1.label;
        Context context2 = null;
        if (i13 != 0) {
            if (i13 == 1) {
                i11 = localPushFeature$loadPresetData$1.I$0;
                mn.a aVar = (mn.a) localPushFeature$loadPresetData$1.L$1;
                List list2 = (List) localPushFeature$loadPresetData$1.L$0;
                ResultKt.b(obj);
                aVarJ0 = aVar;
                listJ = list2;
            } else {
                if (i13 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i11 = localPushFeature$loadPresetData$1.I$0;
                list = (List) localPushFeature$loadPresetData$1.L$0;
                ResultKt.b(obj);
            }
            PushPreference pushPreference = PushPreference.f47608a;
            context = this.f47525a;
            if (context == null) {
                Intrinsics.z("context");
            } else {
                context2 = context;
            }
            pushPreference.x(context2, System.currentTimeMillis());
            lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【本地推送】使用预置数据，共 " + list.size() + " 条"}, false, 4, null);
            l(list, i11);
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        String presetAssetPath = ln.a.f68978a.i().getPresetAssetPath();
        if (presetAssetPath.length() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】未设置预置数据路径，跳过预置数据加载", false, 4, null);
            return Unit.f67061a;
        }
        listJ = this.f47529e;
        if (listJ == null) {
            listJ = j(presetAssetPath);
            this.f47529e = listJ;
        }
        if (listJ.isEmpty()) {
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】预置数据为空，跳过展示", false, 4, null);
            return Unit.f67061a;
        }
        PushDatabase.Companion companion = PushDatabase.INSTANCE;
        Context context3 = this.f47525a;
        if (context3 == null) {
            Intrinsics.z("context");
            context3 = null;
        }
        aVarJ0 = companion.b(context3).j0();
        localPushFeature$loadPresetData$1.L$0 = listJ;
        localPushFeature$loadPresetData$1.L$1 = aVarJ0;
        localPushFeature$loadPresetData$1.I$0 = i11;
        localPushFeature$loadPresetData$1.label = 1;
        if (aVarJ0.a(localPushFeature$loadPresetData$1) == objF) {
            return objF;
        }
        localPushFeature$loadPresetData$1.L$0 = listJ;
        localPushFeature$loadPresetData$1.L$1 = null;
        localPushFeature$loadPresetData$1.I$0 = i11;
        localPushFeature$loadPresetData$1.label = 2;
        if (aVarJ0.b(listJ, localPushFeature$loadPresetData$1) == objF) {
            return objF;
        }
        list = listJ;
        PushPreference pushPreference2 = PushPreference.f47608a;
        context = this.f47525a;
        if (context == null) {
            Intrinsics.z("context");
        } else {
            context2 = context;
        }
        pushPreference2.x(context2, System.currentTimeMillis());
        lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【本地推送】使用预置数据，共 " + list.size() + " 条"}, false, 4, null);
        l(list, i11);
        return Unit.f67061a;
    }

    private final void h(PushConfig pushConfig) {
        if (pushConfig == null) {
            PushPreference pushPreference = PushPreference.f47608a;
            Context context = this.f47525a;
            if (context == null) {
                Intrinsics.z("context");
                context = null;
            }
            pushConfig = pushPreference.a(context);
        }
        lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【本地推送】网络拉取成功，当前配置时间：startTime=" + (pushConfig != null ? pushConfig.getStartTime() : null) + "，endTime=" + (pushConfig != null ? pushConfig.getEndTime() : null) + "，pushGap=" + (pushConfig != null ? pushConfig.getPushGap() : null)}, false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PushNetworkApi i() {
        return (PushNetworkApi) c.f79414e.a().h(PushNetworkApi.class);
    }

    private final List j(String str) {
        PushConfig config;
        try {
            Context context = this.f47525a;
            Context context2 = null;
            if (context == null) {
                Intrinsics.z("context");
                context = null;
            }
            InputStream inputStreamOpen = context.getAssets().open(str);
            Intrinsics.g(inputStreamOpen, "open(...)");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen, Charsets.UTF_8), 8192);
            try {
                String strE = TextStreamsKt.e(bufferedReader);
                CloseableKt.a(bufferedReader, null);
                SdkPullMsgResp sdkPullMsgResp = (SdkPullMsgResp) new Gson().fromJson(strE, new TypeToken<SdkPullMsgResp>() { // from class: com.transsion.mpush.core.features.LocalPushFeature$parsePresetFromAsset$type$1
                }.getType());
                if (sdkPullMsgResp == null) {
                    return CollectionsKt.l();
                }
                List<LocalPushMessage> items = sdkPullMsgResp.getItems();
                PushPreference pushPreference = PushPreference.f47608a;
                Context context3 = this.f47525a;
                if (context3 == null) {
                    Intrinsics.z("context");
                    context3 = null;
                }
                if (pushPreference.a(context3) != null && (config = sdkPullMsgResp.getConfig()) != null) {
                    Context context4 = this.f47525a;
                    if (context4 == null) {
                        Intrinsics.z("context");
                    } else {
                        context2 = context4;
                    }
                    pushPreference.o(context2, config);
                }
                LocalFrequencyController localFrequencyController = LocalFrequencyController.f47542a;
                if (items == null) {
                    items = CollectionsKt.l();
                }
                List listJ = localFrequencyController.j(items);
                long jCurrentTimeMillis = System.currentTimeMillis();
                int i11 = 0;
                for (Object obj : listJ) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.u();
                    }
                    LocalPushMessage localPushMessage = (LocalPushMessage) obj;
                    localPushMessage.setBuiltIn(true);
                    localPushMessage.setType(PushMsgType.LOCAL_PUSH.getType());
                    localPushMessage.setReceiveTime(jCurrentTimeMillis - ((long) i11));
                    if (localPushMessage.getMsgStatus() == 0) {
                        localPushMessage.setMsgStatus(0);
                    }
                    i11 = i12;
                }
                return listJ;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(bufferedReader, th2);
                    throw th3;
                }
            }
        } catch (Exception e11) {
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】解析预置数据异常，路径：" + str + "，异常：" + e11, false, 4, null);
            e11.printStackTrace();
            return CollectionsKt.l();
        }
    }

    private final void k(List list) {
        String str;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            LocalPushMessage localPushMessage = (LocalPushMessage) it.next();
            if (!localPushMessage.getBuiltIn() && (str = (String) CollectionsKt.k0(localPushMessage.getImageArray())) != null) {
                IPushImageLoader iPushImageLoaderF = ln.a.f68978a.f();
                Context context = this.f47525a;
                if (context == null) {
                    Intrinsics.z("context");
                    context = null;
                }
                iPushImageLoaderF.loadImage(context, str, null, new b(str));
            }
        }
    }

    private final void l(List list, int i11) {
        LocalFrequencyController localFrequencyController = LocalFrequencyController.f47542a;
        Context context = this.f47525a;
        Context context2 = null;
        if (context == null) {
            Intrinsics.z("context");
            context = null;
        }
        LocalPushMessage localPushMessageH = localFrequencyController.h(context, list);
        if (localPushMessageH == null) {
            return;
        }
        Context context3 = this.f47525a;
        if (context3 == null) {
            Intrinsics.z("context");
        } else {
            context2 = context3;
        }
        if (localFrequencyController.i(context2, localPushMessageH, i11)) {
            p(localPushMessageH);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final Object m(int i11, Continuation continuation) throws Throwable {
        LocalPushFeature$processTrigger$1 localPushFeature$processTrigger$1;
        int i12 = i11;
        if (continuation instanceof LocalPushFeature$processTrigger$1) {
            localPushFeature$processTrigger$1 = (LocalPushFeature$processTrigger$1) continuation;
            int i13 = localPushFeature$processTrigger$1.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                localPushFeature$processTrigger$1.label = i13 - Integer.MIN_VALUE;
            } else {
                localPushFeature$processTrigger$1 = new LocalPushFeature$processTrigger$1(this, continuation);
            }
        } else {
            localPushFeature$processTrigger$1 = new LocalPushFeature$processTrigger$1(this, continuation);
        }
        Object objD = localPushFeature$processTrigger$1.result;
        Object objF = IntrinsicsKt.f();
        int i14 = localPushFeature$processTrigger$1.label;
        Context context = null;
        if (i14 == 0) {
            ResultKt.b(objD);
            lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【本地推送】开始处理触发，触发源：" + i12}, false, 4, null);
            PushDatabase.Companion companion = PushDatabase.INSTANCE;
            Context context2 = this.f47525a;
            if (context2 == null) {
                Intrinsics.z("context");
                context2 = null;
            }
            mn.a aVarJ0 = companion.b(context2).j0();
            localPushFeature$processTrigger$1.I$0 = i12;
            localPushFeature$processTrigger$1.label = 1;
            objD = aVarJ0.d(localPushFeature$processTrigger$1);
            if (objD == objF) {
                return objF;
            }
        } else {
            if (i14 != 1) {
                if (i14 == 2) {
                    ResultKt.b(objD);
                    return Unit.f67061a;
                }
                if (i14 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objD);
                lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】预置数据，网络已经恢复，重新获取数据", false, 4, null);
                return Unit.f67061a;
            }
            i12 = localPushFeature$processTrigger$1.I$0;
            ResultKt.b(objD);
        }
        List list = (List) objD;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【本地推送】从本地数据库查询到 " + list.size() + " 条消息"}, false, 4, null);
        if (list.isEmpty()) {
            lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "【本地推送】本地数据库无消息，准备网络拉取", false, 4, null);
        } else {
            l(list, i12);
        }
        if (i12 == 0 || i12 == 1 || i12 == 3 || i12 == 4) {
            if (!list.isEmpty()) {
                PushPreference pushPreference = PushPreference.f47608a;
                Context context3 = this.f47525a;
                if (context3 == null) {
                    Intrinsics.z("context");
                    context3 = null;
                }
                if (pushPreference.n(context3)) {
                    if (((LocalPushMessage) CollectionsKt.i0(list)).getBuiltIn() && f()) {
                        localPushFeature$processTrigger$1.label = 3;
                        if (n(i12, localPushFeature$processTrigger$1) == objF) {
                            return objF;
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】预置数据，网络已经恢复，重新获取数据", false, 4, null);
                    }
                }
            }
            int size = list.size();
            PushPreference pushPreference2 = PushPreference.f47608a;
            Context context4 = this.f47525a;
            if (context4 == null) {
                Intrinsics.z("context");
            } else {
                context = context4;
            }
            lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【本地推送】触发网络拉取，本地消息数：" + size + "，今日已拉取：" + pushPreference2.n(context)}, false, 4, null);
            localPushFeature$processTrigger$1.label = 2;
            if (n(i12, localPushFeature$processTrigger$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
        lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "【本地推送】触发源不需要网络拉取，触发源：" + i12, false, 4, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:44:0x00f4 A[Catch: Exception -> 0x003f, TryCatch #0 {Exception -> 0x003f, blocks: (B:15:0x003a, B:94:0x01fa, B:22:0x0054, B:90:0x01e9, B:25:0x005c, B:42:0x00c2, B:44:0x00f4, B:46:0x00fc, B:51:0x0106, B:53:0x010c, B:54:0x0110, B:55:0x0113, B:57:0x011c, B:58:0x0120, B:60:0x0128, B:62:0x012e, B:64:0x0139, B:66:0x013f, B:68:0x0143, B:69:0x0147, B:71:0x0153, B:74:0x015b, B:75:0x0191, B:77:0x0197, B:79:0x019f, B:80:0x01a2, B:82:0x01be, B:83:0x01c2, B:84:0x01c8, B:86:0x01ce, B:87:0x01d2, B:95:0x0211, B:96:0x021d, B:39:0x00a4), top: B:101:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00fc A[Catch: Exception -> 0x003f, TRY_LEAVE, TryCatch #0 {Exception -> 0x003f, blocks: (B:15:0x003a, B:94:0x01fa, B:22:0x0054, B:90:0x01e9, B:25:0x005c, B:42:0x00c2, B:44:0x00f4, B:46:0x00fc, B:51:0x0106, B:53:0x010c, B:54:0x0110, B:55:0x0113, B:57:0x011c, B:58:0x0120, B:60:0x0128, B:62:0x012e, B:64:0x0139, B:66:0x013f, B:68:0x0143, B:69:0x0147, B:71:0x0153, B:74:0x015b, B:75:0x0191, B:77:0x0197, B:79:0x019f, B:80:0x01a2, B:82:0x01be, B:83:0x01c2, B:84:0x01c8, B:86:0x01ce, B:87:0x01d2, B:95:0x0211, B:96:0x021d, B:39:0x00a4), top: B:101:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0101  */
    /* JADX WARN: Code duplicated, block: B:51:0x0106 A[Catch: Exception -> 0x003f, TRY_ENTER, TryCatch #0 {Exception -> 0x003f, blocks: (B:15:0x003a, B:94:0x01fa, B:22:0x0054, B:90:0x01e9, B:25:0x005c, B:42:0x00c2, B:44:0x00f4, B:46:0x00fc, B:51:0x0106, B:53:0x010c, B:54:0x0110, B:55:0x0113, B:57:0x011c, B:58:0x0120, B:60:0x0128, B:62:0x012e, B:64:0x0139, B:66:0x013f, B:68:0x0143, B:69:0x0147, B:71:0x0153, B:74:0x015b, B:75:0x0191, B:77:0x0197, B:79:0x019f, B:80:0x01a2, B:82:0x01be, B:83:0x01c2, B:84:0x01c8, B:86:0x01ce, B:87:0x01d2, B:95:0x0211, B:96:0x021d, B:39:0x00a4), top: B:101:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:53:0x010c A[Catch: Exception -> 0x003f, TryCatch #0 {Exception -> 0x003f, blocks: (B:15:0x003a, B:94:0x01fa, B:22:0x0054, B:90:0x01e9, B:25:0x005c, B:42:0x00c2, B:44:0x00f4, B:46:0x00fc, B:51:0x0106, B:53:0x010c, B:54:0x0110, B:55:0x0113, B:57:0x011c, B:58:0x0120, B:60:0x0128, B:62:0x012e, B:64:0x0139, B:66:0x013f, B:68:0x0143, B:69:0x0147, B:71:0x0153, B:74:0x015b, B:75:0x0191, B:77:0x0197, B:79:0x019f, B:80:0x01a2, B:82:0x01be, B:83:0x01c2, B:84:0x01c8, B:86:0x01ce, B:87:0x01d2, B:95:0x0211, B:96:0x021d, B:39:0x00a4), top: B:101:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:57:0x011c A[Catch: Exception -> 0x003f, TryCatch #0 {Exception -> 0x003f, blocks: (B:15:0x003a, B:94:0x01fa, B:22:0x0054, B:90:0x01e9, B:25:0x005c, B:42:0x00c2, B:44:0x00f4, B:46:0x00fc, B:51:0x0106, B:53:0x010c, B:54:0x0110, B:55:0x0113, B:57:0x011c, B:58:0x0120, B:60:0x0128, B:62:0x012e, B:64:0x0139, B:66:0x013f, B:68:0x0143, B:69:0x0147, B:71:0x0153, B:74:0x015b, B:75:0x0191, B:77:0x0197, B:79:0x019f, B:80:0x01a2, B:82:0x01be, B:83:0x01c2, B:84:0x01c8, B:86:0x01ce, B:87:0x01d2, B:95:0x0211, B:96:0x021d, B:39:0x00a4), top: B:101:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0128 A[Catch: Exception -> 0x003f, TryCatch #0 {Exception -> 0x003f, blocks: (B:15:0x003a, B:94:0x01fa, B:22:0x0054, B:90:0x01e9, B:25:0x005c, B:42:0x00c2, B:44:0x00f4, B:46:0x00fc, B:51:0x0106, B:53:0x010c, B:54:0x0110, B:55:0x0113, B:57:0x011c, B:58:0x0120, B:60:0x0128, B:62:0x012e, B:64:0x0139, B:66:0x013f, B:68:0x0143, B:69:0x0147, B:71:0x0153, B:74:0x015b, B:75:0x0191, B:77:0x0197, B:79:0x019f, B:80:0x01a2, B:82:0x01be, B:83:0x01c2, B:84:0x01c8, B:86:0x01ce, B:87:0x01d2, B:95:0x0211, B:96:0x021d, B:39:0x00a4), top: B:101:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:61:0x012d  */
    /* JADX WARN: Code duplicated, block: B:64:0x0139 A[Catch: Exception -> 0x003f, TryCatch #0 {Exception -> 0x003f, blocks: (B:15:0x003a, B:94:0x01fa, B:22:0x0054, B:90:0x01e9, B:25:0x005c, B:42:0x00c2, B:44:0x00f4, B:46:0x00fc, B:51:0x0106, B:53:0x010c, B:54:0x0110, B:55:0x0113, B:57:0x011c, B:58:0x0120, B:60:0x0128, B:62:0x012e, B:64:0x0139, B:66:0x013f, B:68:0x0143, B:69:0x0147, B:71:0x0153, B:74:0x015b, B:75:0x0191, B:77:0x0197, B:79:0x019f, B:80:0x01a2, B:82:0x01be, B:83:0x01c2, B:84:0x01c8, B:86:0x01ce, B:87:0x01d2, B:95:0x0211, B:96:0x021d, B:39:0x00a4), top: B:101:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:65:0x013e  */
    /* JADX WARN: Code duplicated, block: B:68:0x0143 A[Catch: Exception -> 0x003f, TryCatch #0 {Exception -> 0x003f, blocks: (B:15:0x003a, B:94:0x01fa, B:22:0x0054, B:90:0x01e9, B:25:0x005c, B:42:0x00c2, B:44:0x00f4, B:46:0x00fc, B:51:0x0106, B:53:0x010c, B:54:0x0110, B:55:0x0113, B:57:0x011c, B:58:0x0120, B:60:0x0128, B:62:0x012e, B:64:0x0139, B:66:0x013f, B:68:0x0143, B:69:0x0147, B:71:0x0153, B:74:0x015b, B:75:0x0191, B:77:0x0197, B:79:0x019f, B:80:0x01a2, B:82:0x01be, B:83:0x01c2, B:84:0x01c8, B:86:0x01ce, B:87:0x01d2, B:95:0x0211, B:96:0x021d, B:39:0x00a4), top: B:101:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:92:0x01f8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:93:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:96:0x021d A[Catch: Exception -> 0x003f, TRY_LEAVE, TryCatch #0 {Exception -> 0x003f, blocks: (B:15:0x003a, B:94:0x01fa, B:22:0x0054, B:90:0x01e9, B:25:0x005c, B:42:0x00c2, B:44:0x00f4, B:46:0x00fc, B:51:0x0106, B:53:0x010c, B:54:0x0110, B:55:0x0113, B:57:0x011c, B:58:0x0120, B:60:0x0128, B:62:0x012e, B:64:0x0139, B:66:0x013f, B:68:0x0143, B:69:0x0147, B:71:0x0153, B:74:0x015b, B:75:0x0191, B:77:0x0197, B:79:0x019f, B:80:0x01a2, B:82:0x01be, B:83:0x01c2, B:84:0x01c8, B:86:0x01ce, B:87:0x01d2, B:95:0x0211, B:96:0x021d, B:39:0x00a4), top: B:101:0x002a }] */
    /* JADX WARN: Instruction removed from duplicated block: B:96:0x021d, please report this as an issue */
    public final Object n(int i11, Continuation continuation) throws Throwable {
        LocalPushFeature$pullFromNetwork$1 localPushFeature$pullFromNetwork$1;
        SdkBaseDto sdkBaseDto;
        lg.a.C0828a c0828a;
        SdkPullMsgResp sdkPullMsgResp;
        PushConfig config;
        Context context;
        SdkPullMsgResp sdkPullMsgResp2;
        List<LocalPushMessage> seekingItems;
        SdkPullMsgResp sdkPullMsgResp3;
        List<LocalPushMessage> items;
        Context context2;
        List<LocalPushMessage> list;
        List listJ;
        mn.a aVarJ0;
        Context context3;
        List list2;
        int i12 = i11;
        if (continuation instanceof LocalPushFeature$pullFromNetwork$1) {
            localPushFeature$pullFromNetwork$1 = (LocalPushFeature$pullFromNetwork$1) continuation;
            int i13 = localPushFeature$pullFromNetwork$1.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                localPushFeature$pullFromNetwork$1.label = i13 - Integer.MIN_VALUE;
            } else {
                localPushFeature$pullFromNetwork$1 = new LocalPushFeature$pullFromNetwork$1(this, continuation);
            }
        } else {
            localPushFeature$pullFromNetwork$1 = new LocalPushFeature$pullFromNetwork$1(this, continuation);
        }
        Object localNotifications$default = localPushFeature$pullFromNetwork$1.result;
        Object objF = IntrinsicsKt.f();
        int i14 = localPushFeature$pullFromNetwork$1.label;
        try {
            if (i14 == 0) {
                ResultKt.b(localNotifications$default);
                lg.a.C0828a c0828a2 = lg.a.f68839a;
                lg.a.C0828a.l(c0828a2, "M_PUSH_SDK", "【本地推送】开始网络拉取消息", false, 4, null);
                if (o()) {
                    return Unit.f67061a;
                }
                if (!f()) {
                    lg.a.C0828a.r(c0828a2, "M_PUSH_SDK", new String[]{"【本地推送】当前无网络，尝试使用预置数据"}, false, 4, null);
                    localPushFeature$pullFromNetwork$1.label = 1;
                    if (g(i12, localPushFeature$pullFromNetwork$1) == objF) {
                        return objF;
                    }
                    return Unit.f67061a;
                }
                PushNetworkApi pushNetworkApiE = e();
                String apiPathPrefix = ln.a.f68978a.i().getApiPathPrefix();
                localPushFeature$pullFromNetwork$1.I$0 = i12;
                localPushFeature$pullFromNetwork$1.label = 2;
                localNotifications$default = PushNetworkApi.DefaultImpls.getLocalNotifications$default(pushNetworkApiE, apiPathPrefix, null, localPushFeature$pullFromNetwork$1, 2, null);
                if (localNotifications$default == objF) {
                    return objF;
                }
                sdkBaseDto = (SdkBaseDto) localNotifications$default;
                c0828a = lg.a.f68839a;
                lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【本地推送】网络请求响应，响应码：" + sdkBaseDto.getCode()}, false, 4, null);
                if (Intrinsics.c(sdkBaseDto.getCode(), "0")) {
                    sdkPullMsgResp = (SdkPullMsgResp) sdkBaseDto.getData();
                    if (sdkPullMsgResp != null) {
                        config = sdkPullMsgResp.getConfig();
                    } else {
                        config = null;
                    }
                    if (config != null) {
                        PushPreference pushPreference = PushPreference.f47608a;
                        context3 = this.f47525a;
                        if (context3 == null) {
                            Intrinsics.z("context");
                            context3 = null;
                        }
                        pushPreference.o(context3, config);
                    }
                    h(config);
                    PushPreference pushPreference2 = PushPreference.f47608a;
                    context = this.f47525a;
                    if (context == null) {
                        Intrinsics.z("context");
                        context = null;
                    }
                    sdkPullMsgResp2 = (SdkPullMsgResp) sdkBaseDto.getData();
                    if (sdkPullMsgResp2 != null) {
                        seekingItems = sdkPullMsgResp2.getSeekingItems();
                    } else {
                        seekingItems = null;
                    }
                    pushPreference2.s(context, seekingItems);
                    sdkPullMsgResp3 = (SdkPullMsgResp) sdkBaseDto.getData();
                    if (sdkPullMsgResp3 != null) {
                        items = sdkPullMsgResp3.getItems();
                    } else {
                        items = null;
                    }
                    context2 = this.f47525a;
                    if (context2 == null) {
                        Intrinsics.z("context");
                        context2 = null;
                    }
                    pushPreference2.x(context2, System.currentTimeMillis());
                    list = items;
                    if (list != null) {
                    }
                    lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "【本地推送】网络拉取成功，但消息列表为空", false, 4, null);
                } else {
                    lg.a.C0828a.l(c0828a, "M_PUSH_SDK", "【本地推送】网络拉取失败，响应码：" + sdkBaseDto.getCode() + "，错误信息：" + sdkBaseDto.getMsg(), false, 4, null);
                }
                return Unit.f67061a;
            }
            if (i14 == 1) {
                ResultKt.b(localNotifications$default);
                return Unit.f67061a;
            }
            if (i14 == 2) {
                i12 = localPushFeature$pullFromNetwork$1.I$0;
                ResultKt.b(localNotifications$default);
                sdkBaseDto = (SdkBaseDto) localNotifications$default;
                c0828a = lg.a.f68839a;
                lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【本地推送】网络请求响应，响应码：" + sdkBaseDto.getCode()}, false, 4, null);
                if (Intrinsics.c(sdkBaseDto.getCode(), "0")) {
                    sdkPullMsgResp = (SdkPullMsgResp) sdkBaseDto.getData();
                    if (sdkPullMsgResp != null) {
                        config = sdkPullMsgResp.getConfig();
                    } else {
                        config = null;
                    }
                    if (config != null) {
                        PushPreference pushPreference3 = PushPreference.f47608a;
                        context3 = this.f47525a;
                        if (context3 == null) {
                            Intrinsics.z("context");
                            context3 = null;
                        }
                        pushPreference3.o(context3, config);
                    }
                    h(config);
                    PushPreference pushPreference4 = PushPreference.f47608a;
                    context = this.f47525a;
                    if (context == null) {
                        Intrinsics.z("context");
                        context = null;
                    }
                    sdkPullMsgResp2 = (SdkPullMsgResp) sdkBaseDto.getData();
                    if (sdkPullMsgResp2 != null) {
                        seekingItems = sdkPullMsgResp2.getSeekingItems();
                    } else {
                        seekingItems = null;
                    }
                    pushPreference4.s(context, seekingItems);
                    sdkPullMsgResp3 = (SdkPullMsgResp) sdkBaseDto.getData();
                    if (sdkPullMsgResp3 != null) {
                        items = sdkPullMsgResp3.getItems();
                    } else {
                        items = null;
                    }
                    context2 = this.f47525a;
                    if (context2 == null) {
                        Intrinsics.z("context");
                        context2 = null;
                    }
                    pushPreference4.x(context2, System.currentTimeMillis());
                    list = items;
                    if (list != null || list.isEmpty()) {
                        lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "【本地推送】网络拉取成功，但消息列表为空", false, 4, null);
                    } else {
                        lg.a.C0828a.l(c0828a, "M_PUSH_SDK", "【本地推送】网络拉取成功，获取 " + items.size() + " 条消息", false, 4, null);
                        listJ = LocalFrequencyController.f47542a.j(items);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        int i15 = 0;
                        for (Object obj : listJ) {
                            int i16 = i15 + 1;
                            if (i15 < 0) {
                                CollectionsKt.u();
                            }
                            LocalPushMessage localPushMessage = (LocalPushMessage) obj;
                            localPushMessage.setReceiveTime(jCurrentTimeMillis - ((long) i15));
                            localPushMessage.setMsgStatus(0);
                            localPushMessage.setType(PushMsgType.LOCAL_PUSH.getType());
                            ln.b bVar = ln.b.f68987a;
                            Context context4 = this.f47525a;
                            if (context4 == null) {
                                Intrinsics.z("context");
                                context4 = null;
                            }
                            bVar.j(context4, localPushMessage);
                            i15 = i16;
                        }
                        PushDatabase.Companion companion = PushDatabase.INSTANCE;
                        Context context5 = this.f47525a;
                        if (context5 == null) {
                            Intrinsics.z("context");
                            context5 = null;
                        }
                        aVarJ0 = companion.b(context5).j0();
                        localPushFeature$pullFromNetwork$1.L$0 = listJ;
                        localPushFeature$pullFromNetwork$1.L$1 = aVarJ0;
                        localPushFeature$pullFromNetwork$1.I$0 = i12;
                        localPushFeature$pullFromNetwork$1.label = 3;
                        if (aVarJ0.a(localPushFeature$pullFromNetwork$1) == objF) {
                            return objF;
                        }
                        localPushFeature$pullFromNetwork$1.L$0 = listJ;
                        localPushFeature$pullFromNetwork$1.L$1 = null;
                        localPushFeature$pullFromNetwork$1.I$0 = i12;
                        localPushFeature$pullFromNetwork$1.label = 4;
                        if (aVarJ0.b(listJ, localPushFeature$pullFromNetwork$1) == objF) {
                            return objF;
                        }
                        list2 = listJ;
                    }
                } else {
                    lg.a.C0828a.l(c0828a, "M_PUSH_SDK", "【本地推送】网络拉取失败，响应码：" + sdkBaseDto.getCode() + "，错误信息：" + sdkBaseDto.getMsg(), false, 4, null);
                }
                return Unit.f67061a;
            }
            if (i14 == 3) {
                i12 = localPushFeature$pullFromNetwork$1.I$0;
                aVarJ0 = (mn.a) localPushFeature$pullFromNetwork$1.L$1;
                List list3 = (List) localPushFeature$pullFromNetwork$1.L$0;
                ResultKt.b(localNotifications$default);
                listJ = list3;
                localPushFeature$pullFromNetwork$1.L$0 = listJ;
                localPushFeature$pullFromNetwork$1.L$1 = null;
                localPushFeature$pullFromNetwork$1.I$0 = i12;
                localPushFeature$pullFromNetwork$1.label = 4;
                if (aVarJ0.b(listJ, localPushFeature$pullFromNetwork$1) == objF) {
                    return objF;
                }
                list2 = listJ;
            } else {
                if (i14 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i12 = localPushFeature$pullFromNetwork$1.I$0;
                list2 = (List) localPushFeature$pullFromNetwork$1.L$0;
                ResultKt.b(localNotifications$default);
            }
            lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【本地推送】消息已保存到数据库，开始处理"}, false, 4, null);
            l(list2, i12);
            k(list2);
        } catch (Exception e11) {
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】网络拉取异常：" + e11, false, 4, null);
            e11.printStackTrace();
        }
        return Unit.f67061a;
    }

    private final boolean o() {
        Context context;
        com.transsion.mpush.core.utils.b bVar = com.transsion.mpush.core.utils.b.f47609a;
        Context context2 = this.f47525a;
        if (context2 == null) {
            Intrinsics.z("context");
            context = null;
        } else {
            context = context2;
        }
        PushPreference pushPreference = PushPreference.f47608a;
        Context context3 = this.f47525a;
        if (context3 == null) {
            Intrinsics.z("context");
            context3 = null;
        }
        PushConfig pushConfigA = pushPreference.a(context3);
        com.transsion.mpush.core.utils.b.d dVarD = bVar.d(context, pushConfigA != null ? pushConfigA.getStartTime() : null, 480, 60, 30);
        if (dVarD.d()) {
            return false;
        }
        lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】未到达请求时间，跳过网络拉取，当前：" + bVar.g(dVarD.b()) + "，散列偏移：" + dVarD.c() + "s（窗口：-3600s~+1800s），实际请求时间：" + bVar.g(dVarD.a()) + "，seed来源：" + bVar.u(dVarD.e()), false, 4, null);
        return true;
    }

    private final void p(LocalPushMessage localPushMessage) {
        if (this.f47530f) {
            INotificationRenderer iNotificationRenderer = this.f47527c;
            Context context = this.f47525a;
            if (context == null) {
                Intrinsics.z("context");
                context = null;
            }
            iNotificationRenderer.show(context, localPushMessage);
            return;
        }
        lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【本地推送】发送处理开关关闭，跳过展示，msgId=" + localPushMessage.getMessageId()}, false, 4, null);
    }

    private final void q() {
        Object objM454constructorimpl;
        Object obj = this.f47527c;
        Context context = null;
        i iVar = obj instanceof i ? (i) obj : null;
        if (iVar == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Context context2 = this.f47525a;
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
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】预创建通知渠道失败：" + thM457exceptionOrNullimpl, false, 4, null);
        }
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void destroy() {
        o0.d(this.f47526b, null, 1, null);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void init(Context context) {
        Intrinsics.h(context, "context");
        this.f47525a = context;
        q();
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void onMessageReceive(String str, Object obj) {
        IPushFeature.DefaultImpls.onMessageReceive(this, str, obj);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void onTrigger(int i11) {
        if (!this.f47530f) {
            lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【本地推送】发送处理开关关闭，忽略触发，触发源：" + i11}, false, 4, null);
            return;
        }
        lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】收到触发事件，触发源：" + i11 + "，开始处理", false, 4, null);
        k.d(this.f47526b, null, null, new AnonymousClass1(i11, null), 3, null);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public boolean refreshMessage(Object message) {
        Intrinsics.h(message, "message");
        if (!this.f47530f) {
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【本地推送】发送处理开关关闭，忽略刷新消息", false, 4, null);
            return false;
        }
        if (message instanceof LocalPushMessage) {
            LocalPushMessage localPushMessage = (LocalPushMessage) message;
            if (!Intrinsics.c(localPushMessage.getSource(), "2")) {
                p(localPushMessage);
                return true;
            }
        }
        return false;
    }
}
