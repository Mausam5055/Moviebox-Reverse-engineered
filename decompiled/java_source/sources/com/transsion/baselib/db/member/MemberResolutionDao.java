package com.transsion.baselib.db.member;

import android.database.sqlite.SQLiteConstraintException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;

/* JADX INFO: loaded from: classes5.dex */
public interface MemberResolutionDao {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:34:0x00e4 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:7:0x0015  */
        public static Object a(MemberResolutionDao memberResolutionDao, String str, int i11, int i12, boolean z10, Continuation continuation) throws Throwable {
            MemberResolutionDao$updateIsUnlockOrCreate$1 memberResolutionDao$updateIsUnlockOrCreate$1;
            MemberResolutionDao memberResolutionDao2;
            String str2;
            int i13;
            int i14;
            boolean z11;
            Object objE;
            if (continuation instanceof MemberResolutionDao$updateIsUnlockOrCreate$1) {
                memberResolutionDao$updateIsUnlockOrCreate$1 = (MemberResolutionDao$updateIsUnlockOrCreate$1) continuation;
                int i15 = memberResolutionDao$updateIsUnlockOrCreate$1.label;
                if ((i15 & Integer.MIN_VALUE) != 0) {
                    memberResolutionDao$updateIsUnlockOrCreate$1.label = i15 - Integer.MIN_VALUE;
                } else {
                    memberResolutionDao$updateIsUnlockOrCreate$1 = new MemberResolutionDao$updateIsUnlockOrCreate$1(continuation);
                }
            } else {
                memberResolutionDao$updateIsUnlockOrCreate$1 = new MemberResolutionDao$updateIsUnlockOrCreate$1(continuation);
            }
            Object obj = memberResolutionDao$updateIsUnlockOrCreate$1.result;
            Object objF = IntrinsicsKt.f();
            int i16 = memberResolutionDao$updateIsUnlockOrCreate$1.label;
            if (i16 != 0) {
                if (i16 == 1) {
                    boolean z12 = memberResolutionDao$updateIsUnlockOrCreate$1.Z$0;
                    int i17 = memberResolutionDao$updateIsUnlockOrCreate$1.I$1;
                    int i18 = memberResolutionDao$updateIsUnlockOrCreate$1.I$0;
                    String str3 = (String) memberResolutionDao$updateIsUnlockOrCreate$1.L$1;
                    MemberResolutionDao memberResolutionDao3 = (MemberResolutionDao) memberResolutionDao$updateIsUnlockOrCreate$1.L$0;
                    ResultKt.b(obj);
                    z11 = z12;
                    i14 = i17;
                    i13 = i18;
                    str2 = str3;
                    objE = obj;
                    memberResolutionDao2 = memberResolutionDao3;
                } else if (i16 == 2) {
                    boolean z13 = memberResolutionDao$updateIsUnlockOrCreate$1.Z$0;
                    int i19 = memberResolutionDao$updateIsUnlockOrCreate$1.I$1;
                    int i20 = memberResolutionDao$updateIsUnlockOrCreate$1.I$0;
                    String str4 = (String) memberResolutionDao$updateIsUnlockOrCreate$1.L$1;
                    MemberResolutionDao memberResolutionDao4 = (MemberResolutionDao) memberResolutionDao$updateIsUnlockOrCreate$1.L$0;
                    try {
                        ResultKt.b(obj);
                    } catch (SQLiteConstraintException unused) {
                        z11 = z13;
                        i14 = i19;
                        i13 = i20;
                        str2 = str4;
                        memberResolutionDao2 = memberResolutionDao4;
                        memberResolutionDao$updateIsUnlockOrCreate$1.L$0 = null;
                        memberResolutionDao$updateIsUnlockOrCreate$1.L$1 = null;
                        memberResolutionDao$updateIsUnlockOrCreate$1.label = 3;
                        if (memberResolutionDao2.e(str2, i13, i14, z11, memberResolutionDao$updateIsUnlockOrCreate$1) == objF) {
                            return objF;
                        }
                    }
                } else {
                    if (i16 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            memberResolutionDao2 = memberResolutionDao;
            memberResolutionDao$updateIsUnlockOrCreate$1.L$0 = memberResolutionDao2;
            str2 = str;
            memberResolutionDao$updateIsUnlockOrCreate$1.L$1 = str2;
            i13 = i11;
            memberResolutionDao$updateIsUnlockOrCreate$1.I$0 = i13;
            i14 = i12;
            memberResolutionDao$updateIsUnlockOrCreate$1.I$1 = i14;
            z11 = z10;
            memberResolutionDao$updateIsUnlockOrCreate$1.Z$0 = z11;
            memberResolutionDao$updateIsUnlockOrCreate$1.label = 1;
            objE = memberResolutionDao.e(str, i11, i12, z10, memberResolutionDao$updateIsUnlockOrCreate$1);
            if (objE == objF) {
                return objF;
            }
            if (((Number) objE).intValue() > 0) {
                return Unit.f67061a;
            }
            MemberResolutionBean memberResolutionBean = new MemberResolutionBean(str2, i14, i13, Boxing.a(false), Boxing.a(z11));
            try {
                memberResolutionDao$updateIsUnlockOrCreate$1.L$0 = memberResolutionDao2;
                memberResolutionDao$updateIsUnlockOrCreate$1.L$1 = str2;
                memberResolutionDao$updateIsUnlockOrCreate$1.I$0 = i13;
                memberResolutionDao$updateIsUnlockOrCreate$1.I$1 = i14;
                memberResolutionDao$updateIsUnlockOrCreate$1.Z$0 = z11;
                memberResolutionDao$updateIsUnlockOrCreate$1.label = 2;
                if (memberResolutionDao2.d(memberResolutionBean, memberResolutionDao$updateIsUnlockOrCreate$1) == objF) {
                    return objF;
                }
            } catch (SQLiteConstraintException unused2) {
                memberResolutionDao$updateIsUnlockOrCreate$1.L$0 = null;
                memberResolutionDao$updateIsUnlockOrCreate$1.L$1 = null;
                memberResolutionDao$updateIsUnlockOrCreate$1.label = 3;
                if (memberResolutionDao2.e(str2, i13, i14, z11, memberResolutionDao$updateIsUnlockOrCreate$1) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }

        /* JADX WARN: Code duplicated, block: B:34:0x00e4 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:7:0x0015  */
        public static Object b(MemberResolutionDao memberResolutionDao, String str, int i11, int i12, boolean z10, Continuation continuation) throws Throwable {
            MemberResolutionDao$updateVipResolutionTipOrCreate$1 memberResolutionDao$updateVipResolutionTipOrCreate$1;
            MemberResolutionDao memberResolutionDao2;
            String str2;
            int i13;
            int i14;
            boolean z11;
            Object objC;
            if (continuation instanceof MemberResolutionDao$updateVipResolutionTipOrCreate$1) {
                memberResolutionDao$updateVipResolutionTipOrCreate$1 = (MemberResolutionDao$updateVipResolutionTipOrCreate$1) continuation;
                int i15 = memberResolutionDao$updateVipResolutionTipOrCreate$1.label;
                if ((i15 & Integer.MIN_VALUE) != 0) {
                    memberResolutionDao$updateVipResolutionTipOrCreate$1.label = i15 - Integer.MIN_VALUE;
                } else {
                    memberResolutionDao$updateVipResolutionTipOrCreate$1 = new MemberResolutionDao$updateVipResolutionTipOrCreate$1(continuation);
                }
            } else {
                memberResolutionDao$updateVipResolutionTipOrCreate$1 = new MemberResolutionDao$updateVipResolutionTipOrCreate$1(continuation);
            }
            Object obj = memberResolutionDao$updateVipResolutionTipOrCreate$1.result;
            Object objF = IntrinsicsKt.f();
            int i16 = memberResolutionDao$updateVipResolutionTipOrCreate$1.label;
            if (i16 != 0) {
                if (i16 == 1) {
                    boolean z12 = memberResolutionDao$updateVipResolutionTipOrCreate$1.Z$0;
                    int i17 = memberResolutionDao$updateVipResolutionTipOrCreate$1.I$1;
                    int i18 = memberResolutionDao$updateVipResolutionTipOrCreate$1.I$0;
                    String str3 = (String) memberResolutionDao$updateVipResolutionTipOrCreate$1.L$1;
                    MemberResolutionDao memberResolutionDao3 = (MemberResolutionDao) memberResolutionDao$updateVipResolutionTipOrCreate$1.L$0;
                    ResultKt.b(obj);
                    z11 = z12;
                    i14 = i17;
                    i13 = i18;
                    str2 = str3;
                    objC = obj;
                    memberResolutionDao2 = memberResolutionDao3;
                } else if (i16 == 2) {
                    boolean z13 = memberResolutionDao$updateVipResolutionTipOrCreate$1.Z$0;
                    int i19 = memberResolutionDao$updateVipResolutionTipOrCreate$1.I$1;
                    int i20 = memberResolutionDao$updateVipResolutionTipOrCreate$1.I$0;
                    String str4 = (String) memberResolutionDao$updateVipResolutionTipOrCreate$1.L$1;
                    MemberResolutionDao memberResolutionDao4 = (MemberResolutionDao) memberResolutionDao$updateVipResolutionTipOrCreate$1.L$0;
                    try {
                        ResultKt.b(obj);
                    } catch (SQLiteConstraintException unused) {
                        z11 = z13;
                        i14 = i19;
                        i13 = i20;
                        str2 = str4;
                        memberResolutionDao2 = memberResolutionDao4;
                        memberResolutionDao$updateVipResolutionTipOrCreate$1.L$0 = null;
                        memberResolutionDao$updateVipResolutionTipOrCreate$1.L$1 = null;
                        memberResolutionDao$updateVipResolutionTipOrCreate$1.label = 3;
                        if (memberResolutionDao2.c(str2, i13, i14, z11, memberResolutionDao$updateVipResolutionTipOrCreate$1) == objF) {
                            return objF;
                        }
                    }
                } else {
                    if (i16 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            memberResolutionDao2 = memberResolutionDao;
            memberResolutionDao$updateVipResolutionTipOrCreate$1.L$0 = memberResolutionDao2;
            str2 = str;
            memberResolutionDao$updateVipResolutionTipOrCreate$1.L$1 = str2;
            i13 = i11;
            memberResolutionDao$updateVipResolutionTipOrCreate$1.I$0 = i13;
            i14 = i12;
            memberResolutionDao$updateVipResolutionTipOrCreate$1.I$1 = i14;
            z11 = z10;
            memberResolutionDao$updateVipResolutionTipOrCreate$1.Z$0 = z11;
            memberResolutionDao$updateVipResolutionTipOrCreate$1.label = 1;
            objC = memberResolutionDao.c(str, i11, i12, z10, memberResolutionDao$updateVipResolutionTipOrCreate$1);
            if (objC == objF) {
                return objF;
            }
            if (((Number) objC).intValue() > 0) {
                return Unit.f67061a;
            }
            MemberResolutionBean memberResolutionBean = new MemberResolutionBean(str2, i14, i13, Boxing.a(z11), Boxing.a(false));
            try {
                memberResolutionDao$updateVipResolutionTipOrCreate$1.L$0 = memberResolutionDao2;
                memberResolutionDao$updateVipResolutionTipOrCreate$1.L$1 = str2;
                memberResolutionDao$updateVipResolutionTipOrCreate$1.I$0 = i13;
                memberResolutionDao$updateVipResolutionTipOrCreate$1.I$1 = i14;
                memberResolutionDao$updateVipResolutionTipOrCreate$1.Z$0 = z11;
                memberResolutionDao$updateVipResolutionTipOrCreate$1.label = 2;
                if (memberResolutionDao2.d(memberResolutionBean, memberResolutionDao$updateVipResolutionTipOrCreate$1) == objF) {
                    return objF;
                }
            } catch (SQLiteConstraintException unused2) {
                memberResolutionDao$updateVipResolutionTipOrCreate$1.L$0 = null;
                memberResolutionDao$updateVipResolutionTipOrCreate$1.L$1 = null;
                memberResolutionDao$updateVipResolutionTipOrCreate$1.label = 3;
                if (memberResolutionDao2.c(str2, i13, i14, z11, memberResolutionDao$updateVipResolutionTipOrCreate$1) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
    }

    Object a(String str, int i11, int i12, boolean z10, Continuation continuation);

    Object b(String str, int i11, int i12, Continuation continuation);

    Object c(String str, int i11, int i12, boolean z10, Continuation continuation);

    Object d(MemberResolutionBean memberResolutionBean, Continuation continuation);

    Object e(String str, int i11, int i12, boolean z10, Continuation continuation);

    Object f(String str, int i11, int i12, boolean z10, Continuation continuation);
}
