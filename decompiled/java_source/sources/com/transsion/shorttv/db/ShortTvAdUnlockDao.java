package com.transsion.shorttv.db;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes6.dex */
public interface ShortTvAdUnlockDao {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object a(ShortTvAdUnlockDao shortTvAdUnlockDao, e eVar, Continuation continuation) throws Throwable {
            ShortTvAdUnlockDao$insertOrUpdate$1 shortTvAdUnlockDao$insertOrUpdate$1;
            if (continuation instanceof ShortTvAdUnlockDao$insertOrUpdate$1) {
                shortTvAdUnlockDao$insertOrUpdate$1 = (ShortTvAdUnlockDao$insertOrUpdate$1) continuation;
                int i11 = shortTvAdUnlockDao$insertOrUpdate$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    shortTvAdUnlockDao$insertOrUpdate$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    shortTvAdUnlockDao$insertOrUpdate$1 = new ShortTvAdUnlockDao$insertOrUpdate$1(continuation);
                }
            } else {
                shortTvAdUnlockDao$insertOrUpdate$1 = new ShortTvAdUnlockDao$insertOrUpdate$1(continuation);
            }
            Object objA = shortTvAdUnlockDao$insertOrUpdate$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = shortTvAdUnlockDao$insertOrUpdate$1.label;
            if (i12 == 0) {
                ResultKt.b(objA);
                String strA = eVar.a();
                shortTvAdUnlockDao$insertOrUpdate$1.L$0 = shortTvAdUnlockDao;
                shortTvAdUnlockDao$insertOrUpdate$1.L$1 = eVar;
                shortTvAdUnlockDao$insertOrUpdate$1.label = 1;
                objA = shortTvAdUnlockDao.a(strA, shortTvAdUnlockDao$insertOrUpdate$1);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    if (i12 == 2) {
                        ResultKt.b(objA);
                        return Unit.f67061a;
                    }
                    if (i12 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objA);
                    return Unit.f67061a;
                }
                eVar = (e) shortTvAdUnlockDao$insertOrUpdate$1.L$1;
                shortTvAdUnlockDao = (ShortTvAdUnlockDao) shortTvAdUnlockDao$insertOrUpdate$1.L$0;
                ResultKt.b(objA);
            }
            if (objA == null) {
                shortTvAdUnlockDao$insertOrUpdate$1.L$0 = null;
                shortTvAdUnlockDao$insertOrUpdate$1.L$1 = null;
                shortTvAdUnlockDao$insertOrUpdate$1.label = 2;
                if (shortTvAdUnlockDao.d(eVar, shortTvAdUnlockDao$insertOrUpdate$1) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            }
            shortTvAdUnlockDao$insertOrUpdate$1.L$0 = null;
            shortTvAdUnlockDao$insertOrUpdate$1.L$1 = null;
            shortTvAdUnlockDao$insertOrUpdate$1.label = 3;
            if (shortTvAdUnlockDao.c(eVar, shortTvAdUnlockDao$insertOrUpdate$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
    }

    Object a(String str, Continuation continuation);

    Object b(e eVar, Continuation continuation);

    Object c(e eVar, Continuation continuation);

    Object d(e eVar, Continuation continuation);
}
