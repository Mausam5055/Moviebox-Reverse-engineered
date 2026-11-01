package com.transsion.ad.db.scene;

import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public interface AdSceneLimitDao {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object a(AdSceneLimitDao adSceneLimitDao, String str, String str2, long j11, long j12, int i11, Continuation continuation) throws Throwable {
            AdSceneLimitDao$canDisplayAd$1 adSceneLimitDao$canDisplayAd$1;
            if (continuation instanceof AdSceneLimitDao$canDisplayAd$1) {
                adSceneLimitDao$canDisplayAd$1 = (AdSceneLimitDao$canDisplayAd$1) continuation;
                int i12 = adSceneLimitDao$canDisplayAd$1.label;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    adSceneLimitDao$canDisplayAd$1.label = i12 - Integer.MIN_VALUE;
                } else {
                    adSceneLimitDao$canDisplayAd$1 = new AdSceneLimitDao$canDisplayAd$1(continuation);
                }
            } else {
                adSceneLimitDao$canDisplayAd$1 = new AdSceneLimitDao$canDisplayAd$1(continuation);
            }
            Object objD = adSceneLimitDao$canDisplayAd$1.result;
            Object objF = IntrinsicsKt.f();
            int i13 = adSceneLimitDao$canDisplayAd$1.label;
            if (i13 != 0) {
                if (i13 == 1) {
                    i11 = adSceneLimitDao$canDisplayAd$1.I$0;
                    j12 = adSceneLimitDao$canDisplayAd$1.J$1;
                    j11 = adSceneLimitDao$canDisplayAd$1.J$0;
                    str2 = (String) adSceneLimitDao$canDisplayAd$1.L$1;
                    adSceneLimitDao = (AdSceneLimitDao) adSceneLimitDao$canDisplayAd$1.L$0;
                    ResultKt.b(objD);
                } else {
                    if (i13 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objD);
                }
                return new Pair(Boxing.a(true), "满足条件展示广告");
            }
            ResultKt.b(objD);
            adSceneLimitDao$canDisplayAd$1.L$0 = adSceneLimitDao;
            adSceneLimitDao$canDisplayAd$1.L$1 = str2;
            adSceneLimitDao$canDisplayAd$1.J$0 = j11;
            adSceneLimitDao$canDisplayAd$1.J$1 = j12;
            adSceneLimitDao$canDisplayAd$1.I$0 = i11;
            adSceneLimitDao$canDisplayAd$1.label = 1;
            objD = adSceneLimitDao.d(str, str2, adSceneLimitDao$canDisplayAd$1);
            if (objD == objF) {
                return objF;
            }
            AdSceneLimit adSceneLimit = (AdSceneLimit) objD;
            if (!Intrinsics.c(adSceneLimit.getLastDisplayAdDate(), str2)) {
                adSceneLimit.setLastDisplayAdDate(str2);
                adSceneLimit.setDisplayTimes(0);
                adSceneLimit.setLastDisplayAdTimestamp(0L);
                adSceneLimitDao$canDisplayAd$1.L$0 = null;
                adSceneLimitDao$canDisplayAd$1.L$1 = null;
                adSceneLimitDao$canDisplayAd$1.label = 2;
                if (adSceneLimitDao.f(adSceneLimit, adSceneLimitDao$canDisplayAd$1) == objF) {
                    return objF;
                }
                return new Pair(Boxing.a(true), "满足条件展示广告");
            }
            if (i11 > 0 && adSceneLimit.getDisplayTimes() >= i11) {
                return new Pair(Boxing.a(false), "超过最大展示次数，今日已展示" + adSceneLimit.getDisplayTimes() + ",限制为" + i11);
            }
            if (j12 > 0) {
                long lastDisplayAdTimestamp = j11 - adSceneLimit.getLastDisplayAdTimestamp();
                if (0 <= lastDisplayAdTimestamp && lastDisplayAdTimestamp < j12) {
                    long j13 = 1000;
                    return new Pair(Boxing.a(false), "展示间隔限制，间隔为" + (lastDisplayAdTimestamp / j13) + "秒,限制为" + (j12 / j13) + "秒");
                }
            }
            return new Pair(Boxing.a(true), "满足展示条件");
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object b(AdSceneLimitDao adSceneLimitDao, String str, String str2, Continuation continuation) throws Throwable {
            AdSceneLimitDao$getOrCreateSceneLimit$1 adSceneLimitDao$getOrCreateSceneLimit$1;
            AdSceneLimit adSceneLimit;
            if (continuation instanceof AdSceneLimitDao$getOrCreateSceneLimit$1) {
                adSceneLimitDao$getOrCreateSceneLimit$1 = (AdSceneLimitDao$getOrCreateSceneLimit$1) continuation;
                int i11 = adSceneLimitDao$getOrCreateSceneLimit$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    adSceneLimitDao$getOrCreateSceneLimit$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    adSceneLimitDao$getOrCreateSceneLimit$1 = new AdSceneLimitDao$getOrCreateSceneLimit$1(continuation);
                }
            } else {
                adSceneLimitDao$getOrCreateSceneLimit$1 = new AdSceneLimitDao$getOrCreateSceneLimit$1(continuation);
            }
            Object objA = adSceneLimitDao$getOrCreateSceneLimit$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = adSceneLimitDao$getOrCreateSceneLimit$1.label;
            if (i12 != 0) {
                if (i12 == 1) {
                    str2 = (String) adSceneLimitDao$getOrCreateSceneLimit$1.L$2;
                    str = (String) adSceneLimitDao$getOrCreateSceneLimit$1.L$1;
                    adSceneLimitDao = (AdSceneLimitDao) adSceneLimitDao$getOrCreateSceneLimit$1.L$0;
                    ResultKt.b(objA);
                } else {
                    if (i12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    adSceneLimit = (AdSceneLimit) adSceneLimitDao$getOrCreateSceneLimit$1.L$0;
                    ResultKt.b(objA);
                }
                return adSceneLimit;
            }
            ResultKt.b(objA);
            adSceneLimitDao$getOrCreateSceneLimit$1.L$0 = adSceneLimitDao;
            adSceneLimitDao$getOrCreateSceneLimit$1.L$1 = str;
            adSceneLimitDao$getOrCreateSceneLimit$1.L$2 = str2;
            adSceneLimitDao$getOrCreateSceneLimit$1.label = 1;
            objA = adSceneLimitDao.a(str, adSceneLimitDao$getOrCreateSceneLimit$1);
            if (objA == objF) {
                return objF;
            }
            String str3 = str;
            String str4 = str2;
            AdSceneLimit adSceneLimit2 = (AdSceneLimit) objA;
            if (adSceneLimit2 != null) {
                return adSceneLimit2;
            }
            AdSceneLimit adSceneLimit3 = new AdSceneLimit(str3, str4, 0L, 0);
            adSceneLimitDao$getOrCreateSceneLimit$1.L$0 = adSceneLimit3;
            adSceneLimitDao$getOrCreateSceneLimit$1.L$1 = null;
            adSceneLimitDao$getOrCreateSceneLimit$1.L$2 = null;
            adSceneLimitDao$getOrCreateSceneLimit$1.label = 2;
            if (adSceneLimitDao.e(adSceneLimit3, adSceneLimitDao$getOrCreateSceneLimit$1) == objF) {
                return objF;
            }
            adSceneLimit = adSceneLimit3;
            return adSceneLimit;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object c(AdSceneLimitDao adSceneLimitDao, String str, String str2, long j11, Continuation continuation) throws Throwable {
            AdSceneLimitDao$recordAdDisplayed$1 adSceneLimitDao$recordAdDisplayed$1;
            if (continuation instanceof AdSceneLimitDao$recordAdDisplayed$1) {
                adSceneLimitDao$recordAdDisplayed$1 = (AdSceneLimitDao$recordAdDisplayed$1) continuation;
                int i11 = adSceneLimitDao$recordAdDisplayed$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    adSceneLimitDao$recordAdDisplayed$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    adSceneLimitDao$recordAdDisplayed$1 = new AdSceneLimitDao$recordAdDisplayed$1(continuation);
                }
            } else {
                adSceneLimitDao$recordAdDisplayed$1 = new AdSceneLimitDao$recordAdDisplayed$1(continuation);
            }
            Object objD = adSceneLimitDao$recordAdDisplayed$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = adSceneLimitDao$recordAdDisplayed$1.label;
            if (i12 != 0) {
                if (i12 == 1) {
                    j11 = adSceneLimitDao$recordAdDisplayed$1.J$0;
                    str2 = (String) adSceneLimitDao$recordAdDisplayed$1.L$1;
                    adSceneLimitDao = (AdSceneLimitDao) adSceneLimitDao$recordAdDisplayed$1.L$0;
                    ResultKt.b(objD);
                } else {
                    if (i12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objD);
                }
                return Unit.f67061a;
            }
            ResultKt.b(objD);
            adSceneLimitDao$recordAdDisplayed$1.L$0 = adSceneLimitDao;
            adSceneLimitDao$recordAdDisplayed$1.L$1 = str2;
            adSceneLimitDao$recordAdDisplayed$1.J$0 = j11;
            adSceneLimitDao$recordAdDisplayed$1.label = 1;
            objD = adSceneLimitDao.d(str, str2, adSceneLimitDao$recordAdDisplayed$1);
            if (objD == objF) {
                return objF;
            }
            AdSceneLimit adSceneLimit = (AdSceneLimit) objD;
            if (Intrinsics.c(adSceneLimit.getLastDisplayAdDate(), str2)) {
                adSceneLimit.setDisplayTimes(adSceneLimit.getDisplayTimes() + 1);
            } else {
                adSceneLimit.setDisplayTimes(1);
            }
            adSceneLimit.setLastDisplayAdDate(str2);
            adSceneLimit.setLastDisplayAdTimestamp(j11);
            adSceneLimitDao$recordAdDisplayed$1.L$0 = null;
            adSceneLimitDao$recordAdDisplayed$1.L$1 = null;
            adSceneLimitDao$recordAdDisplayed$1.label = 2;
            if (adSceneLimitDao.f(adSceneLimit, adSceneLimitDao$recordAdDisplayed$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
    }

    Object a(String str, Continuation continuation);

    Object b(String str, String str2, long j11, long j12, int i11, Continuation continuation);

    Object c(String str, String str2, long j11, Continuation continuation);

    Object d(String str, String str2, Continuation continuation);

    Object e(AdSceneLimit adSceneLimit, Continuation continuation);

    Object f(AdSceneLimit adSceneLimit, Continuation continuation);
}
