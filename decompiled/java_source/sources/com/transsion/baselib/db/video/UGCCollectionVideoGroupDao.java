package com.transsion.baselib.db.video;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes5.dex */
public interface UGCCollectionVideoGroupDao {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object a(UGCCollectionVideoGroupDao uGCCollectionVideoGroupDao, String str, List list, Continuation continuation) throws Throwable {
            UGCCollectionVideoGroupDao$addUgcVideoIds$1 uGCCollectionVideoGroupDao$addUgcVideoIds$1;
            if (continuation instanceof UGCCollectionVideoGroupDao$addUgcVideoIds$1) {
                uGCCollectionVideoGroupDao$addUgcVideoIds$1 = (UGCCollectionVideoGroupDao$addUgcVideoIds$1) continuation;
                int i11 = uGCCollectionVideoGroupDao$addUgcVideoIds$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    uGCCollectionVideoGroupDao$addUgcVideoIds$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    uGCCollectionVideoGroupDao$addUgcVideoIds$1 = new UGCCollectionVideoGroupDao$addUgcVideoIds$1(continuation);
                }
            } else {
                uGCCollectionVideoGroupDao$addUgcVideoIds$1 = new UGCCollectionVideoGroupDao$addUgcVideoIds$1(continuation);
            }
            Object objD = uGCCollectionVideoGroupDao$addUgcVideoIds$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = uGCCollectionVideoGroupDao$addUgcVideoIds$1.label;
            if (i12 == 0) {
                ResultKt.b(objD);
                if (list.isEmpty()) {
                    return Unit.f67061a;
                }
                uGCCollectionVideoGroupDao$addUgcVideoIds$1.L$0 = uGCCollectionVideoGroupDao;
                uGCCollectionVideoGroupDao$addUgcVideoIds$1.L$1 = str;
                uGCCollectionVideoGroupDao$addUgcVideoIds$1.L$2 = list;
                uGCCollectionVideoGroupDao$addUgcVideoIds$1.label = 1;
                objD = uGCCollectionVideoGroupDao.d(str, uGCCollectionVideoGroupDao$addUgcVideoIds$1);
                if (objD == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    if (i12 == 2) {
                        ResultKt.b(objD);
                        return Unit.f67061a;
                    }
                    if (i12 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objD);
                    return Unit.f67061a;
                }
                list = (List) uGCCollectionVideoGroupDao$addUgcVideoIds$1.L$2;
                str = (String) uGCCollectionVideoGroupDao$addUgcVideoIds$1.L$1;
                uGCCollectionVideoGroupDao = (UGCCollectionVideoGroupDao) uGCCollectionVideoGroupDao$addUgcVideoIds$1.L$0;
                ResultKt.b(objD);
            }
            UGCCollectionVideoGroup uGCCollectionVideoGroup = (UGCCollectionVideoGroup) objD;
            if (uGCCollectionVideoGroup == null) {
                UGCCollectionVideoGroup uGCCollectionVideoGroup2 = new UGCCollectionVideoGroup(str, new ArrayList(CollectionsKt.c0(list)));
                uGCCollectionVideoGroupDao$addUgcVideoIds$1.L$0 = null;
                uGCCollectionVideoGroupDao$addUgcVideoIds$1.L$1 = null;
                uGCCollectionVideoGroupDao$addUgcVideoIds$1.L$2 = null;
                uGCCollectionVideoGroupDao$addUgcVideoIds$1.label = 2;
                if (uGCCollectionVideoGroupDao.b(uGCCollectionVideoGroup2, uGCCollectionVideoGroupDao$addUgcVideoIds$1) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            }
            Set setW0 = CollectionsKt.W0(uGCCollectionVideoGroup.getUgcVideoIds());
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (!setW0.contains((String) obj)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                return Unit.f67061a;
            }
            ArrayList arrayList2 = new ArrayList(uGCCollectionVideoGroup.getUgcVideoIds());
            arrayList2.addAll(arrayList);
            UGCCollectionVideoGroup uGCCollectionVideoGroupCopy$default = UGCCollectionVideoGroup.copy$default(uGCCollectionVideoGroup, null, arrayList2, 1, null);
            uGCCollectionVideoGroupDao$addUgcVideoIds$1.L$0 = null;
            uGCCollectionVideoGroupDao$addUgcVideoIds$1.L$1 = null;
            uGCCollectionVideoGroupDao$addUgcVideoIds$1.L$2 = null;
            uGCCollectionVideoGroupDao$addUgcVideoIds$1.label = 3;
            if (uGCCollectionVideoGroupDao.b(uGCCollectionVideoGroupCopy$default, uGCCollectionVideoGroupDao$addUgcVideoIds$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object b(UGCCollectionVideoGroupDao uGCCollectionVideoGroupDao, String str, Continuation continuation) throws Throwable {
            UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1 uGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;
            Object next;
            if (continuation instanceof UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1) {
                uGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1 = (UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1) continuation;
                int i11 = uGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    uGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    uGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1 = new UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1(continuation);
                }
            } else {
                uGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1 = new UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1(continuation);
            }
            Object objE = uGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = uGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1.label;
            if (i12 == 0) {
                ResultKt.b(objE);
                uGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1.L$0 = str;
                uGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1.label = 1;
                objE = uGCCollectionVideoGroupDao.e(uGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1);
                if (objE == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) uGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1.L$0;
                ResultKt.b(objE);
            }
            List list = (List) objE;
            if (list == null) {
                return null;
            }
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((UGCCollectionVideoGroup) next).getUgcVideoIds().contains(str));
            UGCCollectionVideoGroup uGCCollectionVideoGroup = (UGCCollectionVideoGroup) next;
            if (uGCCollectionVideoGroup != null) {
                return uGCCollectionVideoGroup.getCollectionId();
            }
            return null;
        }
    }

    Object a(String str, List list, Continuation continuation);

    Object b(UGCCollectionVideoGroup uGCCollectionVideoGroup, Continuation continuation);

    Object c(String str, Continuation continuation);

    Object d(String str, Continuation continuation);

    Object e(Continuation continuation);
}
