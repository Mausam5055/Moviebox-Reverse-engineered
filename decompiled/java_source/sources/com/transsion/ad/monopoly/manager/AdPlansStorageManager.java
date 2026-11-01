package com.transsion.ad.monopoly.manager;

import android.app.Application;
import android.os.SystemClock;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.o;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.sync.g;

/* JADX INFO: loaded from: classes5.dex */
public final class AdPlansStorageManager {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile List f42155c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AdPlansStorageManager f42153a = new AdPlansStorageManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f42154b = LazyKt.b(new Function0() { // from class: com.transsion.ad.monopoly.manager.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AdPlansStorageManager.e();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map f42156d = new LinkedHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final kotlinx.coroutines.sync.a f42157e = g.b(false, 1, null);

    private AdPlansStorageManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final li.b e() {
        MbAdDatabase.Companion nVar = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return nVar.b(applicationA).z0();
    }

    private final List g(List list, String str) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            List<String> scenes = ((MbAdDbPlans) obj).getScenes();
            List<String> list2 = scenes;
            if (list2 != null && !list2.isEmpty()) {
                List<String> list3 = scenes;
                if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                    Iterator<T> it = list3.iterator();
                    while (it.hasNext()) {
                        if (StringsKt.H((String) it.next(), str, true)) {
                        }
                    }
                }
            }
            arrayList.add(obj);
        }
        return arrayList;
    }

    public static /* synthetic */ Object i(AdPlansStorageManager adPlansStorageManager, String str, Map map, String str2, AdPlanSourceManager.AdPlanEnum[] adPlanEnumArr, Continuation continuation, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str2 = "";
        }
        return adPlansStorageManager.h(str, map, str2, adPlanEnumArr, continuation);
    }

    private final li.b k() {
        return (li.b) f42154b.getValue();
    }

    public static /* synthetic */ Object m(AdPlansStorageManager adPlansStorageManager, String str, Continuation continuation, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        return adPlansStorageManager.l(str, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object r(Continuation continuation) throws Throwable {
        AdPlansStorageManager$invalidatePlanCache$1 adPlansStorageManager$invalidatePlanCache$1;
        kotlinx.coroutines.sync.a aVar;
        if (continuation instanceof AdPlansStorageManager$invalidatePlanCache$1) {
            adPlansStorageManager$invalidatePlanCache$1 = (AdPlansStorageManager$invalidatePlanCache$1) continuation;
            int i11 = adPlansStorageManager$invalidatePlanCache$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansStorageManager$invalidatePlanCache$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansStorageManager$invalidatePlanCache$1 = new AdPlansStorageManager$invalidatePlanCache$1(this, continuation);
            }
        } else {
            adPlansStorageManager$invalidatePlanCache$1 = new AdPlansStorageManager$invalidatePlanCache$1(this, continuation);
        }
        Object obj = adPlansStorageManager$invalidatePlanCache$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansStorageManager$invalidatePlanCache$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.sync.a aVar2 = f42157e;
            adPlansStorageManager$invalidatePlanCache$1.L$0 = aVar2;
            adPlansStorageManager$invalidatePlanCache$1.label = 1;
            if (aVar2.h(null, adPlansStorageManager$invalidatePlanCache$1) == objF) {
                return objF;
            }
            aVar = aVar2;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (kotlinx.coroutines.sync.a) adPlansStorageManager$invalidatePlanCache$1.L$0;
            ResultKt.b(obj);
        }
        try {
            f42155c = null;
            f42156d.clear();
            Unit unit = Unit.f67061a;
            return Unit.f67061a;
        } finally {
            aVar.unlock(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object s(String str, Continuation continuation) throws Throwable {
        AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1 adPlansStorageManager$queryAdPlansBySceneIdFromDb$1;
        long j11;
        if (continuation instanceof AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1) {
            adPlansStorageManager$queryAdPlansBySceneIdFromDb$1 = (AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1) continuation;
            int i11 = adPlansStorageManager$queryAdPlansBySceneIdFromDb$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansStorageManager$queryAdPlansBySceneIdFromDb$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansStorageManager$queryAdPlansBySceneIdFromDb$1 = new AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1(this, continuation);
            }
        } else {
            adPlansStorageManager$queryAdPlansBySceneIdFromDb$1 = new AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1(this, continuation);
        }
        Object objC = adPlansStorageManager$queryAdPlansBySceneIdFromDb$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansStorageManager$queryAdPlansBySceneIdFromDb$1.label;
        if (i12 == 0) {
            ResultKt.b(objC);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            li.b bVarK = k();
            String strJ = o.j(str);
            Intrinsics.g(strJ, "toJson(...)");
            adPlansStorageManager$queryAdPlansBySceneIdFromDb$1.L$0 = str;
            adPlansStorageManager$queryAdPlansBySceneIdFromDb$1.J$0 = jElapsedRealtime;
            adPlansStorageManager$queryAdPlansBySceneIdFromDb$1.label = 1;
            objC = bVarK.c(strJ, adPlansStorageManager$queryAdPlansBySceneIdFromDb$1);
            if (objC == objF) {
                return objF;
            }
            j11 = jElapsedRealtime;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j11 = adPlansStorageManager$queryAdPlansBySceneIdFromDb$1.J$0;
            str = (String) adPlansStorageManager$queryAdPlansBySceneIdFromDb$1.L$0;
            ResultKt.b(objC);
        }
        List list = (List) objC;
        oi.a.f71022a.b("AdPlansStorageManager --> getAllAdPlans() --> sceneId = " + str + " --> dbCost = " + (SystemClock.elapsedRealtime() - j11) + "ms --> size = " + (list != null ? Boxing.d(list.size()) : null), 3, false);
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object t(Continuation continuation) throws Throwable {
        AdPlansStorageManager$queryAllAdPlansFromDb$1 adPlansStorageManager$queryAllAdPlansFromDb$1;
        long j11;
        if (continuation instanceof AdPlansStorageManager$queryAllAdPlansFromDb$1) {
            adPlansStorageManager$queryAllAdPlansFromDb$1 = (AdPlansStorageManager$queryAllAdPlansFromDb$1) continuation;
            int i11 = adPlansStorageManager$queryAllAdPlansFromDb$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansStorageManager$queryAllAdPlansFromDb$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansStorageManager$queryAllAdPlansFromDb$1 = new AdPlansStorageManager$queryAllAdPlansFromDb$1(this, continuation);
            }
        } else {
            adPlansStorageManager$queryAllAdPlansFromDb$1 = new AdPlansStorageManager$queryAllAdPlansFromDb$1(this, continuation);
        }
        Object objB = adPlansStorageManager$queryAllAdPlansFromDb$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansStorageManager$queryAllAdPlansFromDb$1.label;
        if (i12 == 0) {
            ResultKt.b(objB);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            li.b bVarK = k();
            adPlansStorageManager$queryAllAdPlansFromDb$1.J$0 = jElapsedRealtime;
            adPlansStorageManager$queryAllAdPlansFromDb$1.label = 1;
            objB = bVarK.b(adPlansStorageManager$queryAllAdPlansFromDb$1);
            if (objB == objF) {
                return objF;
            }
            j11 = jElapsedRealtime;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j11 = adPlansStorageManager$queryAllAdPlansFromDb$1.J$0;
            ResultKt.b(objB);
        }
        List list = (List) objB;
        oi.a.f71022a.b("AdPlansStorageManager --> getAllAdPlans() --> dbCost = " + (SystemClock.elapsedRealtime() - j11) + "ms --> size = " + (list != null ? Boxing.d(list.size()) : null), 3, false);
        return list;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(String str, Continuation continuation) throws Throwable {
        AdPlansStorageManager$deleteExpireVersion$1 adPlansStorageManager$deleteExpireVersion$1;
        if (continuation instanceof AdPlansStorageManager$deleteExpireVersion$1) {
            adPlansStorageManager$deleteExpireVersion$1 = (AdPlansStorageManager$deleteExpireVersion$1) continuation;
            int i11 = adPlansStorageManager$deleteExpireVersion$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansStorageManager$deleteExpireVersion$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansStorageManager$deleteExpireVersion$1 = new AdPlansStorageManager$deleteExpireVersion$1(this, continuation);
            }
        } else {
            adPlansStorageManager$deleteExpireVersion$1 = new AdPlansStorageManager$deleteExpireVersion$1(this, continuation);
        }
        Object obj = adPlansStorageManager$deleteExpireVersion$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansStorageManager$deleteExpireVersion$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(obj);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        li.b bVarK = k();
        adPlansStorageManager$deleteExpireVersion$1.label = 1;
        if (bVarK.f(str, adPlansStorageManager$deleteExpireVersion$1) == objF) {
            return objF;
        }
        adPlansStorageManager$deleteExpireVersion$1.label = 2;
        if (r(adPlansStorageManager$deleteExpireVersion$1) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0124  */
    /* JADX WARN: Code duplicated, block: B:53:0x0140 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:56:0x0149  */
    /* JADX WARN: Code duplicated, block: B:57:0x0151  */
    /* JADX WARN: Code duplicated, block: B:59:0x0161  */
    /* JADX WARN: Code duplicated, block: B:60:0x0199  */
    /* JADX WARN: Code duplicated, block: B:63:0x019d  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x013e -> B:13:0x004d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object h(java.lang.String r21, java.util.Map r22, java.lang.String r23, com.transsion.ad.monopoly.plan.AdPlanSourceManager.AdPlanEnum[] r24, kotlin.coroutines.Continuation r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.monopoly.manager.AdPlansStorageManager.h(java.lang.String, java.util.Map, java.lang.String, com.transsion.ad.monopoly.plan.AdPlanSourceManager$AdPlanEnum[], kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object j(Continuation continuation) {
        return k().d(continuation);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00a5 A[Catch: all -> 0x003c, TryCatch #1 {all -> 0x003c, blocks: (B:15:0x0037, B:47:0x00b5, B:49:0x00b9, B:41:0x009b, B:43:0x00a5), top: B:76:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b9 A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #1 {all -> 0x003c, blocks: (B:15:0x0037, B:47:0x00b5, B:49:0x00b9, B:41:0x009b, B:43:0x00a5), top: B:76:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:64:0x00de A[Catch: all -> 0x005c, TryCatch #0 {all -> 0x005c, blocks: (B:23:0x0057, B:67:0x00eb, B:69:0x00ef, B:62:0x00da, B:64:0x00de), top: B:76:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00ea A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:69:0x00ef A[Catch: all -> 0x005c, TRY_LEAVE, TryCatch #0 {all -> 0x005c, blocks: (B:23:0x0057, B:67:0x00eb, B:69:0x00ef, B:62:0x00da, B:64:0x00de), top: B:76:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1, types: [kotlinx.coroutines.sync.a] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v12, types: [kotlinx.coroutines.sync.a] */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v2, types: [kotlinx.coroutines.sync.a] */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* JADX WARN: Type inference failed for: r9v9, types: [kotlinx.coroutines.sync.a] */
    public final Object l(String str, Continuation continuation) throws Throwable {
        AdPlansStorageManager$getAllAdPlans$1 adPlansStorageManager$getAllAdPlans$1;
        String str2;
        kotlinx.coroutines.sync.a aVar;
        kotlinx.coroutines.sync.a aVar2;
        List list;
        ?? r11;
        List list2;
        String str3;
        ?? r12;
        if (continuation instanceof AdPlansStorageManager$getAllAdPlans$1) {
            adPlansStorageManager$getAllAdPlans$1 = (AdPlansStorageManager$getAllAdPlans$1) continuation;
            int i11 = adPlansStorageManager$getAllAdPlans$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansStorageManager$getAllAdPlans$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansStorageManager$getAllAdPlans$1 = new AdPlansStorageManager$getAllAdPlans$1(this, continuation);
            }
        } else {
            adPlansStorageManager$getAllAdPlans$1 = new AdPlansStorageManager$getAllAdPlans$1(this, continuation);
        }
        Object objT = adPlansStorageManager$getAllAdPlans$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansStorageManager$getAllAdPlans$1.label;
        try {
            try {
                if (i12 != 0) {
                    if (i12 == 1) {
                        kotlinx.coroutines.sync.a aVar3 = (kotlinx.coroutines.sync.a) adPlansStorageManager$getAllAdPlans$1.L$0;
                        ResultKt.b(objT);
                        aVar2 = aVar3;
                        aVar2 = aVar;
                        list = f42155c;
                        r11 = aVar2;
                        if (list == null) {
                            AdPlansStorageManager adPlansStorageManager = f42153a;
                            adPlansStorageManager$getAllAdPlans$1.L$0 = aVar2;
                            adPlansStorageManager$getAllAdPlans$1.label = 2;
                            objT = adPlansStorageManager.t(adPlansStorageManager$getAllAdPlans$1);
                            if (objT == objF) {
                                str = aVar2;
                                return objF;
                            }
                        }
                        r11.unlock(null);
                        return list;
                    }
                    if (i12 != 2) {
                        if (i12 == 3) {
                            kotlinx.coroutines.sync.a aVar4 = (kotlinx.coroutines.sync.a) adPlansStorageManager$getAllAdPlans$1.L$1;
                            str2 = (String) adPlansStorageManager$getAllAdPlans$1.L$0;
                            ResultKt.b(objT);
                            aVar = aVar4;
                            list2 = (List) f42156d.get(str2);
                            r12 = aVar;
                            if (list2 == null) {
                                AdPlansStorageManager adPlansStorageManager2 = f42153a;
                                adPlansStorageManager$getAllAdPlans$1.L$0 = str2;
                                adPlansStorageManager$getAllAdPlans$1.L$1 = aVar;
                                adPlansStorageManager$getAllAdPlans$1.label = 4;
                                objT = adPlansStorageManager2.s(str2, adPlansStorageManager$getAllAdPlans$1);
                                if (objT == objF) {
                                    return objF;
                                }
                                str3 = str2;
                                str = aVar;
                            }
                            r12.unlock(null);
                            return list2;
                        }
                        if (i12 != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        kotlinx.coroutines.sync.a aVar5 = (kotlinx.coroutines.sync.a) adPlansStorageManager$getAllAdPlans$1.L$1;
                        str3 = (String) adPlansStorageManager$getAllAdPlans$1.L$0;
                        ResultKt.b(objT);
                        str = aVar5;
                        list2 = (List) objT;
                        if (list2 != null) {
                            f42156d.put(str3, list2);
                            r12 = str;
                        } else {
                            list2 = null;
                            r12 = str;
                        }
                        r12.unlock(null);
                        return list2;
                    }
                    kotlinx.coroutines.sync.a aVar6 = (kotlinx.coroutines.sync.a) adPlansStorageManager$getAllAdPlans$1.L$0;
                    ResultKt.b(objT);
                    str = aVar6;
                    str = aVar2;
                    list = (List) objT;
                    if (list != null) {
                        f42155c = list;
                        r11 = str;
                    } else {
                        list = null;
                        r11 = str;
                    }
                    r11.unlock(null);
                    return list;
                }
                ResultKt.b(objT);
                if (str == 0 || StringsKt.q0(str)) {
                    List list3 = f42155c;
                    if (list3 != null) {
                        return list3;
                    }
                    kotlinx.coroutines.sync.a aVar7 = f42157e;
                    adPlansStorageManager$getAllAdPlans$1.L$0 = aVar7;
                    adPlansStorageManager$getAllAdPlans$1.label = 1;
                    if (aVar7.h(null, adPlansStorageManager$getAllAdPlans$1) == objF) {
                        aVar2 = aVar7;
                        return objF;
                    }
                    aVar2 = aVar7;
                    list = f42155c;
                    r11 = aVar2;
                    if (list == null) {
                        AdPlansStorageManager adPlansStorageManager3 = f42153a;
                        adPlansStorageManager$getAllAdPlans$1.L$0 = aVar2;
                        adPlansStorageManager$getAllAdPlans$1.label = 2;
                        objT = adPlansStorageManager3.t(adPlansStorageManager$getAllAdPlans$1);
                        if (objT == objF) {
                            str = aVar2;
                            return objF;
                        }
                        str = aVar2;
                        list = (List) objT;
                        if (list != null) {
                            f42155c = list;
                            r11 = str;
                        } else {
                            list = null;
                            r11 = str;
                        }
                    }
                    r11.unlock(null);
                    return list;
                }
                List list4 = f42155c;
                if (list4 != null) {
                    return f42153a.g(list4, str);
                }
                String lowerCase = str.toLowerCase(Locale.ROOT);
                Intrinsics.g(lowerCase, "toLowerCase(...)");
                kotlinx.coroutines.sync.a aVar8 = f42157e;
                adPlansStorageManager$getAllAdPlans$1.L$0 = lowerCase;
                adPlansStorageManager$getAllAdPlans$1.L$1 = aVar8;
                adPlansStorageManager$getAllAdPlans$1.label = 3;
                if (aVar8.h(null, adPlansStorageManager$getAllAdPlans$1) == objF) {
                    return objF;
                }
                str2 = lowerCase;
                aVar = aVar8;
                list2 = (List) f42156d.get(str2);
                r12 = aVar;
                if (list2 == null) {
                    AdPlansStorageManager adPlansStorageManager4 = f42153a;
                    adPlansStorageManager$getAllAdPlans$1.L$0 = str2;
                    adPlansStorageManager$getAllAdPlans$1.L$1 = aVar;
                    adPlansStorageManager$getAllAdPlans$1.label = 4;
                    objT = adPlansStorageManager4.s(str2, adPlansStorageManager$getAllAdPlans$1);
                    if (objT == objF) {
                        return objF;
                    }
                    str3 = str2;
                    str = aVar;
                    list2 = (List) objT;
                    if (list2 != null) {
                        f42156d.put(str3, list2);
                        r12 = str;
                    } else {
                        list2 = null;
                        r12 = str;
                    }
                }
                r12.unlock(null);
                return list2;
            } catch (Throwable th2) {
                str.unlock(null);
                throw th2;
            }
        } catch (Throwable th3) {
            str.unlock(null);
            throw th3;
        }
    }

    public final Object n(String str, Continuation continuation) {
        return k().h(str, continuation);
    }

    public final Object o(String str, Continuation continuation) {
        return k().j(str, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object p(MbAdDbPlans mbAdDbPlans, Continuation continuation) throws Throwable {
        AdPlansStorageManager$insert$1 adPlansStorageManager$insert$1;
        if (continuation instanceof AdPlansStorageManager$insert$1) {
            adPlansStorageManager$insert$1 = (AdPlansStorageManager$insert$1) continuation;
            int i11 = adPlansStorageManager$insert$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansStorageManager$insert$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansStorageManager$insert$1 = new AdPlansStorageManager$insert$1(this, continuation);
            }
        } else {
            adPlansStorageManager$insert$1 = new AdPlansStorageManager$insert$1(this, continuation);
        }
        Object obj = adPlansStorageManager$insert$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansStorageManager$insert$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(obj);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        li.b bVarK = k();
        adPlansStorageManager$insert$1.label = 1;
        if (bVarK.e(mbAdDbPlans, adPlansStorageManager$insert$1) == objF) {
            return objF;
        }
        adPlansStorageManager$insert$1.label = 2;
        if (r(adPlansStorageManager$insert$1) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object q(List list, Continuation continuation) throws Throwable {
        AdPlansStorageManager$insert$2 adPlansStorageManager$insert$2;
        if (continuation instanceof AdPlansStorageManager$insert$2) {
            adPlansStorageManager$insert$2 = (AdPlansStorageManager$insert$2) continuation;
            int i11 = adPlansStorageManager$insert$2.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansStorageManager$insert$2.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansStorageManager$insert$2 = new AdPlansStorageManager$insert$2(this, continuation);
            }
        } else {
            adPlansStorageManager$insert$2 = new AdPlansStorageManager$insert$2(this, continuation);
        }
        Object obj = adPlansStorageManager$insert$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansStorageManager$insert$2.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(obj);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        li.b bVarK = k();
        adPlansStorageManager$insert$2.label = 1;
        if (bVarK.a(list, adPlansStorageManager$insert$2) == objF) {
            return objF;
        }
        adPlansStorageManager$insert$2.label = 2;
        if (r(adPlansStorageManager$insert$2) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object u(boolean z10, String str, Continuation continuation) throws Throwable {
        AdPlansStorageManager$updateAllValid$1 adPlansStorageManager$updateAllValid$1;
        if (continuation instanceof AdPlansStorageManager$updateAllValid$1) {
            adPlansStorageManager$updateAllValid$1 = (AdPlansStorageManager$updateAllValid$1) continuation;
            int i11 = adPlansStorageManager$updateAllValid$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansStorageManager$updateAllValid$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansStorageManager$updateAllValid$1 = new AdPlansStorageManager$updateAllValid$1(this, continuation);
            }
        } else {
            adPlansStorageManager$updateAllValid$1 = new AdPlansStorageManager$updateAllValid$1(this, continuation);
        }
        Object obj = adPlansStorageManager$updateAllValid$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansStorageManager$updateAllValid$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(obj);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        li.b bVarK = k();
        adPlansStorageManager$updateAllValid$1.label = 1;
        if (bVarK.g(z10, str, adPlansStorageManager$updateAllValid$1) == objF) {
            return objF;
        }
        adPlansStorageManager$updateAllValid$1.label = 2;
        if (r(adPlansStorageManager$updateAllValid$1) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
