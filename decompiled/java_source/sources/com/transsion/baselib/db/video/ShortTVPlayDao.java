package com.transsion.baselib.db.video;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public interface ShortTVPlayDao {

    /* JADX INFO: loaded from: classes5.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object a(ShortTVPlayDao shortTVPlayDao, ShortTVPlayBean shortTVPlayBean, Continuation continuation) throws Throwable {
            ShortTVPlayDao$insertOrUpdate$1 shortTVPlayDao$insertOrUpdate$1;
            if (continuation instanceof ShortTVPlayDao$insertOrUpdate$1) {
                shortTVPlayDao$insertOrUpdate$1 = (ShortTVPlayDao$insertOrUpdate$1) continuation;
                int i11 = shortTVPlayDao$insertOrUpdate$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    shortTVPlayDao$insertOrUpdate$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    shortTVPlayDao$insertOrUpdate$1 = new ShortTVPlayDao$insertOrUpdate$1(continuation);
                }
            } else {
                shortTVPlayDao$insertOrUpdate$1 = new ShortTVPlayDao$insertOrUpdate$1(continuation);
            }
            Object objE = shortTVPlayDao$insertOrUpdate$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = shortTVPlayDao$insertOrUpdate$1.label;
            if (i12 == 0) {
                ResultKt.b(objE);
                String subjectId = shortTVPlayBean.getSubjectId();
                shortTVPlayDao$insertOrUpdate$1.L$0 = shortTVPlayDao;
                shortTVPlayDao$insertOrUpdate$1.L$1 = shortTVPlayBean;
                shortTVPlayDao$insertOrUpdate$1.label = 1;
                objE = shortTVPlayDao.e(subjectId, shortTVPlayDao$insertOrUpdate$1);
                if (objE == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    if (i12 == 2) {
                        ResultKt.b(objE);
                        return Unit.f67061a;
                    }
                    if (i12 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objE);
                    return Unit.f67061a;
                }
                shortTVPlayBean = (ShortTVPlayBean) shortTVPlayDao$insertOrUpdate$1.L$1;
                shortTVPlayDao = (ShortTVPlayDao) shortTVPlayDao$insertOrUpdate$1.L$0;
                ResultKt.b(objE);
            }
            if (objE == null) {
                shortTVPlayDao$insertOrUpdate$1.L$0 = null;
                shortTVPlayDao$insertOrUpdate$1.L$1 = null;
                shortTVPlayDao$insertOrUpdate$1.label = 2;
                if (shortTVPlayDao.f(shortTVPlayBean, shortTVPlayDao$insertOrUpdate$1) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            }
            shortTVPlayDao$insertOrUpdate$1.L$0 = null;
            shortTVPlayDao$insertOrUpdate$1.L$1 = null;
            shortTVPlayDao$insertOrUpdate$1.label = 3;
            if (shortTVPlayDao.i(shortTVPlayBean, shortTVPlayDao$insertOrUpdate$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
    }

    Object a(Continuation continuation);

    Object b(String str, String str2, Continuation continuation);

    Object d(int i11, int i12, Continuation continuation);

    Object e(String str, Continuation continuation);

    Object f(ShortTVPlayBean shortTVPlayBean, Continuation continuation);

    Object g(ShortTVPlayBean shortTVPlayBean, Continuation continuation);

    Object h(String str, int i11, long j11, Continuation continuation);

    Object i(ShortTVPlayBean shortTVPlayBean, Continuation continuation);

    Object j(ShortTVPlayBean shortTVPlayBean, Continuation continuation);
}
