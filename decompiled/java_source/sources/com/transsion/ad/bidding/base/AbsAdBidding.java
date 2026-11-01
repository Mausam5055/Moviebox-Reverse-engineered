package com.transsion.ad.bidding.base;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.transsion.ad.MBAd;
import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.monopoly.intercept.NonAdShowedTimesManager;
import com.transsion.ad.monopoly.manager.AdPlansStorageManager;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.monopoly.plan.AdPlanUtil;
import com.transsion.ad.ps.attribution.AttributionProduceManager;
import com.transsion.ad.ps.distribute.PsDbManager;
import com.transsion.ad.report.BiddingStateEnum;
import com.transsion.ad.scene.AdSceneDisplayLimitManager;
import com.transsion.ad.scene.SceneInterceptManager;
import com.transsion.ad.strategy.AdOverridePendingTransitionManager;
import com.transsion.ad.strategy.AdUrlParameterManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import kotlinx.coroutines.z;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbsAdBidding extends di.a implements oi.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f41796d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f41797e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map f41798f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private di.a f41799g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f41800h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Integer f41801i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AdOverridePendingTransitionManager.AdOverridePendingTransitionEnum f41802j;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List f41808p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private BiddingIntermediateMaterialBean f41809q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final j0 f41811s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final z f41812t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final n0 f41813u;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f41803k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final AtomicBoolean f41804l = new AtomicBoolean(false);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f41805m = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Handler f41806n = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AtomicBoolean f41807o = new AtomicBoolean(false);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Handler f41810r = new Handler(Looper.getMainLooper());

    public static final class a extends AbstractCoroutineContextElement implements j0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AbsAdBidding f41814a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(j0.a aVar, AbsAdBidding absAdBidding) {
            super(aVar);
            this.f41814a = absAdBidding;
        }

        @Override // kotlinx.coroutines.j0
        public void o(CoroutineContext coroutineContext, Throwable th2) {
            oi.b.a.c(this.f41814a, 6, "biddingScope coroutine failed: " + th2, null, false, 12, null);
        }
    }

    /* JADX INFO: renamed from: com.transsion.ad.bidding.base.AbsAdBidding$onLoadFailure$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ad.bidding.base.AbsAdBidding$onLoadFailure$1", f = "AbsAdBidding.kt", l = {TTAdConstant.IMAGE_LIST_CODE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ AdditionalInfo $additionalInfo;
        final /* synthetic */ TAdErrorCode $errorCode;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AdditionalInfo additionalInfo, TAdErrorCode tAdErrorCode, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$additionalInfo = additionalInfo;
            this.$errorCode = tAdErrorCode;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AbsAdBidding.this.new AnonymousClass1(this.$additionalInfo, this.$errorCode, continuation);
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
                AbsAdBidding absAdBidding = AbsAdBidding.this;
                String str = "Hi 程序化加载失败 --> 直接竞价 --> placementId = " + this.$additionalInfo.getPlacementId() + " --> errorCode = " + this.$errorCode;
                this.label = 1;
                if (absAdBidding.Y(str, this) == objF) {
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

    /* JADX INFO: renamed from: com.transsion.ad.bidding.base.AbsAdBidding$onLoadSuccess$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ad.bidding.base.AbsAdBidding$onLoadSuccess$1", f = "AbsAdBidding.kt", l = {TTAdConstant.AD_ID_IS_NULL_CODE}, m = "invokeSuspend")
    static final class C10641 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ AdditionalInfo $additionalInfo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10641(AdditionalInfo additionalInfo, Continuation<? super C10641> continuation) {
            super(2, continuation);
            this.$additionalInfo = additionalInfo;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AbsAdBidding.this.new C10641(this.$additionalInfo, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10641) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                AbsAdBidding absAdBidding = AbsAdBidding.this;
                String str = "Hi 程序化加载成功 --> 直接竞价 --> placementId = " + this.$additionalInfo.getPlacementId();
                this.label = 1;
                if (absAdBidding.Y(str, this) == objF) {
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

    public AbsAdBidding() {
        a aVar = new a(j0.f67892k1, this);
        this.f41811s = aVar;
        z zVarB = l2.b(null, 1, null);
        this.f41812t = zVarB;
        this.f41813u = o0.a(zVarB.plus(y0.b()).plus(aVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(AbsAdBidding absAdBidding, TAdErrorCode tAdErrorCode) {
        di.a aVarJ0 = absAdBidding.j0();
        if (aVarJ0 != null) {
            aVarJ0.i(tAdErrorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(AbsAdBidding absAdBidding, List list) {
        di.a aVarJ0 = absAdBidding.j0();
        if (aVarJ0 != null) {
            aVarJ0.k(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(AbsAdBidding absAdBidding, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        di.a aVarJ0 = absAdBidding.j0();
        if (aVarJ0 != null) {
            aVarJ0.j(biddingIntermediateMaterialBean);
        }
    }

    private final void D0(int i11, List list) {
        oi.b.a.c(this, 3, "onBiddingTime() --> isLoading = " + this.f41804l.get(), null, false, 12, null);
        if (this.f41804l.get()) {
            oi.b.a.c(this, 3, "onBiddingTime() --> before callback size = " + list.size(), null, false, 12, null);
            if (i11 != 1) {
                List listM0 = m0(i11, list);
                if (listM0.isEmpty()) {
                    i(new TAdErrorCode(1102, "竞价失败 --> maxEcpmBiddingPlanList == null --> biddingPlanList?.size = " + list.size()));
                    return;
                }
                oi.b.a.c(this, 3, "onBiddingLoad() --> 竞价完成 --> fetchCount = " + i11 + " --> maxEcpmObject.size = " + listM0.size(), null, false, 4, null);
                k(listM0);
                return;
            }
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanL0 = l0(list);
            if (biddingIntermediateMaterialBeanL0 == null) {
                i(new TAdErrorCode(1102, "竞价失败 --> maxEcpmObject == null --> biddingPlanList?.size = " + list.size()));
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (true) {
                String string = null;
                if (!it.hasNext()) {
                    break;
                }
                Double ecpm = ((BiddingIntermediateMaterialBean) it.next()).getEcpm();
                if (ecpm != null) {
                    string = ecpm.toString();
                }
                arrayList.add(string);
            }
            Double ecpm2 = biddingIntermediateMaterialBeanL0.getEcpm();
            AdPlans plans = biddingIntermediateMaterialBeanL0.getPlans();
            String id2 = plans != null ? plans.getId() : null;
            AdPlans plans2 = biddingIntermediateMaterialBeanL0.getPlans();
            oi.b.a.c(this, 3, "onBiddingLoad() --> 竞价完成 --> ecpmList = " + arrayList + " --> ecpm = " + ecpm2 + " --> plans?.id = " + id2 + " --> plans?.name = " + (plans2 != null ? plans2.getName() : null), null, false, 4, null);
            j(biddingIntermediateMaterialBeanL0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(AbsAdBidding absAdBidding, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        di.a aVarJ0 = absAdBidding.j0();
        if (aVarJ0 != null) {
            aVarJ0.l(biddingIntermediateMaterialBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(AbsAdBidding absAdBidding, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        di.a aVarJ0 = absAdBidding.j0();
        if (aVarJ0 != null) {
            aVarJ0.m(biddingIntermediateMaterialBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(AbsAdBidding absAdBidding, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        di.a aVarJ0 = absAdBidding.j0();
        if (aVarJ0 != null) {
            aVarJ0.n(biddingIntermediateMaterialBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(AbsAdBidding absAdBidding, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        di.a aVarJ0 = absAdBidding.j0();
        if (aVarJ0 != null) {
            aVarJ0.o(biddingIntermediateMaterialBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(AbsAdBidding absAdBidding, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        di.a aVarJ0 = absAdBidding.j0();
        if (aVarJ0 != null) {
            aVarJ0.p(biddingIntermediateMaterialBean);
        }
    }

    public static /* synthetic */ void R0(AbsAdBidding absAdBidding, Activity activity, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startAdActivity");
        }
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        absAdBidding.Q0(activity, biddingIntermediateMaterialBean, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object T(List list, int i11, Continuation continuation) throws Throwable {
        AbsAdBidding$bidding$1 absAdBidding$bidding$1;
        if (continuation instanceof AbsAdBidding$bidding$1) {
            absAdBidding$bidding$1 = (AbsAdBidding$bidding$1) continuation;
            int i12 = absAdBidding$bidding$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                absAdBidding$bidding$1.label = i12 - Integer.MIN_VALUE;
            } else {
                absAdBidding$bidding$1 = new AbsAdBidding$bidding$1(this, continuation);
            }
        } else {
            absAdBidding$bidding$1 = new AbsAdBidding$bidding$1(this, continuation);
        }
        Object objD0 = absAdBidding$bidding$1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = absAdBidding$bidding$1.label;
        if (i13 == 0) {
            ResultKt.b(objD0);
            oi.b.a.c(this, 3, "bidding() --> 执行竞价环节", null, false, 12, null);
            absAdBidding$bidding$1.I$0 = i11;
            absAdBidding$bidding$1.label = 1;
            objD0 = d0(list, i11, absAdBidding$bidding$1);
            if (objD0 == objF) {
                return objF;
            }
        } else {
            if (i13 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i11 = absAdBidding$bidding$1.I$0;
            ResultKt.b(objD0);
        }
        List list2 = (List) objD0;
        oi.b.a.c(this, 3, "bidding() --> 竞价结果 biddingPlanList size = " + list2.size(), null, false, 12, null);
        D0(i11, list2);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object Y(String str, Continuation continuation) throws Throwable {
        AbsAdBidding$generalBidding$1 absAdBidding$generalBidding$1;
        if (continuation instanceof AbsAdBidding$generalBidding$1) {
            absAdBidding$generalBidding$1 = (AbsAdBidding$generalBidding$1) continuation;
            int i11 = absAdBidding$generalBidding$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                absAdBidding$generalBidding$1.label = i11 - Integer.MIN_VALUE;
            } else {
                absAdBidding$generalBidding$1 = new AbsAdBidding$generalBidding$1(this, continuation);
            }
        } else {
            absAdBidding$generalBidding$1 = new AbsAdBidding$generalBidding$1(this, continuation);
        }
        Object obj = absAdBidding$generalBidding$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = absAdBidding$generalBidding$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            if (!this.f41807o.compareAndSet(false, true)) {
                oi.b.a.c(this, 3, "generalBidding() --> 已经处理过，忽略本次调用 --> " + str, null, false, 12, null);
                return Unit.f67061a;
            }
            if (TextUtils.isEmpty(getMSceneId())) {
                oi.b.a.c(this, 6, "generalBidding() --> 场景已经被回收，不执行竞价逻辑 --> " + str, null, false, 12, null);
                return Unit.f67061a;
            }
            List list = this.f41808p;
            if (list != null && (!list.isEmpty())) {
                this.f41806n.removeCallbacksAndMessages(null);
                oi.b.a.c(this, 3, "generalBidding() --> 广告已经准备好，开始竞价 ---> " + str, null, false, 12, null);
                List list2 = this.f41808p;
                List listU0 = list2 != null ? CollectionsKt.U0(list2) : null;
                int i13 = this.f41803k;
                absAdBidding$generalBidding$1.label = 1;
                if (T(listU0, i13, absAdBidding$generalBidding$1) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        List list3 = this.f41808p;
        if (list3 != null) {
            list3.clear();
        }
        return Unit.f67061a;
    }

    private final AdOverridePendingTransitionManager.AdOverridePendingTransitionEnum Z() {
        return this.f41802j;
    }

    static /* synthetic */ Object c0(AbsAdBidding absAdBidding, Continuation continuation) {
        return AdPlansStorageManager.f42153a.h(absAdBidding.getMSceneId(), absAdBidding.g0(), absAdBidding.getLogTag(), new AdPlanSourceManager.AdPlanEnum[0], continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:22:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:24:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:26:0x00db  */
    /* JADX WARN: Code duplicated, block: B:31:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:33:0x010c  */
    /* JADX WARN: Code duplicated, block: B:35:0x0118  */
    /* JADX WARN: Code duplicated, block: B:66:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:68:0x02bd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:69:0x02be  */
    /* JADX WARN: Code duplicated, block: B:72:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:73:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:75:0x0323  */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00f6 -> B:76:0x0332). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x01b1 -> B:53:0x01b6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0231 -> B:58:0x022c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x025f -> B:58:0x022c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0290 -> B:58:0x022c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x0323 -> B:76:0x0332). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:33:0x010c
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object d0(java.util.List r32, int r33, kotlin.coroutines.Continuation r34) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 824
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.bidding.base.AbsAdBidding.d0(java.util.List, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long e0() {
        if (com.transsion.ad.scene.c.b(com.transsion.ad.scene.c.f42203a, getMSceneId(), false, 2, null) || r0()) {
            return 0L;
        }
        return ((long) com.transsion.ad.scene.a.c(com.transsion.ad.scene.a.f42201a, getMSceneId(), 0, 2, null)) * 1000;
    }

    private final BiddingIntermediateMaterialBean l0(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            oi.b.a.c(this, 5, "getMaxEcpmBiddingPlan() --> biddingList.isNullOrEmpty() == true", null, false, 4, null);
            return null;
        }
        final Comparator comparator = new Comparator() { // from class: com.transsion.ad.bidding.base.AbsAdBidding$getMaxEcpmBiddingPlan$$inlined$compareBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(((BiddingIntermediateMaterialBean) t11).getEcpm(), ((BiddingIntermediateMaterialBean) t12).getEcpm());
            }
        };
        return (BiddingIntermediateMaterialBean) CollectionsKt.x0(list, new Comparator() { // from class: com.transsion.ad.bidding.base.AbsAdBidding$getMaxEcpmBiddingPlan$$inlined$thenBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                int sort;
                int sort2;
                int iCompare = comparator.compare(t11, t12);
                if (iCompare != 0) {
                    return iCompare;
                }
                AdPlans plans = ((BiddingIntermediateMaterialBean) t11).getPlans();
                if (plans == null || (sort = plans.getSort()) == null) {
                    sort = Integer.MAX_VALUE;
                }
                AdPlans plans2 = ((BiddingIntermediateMaterialBean) t12).getPlans();
                if (plans2 == null || (sort2 = plans2.getSort()) == null) {
                    sort2 = Integer.MAX_VALUE;
                }
                return ComparisonsKt.d(sort, sort2);
            }
        });
    }

    private final List m0(int i11, List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty() || i11 <= 0) {
            return new ArrayList();
        }
        final Comparator comparator = new Comparator() { // from class: com.transsion.ad.bidding.base.AbsAdBidding$getMaxEcpmBiddingPlanList$$inlined$compareByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                Double ecpm = ((BiddingIntermediateMaterialBean) t12).getEcpm();
                Double dValueOf = Double.valueOf(Double.MIN_VALUE);
                if (ecpm == null) {
                    ecpm = dValueOf;
                }
                Double ecpm2 = ((BiddingIntermediateMaterialBean) t11).getEcpm();
                if (ecpm2 != null) {
                    dValueOf = ecpm2;
                }
                return ComparisonsKt.d(ecpm, dValueOf);
            }
        };
        return CollectionsKt.U0(CollectionsKt.K0(CollectionsKt.I0(list, new Comparator() { // from class: com.transsion.ad.bidding.base.AbsAdBidding$getMaxEcpmBiddingPlanList$$inlined$thenBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                int sort;
                int sort2;
                int iCompare = comparator.compare(t11, t12);
                if (iCompare != 0) {
                    return iCompare;
                }
                AdPlans plans = ((BiddingIntermediateMaterialBean) t11).getPlans();
                if (plans == null || (sort = plans.getSort()) == null) {
                    sort = Integer.MAX_VALUE;
                }
                AdPlans plans2 = ((BiddingIntermediateMaterialBean) t12).getPlans();
                if (plans2 == null || (sort2 = plans2.getSort()) == null) {
                    sort2 = Integer.MAX_VALUE;
                }
                return ComparisonsKt.d(sort, sort2);
            }
        }), i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean q0(List list) {
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (AdPlanSourceManager.f42166a.e((AdPlans) it.next())) {
                return true;
            }
        }
        return false;
    }

    private final List s0(List list) {
        Object next;
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdPlans adPlans = (AdPlans) it.next();
            String adSource = adPlans.getAdSource();
            if (Intrinsics.c(adSource, AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_HI.getValue())) {
                arrayList2.add(adPlans);
            } else if (Intrinsics.c(adSource, AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_H5.getValue())) {
                arrayList3.add(adPlans);
            } else {
                arrayList.add(adPlans);
            }
        }
        Object next2 = null;
        if (!arrayList2.isEmpty()) {
            Iterator it2 = arrayList2.iterator();
            if (it2.hasNext()) {
                next = it2.next();
                if (it2.hasNext()) {
                    Double bidEcpmCent = ((AdPlans) next).getBidEcpmCent();
                    double dDoubleValue = bidEcpmCent != null ? bidEcpmCent.doubleValue() : 0.0d;
                    do {
                        Object next3 = it2.next();
                        Double bidEcpmCent2 = ((AdPlans) next3).getBidEcpmCent();
                        double dDoubleValue2 = bidEcpmCent2 != null ? bidEcpmCent2.doubleValue() : 0.0d;
                        if (Double.compare(dDoubleValue, dDoubleValue2) < 0) {
                            next = next3;
                            dDoubleValue = dDoubleValue2;
                        }
                    } while (it2.hasNext());
                }
            } else {
                next = null;
            }
            AdPlans adPlans2 = (AdPlans) next;
            if (adPlans2 != null) {
                arrayList.add(adPlans2);
            }
        }
        if (!arrayList3.isEmpty()) {
            Iterator it3 = arrayList3.iterator();
            if (it3.hasNext()) {
                next2 = it3.next();
                if (it3.hasNext()) {
                    Double bidEcpmCent3 = ((AdPlans) next2).getBidEcpmCent();
                    double dDoubleValue3 = bidEcpmCent3 != null ? bidEcpmCent3.doubleValue() : 0.0d;
                    do {
                        Object next4 = it3.next();
                        Double bidEcpmCent4 = ((AdPlans) next4).getBidEcpmCent();
                        double dDoubleValue4 = bidEcpmCent4 != null ? bidEcpmCent4.doubleValue() : 0.0d;
                        if (Double.compare(dDoubleValue3, dDoubleValue4) < 0) {
                            next2 = next4;
                            dDoubleValue3 = dDoubleValue4;
                        }
                    } while (it3.hasNext());
                }
            }
            AdPlans adPlans3 = (AdPlans) next2;
            if (adPlans3 != null) {
                arrayList.add(adPlans3);
            }
        }
        if (arrayList.size() > 1) {
            CollectionsKt.A(arrayList, new Comparator() { // from class: com.transsion.ad.bidding.base.AbsAdBidding$hiAdPlanDeduplication$$inlined$sortByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t11, T t12) {
                    Double bidEcpmCent5 = ((AdPlans) t12).getBidEcpmCent();
                    Double dValueOf = Double.valueOf(bidEcpmCent5 != null ? bidEcpmCent5.doubleValue() : 0.0d);
                    Double bidEcpmCent6 = ((AdPlans) t11).getBidEcpmCent();
                    return ComparisonsKt.d(dValueOf, Double.valueOf(bidEcpmCent6 != null ? bidEcpmCent6.doubleValue() : 0.0d));
                }
            });
        }
        return arrayList;
    }

    private final Object t0(boolean z10, int i11, Continuation continuation) {
        Object objG = kotlinx.coroutines.i.g(y0.b(), new AbsAdBidding$innerLoadAd$2(this, z10, i11, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }

    public static /* synthetic */ Object w0(AbsAdBidding absAdBidding, int i11, boolean z10, Continuation continuation, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadAd");
        }
        if ((i12 & 1) != 0) {
            i11 = 1;
        }
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        return absAdBidding.v0(i11, z10, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(AbsAdBidding absAdBidding, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, long j11) {
        di.a aVarJ0 = absAdBidding.j0();
        if (aVarJ0 != null) {
            aVarJ0.d(biddingIntermediateMaterialBean, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(String str) {
        hi.a aVarE;
        MBAd.a aVarC = MBAd.f41751a.c();
        if (aVarC == null || (aVarE = aVarC.e()) == null) {
            return;
        }
        aVarE.b(str);
    }

    public final AbsAdBidding J0(AdOverridePendingTransitionManager.AdOverridePendingTransitionEnum adOverridePendingTransitionEnum) {
        this.f41802j = adOverridePendingTransitionEnum;
        return this;
    }

    public final AbsAdBidding K0(Integer num) {
        this.f41801i = num;
        return this;
    }

    public final AbsAdBidding L0(Context context) {
        Intrinsics.h(context, "context");
        this.f41800h = context;
        return this;
    }

    public final AbsAdBidding M0(Map map) {
        this.f41798f = map;
        return this;
    }

    public final AbsAdBidding N0(di.a aVar) {
        this.f41799g = aVar;
        return this;
    }

    public final AbsAdBidding O0(String str) {
        this.f41796d = str;
        return this;
    }

    public final AbsAdBidding P0(String str) {
        this.f41797e = str;
        return this;
    }

    public final void Q0(Activity activity, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, boolean z10) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        v vVar = v.f41893a;
        if (vVar.b()) {
            if (biddingIntermediateMaterialBean != null) {
                biddingIntermediateMaterialBean.setErrorMsg("当前已经有Activity在展示广告了，请勿重复展示广告!");
            }
            p(biddingIntermediateMaterialBean);
            return;
        }
        vVar.d();
        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity)) == null || kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new AbsAdBidding$startAdActivity$1(biddingIntermediateMaterialBean, activity, this, z10, null), 3, null) == null) {
            if (biddingIntermediateMaterialBean != null) {
                biddingIntermediateMaterialBean.setErrorMsg("activity is empty");
            }
            p(biddingIntermediateMaterialBean);
            Unit unit = Unit.f67061a;
        }
    }

    public abstract void S(List list, AdPlans adPlans, int i11);

    public boolean U() {
        return false;
    }

    public void V() {
        t1.a.b(this.f41812t, null, 1, null);
        com.transsion.ad.bidding.splash.a aVarA = com.transsion.ad.bidding.splash.a.f42032n.a(getMSceneId());
        if (aVarA != null) {
            aVarA.c(this);
        }
        com.transsion.ad.bidding.interstitial.l lVarB = com.transsion.ad.bidding.interstitial.l.f41980j.b(getMSceneId());
        if (lVarB != null) {
            lVarB.c(this);
        }
        com.transsion.ad.bidding.video.q qVarB = com.transsion.ad.bidding.video.q.f42067j.b(getMSceneId());
        if (qVarB != null) {
            qVarB.c(this);
        }
        AbsBiddingBuyOutGemini absBiddingBuyOutGeminiH0 = h0();
        if (absBiddingBuyOutGeminiH0 != null) {
            absBiddingBuyOutGeminiH0.b();
        }
        N0(null);
        M0(null);
        this.f41800h = null;
        List list = this.f41808p;
        if (list != null) {
            list.clear();
        }
        this.f41806n.removeCallbacksAndMessages(null);
        this.f41809q = null;
        oi.b.a.c(this, 3, "destroy() --> 资源回收", null, false, 4, null);
    }

    public final int W(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        return (biddingIntermediateMaterialBean != null && AdPlanSourceManager.f42166a.c(biddingIntermediateMaterialBean.getPlans())) ? 107 : 102;
    }

    public final Object X(Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new AbsAdBidding$fetchH5LinkIfH5Ad$2(this, null), continuation);
    }

    @Override // di.a
    public void a(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        AdPlans plans;
        AdPlans plans2;
        AdPlans plans3;
        AdPlans plans4;
        super.a(biddingIntermediateMaterialBean);
        ri.c cVar = ri.c.f74535a;
        String strP0 = p0();
        String sceneId = getMSceneId();
        String id2 = (biddingIntermediateMaterialBean == null || (plans4 = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans4.getId();
        Integer numValueOf = Integer.valueOf(W(biddingIntermediateMaterialBean));
        AdPlanUtil adPlanUtil = AdPlanUtil.f42167a;
        AdMaterialList adMaterialListA = adPlanUtil.a(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
        String id3 = adMaterialListA != null ? adMaterialListA.getId() : null;
        int iA0 = a0();
        boolean zA = pi.b.f72460a.a(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
        cVar.a((128 & 1) != 0 ? "" : strP0, sceneId, id2, numValueOf, id3, iA0, (128 & 64) != 0 ? false : zA, (128 & 128) != 0 ? MapsKt.h() : null, adPlanUtil.c(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null), (128 & 512) != 0 ? null : (biddingIntermediateMaterialBean == null || (plans3 = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans3.getBidEcpmCent(), (128 & 1024) != 0 ? null : (biddingIntermediateMaterialBean == null || (plans2 = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans2.getEcpmCent(), (128 & 2048) != 0 ? null : o0(), (biddingIntermediateMaterialBean == null || (plans = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans.getAdSource());
        com.transsion.ad.strategy.b.f42227a.j(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null, Z(), getLogTag(), getMSceneId());
        PsDbManager.f42189a.k(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
        l(biddingIntermediateMaterialBean);
    }

    public abstract int a0();

    @Override // di.a
    public void b(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.b(biddingIntermediateMaterialBean);
        m(biddingIntermediateMaterialBean);
    }

    public Object b0(Continuation continuation) {
        return c0(this, continuation);
    }

    @Override // di.a
    public void c(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        AdPlans plans;
        AdPlans plans2;
        AdPlans plans3;
        AdPlans plans4;
        super.c(biddingIntermediateMaterialBean);
        if (biddingIntermediateMaterialBean != null) {
            biddingIntermediateMaterialBean.setExpend(Boolean.TRUE);
        }
        AttributionProduceManager.f42180c.m(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
        ri.c cVar = ri.c.f74535a;
        String strP0 = p0();
        String sceneId = getMSceneId();
        String id2 = (biddingIntermediateMaterialBean == null || (plans4 = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans4.getId();
        Integer numValueOf = Integer.valueOf(W(biddingIntermediateMaterialBean));
        AdPlanUtil adPlanUtil = AdPlanUtil.f42167a;
        AdMaterialList adMaterialListA = adPlanUtil.a(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
        String id3 = adMaterialListA != null ? adMaterialListA.getId() : null;
        int iA0 = a0();
        boolean zA = pi.b.f72460a.a(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
        cVar.g((128 & 1) != 0 ? "" : strP0, sceneId, id2, numValueOf, id3, iA0, (128 & 64) != 0 ? false : zA, (128 & 128) != 0 ? MapsKt.h() : null, adPlanUtil.c(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null), (128 & 512) != 0 ? null : (biddingIntermediateMaterialBean == null || (plans3 = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans3.getBidEcpmCent(), (128 & 1024) != 0 ? null : (biddingIntermediateMaterialBean == null || (plans2 = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans2.getEcpmCent(), (128 & 2048) != 0 ? null : o0(), (biddingIntermediateMaterialBean == null || (plans = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans.getAdSource());
        PsDbManager.f42189a.l(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
        n(biddingIntermediateMaterialBean);
    }

    @Override // di.a
    public void d(final BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, final long j11) {
        AdPlans plans;
        AdPlans plans2;
        AdPlans plans3;
        super.d(biddingIntermediateMaterialBean, j11);
        oi.b.a.c(this, 0, "onBiddingBuyOutDisplayTimestamp() --> name = " + ((biddingIntermediateMaterialBean == null || (plans3 = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans3.getName()) + " --> displayTimestamp = " + j11, null, false, 5, null);
        ri.c cVar = ri.c.f74535a;
        String strP0 = p0();
        String sceneId = getMSceneId();
        String id2 = (biddingIntermediateMaterialBean == null || (plans2 = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans2.getId();
        AdMaterialList adMaterialListA = AdPlanUtil.f42167a.a(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
        cVar.d(strP0, sceneId, id2, j11, adMaterialListA != null ? adMaterialListA.getId() : null, a0(), pi.b.f72460a.a(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null), o0(), biddingIntermediateMaterialBean != null ? Integer.valueOf(biddingIntermediateMaterialBean.getAdSource()).toString() : null, (biddingIntermediateMaterialBean == null || (plans = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans.getAdSource());
        this.f41810r.post(new Runnable() { // from class: com.transsion.ad.bidding.base.h
            @Override // java.lang.Runnable
            public final void run() {
                AbsAdBidding.y0(this.f41870a, biddingIntermediateMaterialBean, j11);
            }
        });
    }

    @Override // di.a
    public void f(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        AdPlans plans;
        super.f(biddingIntermediateMaterialBean);
        boolean h5LinkPreload = (biddingIntermediateMaterialBean == null || (plans = biddingIntermediateMaterialBean.getPlans()) == null) ? false : plans.getH5LinkPreload();
        AdMaterialList adMaterialListA = AdPlanUtil.f42167a.a(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
        String h5Link = adMaterialListA != null ? adMaterialListA.getH5Link() : null;
        if (!h5LinkPreload || TextUtils.isEmpty(h5Link)) {
            return;
        }
        AdUrlParameterManager adUrlParameterManager = AdUrlParameterManager.f42213a;
        if (h5Link == null) {
            h5Link = "";
        }
        final String strB = adUrlParameterManager.b(h5Link, "on Ad show");
        this.f41810r.post(new Runnable() { // from class: com.transsion.ad.bidding.base.c
            @Override // java.lang.Runnable
            public final void run() {
                AbsAdBidding.z0(strB);
            }
        });
    }

    public final Context f0() {
        return this.f41800h;
    }

    @Override // di.a
    public void g(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.g(biddingIntermediateMaterialBean);
        o(biddingIntermediateMaterialBean);
    }

    public final Map g0() {
        Map map = this.f41798f;
        return map == null ? MapsKt.h() : map;
    }

    @Override // oi.b
    public String getClassTag() {
        return oi.b.a.a(this);
    }

    @Override // oi.b
    /* JADX INFO: renamed from: getSceneId */
    public String getMSceneId() {
        String str = this.f41796d;
        return str == null ? "" : str;
    }

    @Override // di.a
    public void h(TAdErrorCode tAdErrorCode, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.h(tAdErrorCode, biddingIntermediateMaterialBean);
        p(biddingIntermediateMaterialBean);
    }

    public abstract AbsBiddingBuyOutGemini h0();

    @Override // di.a
    public void i(final TAdErrorCode tAdErrorCode) {
        super.i(tAdErrorCode);
        oi.b.a.c(this, 6, "onBiddingError() --> errorMessage = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), null, false, 12, null);
        this.f41804l.set(false);
        this.f41810r.post(new Runnable() { // from class: com.transsion.ad.bidding.base.e
            @Override // java.lang.Runnable
            public final void run() {
                AbsAdBidding.A0(this.f41864a, tAdErrorCode);
            }
        });
    }

    public final Integer i0() {
        return this.f41801i;
    }

    @Override // di.a
    public void j(final BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        AdPlans plans;
        AdPlans plans2;
        AdPlans plans3;
        AdPlans plans4;
        AdPlans plans5;
        super.j(biddingIntermediateMaterialBean);
        this.f41809q = biddingIntermediateMaterialBean;
        ri.c cVar = ri.c.f74535a;
        String strP0 = p0();
        String sceneId = getMSceneId();
        String adSource = null;
        Integer numValueOf = biddingIntermediateMaterialBean != null ? Integer.valueOf(biddingIntermediateMaterialBean.getAdSource()) : null;
        int iA0 = a0();
        String str = "竞价成功 --> ecpm = " + (biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getEcpm() : null) + " -- plans?.id = " + ((biddingIntermediateMaterialBean == null || (plans5 = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans5.getId()) + " -- plans?.name = " + ((biddingIntermediateMaterialBean == null || (plans4 = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans4.getName());
        BiddingStateEnum biddingStateEnum = BiddingStateEnum.BIDDING_REPORT_BIDDING_SUCCESS;
        String strValueOf = String.valueOf(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getEcpm() : null);
        String strValueOf2 = String.valueOf((biddingIntermediateMaterialBean == null || (plans3 = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans3.getId());
        String strValueOf3 = String.valueOf((biddingIntermediateMaterialBean == null || (plans2 = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans2.getName());
        String strO0 = o0();
        if (biddingIntermediateMaterialBean != null && (plans = biddingIntermediateMaterialBean.getPlans()) != null) {
            adSource = plans.getAdSource();
        }
        cVar.e(strP0, sceneId, numValueOf, iA0, biddingStateEnum, str, null, strValueOf, strValueOf2, strValueOf3, strO0, adSource);
        this.f41804l.set(false);
        this.f41810r.post(new Runnable() { // from class: com.transsion.ad.bidding.base.b
            @Override // java.lang.Runnable
            public final void run() {
                AbsAdBidding.C0(this.f41859a, biddingIntermediateMaterialBean);
            }
        });
    }

    public final di.a j0() {
        return this.f41799g;
    }

    @Override // di.a
    public void k(final List list) {
        super.k(list);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) it.next();
                biddingIntermediateMaterialBean.setSceneSubId(o0());
                biddingIntermediateMaterialBean.setSceneId(getMSceneId());
                ri.c cVar = ri.c.f74535a;
                String strP0 = p0();
                String sceneId = getMSceneId();
                int adSource = biddingIntermediateMaterialBean.getAdSource();
                int iA0 = a0();
                Double ecpm = biddingIntermediateMaterialBean.getEcpm();
                AdPlans plans = biddingIntermediateMaterialBean.getPlans();
                String id2 = plans != null ? plans.getId() : null;
                AdPlans plans2 = biddingIntermediateMaterialBean.getPlans();
                String str = "竞价成功 --> ecpm = " + ecpm + " -- plans?.id = " + id2 + " -- plans?.name = " + (plans2 != null ? plans2.getName() : null);
                BiddingStateEnum biddingStateEnum = BiddingStateEnum.BIDDING_REPORT_BIDDING_SUCCESS;
                String strValueOf = String.valueOf(biddingIntermediateMaterialBean.getEcpm());
                AdPlans plans3 = biddingIntermediateMaterialBean.getPlans();
                String strValueOf2 = String.valueOf(plans3 != null ? plans3.getId() : null);
                AdPlans plans4 = biddingIntermediateMaterialBean.getPlans();
                String strValueOf3 = String.valueOf(plans4 != null ? plans4.getName() : null);
                String strO0 = o0();
                AdPlans plans5 = biddingIntermediateMaterialBean.getPlans();
                cVar.e(strP0, sceneId, Integer.valueOf(adSource), iA0, biddingStateEnum, str, null, strValueOf, strValueOf2, strValueOf3, strO0, plans5 != null ? plans5.getAdSource() : null);
            }
        }
        this.f41804l.set(false);
        this.f41810r.post(new Runnable() { // from class: com.transsion.ad.bidding.base.j
            @Override // java.lang.Runnable
            public final void run() {
                AbsAdBidding.B0(this.f41875a, list);
            }
        });
    }

    public final Handler k0() {
        return this.f41810r;
    }

    @Override // di.a
    public void l(final BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        AdPlans plans;
        oi.b.a.c(this, 0, "onBiddingWrapperAdClick() --> name = " + ((biddingIntermediateMaterialBean == null || (plans = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans.getName()), null, false, 5, null);
        this.f41810r.post(new Runnable() { // from class: com.transsion.ad.bidding.base.g
            @Override // java.lang.Runnable
            public final void run() {
                AbsAdBidding.E0(this.f41868a, biddingIntermediateMaterialBean);
            }
        });
    }

    @Override // di.a
    public void m(final BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        AdPlans plans;
        oi.b.a.c(this, 0, "onBiddingWrapperAdClose() --> name = " + ((biddingIntermediateMaterialBean == null || (plans = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans.getName()), null, false, 5, null);
        v vVar = v.f41893a;
        if (vVar.a(a0())) {
            vVar.c();
        }
        this.f41810r.post(new Runnable() { // from class: com.transsion.ad.bidding.base.a
            @Override // java.lang.Runnable
            public final void run() {
                AbsAdBidding.F0(this.f41857a, biddingIntermediateMaterialBean);
            }
        });
    }

    @Override // di.a
    public void n(final BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        AdPlans plans;
        oi.b.a.c(this, 0, "onBiddingWrapperAdDisplay() --> name = " + ((biddingIntermediateMaterialBean == null || (plans = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans.getName()), null, false, 5, null);
        NonAdShowedTimesManager.f42134a.c(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
        AdSceneDisplayLimitManager.f42199a.b(getMSceneId());
        this.f41810r.post(new Runnable() { // from class: com.transsion.ad.bidding.base.f
            @Override // java.lang.Runnable
            public final void run() {
                AbsAdBidding.G0(this.f41866a, biddingIntermediateMaterialBean);
            }
        });
    }

    public final BiddingIntermediateMaterialBean n0() {
        return this.f41809q;
    }

    @Override // di.a
    public void o(final BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        AdPlans plans;
        oi.b.a.c(this, 0, "onBiddingWrapperAdRewarded() --> name = " + ((biddingIntermediateMaterialBean == null || (plans = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans.getName()), null, false, 5, null);
        this.f41810r.post(new Runnable() { // from class: com.transsion.ad.bidding.base.d
            @Override // java.lang.Runnable
            public final void run() {
                AbsAdBidding.H0(this.f41862a, biddingIntermediateMaterialBean);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String o0() {
        return this.f41797e;
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdPlans plans;
        AdPlans plans2;
        TAdNativeInfo nativeInfo;
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onClick(tAdNativeInfo, additionalInfo);
        String adSource = null;
        if (a0() == 2) {
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanN0 = n0();
            if (!TextUtils.equals((biddingIntermediateMaterialBeanN0 == null || (nativeInfo = biddingIntermediateMaterialBeanN0.getNativeInfo()) == null) ? null : nativeInfo.getAdId(), tAdNativeInfo != null ? tAdNativeInfo.getAdId() : null)) {
                return;
            }
        }
        ri.c cVar = ri.c.f74535a;
        String strP0 = p0();
        String sceneId = getMSceneId();
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanN1 = n0();
        String id2 = (biddingIntermediateMaterialBeanN1 == null || (plans2 = biddingIntermediateMaterialBeanN1.getPlans()) == null) ? null : plans2.getId();
        Integer source = additionalInfo.getSource();
        String codeSeatId = additionalInfo.getCodeSeatId();
        int iA0 = a0();
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanN2 = n0();
        Double ecpm = biddingIntermediateMaterialBeanN2 != null ? biddingIntermediateMaterialBeanN2.getEcpm() : null;
        String strO0 = o0();
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanN3 = n0();
        if (biddingIntermediateMaterialBeanN3 != null && (plans = biddingIntermediateMaterialBeanN3.getPlans()) != null) {
            adSource = plans.getAdSource();
        }
        cVar.a((128 & 1) != 0 ? "" : strP0, sceneId, id2, source, codeSeatId, iA0, (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, null, (128 & 512) != 0 ? null : ecpm, (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : strO0, adSource);
        l(n0());
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onClosed(int i11) {
        super.onClosed(i11);
        m(n0());
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadFailure(tAdErrorCode, additionalInfo);
        kotlinx.coroutines.k.d(this.f41813u, null, null, new AnonymousClass1(additionalInfo, tAdErrorCode, null), 3, null);
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadSuccess(additionalInfo);
        kotlinx.coroutines.k.d(this.f41813u, null, null, new C10641(additionalInfo, null), 3, null);
    }

    @Override // oi.b
    public void onLog(int i11, String str, String str2, boolean z10) {
        oi.b.a.b(this, i11, str, str2, z10);
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onRewarded() {
        super.onRewarded();
        o(n0());
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShow(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdPlans plans;
        AdPlans plans2;
        TAdNativeInfo nativeInfo;
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShow(tAdNativeInfo, additionalInfo);
        String adSource = null;
        if (a0() == 2) {
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanN0 = n0();
            if (!TextUtils.equals((biddingIntermediateMaterialBeanN0 == null || (nativeInfo = biddingIntermediateMaterialBeanN0.getNativeInfo()) == null) ? null : nativeInfo.getAdId(), tAdNativeInfo != null ? tAdNativeInfo.getAdId() : null)) {
                return;
            }
        }
        ri.c cVar = ri.c.f74535a;
        String strP0 = p0();
        String sceneId = getMSceneId();
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanN1 = n0();
        String id2 = (biddingIntermediateMaterialBeanN1 == null || (plans2 = biddingIntermediateMaterialBeanN1.getPlans()) == null) ? null : plans2.getId();
        Integer source = additionalInfo.getSource();
        String codeSeatId = additionalInfo.getCodeSeatId();
        int iA0 = a0();
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanN2 = n0();
        Double ecpm = biddingIntermediateMaterialBeanN2 != null ? biddingIntermediateMaterialBeanN2.getEcpm() : null;
        String strO0 = o0();
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanN3 = n0();
        if (biddingIntermediateMaterialBeanN3 != null && (plans = biddingIntermediateMaterialBeanN3.getPlans()) != null) {
            adSource = plans.getAdSource();
        }
        cVar.g((128 & 1) != 0 ? "" : strP0, sceneId, id2, source, codeSeatId, iA0, (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, null, (128 & 512) != 0 ? null : ecpm, (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : strO0, adSource);
        n(n0());
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShowError(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShowError(tAdErrorCode, additionalInfo);
        String errorMessage = tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null;
        oi.b.a.c(this, 6, "onShowError() --> errorMessage = " + errorMessage + " --> placementId = " + additionalInfo.getPlacementId(), null, false, 12, null);
        p(n0());
    }

    @Override // di.a
    public void p(final BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        AdPlans plans;
        oi.b.a.c(this, 0, "onBiddingWrapperAdShowError() --> name = " + ((biddingIntermediateMaterialBean == null || (plans = biddingIntermediateMaterialBean.getPlans()) == null) ? null : plans.getName()) + " --> msg = " + (biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getErrorMsg() : null), null, false, 13, null);
        v vVar = v.f41893a;
        if (vVar.a(a0())) {
            vVar.c();
        }
        this.f41810r.post(new Runnable() { // from class: com.transsion.ad.bidding.base.i
            @Override // java.lang.Runnable
            public final void run() {
                AbsAdBidding.I0(this.f41873a, biddingIntermediateMaterialBean);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String p0() {
        return this.f41805m;
    }

    public abstract boolean r0();

    protected final boolean u0(AdPlans adPlans) {
        if ((adPlans != null ? adPlans.getBidEcpmCent() : null) != null) {
            Double bidEcpmCent = adPlans.getBidEcpmCent();
            if ((bidEcpmCent != null ? bidEcpmCent.doubleValue() : 0.0d) != 0.0d) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final Object v0(int i11, boolean z10, Continuation continuation) throws Throwable {
        AbsAdBidding$loadAd$1 absAdBidding$loadAd$1;
        boolean z11;
        int i12 = i11;
        if (continuation instanceof AbsAdBidding$loadAd$1) {
            absAdBidding$loadAd$1 = (AbsAdBidding$loadAd$1) continuation;
            int i13 = absAdBidding$loadAd$1.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                absAdBidding$loadAd$1.label = i13 - Integer.MIN_VALUE;
            } else {
                absAdBidding$loadAd$1 = new AbsAdBidding$loadAd$1(this, continuation);
            }
        } else {
            absAdBidding$loadAd$1 = new AbsAdBidding$loadAd$1(this, continuation);
        }
        Object objA = absAdBidding$loadAd$1.result;
        Object objF = IntrinsicsKt.f();
        int i14 = absAdBidding$loadAd$1.label;
        if (i14 != 0) {
            if (i14 == 1) {
                boolean z12 = absAdBidding$loadAd$1.Z$0;
                int i15 = absAdBidding$loadAd$1.I$0;
                ResultKt.b(objA);
                z11 = z12;
                i12 = i15;
            } else {
                if (i14 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objA);
            }
            return Unit.f67061a;
        }
        ResultKt.b(objA);
        if (com.transsion.ad.strategy.t.f42248a.a()) {
            i(new TAdErrorCode(1101, "青少年模式，不展示广告"));
            return Unit.f67061a;
        }
        if (i12 > 1 && a0() != 2) {
            i(new TAdErrorCode(1101, "只有Native类型才可以一次加载多个广告"));
            return Unit.f67061a;
        }
        if (i12 < 1) {
            i(new TAdErrorCode(1101, "fetchCount can not be less than 1"));
            return Unit.f67061a;
        }
        if (this.f41804l.get()) {
            i(new TAdErrorCode(1101, "isLoading -- Try again when it's a little thicker"));
            return Unit.f67061a;
        }
        this.f41804l.set(true);
        v vVar = v.f41893a;
        if (vVar.b() && vVar.a(a0())) {
            i(new TAdErrorCode(1101, "activity ad is showing"));
            return Unit.f67061a;
        }
        this.f41805m = ti.n.f76264a.b();
        ri.c.f74535a.l(p0(), getMSceneId(), a0(), 105, "", o0());
        SceneInterceptManager sceneInterceptManager = SceneInterceptManager.f42200a;
        String sceneId = getMSceneId();
        absAdBidding$loadAd$1.I$0 = i12;
        z11 = z10;
        absAdBidding$loadAd$1.Z$0 = z11;
        absAdBidding$loadAd$1.label = 1;
        objA = sceneInterceptManager.a(sceneId, absAdBidding$loadAd$1);
        if (objA == objF) {
            return objF;
        }
        Pair pair = (Pair) objA;
        if (((Boolean) pair.getFirst()).booleanValue()) {
            ri.c.f74535a.k(this.f41805m, getMSceneId(), a0(), 105, (String) pair.getSecond(), o0());
            i(new TAdErrorCode(1101, (String) pair.getSecond()));
            return Unit.f67061a;
        }
        if (U() && f0() == null) {
            i(new TAdErrorCode(1101, "context is null"));
            return Unit.f67061a;
        }
        absAdBidding$loadAd$1.label = 2;
        if (t0(z11, i12, absAdBidding$loadAd$1) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }

    public abstract void x0(String str);
}
