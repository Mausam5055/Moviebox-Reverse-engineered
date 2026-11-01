package com.transsion.home.repository;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.home.HomePreferencesIntervalTimeDbBean;
import com.transsion.home.bean.HomePreferencesConfig;
import com.transsion.home.bean.HomePreferencesIntervalTime;
import com.transsion.home.bean.HomePreferencesSubmitRequest;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class HomePreferencesRepository {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f45548c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f45549d = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ol.b f45550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final mj.a f45551b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public HomePreferencesRepository(ol.b api, AppDatabase appDatabase) {
        Intrinsics.h(api, "api");
        Intrinsics.h(appDatabase, "appDatabase");
        this.f45550a = api;
        this.f45551b = appDatabase.r1();
    }

    private final boolean e(long j11, HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean, HomePreferencesIntervalTime homePreferencesIntervalTime) {
        long j12;
        long jMax;
        if (homePreferencesIntervalTimeDbBean == null) {
            return true;
        }
        long showInterval = homePreferencesIntervalTime.getShowInterval();
        long closeInterval = homePreferencesIntervalTime.getCloseInterval();
        long chooseInterval = homePreferencesIntervalTime.getChooseInterval();
        if (homePreferencesIntervalTimeDbBean.getShowTime() <= 0 || showInterval <= 0) {
            j12 = 0;
            jMax = 0;
        } else {
            long showTime = homePreferencesIntervalTimeDbBean.getShowTime() + (showInterval * ((long) 1000));
            j12 = 0;
            jMax = Math.max(0L, showTime);
        }
        if (homePreferencesIntervalTimeDbBean.getCloseTime() > j12 && closeInterval > j12) {
            jMax = Math.max(jMax, homePreferencesIntervalTimeDbBean.getCloseTime() + (closeInterval * ((long) 1000)));
        }
        if (homePreferencesIntervalTimeDbBean.getChooseTime() > 0 && chooseInterval > 0) {
            jMax = Math.max(jMax, homePreferencesIntervalTimeDbBean.getChooseTime() + (chooseInterval * ((long) 1000)));
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        boolean z10 = j11 >= jMax;
        lg.a.C0828a.l(c0828a, "HomePreferencesRepository", "----canShow:>>>> " + z10 + " <<<<<, id:" + homePreferencesIntervalTimeDbBean.getId() + ",now:" + j11 + ", showTime:" + homePreferencesIntervalTimeDbBean.getShowTime() + ", closeTime:" + homePreferencesIntervalTimeDbBean.getCloseTime() + ", chooseTime:" + homePreferencesIntervalTimeDbBean.getChooseTime(), false, 4, null);
        return j11 >= jMax;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(HomePreferencesIntervalTimeDbBean bean, long j11) {
        Intrinsics.h(bean, "bean");
        bean.setChooseTime(j11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(HomePreferencesIntervalTimeDbBean bean, long j11) {
        Intrinsics.h(bean, "bean");
        bean.setCloseTime(j11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(HomePreferencesIntervalTimeDbBean bean, long j11) {
        Intrinsics.h(bean, "bean");
        bean.setShowTime(j11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object n(HomePreferencesConfig homePreferencesConfig, Function2 function2, Continuation continuation) throws Throwable {
        HomePreferencesRepository$updateIntervalRecord$1 homePreferencesRepository$updateIntervalRecord$1;
        HomePreferencesConfig homePreferencesConfig2;
        String str;
        long j11;
        Function2 function3;
        if (continuation instanceof HomePreferencesRepository$updateIntervalRecord$1) {
            homePreferencesRepository$updateIntervalRecord$1 = (HomePreferencesRepository$updateIntervalRecord$1) continuation;
            int i11 = homePreferencesRepository$updateIntervalRecord$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                homePreferencesRepository$updateIntervalRecord$1.label = i11 - Integer.MIN_VALUE;
            } else {
                homePreferencesRepository$updateIntervalRecord$1 = new HomePreferencesRepository$updateIntervalRecord$1(this, continuation);
            }
        } else {
            homePreferencesRepository$updateIntervalRecord$1 = new HomePreferencesRepository$updateIntervalRecord$1(this, continuation);
        }
        Object objB = homePreferencesRepository$updateIntervalRecord$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = homePreferencesRepository$updateIntervalRecord$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                j11 = homePreferencesRepository$updateIntervalRecord$1.J$0;
                String str2 = (String) homePreferencesRepository$updateIntervalRecord$1.L$2;
                function3 = (Function2) homePreferencesRepository$updateIntervalRecord$1.L$1;
                homePreferencesConfig2 = (HomePreferencesConfig) homePreferencesRepository$updateIntervalRecord$1.L$0;
                ResultKt.b(objB);
                str = str2;
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objB);
            }
            return Unit.f67061a;
        }
        ResultKt.b(objB);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String labelId = homePreferencesConfig.getLabelId();
        mj.a aVar = this.f45551b;
        homePreferencesConfig2 = homePreferencesConfig;
        homePreferencesRepository$updateIntervalRecord$1.L$0 = homePreferencesConfig2;
        homePreferencesRepository$updateIntervalRecord$1.L$1 = function2;
        homePreferencesRepository$updateIntervalRecord$1.L$2 = labelId;
        homePreferencesRepository$updateIntervalRecord$1.J$0 = jCurrentTimeMillis;
        homePreferencesRepository$updateIntervalRecord$1.label = 1;
        objB = aVar.b(labelId, homePreferencesRepository$updateIntervalRecord$1);
        if (objB == objF) {
            return objF;
        }
        str = labelId;
        j11 = jCurrentTimeMillis;
        function3 = function2;
        HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean = (HomePreferencesIntervalTimeDbBean) objB;
        if (homePreferencesIntervalTimeDbBean == null) {
            homePreferencesIntervalTimeDbBean = new HomePreferencesIntervalTimeDbBean(str, 0L, 0L, 0L, homePreferencesConfig2.getIntervalTime().getShowInterval(), homePreferencesConfig2.getIntervalTime().getCloseInterval(), homePreferencesConfig2.getIntervalTime().getChooseInterval());
        }
        HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean2 = homePreferencesIntervalTimeDbBean;
        HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBeanCopy = homePreferencesIntervalTimeDbBean2.copy((15 & 1) != 0 ? homePreferencesIntervalTimeDbBean2.id : null, (15 & 2) != 0 ? homePreferencesIntervalTimeDbBean2.showTime : 0L, (15 & 4) != 0 ? homePreferencesIntervalTimeDbBean2.closeTime : 0L, (15 & 8) != 0 ? homePreferencesIntervalTimeDbBean2.chooseTime : 0L, (15 & 16) != 0 ? homePreferencesIntervalTimeDbBean2.showIntervalSeconds : homePreferencesConfig2.getIntervalTime().getShowInterval(), (15 & 32) != 0 ? homePreferencesIntervalTimeDbBean2.closeIntervalSeconds : homePreferencesConfig2.getIntervalTime().getCloseInterval(), (15 & 64) != 0 ? homePreferencesIntervalTimeDbBean2.chooseIntervalSeconds : homePreferencesConfig2.getIntervalTime().getChooseInterval());
        function3.invoke(homePreferencesIntervalTimeDbBeanCopy, Boxing.e(j11));
        mj.a aVar2 = this.f45551b;
        homePreferencesRepository$updateIntervalRecord$1.L$0 = null;
        homePreferencesRepository$updateIntervalRecord$1.L$1 = null;
        homePreferencesRepository$updateIntervalRecord$1.L$2 = null;
        homePreferencesRepository$updateIntervalRecord$1.label = 2;
        if (aVar2.a(homePreferencesIntervalTimeDbBeanCopy, homePreferencesRepository$updateIntervalRecord$1) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0101  */
    /* JADX WARN: Code duplicated, block: B:50:0x0122 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:51:0x0123  */
    /* JADX WARN: Code duplicated, block: B:54:0x0130 A[Catch: all -> 0x0046, TryCatch #0 {all -> 0x0046, blocks: (B:13:0x0041, B:52:0x0124, B:54:0x0130, B:55:0x0159, B:48:0x0108), top: B:81:0x0041 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0170  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0123 -> B:52:0x0124). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object f(java.lang.String r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.home.repository.HomePreferencesRepository.f(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object g(HomePreferencesConfig homePreferencesConfig, Continuation continuation) throws Throwable {
        Object objN = n(homePreferencesConfig, new Function2() { // from class: com.transsion.home.repository.b
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return HomePreferencesRepository.h((HomePreferencesIntervalTimeDbBean) obj, ((Long) obj2).longValue());
            }
        }, continuation);
        return objN == IntrinsicsKt.f() ? objN : Unit.f67061a;
    }

    public final Object i(HomePreferencesConfig homePreferencesConfig, Continuation continuation) throws Throwable {
        Object objN = n(homePreferencesConfig, new Function2() { // from class: com.transsion.home.repository.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return HomePreferencesRepository.j((HomePreferencesIntervalTimeDbBean) obj, ((Long) obj2).longValue());
            }
        }, continuation);
        return objN == IntrinsicsKt.f() ? objN : Unit.f67061a;
    }

    public final Object k(HomePreferencesConfig homePreferencesConfig, Continuation continuation) throws Throwable {
        Object objN = n(homePreferencesConfig, new Function2() { // from class: com.transsion.home.repository.c
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return HomePreferencesRepository.l((HomePreferencesIntervalTimeDbBean) obj, ((Long) obj2).longValue());
            }
        }, continuation);
        return objN == IntrinsicsKt.f() ? objN : Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object m(String str, List list, Continuation continuation) throws Throwable {
        HomePreferencesRepository$submitPreferences$1 homePreferencesRepository$submitPreferences$1;
        Object objM454constructorimpl;
        if (continuation instanceof HomePreferencesRepository$submitPreferences$1) {
            homePreferencesRepository$submitPreferences$1 = (HomePreferencesRepository$submitPreferences$1) continuation;
            int i11 = homePreferencesRepository$submitPreferences$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                homePreferencesRepository$submitPreferences$1.label = i11 - Integer.MIN_VALUE;
            } else {
                homePreferencesRepository$submitPreferences$1 = new HomePreferencesRepository$submitPreferences$1(this, continuation);
            }
        } else {
            homePreferencesRepository$submitPreferences$1 = new HomePreferencesRepository$submitPreferences$1(this, continuation);
        }
        HomePreferencesRepository$submitPreferences$1 homePreferencesRepository$submitPreferences$2 = homePreferencesRepository$submitPreferences$1;
        Object objC = homePreferencesRepository$submitPreferences$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = homePreferencesRepository$submitPreferences$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objC);
                if (list.isEmpty()) {
                    lg.a.C0828a.f(lg.a.f68839a, "HomePreferencesRepository", "submitPreferences skip: empty options, labelId=" + str, false, 4, null);
                    return Unit.f67061a;
                }
                HomePreferencesSubmitRequest homePreferencesSubmitRequest = new HomePreferencesSubmitRequest(str, list);
                Result.Companion companion = Result.INSTANCE;
                ol.b bVar = this.f45550a;
                homePreferencesRepository$submitPreferences$2.L$0 = str;
                homePreferencesRepository$submitPreferences$2.L$1 = list;
                homePreferencesRepository$submitPreferences$2.label = 1;
                objC = ol.b.a.c(bVar, null, homePreferencesSubmitRequest, homePreferencesRepository$submitPreferences$2, 1, null);
                if (objC == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                list = (List) homePreferencesRepository$submitPreferences$2.L$1;
                str = (String) homePreferencesRepository$submitPreferences$2.L$0;
                ResultKt.b(objC);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objC);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            lg.a.C0828a.r(lg.a.f68839a, "HomePreferencesRepository", new String[]{"submitPreferences success, labelId=" + str + ", options=" + list}, false, 4, null);
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "HomePreferencesRepository", "submitPreferences error, labelId=" + str + ", msg=" + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
        }
        return Unit.f67061a;
    }
}
