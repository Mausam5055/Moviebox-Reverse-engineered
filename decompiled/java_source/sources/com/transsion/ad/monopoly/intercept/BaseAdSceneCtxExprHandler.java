package com.transsion.ad.monopoly.intercept;

import android.text.TextUtils;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseAdSceneCtxExprHandler extends com.transsion.ad.monopoly.intercept.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f42131b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Regex f42132c = new Regex("\\b([a-zA-Z_][a-zA-Z0-9_]*)\\b");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ConcurrentHashMap f42133d = new ConcurrentHashMap();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Code duplicated, block: B:86:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
    static /* synthetic */ Object i(BaseAdSceneCtxExprHandler baseAdSceneCtxExprHandler, String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) throws Throwable {
        BaseAdSceneCtxExprHandler$doHandle$1 baseAdSceneCtxExprHandler$doHandle$1;
        boolean zN;
        AdPlansHitResponse adPlansHitResponse;
        AdPlansHitResponse adPlansHitResponse2;
        AdPlansHitResponse adPlansHitResponse3;
        BaseAdSceneCtxExprHandler baseAdSceneCtxExprHandler2 = baseAdSceneCtxExprHandler;
        if (continuation instanceof BaseAdSceneCtxExprHandler$doHandle$1) {
            baseAdSceneCtxExprHandler$doHandle$1 = (BaseAdSceneCtxExprHandler$doHandle$1) continuation;
            int i11 = baseAdSceneCtxExprHandler$doHandle$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                baseAdSceneCtxExprHandler$doHandle$1.label = i11 - Integer.MIN_VALUE;
            } else {
                baseAdSceneCtxExprHandler$doHandle$1 = new BaseAdSceneCtxExprHandler$doHandle$1(baseAdSceneCtxExprHandler2, continuation);
            }
        } else {
            baseAdSceneCtxExprHandler$doHandle$1 = new BaseAdSceneCtxExprHandler$doHandle$1(baseAdSceneCtxExprHandler2, continuation);
        }
        Object objB = baseAdSceneCtxExprHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = baseAdSceneCtxExprHandler$doHandle$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                baseAdSceneCtxExprHandler2 = (BaseAdSceneCtxExprHandler) baseAdSceneCtxExprHandler$doHandle$1.L$0;
                ResultKt.b(objB);
                adPlansHitResponse = (AdPlansHitResponse) objB;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
                return baseAdSceneCtxExprHandler2.e();
            }
            if (i12 == 2) {
                baseAdSceneCtxExprHandler2 = (BaseAdSceneCtxExprHandler) baseAdSceneCtxExprHandler$doHandle$1.L$0;
                ResultKt.b(objB);
                adPlansHitResponse2 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse2 != null) {
                    return adPlansHitResponse2;
                }
                return baseAdSceneCtxExprHandler2.e();
            }
            if (i12 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            baseAdSceneCtxExprHandler2 = (BaseAdSceneCtxExprHandler) baseAdSceneCtxExprHandler$doHandle$1.L$0;
            ResultKt.b(objB);
            adPlansHitResponse3 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse3 != null) {
                return adPlansHitResponse3;
            }
            return baseAdSceneCtxExprHandler2.e();
        }
        ResultKt.b(objB);
        if (map.isEmpty()) {
            com.transsion.ad.monopoly.intercept.a aVarC = baseAdSceneCtxExprHandler.c();
            if (aVarC != null) {
                baseAdSceneCtxExprHandler$doHandle$1.L$0 = baseAdSceneCtxExprHandler2;
                baseAdSceneCtxExprHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, baseAdSceneCtxExprHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse = (AdPlansHitResponse) objB;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
            }
            return baseAdSceneCtxExprHandler2.e();
        }
        String strJ = baseAdSceneCtxExprHandler.j(str, mbAdDbPlans, map);
        if (strJ == null) {
            strJ = "";
        }
        if (TextUtils.isEmpty(strJ)) {
            com.transsion.ad.monopoly.intercept.a aVarC2 = baseAdSceneCtxExprHandler.c();
            if (aVarC2 != null) {
                baseAdSceneCtxExprHandler$doHandle$1.L$0 = baseAdSceneCtxExprHandler2;
                baseAdSceneCtxExprHandler$doHandle$1.label = 2;
                objB = aVarC2.b(str, mbAdDbPlans, map, baseAdSceneCtxExprHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse2 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse2 != null) {
                    return adPlansHitResponse2;
                }
            }
            return baseAdSceneCtxExprHandler2.e();
        }
        Object obj = map.get("genre");
        String str2 = obj instanceof String ? (String) obj : null;
        if (TextUtils.isEmpty(str2) || ((str2 == null || !StringsKt.c0(str2, ", ", false, 2, null)) && (str2 == null || !StringsKt.c0(str2, ",", false, 2, null)))) {
            zN = baseAdSceneCtxExprHandler2.n(strJ, map);
        } else {
            List<String> listS0 = StringsKt.S0(StringsKt.Q(str2, " ", "", false, 4, null), new String[]{","}, false, 0, 6, null);
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str3 : listS0) {
                linkedHashMap.putAll(map);
                linkedHashMap.put("genre", str3);
                if (baseAdSceneCtxExprHandler2.n(strJ, linkedHashMap)) {
                    booleanRef.element = true;
                }
            }
            zN = booleanRef.element;
        }
        if (!baseAdSceneCtxExprHandler2.m(zN)) {
            return new AdPlansHitResponse(false, zN ? baseAdSceneCtxExprHandler.k() : baseAdSceneCtxExprHandler.l());
        }
        com.transsion.ad.monopoly.intercept.a aVarC3 = baseAdSceneCtxExprHandler.c();
        if (aVarC3 != null) {
            baseAdSceneCtxExprHandler$doHandle$1.L$0 = baseAdSceneCtxExprHandler2;
            baseAdSceneCtxExprHandler$doHandle$1.label = 3;
            objB = aVarC3.b(str, mbAdDbPlans, map, baseAdSceneCtxExprHandler$doHandle$1);
            if (objB == objF) {
                return objF;
            }
            adPlansHitResponse3 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse3 != null) {
                return adPlansHitResponse3;
            }
        }
        return baseAdSceneCtxExprHandler2.e();
    }

    private final boolean n(String str, Map map) {
        Object objM454constructorimpl;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            ConcurrentHashMap concurrentHashMap = f42133d;
            final Function1 function1 = new Function1() { // from class: com.transsion.ad.monopoly.intercept.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BaseAdSceneCtxExprHandler.o((String) obj);
                }
            };
            Object objComputeIfAbsent = concurrentHashMap.computeIfAbsent(str, new Function() { // from class: com.transsion.ad.monopoly.intercept.i
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return BaseAdSceneCtxExprHandler.p(function1, obj);
                }
            });
            Intrinsics.g(objComputeIfAbsent, "computeIfAbsent(...)");
            Serializable serializable = (Serializable) objComputeIfAbsent;
            HashMap map2 = new HashMap(map);
            Iterator f67431a = Regex.findAll$default(f42132c, str, 0, 2, null).getF67431a();
            while (f67431a.hasNext()) {
                String str2 = (String) ((MatchResult) f67431a.next()).a().get(1);
                if (!map2.containsKey(str2)) {
                    map2.put(str2, null);
                }
            }
            Object objV = org.mvel2.d.v(serializable, map2);
            Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Boolean");
            Boolean bool = (Boolean) objV;
            bool.booleanValue();
            objM454constructorimpl = Result.m454constructorimpl(bool);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.i("sampler", "Eval --> safeEval() --> it = " + thM457exceptionOrNullimpl + " --> rule = " + str + " --> safeVars = " + map, true);
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Serializable o(String it) {
        Intrinsics.h(it, "it");
        return org.mvel2.d.d(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Serializable p(Function1 function1, Object obj) {
        return (Serializable) function1.invoke(obj);
    }

    @Override // com.transsion.ad.monopoly.intercept.a
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        return i(this, str, mbAdDbPlans, map, continuation);
    }

    public abstract String j(String str, MbAdDbPlans mbAdDbPlans, Map map);

    public abstract String k();

    public abstract String l();

    public abstract boolean m(boolean z10);
}
