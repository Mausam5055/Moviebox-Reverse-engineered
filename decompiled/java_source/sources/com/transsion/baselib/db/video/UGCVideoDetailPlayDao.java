package com.transsion.baselib.db.video;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public interface UGCVideoDetailPlayDao {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:28:0x007d  */
        /* JADX WARN: Code duplicated, block: B:30:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object a(UGCVideoDetailPlayDao uGCVideoDetailPlayDao, String str, Continuation continuation) throws Throwable {
            UGCVideoDetailPlayDao$getDataByUGCVideoId$1 uGCVideoDetailPlayDao$getDataByUGCVideoId$1;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
            if (continuation instanceof UGCVideoDetailPlayDao$getDataByUGCVideoId$1) {
                uGCVideoDetailPlayDao$getDataByUGCVideoId$1 = (UGCVideoDetailPlayDao$getDataByUGCVideoId$1) continuation;
                int i11 = uGCVideoDetailPlayDao$getDataByUGCVideoId$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    uGCVideoDetailPlayDao$getDataByUGCVideoId$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    uGCVideoDetailPlayDao$getDataByUGCVideoId$1 = new UGCVideoDetailPlayDao$getDataByUGCVideoId$1(continuation);
                }
            } else {
                uGCVideoDetailPlayDao$getDataByUGCVideoId$1 = new UGCVideoDetailPlayDao$getDataByUGCVideoId$1(continuation);
            }
            Object objG = uGCVideoDetailPlayDao$getDataByUGCVideoId$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = uGCVideoDetailPlayDao$getDataByUGCVideoId$1.label;
            if (i12 != 0) {
                if (i12 == 1) {
                    str = (String) uGCVideoDetailPlayDao$getDataByUGCVideoId$1.L$1;
                    uGCVideoDetailPlayDao = (UGCVideoDetailPlayDao) uGCVideoDetailPlayDao$getDataByUGCVideoId$1.L$0;
                    ResultKt.b(objG);
                } else {
                    if (i12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objG);
                }
                uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objG;
                if (uGCVideoDetailPlayBean != null) {
                    return uGCVideoDetailPlayBean.toBusinessBean();
                }
                return null;
            }
            ResultKt.b(objG);
            String str2 = UGCVideoDetailPlayBean.SINGLE_VIDEO_PREFIX + str;
            uGCVideoDetailPlayDao$getDataByUGCVideoId$1.L$0 = uGCVideoDetailPlayDao;
            uGCVideoDetailPlayDao$getDataByUGCVideoId$1.L$1 = str;
            uGCVideoDetailPlayDao$getDataByUGCVideoId$1.label = 1;
            objG = uGCVideoDetailPlayDao.g(str2, uGCVideoDetailPlayDao$getDataByUGCVideoId$1);
            if (objG == objF) {
                return objF;
            }
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) objG;
            if (uGCVideoDetailPlayBean2 != null) {
                return uGCVideoDetailPlayBean2.toBusinessBean();
            }
            uGCVideoDetailPlayDao$getDataByUGCVideoId$1.L$0 = null;
            uGCVideoDetailPlayDao$getDataByUGCVideoId$1.L$1 = null;
            uGCVideoDetailPlayDao$getDataByUGCVideoId$1.label = 2;
            objG = uGCVideoDetailPlayDao.m(str, uGCVideoDetailPlayDao$getDataByUGCVideoId$1);
            if (objG == objF) {
                return objF;
            }
            uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objG;
            if (uGCVideoDetailPlayBean != null) {
                return uGCVideoDetailPlayBean.toBusinessBean();
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:32:0x00a7  */
        /* JADX WARN: Code duplicated, block: B:34:0x00b1  */
        /* JADX WARN: Code duplicated, block: B:35:0x00b6 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:36:0x00b8  */
        /* JADX WARN: Code duplicated, block: B:38:0x00c7 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:40:0x00cb  */
        /* JADX WARN: Code duplicated, block: B:42:0x00da A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:46:0x00e0  */
        /* JADX WARN: Code duplicated, block: B:47:0x00ec A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:48:0x00ee  */
        /* JADX WARN: Code duplicated, block: B:50:0x00fd A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:53:0x0102  */
        /* JADX WARN: Code duplicated, block: B:54:0x0107  */
        /* JADX WARN: Code duplicated, block: B:56:0x0116 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:59:0x011b  */
        /* JADX WARN: Code duplicated, block: B:63:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:65:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:66:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object b(UGCVideoDetailPlayDao uGCVideoDetailPlayDao, String str, Continuation continuation) throws Throwable {
            UGCVideoDetailPlayDao$getHistory$1 uGCVideoDetailPlayDao$getHistory$1;
            UGCVideoDetailPlayDao uGCVideoDetailPlayDao2;
            String str2;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
            String str3;
            String str4;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean2;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean3;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean4;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean5;
            if (continuation instanceof UGCVideoDetailPlayDao$getHistory$1) {
                uGCVideoDetailPlayDao$getHistory$1 = (UGCVideoDetailPlayDao$getHistory$1) continuation;
                int i11 = uGCVideoDetailPlayDao$getHistory$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    uGCVideoDetailPlayDao$getHistory$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    uGCVideoDetailPlayDao$getHistory$1 = new UGCVideoDetailPlayDao$getHistory$1(continuation);
                }
            } else {
                uGCVideoDetailPlayDao$getHistory$1 = new UGCVideoDetailPlayDao$getHistory$1(continuation);
            }
            Object objU = uGCVideoDetailPlayDao$getHistory$1.result;
            Object objF = IntrinsicsKt.f();
            switch (uGCVideoDetailPlayDao$getHistory$1.label) {
                case 0:
                    ResultKt.b(objU);
                    String strD = ak.o.f646a.d();
                    if (strD != null) {
                        uGCVideoDetailPlayDao$getHistory$1.L$0 = uGCVideoDetailPlayDao;
                        uGCVideoDetailPlayDao$getHistory$1.L$1 = str;
                        uGCVideoDetailPlayDao$getHistory$1.L$2 = strD;
                        uGCVideoDetailPlayDao$getHistory$1.label = 1;
                        Object objL = uGCVideoDetailPlayDao.l(str, strD, uGCVideoDetailPlayDao$getHistory$1);
                        if (objL == objF) {
                            return objF;
                        }
                        uGCVideoDetailPlayDao2 = uGCVideoDetailPlayDao;
                        str2 = strD;
                        objU = objL;
                        uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objU;
                        str3 = str;
                        str4 = str2;
                        uGCVideoDetailPlayBean2 = uGCVideoDetailPlayBean;
                        if (uGCVideoDetailPlayBean2 != null) {
                            if (str4 != null) {
                                uGCVideoDetailPlayDao$getHistory$1.L$0 = null;
                                uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                                uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                                uGCVideoDetailPlayDao$getHistory$1.label = 5;
                                objU = uGCVideoDetailPlayDao2.l(str3, str4, uGCVideoDetailPlayDao$getHistory$1);
                                if (objU == objF) {
                                    return objF;
                                }
                                uGCVideoDetailPlayBean4 = (UGCVideoDetailPlayBean) objU;
                                if (uGCVideoDetailPlayBean4 != null) {
                                    return uGCVideoDetailPlayBean4.toBusinessBean();
                                }
                                return null;
                            }
                            uGCVideoDetailPlayDao$getHistory$1.L$0 = null;
                            uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                            uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                            uGCVideoDetailPlayDao$getHistory$1.label = 6;
                            objU = uGCVideoDetailPlayDao2.u(str3, uGCVideoDetailPlayDao$getHistory$1);
                            if (objU == objF) {
                                return objF;
                            }
                            uGCVideoDetailPlayBean5 = (UGCVideoDetailPlayBean) objU;
                            if (uGCVideoDetailPlayBean5 != null) {
                                return uGCVideoDetailPlayBean5.toBusinessBean();
                            }
                            return null;
                        }
                        if (Intrinsics.c(uGCVideoDetailPlayBean2.getCollectionId(), str3)) {
                            return uGCVideoDetailPlayBean2.toBusinessBean();
                        }
                        if (str4 != null) {
                            uGCVideoDetailPlayDao$getHistory$1.L$0 = uGCVideoDetailPlayBean2;
                            uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                            uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                            uGCVideoDetailPlayDao$getHistory$1.label = 3;
                            objU = uGCVideoDetailPlayDao2.l(str3, str4, uGCVideoDetailPlayDao$getHistory$1);
                            if (objU == objF) {
                                return objF;
                            }
                            uGCVideoDetailPlayBean3 = (UGCVideoDetailPlayBean) objU;
                            if (uGCVideoDetailPlayBean3 == null) {
                                return null;
                            }
                            uGCVideoDetailPlayBean3.setProgress(uGCVideoDetailPlayBean2.getProgress());
                            return uGCVideoDetailPlayBean3.toBusinessBean();
                        }
                        uGCVideoDetailPlayDao$getHistory$1.L$0 = uGCVideoDetailPlayBean2;
                        uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                        uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                        uGCVideoDetailPlayDao$getHistory$1.label = 4;
                        objU = uGCVideoDetailPlayDao2.u(str3, uGCVideoDetailPlayDao$getHistory$1);
                        if (objU == objF) {
                            return objF;
                        }
                        uGCVideoDetailPlayBean3 = (UGCVideoDetailPlayBean) objU;
                        if (uGCVideoDetailPlayBean3 == null) {
                            return null;
                        }
                        uGCVideoDetailPlayBean3.setProgress(uGCVideoDetailPlayBean2.getProgress());
                        return uGCVideoDetailPlayBean3.toBusinessBean();
                    }
                    uGCVideoDetailPlayDao$getHistory$1.L$0 = uGCVideoDetailPlayDao;
                    uGCVideoDetailPlayDao$getHistory$1.L$1 = str;
                    uGCVideoDetailPlayDao$getHistory$1.L$2 = strD;
                    uGCVideoDetailPlayDao$getHistory$1.label = 2;
                    Object objU2 = uGCVideoDetailPlayDao.u(str, uGCVideoDetailPlayDao$getHistory$1);
                    if (objU2 == objF) {
                        return objF;
                    }
                    uGCVideoDetailPlayDao2 = uGCVideoDetailPlayDao;
                    str2 = strD;
                    objU = objU2;
                    uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objU;
                    str3 = str;
                    str4 = str2;
                    uGCVideoDetailPlayBean2 = uGCVideoDetailPlayBean;
                    if (uGCVideoDetailPlayBean2 != null) {
                        if (str4 != null) {
                            uGCVideoDetailPlayDao$getHistory$1.L$0 = null;
                            uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                            uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                            uGCVideoDetailPlayDao$getHistory$1.label = 5;
                            objU = uGCVideoDetailPlayDao2.l(str3, str4, uGCVideoDetailPlayDao$getHistory$1);
                            if (objU == objF) {
                                return objF;
                            }
                            uGCVideoDetailPlayBean4 = (UGCVideoDetailPlayBean) objU;
                            if (uGCVideoDetailPlayBean4 != null) {
                                return uGCVideoDetailPlayBean4.toBusinessBean();
                            }
                            return null;
                        }
                        uGCVideoDetailPlayDao$getHistory$1.L$0 = null;
                        uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                        uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                        uGCVideoDetailPlayDao$getHistory$1.label = 6;
                        objU = uGCVideoDetailPlayDao2.u(str3, uGCVideoDetailPlayDao$getHistory$1);
                        if (objU == objF) {
                            return objF;
                        }
                        uGCVideoDetailPlayBean5 = (UGCVideoDetailPlayBean) objU;
                        if (uGCVideoDetailPlayBean5 != null) {
                            return uGCVideoDetailPlayBean5.toBusinessBean();
                        }
                        return null;
                    }
                    if (Intrinsics.c(uGCVideoDetailPlayBean2.getCollectionId(), str3)) {
                        return uGCVideoDetailPlayBean2.toBusinessBean();
                    }
                    if (str4 != null) {
                        uGCVideoDetailPlayDao$getHistory$1.L$0 = uGCVideoDetailPlayBean2;
                        uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                        uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                        uGCVideoDetailPlayDao$getHistory$1.label = 3;
                        objU = uGCVideoDetailPlayDao2.l(str3, str4, uGCVideoDetailPlayDao$getHistory$1);
                        if (objU == objF) {
                            return objF;
                        }
                        uGCVideoDetailPlayBean3 = (UGCVideoDetailPlayBean) objU;
                        if (uGCVideoDetailPlayBean3 == null) {
                            return null;
                        }
                        uGCVideoDetailPlayBean3.setProgress(uGCVideoDetailPlayBean2.getProgress());
                        return uGCVideoDetailPlayBean3.toBusinessBean();
                    }
                    uGCVideoDetailPlayDao$getHistory$1.L$0 = uGCVideoDetailPlayBean2;
                    uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                    uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                    uGCVideoDetailPlayDao$getHistory$1.label = 4;
                    objU = uGCVideoDetailPlayDao2.u(str3, uGCVideoDetailPlayDao$getHistory$1);
                    if (objU == objF) {
                        return objF;
                    }
                    uGCVideoDetailPlayBean3 = (UGCVideoDetailPlayBean) objU;
                    if (uGCVideoDetailPlayBean3 == null) {
                        return null;
                    }
                    uGCVideoDetailPlayBean3.setProgress(uGCVideoDetailPlayBean2.getProgress());
                    return uGCVideoDetailPlayBean3.toBusinessBean();
                case 1:
                    str2 = (String) uGCVideoDetailPlayDao$getHistory$1.L$2;
                    str = (String) uGCVideoDetailPlayDao$getHistory$1.L$1;
                    uGCVideoDetailPlayDao2 = (UGCVideoDetailPlayDao) uGCVideoDetailPlayDao$getHistory$1.L$0;
                    ResultKt.b(objU);
                    uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objU;
                    str3 = str;
                    str4 = str2;
                    uGCVideoDetailPlayBean2 = uGCVideoDetailPlayBean;
                    if (uGCVideoDetailPlayBean2 != null) {
                        if (str4 != null) {
                            uGCVideoDetailPlayDao$getHistory$1.L$0 = null;
                            uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                            uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                            uGCVideoDetailPlayDao$getHistory$1.label = 5;
                            objU = uGCVideoDetailPlayDao2.l(str3, str4, uGCVideoDetailPlayDao$getHistory$1);
                            if (objU == objF) {
                                return objF;
                            }
                            uGCVideoDetailPlayBean4 = (UGCVideoDetailPlayBean) objU;
                            if (uGCVideoDetailPlayBean4 != null) {
                                return uGCVideoDetailPlayBean4.toBusinessBean();
                            }
                            return null;
                        }
                        uGCVideoDetailPlayDao$getHistory$1.L$0 = null;
                        uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                        uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                        uGCVideoDetailPlayDao$getHistory$1.label = 6;
                        objU = uGCVideoDetailPlayDao2.u(str3, uGCVideoDetailPlayDao$getHistory$1);
                        if (objU == objF) {
                            return objF;
                        }
                        uGCVideoDetailPlayBean5 = (UGCVideoDetailPlayBean) objU;
                        if (uGCVideoDetailPlayBean5 != null) {
                            return uGCVideoDetailPlayBean5.toBusinessBean();
                        }
                        return null;
                    }
                    if (Intrinsics.c(uGCVideoDetailPlayBean2.getCollectionId(), str3)) {
                        return uGCVideoDetailPlayBean2.toBusinessBean();
                    }
                    if (str4 != null) {
                        uGCVideoDetailPlayDao$getHistory$1.L$0 = uGCVideoDetailPlayBean2;
                        uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                        uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                        uGCVideoDetailPlayDao$getHistory$1.label = 3;
                        objU = uGCVideoDetailPlayDao2.l(str3, str4, uGCVideoDetailPlayDao$getHistory$1);
                        if (objU == objF) {
                            return objF;
                        }
                        uGCVideoDetailPlayBean3 = (UGCVideoDetailPlayBean) objU;
                        if (uGCVideoDetailPlayBean3 == null) {
                            return null;
                        }
                        uGCVideoDetailPlayBean3.setProgress(uGCVideoDetailPlayBean2.getProgress());
                        return uGCVideoDetailPlayBean3.toBusinessBean();
                    }
                    uGCVideoDetailPlayDao$getHistory$1.L$0 = uGCVideoDetailPlayBean2;
                    uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                    uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                    uGCVideoDetailPlayDao$getHistory$1.label = 4;
                    objU = uGCVideoDetailPlayDao2.u(str3, uGCVideoDetailPlayDao$getHistory$1);
                    if (objU == objF) {
                        return objF;
                    }
                    uGCVideoDetailPlayBean3 = (UGCVideoDetailPlayBean) objU;
                    if (uGCVideoDetailPlayBean3 == null) {
                        return null;
                    }
                    uGCVideoDetailPlayBean3.setProgress(uGCVideoDetailPlayBean2.getProgress());
                    return uGCVideoDetailPlayBean3.toBusinessBean();
                case 2:
                    str2 = (String) uGCVideoDetailPlayDao$getHistory$1.L$2;
                    str = (String) uGCVideoDetailPlayDao$getHistory$1.L$1;
                    uGCVideoDetailPlayDao2 = (UGCVideoDetailPlayDao) uGCVideoDetailPlayDao$getHistory$1.L$0;
                    ResultKt.b(objU);
                    uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objU;
                    str3 = str;
                    str4 = str2;
                    uGCVideoDetailPlayBean2 = uGCVideoDetailPlayBean;
                    if (uGCVideoDetailPlayBean2 != null) {
                        if (str4 != null) {
                            uGCVideoDetailPlayDao$getHistory$1.L$0 = null;
                            uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                            uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                            uGCVideoDetailPlayDao$getHistory$1.label = 5;
                            objU = uGCVideoDetailPlayDao2.l(str3, str4, uGCVideoDetailPlayDao$getHistory$1);
                            if (objU == objF) {
                                return objF;
                            }
                            uGCVideoDetailPlayBean4 = (UGCVideoDetailPlayBean) objU;
                            if (uGCVideoDetailPlayBean4 != null) {
                                return uGCVideoDetailPlayBean4.toBusinessBean();
                            }
                            return null;
                        }
                        uGCVideoDetailPlayDao$getHistory$1.L$0 = null;
                        uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                        uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                        uGCVideoDetailPlayDao$getHistory$1.label = 6;
                        objU = uGCVideoDetailPlayDao2.u(str3, uGCVideoDetailPlayDao$getHistory$1);
                        if (objU == objF) {
                            return objF;
                        }
                        uGCVideoDetailPlayBean5 = (UGCVideoDetailPlayBean) objU;
                        if (uGCVideoDetailPlayBean5 != null) {
                            return uGCVideoDetailPlayBean5.toBusinessBean();
                        }
                        return null;
                    }
                    if (Intrinsics.c(uGCVideoDetailPlayBean2.getCollectionId(), str3)) {
                        return uGCVideoDetailPlayBean2.toBusinessBean();
                    }
                    if (str4 != null) {
                        uGCVideoDetailPlayDao$getHistory$1.L$0 = uGCVideoDetailPlayBean2;
                        uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                        uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                        uGCVideoDetailPlayDao$getHistory$1.label = 3;
                        objU = uGCVideoDetailPlayDao2.l(str3, str4, uGCVideoDetailPlayDao$getHistory$1);
                        if (objU == objF) {
                            return objF;
                        }
                        uGCVideoDetailPlayBean3 = (UGCVideoDetailPlayBean) objU;
                        if (uGCVideoDetailPlayBean3 == null) {
                            return null;
                        }
                        uGCVideoDetailPlayBean3.setProgress(uGCVideoDetailPlayBean2.getProgress());
                        return uGCVideoDetailPlayBean3.toBusinessBean();
                    }
                    uGCVideoDetailPlayDao$getHistory$1.L$0 = uGCVideoDetailPlayBean2;
                    uGCVideoDetailPlayDao$getHistory$1.L$1 = null;
                    uGCVideoDetailPlayDao$getHistory$1.L$2 = null;
                    uGCVideoDetailPlayDao$getHistory$1.label = 4;
                    objU = uGCVideoDetailPlayDao2.u(str3, uGCVideoDetailPlayDao$getHistory$1);
                    if (objU == objF) {
                        return objF;
                    }
                    uGCVideoDetailPlayBean3 = (UGCVideoDetailPlayBean) objU;
                    if (uGCVideoDetailPlayBean3 == null) {
                        return null;
                    }
                    uGCVideoDetailPlayBean3.setProgress(uGCVideoDetailPlayBean2.getProgress());
                    return uGCVideoDetailPlayBean3.toBusinessBean();
                case 3:
                    uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) uGCVideoDetailPlayDao$getHistory$1.L$0;
                    ResultKt.b(objU);
                    uGCVideoDetailPlayBean3 = (UGCVideoDetailPlayBean) objU;
                    if (uGCVideoDetailPlayBean3 == null) {
                        return null;
                    }
                    uGCVideoDetailPlayBean3.setProgress(uGCVideoDetailPlayBean2.getProgress());
                    return uGCVideoDetailPlayBean3.toBusinessBean();
                case 4:
                    uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) uGCVideoDetailPlayDao$getHistory$1.L$0;
                    ResultKt.b(objU);
                    uGCVideoDetailPlayBean3 = (UGCVideoDetailPlayBean) objU;
                    if (uGCVideoDetailPlayBean3 == null) {
                        return null;
                    }
                    uGCVideoDetailPlayBean3.setProgress(uGCVideoDetailPlayBean2.getProgress());
                    return uGCVideoDetailPlayBean3.toBusinessBean();
                case 5:
                    ResultKt.b(objU);
                    uGCVideoDetailPlayBean4 = (UGCVideoDetailPlayBean) objU;
                    if (uGCVideoDetailPlayBean4 != null) {
                        return uGCVideoDetailPlayBean4.toBusinessBean();
                    }
                    return null;
                case 6:
                    ResultKt.b(objU);
                    uGCVideoDetailPlayBean5 = (UGCVideoDetailPlayBean) objU;
                    if (uGCVideoDetailPlayBean5 != null) {
                        return uGCVideoDetailPlayBean5.toBusinessBean();
                    }
                    return null;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0098 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:28:0x0099  */
        /* JADX WARN: Code duplicated, block: B:35:0x00bb A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:36:0x00bc  */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object c(UGCVideoDetailPlayDao uGCVideoDetailPlayDao, int i11, int i12, Continuation continuation) throws Throwable {
            UGCVideoDetailPlayDao$getHistoryDataOffset$1 uGCVideoDetailPlayDao$getHistoryDataOffset$1;
            String strD;
            Object objW;
            List list;
            int i13;
            List listL;
            List list2;
            List list3;
            Object objO;
            if (continuation instanceof UGCVideoDetailPlayDao$getHistoryDataOffset$1) {
                uGCVideoDetailPlayDao$getHistoryDataOffset$1 = (UGCVideoDetailPlayDao$getHistoryDataOffset$1) continuation;
                int i14 = uGCVideoDetailPlayDao$getHistoryDataOffset$1.label;
                if ((i14 & Integer.MIN_VALUE) != 0) {
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.label = i14 - Integer.MIN_VALUE;
                } else {
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1 = new UGCVideoDetailPlayDao$getHistoryDataOffset$1(continuation);
                }
            } else {
                uGCVideoDetailPlayDao$getHistoryDataOffset$1 = new UGCVideoDetailPlayDao$getHistoryDataOffset$1(continuation);
            }
            Object objF = uGCVideoDetailPlayDao$getHistoryDataOffset$1.result;
            Object objF2 = IntrinsicsKt.f();
            int i15 = uGCVideoDetailPlayDao$getHistoryDataOffset$1.label;
            if (i15 != 0) {
                if (i15 == 1) {
                    i12 = uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$1;
                    i11 = uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$0;
                    String str = (String) uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$1;
                    UGCVideoDetailPlayDao uGCVideoDetailPlayDao2 = (UGCVideoDetailPlayDao) uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$0;
                    ResultKt.b(objF);
                    strD = str;
                    uGCVideoDetailPlayDao = uGCVideoDetailPlayDao2;
                    objW = objF;
                    list = (List) objW;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$0 = list;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$1 = null;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$0 = i12;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.label = 2;
                    objF = uGCVideoDetailPlayDao.i(i11, i12, strD, uGCVideoDetailPlayDao$getHistoryDataOffset$1);
                    if (objF == objF2) {
                        return objF2;
                    }
                    i13 = i12;
                    listL = list;
                } else if (i15 != 2) {
                    if (i15 == 3) {
                        i12 = uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$1;
                        i11 = uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$0;
                        uGCVideoDetailPlayDao = (UGCVideoDetailPlayDao) uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$0;
                        ResultKt.b(objF);
                        list3 = (List) objF;
                        uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$0 = list3;
                        uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$0 = i12;
                        uGCVideoDetailPlayDao$getHistoryDataOffset$1.label = 4;
                        objO = uGCVideoDetailPlayDao.o(i11, i12, uGCVideoDetailPlayDao$getHistoryDataOffset$1);
                        if (objO == objF2) {
                            return objF2;
                        }
                        listL = list3;
                        objF = objO;
                        i13 = i12;
                    } else {
                        if (i15 != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        i13 = uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$0;
                        listL = (List) uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$0;
                        ResultKt.b(objF);
                    }
                    list2 = (List) objF;
                } else {
                    i13 = uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$0;
                    listL = (List) uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$0;
                    ResultKt.b(objF);
                }
                list2 = (List) objF;
            } else {
                ResultKt.b(objF);
                strD = ak.o.f646a.d();
                if (strD != null) {
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$0 = uGCVideoDetailPlayDao;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$1 = strD;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$0 = i11;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$1 = i12;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.label = 1;
                    objW = uGCVideoDetailPlayDao.w(i11, i12, strD, uGCVideoDetailPlayDao$getHistoryDataOffset$1);
                    if (objW == objF2) {
                        return objF2;
                    }
                    list = (List) objW;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$0 = list;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$1 = null;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$0 = i12;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.label = 2;
                    objF = uGCVideoDetailPlayDao.i(i11, i12, strD, uGCVideoDetailPlayDao$getHistoryDataOffset$1);
                    if (objF == objF2) {
                        return objF2;
                    }
                    i13 = i12;
                    listL = list;
                    list2 = (List) objF;
                } else {
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$0 = uGCVideoDetailPlayDao;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$0 = i11;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$1 = i12;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.label = 3;
                    objF = uGCVideoDetailPlayDao.f(i11, i12, uGCVideoDetailPlayDao$getHistoryDataOffset$1);
                    if (objF == objF2) {
                        return objF2;
                    }
                    list3 = (List) objF;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.L$0 = list3;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.I$0 = i12;
                    uGCVideoDetailPlayDao$getHistoryDataOffset$1.label = 4;
                    objO = uGCVideoDetailPlayDao.o(i11, i12, uGCVideoDetailPlayDao$getHistoryDataOffset$1);
                    if (objO == objF2) {
                        return objF2;
                    }
                    listL = list3;
                    objF = objO;
                    i13 = i12;
                    list2 = (List) objF;
                }
            }
            if (listL == null) {
                listL = CollectionsKt.l();
            }
            List listK0 = CollectionsKt.K0(CollectionsKt.I0(CollectionsKt.B0(listL, list2 != null ? list2 : CollectionsKt.l()), new Comparator() { // from class: com.transsion.baselib.db.video.UGCVideoDetailPlayDao$DefaultImpls$getHistoryDataOffset$$inlined$sortedByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t11, T t12) {
                    return ComparisonsKt.d(Long.valueOf(((UGCVideoDetailPlayBean) t12).getTimeStamp()), Long.valueOf(((UGCVideoDetailPlayBean) t11).getTimeStamp()));
                }
            }), i13);
            ArrayList arrayList = new ArrayList(CollectionsKt.v(listK0, 10));
            Iterator it = listK0.iterator();
            while (it.hasNext()) {
                arrayList.add(((UGCVideoDetailPlayBean) it.next()).toBusinessBean());
            }
            return arrayList;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object d(UGCVideoDetailPlayDao uGCVideoDetailPlayDao, UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation continuation) throws Throwable {
            UGCVideoDetailPlayDao$insertOrUpdate$1 uGCVideoDetailPlayDao$insertOrUpdate$1;
            if (continuation instanceof UGCVideoDetailPlayDao$insertOrUpdate$1) {
                uGCVideoDetailPlayDao$insertOrUpdate$1 = (UGCVideoDetailPlayDao$insertOrUpdate$1) continuation;
                int i11 = uGCVideoDetailPlayDao$insertOrUpdate$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    uGCVideoDetailPlayDao$insertOrUpdate$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    uGCVideoDetailPlayDao$insertOrUpdate$1 = new UGCVideoDetailPlayDao$insertOrUpdate$1(continuation);
                }
            } else {
                uGCVideoDetailPlayDao$insertOrUpdate$1 = new UGCVideoDetailPlayDao$insertOrUpdate$1(continuation);
            }
            Object objS = uGCVideoDetailPlayDao$insertOrUpdate$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = uGCVideoDetailPlayDao$insertOrUpdate$1.label;
            if (i12 == 0) {
                ResultKt.b(objS);
                String collectionId = uGCVideoDetailPlayBean.getCollectionId();
                String ugcVideoId = uGCVideoDetailPlayBean.getUgcVideoId();
                uGCVideoDetailPlayDao$insertOrUpdate$1.L$0 = uGCVideoDetailPlayDao;
                uGCVideoDetailPlayDao$insertOrUpdate$1.L$1 = uGCVideoDetailPlayBean;
                uGCVideoDetailPlayDao$insertOrUpdate$1.label = 1;
                objS = uGCVideoDetailPlayDao.s(collectionId, ugcVideoId, uGCVideoDetailPlayDao$insertOrUpdate$1);
                if (objS == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    if (i12 == 2) {
                        ResultKt.b(objS);
                        return Unit.f67061a;
                    }
                    if (i12 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objS);
                    return Unit.f67061a;
                }
                uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) uGCVideoDetailPlayDao$insertOrUpdate$1.L$1;
                uGCVideoDetailPlayDao = (UGCVideoDetailPlayDao) uGCVideoDetailPlayDao$insertOrUpdate$1.L$0;
                ResultKt.b(objS);
            }
            if (objS == null) {
                uGCVideoDetailPlayDao$insertOrUpdate$1.L$0 = null;
                uGCVideoDetailPlayDao$insertOrUpdate$1.L$1 = null;
                uGCVideoDetailPlayDao$insertOrUpdate$1.label = 2;
                if (uGCVideoDetailPlayDao.p(uGCVideoDetailPlayBean, uGCVideoDetailPlayDao$insertOrUpdate$1) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            }
            uGCVideoDetailPlayDao$insertOrUpdate$1.L$0 = null;
            uGCVideoDetailPlayDao$insertOrUpdate$1.L$1 = null;
            uGCVideoDetailPlayDao$insertOrUpdate$1.label = 3;
            if (uGCVideoDetailPlayDao.v(uGCVideoDetailPlayBean, uGCVideoDetailPlayDao$insertOrUpdate$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x001f  */
        public static Object e(UGCVideoDetailPlayDao uGCVideoDetailPlayDao, String str, String str2, long j11, long j12, Continuation continuation) throws Throwable {
            UGCVideoDetailPlayDao$insertOrUpdateProgress$1 uGCVideoDetailPlayDao$insertOrUpdateProgress$1;
            String strD;
            Object obj;
            UGCVideoDetailPlayDao uGCVideoDetailPlayDao2;
            Object obj2;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
            String str3 = str;
            String str4 = str2;
            long j13 = j11;
            long j14 = j12;
            if (continuation instanceof UGCVideoDetailPlayDao$insertOrUpdateProgress$1) {
                uGCVideoDetailPlayDao$insertOrUpdateProgress$1 = (UGCVideoDetailPlayDao$insertOrUpdateProgress$1) continuation;
                int i11 = uGCVideoDetailPlayDao$insertOrUpdateProgress$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1 = new UGCVideoDetailPlayDao$insertOrUpdateProgress$1(continuation);
                }
            } else {
                uGCVideoDetailPlayDao$insertOrUpdateProgress$1 = new UGCVideoDetailPlayDao$insertOrUpdateProgress$1(continuation);
            }
            Object obj3 = uGCVideoDetailPlayDao$insertOrUpdateProgress$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = uGCVideoDetailPlayDao$insertOrUpdateProgress$1.label;
            if (i12 == 0) {
                ResultKt.b(obj3);
                strD = ak.o.f646a.d();
                if (strD != null) {
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$0 = uGCVideoDetailPlayDao;
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$1 = str3;
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$2 = str4;
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$3 = strD;
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.J$0 = j13;
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.J$1 = j14;
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.label = 1;
                    Object objT = uGCVideoDetailPlayDao.t(str3, str4, strD, uGCVideoDetailPlayDao$insertOrUpdateProgress$1);
                    if (objT == objF) {
                        return objF;
                    }
                    obj2 = objT;
                    uGCVideoDetailPlayDao2 = uGCVideoDetailPlayDao;
                    uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) obj2;
                } else {
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$0 = uGCVideoDetailPlayDao;
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$1 = str3;
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$2 = str4;
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$3 = strD;
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.J$0 = j13;
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.J$1 = j14;
                    uGCVideoDetailPlayDao$insertOrUpdateProgress$1.label = 2;
                    Object objQ = uGCVideoDetailPlayDao.q(str3, str4, uGCVideoDetailPlayDao$insertOrUpdateProgress$1);
                    if (objQ == objF) {
                        return objF;
                    }
                    obj = objQ;
                    uGCVideoDetailPlayDao2 = uGCVideoDetailPlayDao;
                    uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) obj;
                }
            } else if (i12 == 1) {
                long j15 = uGCVideoDetailPlayDao$insertOrUpdateProgress$1.J$1;
                long j16 = uGCVideoDetailPlayDao$insertOrUpdateProgress$1.J$0;
                String str5 = (String) uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$3;
                String str6 = (String) uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$2;
                String str7 = (String) uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$1;
                uGCVideoDetailPlayDao2 = (UGCVideoDetailPlayDao) uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$0;
                ResultKt.b(obj3);
                obj2 = obj3;
                strD = str5;
                j13 = j16;
                str4 = str6;
                str3 = str7;
                j14 = j15;
                uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) obj2;
            } else {
                if (i12 != 2) {
                    if (i12 == 3) {
                        ResultKt.b(obj3);
                        return Unit.f67061a;
                    }
                    if (i12 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj3);
                    return Unit.f67061a;
                }
                long j17 = uGCVideoDetailPlayDao$insertOrUpdateProgress$1.J$1;
                long j18 = uGCVideoDetailPlayDao$insertOrUpdateProgress$1.J$0;
                String str8 = (String) uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$3;
                String str9 = (String) uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$2;
                String str10 = (String) uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$1;
                uGCVideoDetailPlayDao2 = (UGCVideoDetailPlayDao) uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$0;
                ResultKt.b(obj3);
                obj = obj3;
                strD = str8;
                j13 = j18;
                str4 = str9;
                str3 = str10;
                j14 = j17;
                uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) obj;
            }
            String str11 = str3;
            String str12 = str4;
            long j19 = j13;
            String str13 = strD;
            if (uGCVideoDetailPlayBean == null) {
                UGCVideoDetailPlayBean uGCVideoDetailPlayBean2 = new UGCVideoDetailPlayBean(str11, str12, j14, null, null, null, 0, null, null, null, null, null, j19, null, null, null, null, null, false, null, null, null, null, 0L, null, null, false, false, false, null, null, null, null, null, null, str13, -4104, 7, null);
                uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$0 = null;
                uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$1 = null;
                uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$2 = null;
                uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$3 = null;
                uGCVideoDetailPlayDao$insertOrUpdateProgress$1.label = 3;
                if (uGCVideoDetailPlayDao2.p(uGCVideoDetailPlayBean2, uGCVideoDetailPlayDao$insertOrUpdateProgress$1) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            }
            uGCVideoDetailPlayBean.setProgress(j14);
            uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$0 = null;
            uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$1 = null;
            uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$2 = null;
            uGCVideoDetailPlayDao$insertOrUpdateProgress$1.L$3 = null;
            uGCVideoDetailPlayDao$insertOrUpdateProgress$1.label = 4;
            if (uGCVideoDetailPlayDao2.v(uGCVideoDetailPlayBean, uGCVideoDetailPlayDao$insertOrUpdateProgress$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
    }

    Object a(Continuation continuation);

    Object b(String str, String str2, Continuation continuation);

    Object c(String str, Continuation continuation);

    Object d(int i11, int i12, Continuation continuation);

    Object e(String str, String str2, long j11, long j12, int i11, Continuation continuation);

    Object f(int i11, int i12, Continuation continuation);

    Object g(String str, Continuation continuation);

    Object h(String str, String str2, long j11, Continuation continuation);

    Object i(int i11, int i12, String str, Continuation continuation);

    Object j(String str, Continuation continuation);

    Object k(String str, String str2, long j11, long j12, Continuation continuation);

    Object l(String str, String str2, Continuation continuation);

    Object m(String str, Continuation continuation);

    Object n(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation continuation);

    Object o(int i11, int i12, Continuation continuation);

    Object p(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation continuation);

    Object q(String str, String str2, Continuation continuation);

    Object r(String str, Continuation continuation);

    Object s(String str, String str2, Continuation continuation);

    Object t(String str, String str2, String str3, Continuation continuation);

    Object u(String str, Continuation continuation);

    Object v(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation continuation);

    Object w(int i11, int i12, String str, Continuation continuation);
}
