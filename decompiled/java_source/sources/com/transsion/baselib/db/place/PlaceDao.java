package com.transsion.baselib.db.place;

import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes5.dex */
public interface PlaceDao {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object a(PlaceDao placeDao, List list, Continuation continuation) throws Throwable {
            PlaceDao$insertList$1 placeDao$insertList$1;
            if (continuation instanceof PlaceDao$insertList$1) {
                placeDao$insertList$1 = (PlaceDao$insertList$1) continuation;
                int i11 = placeDao$insertList$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    placeDao$insertList$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    placeDao$insertList$1 = new PlaceDao$insertList$1(continuation);
                }
            } else {
                placeDao$insertList$1 = new PlaceDao$insertList$1(continuation);
            }
            Object obj = placeDao$insertList$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = placeDao$insertList$1.label;
            if (i12 != 0) {
                if (i12 == 1) {
                    list = (List) placeDao$insertList$1.L$1;
                    placeDao = (PlaceDao) placeDao$insertList$1.L$0;
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
            placeDao$insertList$1.L$0 = placeDao;
            placeDao$insertList$1.L$1 = list;
            placeDao$insertList$1.label = 1;
            if (placeDao.a(placeDao$insertList$1) == objF) {
                return objF;
            }
            placeDao$insertList$1.L$0 = null;
            placeDao$insertList$1.L$1 = null;
            placeDao$insertList$1.label = 2;
            if (placeDao.b(list, placeDao$insertList$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
    }

    Object a(Continuation continuation);

    Object b(List list, Continuation continuation);

    Object c(List list, Continuation continuation);

    Object d(Continuation continuation);
}
