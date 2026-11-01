package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ti.p;

/* JADX INFO: loaded from: classes5.dex */
public final class ValidDispatchTimeHandler extends com.transsion.ad.monopoly.intercept.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f42140b = new b(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a f42141c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ConcurrentHashMap f42142d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile String f42143e = "";

    public static final class a extends ThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("HH:mm:ss", Locale.getDefault());
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Pair b(String str, String str2) {
            Object objM454constructorimpl;
            Date date;
            String strC = p.f76266a.c();
            if (!Intrinsics.c(ValidDispatchTimeHandler.f42143e, strC)) {
                ValidDispatchTimeHandler.f42142d.clear();
                ValidDispatchTimeHandler.f42143e = strC;
            }
            String str3 = str + "_" + str2;
            Pair pair = (Pair) ValidDispatchTimeHandler.f42142d.get(str3);
            if (pair != null) {
                return pair;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                SimpleDateFormat simpleDateFormat = (SimpleDateFormat) ValidDispatchTimeHandler.f42141c.get();
                if (simpleDateFormat == null) {
                    return null;
                }
                Calendar calendar = Calendar.getInstance();
                Date date2 = simpleDateFormat.parse(str);
                if (date2 == null || (date = simpleDateFormat.parse(str2)) == null) {
                    return null;
                }
                Object objClone = calendar.clone();
                Intrinsics.f(objClone, "null cannot be cast to non-null type java.util.Calendar");
                Calendar calendar2 = (Calendar) objClone;
                calendar2.setTime(date2);
                calendar2.set(1, calendar.get(1));
                calendar2.set(2, calendar.get(2));
                calendar2.set(5, calendar.get(5));
                long timeInMillis = calendar2.getTimeInMillis();
                Object objClone2 = calendar.clone();
                Intrinsics.f(objClone2, "null cannot be cast to non-null type java.util.Calendar");
                Calendar calendar3 = (Calendar) objClone2;
                calendar3.setTime(date);
                calendar3.set(1, calendar.get(1));
                calendar3.set(2, calendar.get(2));
                calendar3.set(5, calendar.get(5));
                objM454constructorimpl = Result.m454constructorimpl(new Pair(Long.valueOf(timeInMillis), Long.valueOf(calendar3.getTimeInMillis())));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            if (Result.m460isFailureimpl(objM454constructorimpl)) {
                objM454constructorimpl = null;
            }
            Pair pair2 = (Pair) objM454constructorimpl;
            if (pair2 == null) {
                return null;
            }
            ValidDispatchTimeHandler.f42142d.put(str3, pair2);
            return pair2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:66:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsion.ad.monopoly.intercept.a
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) throws Throwable {
        ValidDispatchTimeHandler$doHandle$1 validDispatchTimeHandler$doHandle$1;
        AdPlansHitResponse adPlansHitResponse;
        AdPlansHitResponse adPlansHitResponse2;
        AdPlansHitResponse adPlansHitResponse3;
        if (continuation instanceof ValidDispatchTimeHandler$doHandle$1) {
            validDispatchTimeHandler$doHandle$1 = (ValidDispatchTimeHandler$doHandle$1) continuation;
            int i11 = validDispatchTimeHandler$doHandle$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                validDispatchTimeHandler$doHandle$1.label = i11 - Integer.MIN_VALUE;
            } else {
                validDispatchTimeHandler$doHandle$1 = new ValidDispatchTimeHandler$doHandle$1(this, continuation);
            }
        } else {
            validDispatchTimeHandler$doHandle$1 = new ValidDispatchTimeHandler$doHandle$1(this, continuation);
        }
        Object objB = validDispatchTimeHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = validDispatchTimeHandler$doHandle$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(objB);
                adPlansHitResponse = (AdPlansHitResponse) objB;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
                return e();
            }
            if (i12 == 2) {
                ResultKt.b(objB);
                adPlansHitResponse2 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse2 != null) {
                    return adPlansHitResponse2;
                }
                return e();
            }
            if (i12 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objB);
            adPlansHitResponse3 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse3 != null) {
                return adPlansHitResponse3;
            }
            return e();
        }
        ResultKt.b(objB);
        String dispatchTimeStart = mbAdDbPlans != null ? mbAdDbPlans.getDispatchTimeStart() : null;
        String dispatchTimeEnd = mbAdDbPlans != null ? mbAdDbPlans.getDispatchTimeEnd() : null;
        if (dispatchTimeStart == null || StringsKt.q0(dispatchTimeStart) || dispatchTimeEnd == null || StringsKt.q0(dispatchTimeEnd)) {
            com.transsion.ad.monopoly.intercept.a aVarC = c();
            if (aVarC != null) {
                validDispatchTimeHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, validDispatchTimeHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse = (AdPlansHitResponse) objB;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
            }
            return e();
        }
        Pair pairB = f42140b.b(dispatchTimeStart, dispatchTimeEnd);
        if (pairB == null) {
            com.transsion.ad.monopoly.intercept.a aVarC2 = c();
            if (aVarC2 != null) {
                validDispatchTimeHandler$doHandle$1.label = 2;
                objB = aVarC2.b(str, mbAdDbPlans, map, validDispatchTimeHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse2 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse2 != null) {
                    return adPlansHitResponse2;
                }
            }
            return e();
        }
        long jLongValue = ((Number) pairB.getFirst()).longValue();
        long jLongValue2 = ((Number) pairB.getSecond()).longValue();
        long jD = p.f76266a.d();
        if (jLongValue > jD || jD > jLongValue2) {
            return new AdPlansHitResponse(false, "当前不在展示时间内--时间段");
        }
        com.transsion.ad.monopoly.intercept.a aVarC3 = c();
        if (aVarC3 != null) {
            validDispatchTimeHandler$doHandle$1.label = 3;
            objB = aVarC3.b(str, mbAdDbPlans, map, validDispatchTimeHandler$doHandle$1);
            if (objB == objF) {
                return objF;
            }
            adPlansHitResponse3 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse3 != null) {
                return adPlansHitResponse3;
            }
        }
        return e();
    }
}
