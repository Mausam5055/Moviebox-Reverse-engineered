package com.transsion.baselib.db.member;

import androidx.room.RoomDatabase;
import androidx.room.util.j;
import androidx.room.util.k;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class g implements MemberResolutionDao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f43096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f43097b = new a();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR ABORT INTO `member_resolution` (`subjectId`,`ep`,`se`,`vipResolutionTip`,`isUnlock`) VALUES (?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, MemberResolutionBean memberResolutionBean) {
            if (memberResolutionBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, memberResolutionBean.getSubjectId());
            }
            eVar.c(2, memberResolutionBean.getEp());
            eVar.c(3, memberResolutionBean.getSe());
            Integer numValueOf = memberResolutionBean.getVipResolutionTip() == null ? null : Integer.valueOf(memberResolutionBean.getVipResolutionTip().booleanValue() ? 1 : 0);
            if (numValueOf == null) {
                eVar.g(4);
            } else {
                eVar.c(4, numValueOf.intValue());
            }
            Integer numValueOf2 = memberResolutionBean.isUnlock() != null ? Integer.valueOf(memberResolutionBean.isUnlock().booleanValue() ? 1 : 0) : null;
            if (numValueOf2 == null) {
                eVar.g(5);
            } else {
                eVar.c(5, numValueOf2.intValue());
            }
        }
    }

    public g(RoomDatabase roomDatabase) {
        this.f43096a = roomDatabase;
    }

    public static List m() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit n(MemberResolutionBean memberResolutionBean, z3.b bVar) throws Exception {
        this.f43097b.d(bVar, memberResolutionBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ MemberResolutionBean o(String str, int i11, int i12, z3.b bVar) {
        Boolean boolValueOf;
        z3.e eVarD0 = bVar.D0("\n        SELECT * FROM member_resolution\n        WHERE subjectId = ?\n          AND se = ?\n          AND ep = ?\n        LIMIT 1\n    ");
        boolean z10 = true;
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            eVarD0.c(2, i11);
            eVarD0.c(3, i12);
            int iD = k.d(eVarD0, "subjectId");
            int iD2 = k.d(eVarD0, "ep");
            int iD3 = k.d(eVarD0, "se");
            int iD4 = k.d(eVarD0, "vipResolutionTip");
            int iD5 = k.d(eVarD0, "isUnlock");
            MemberResolutionBean memberResolutionBean = null;
            Boolean boolValueOf2 = null;
            if (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                int i13 = (int) eVarD0.getLong(iD2);
                int i14 = (int) eVarD0.getLong(iD3);
                Integer numValueOf = eVarD0.isNull(iD4) ? null : Integer.valueOf((int) eVarD0.getLong(iD4));
                if (numValueOf == null) {
                    boolValueOf = null;
                } else {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                Integer numValueOf2 = eVarD0.isNull(iD5) ? null : Integer.valueOf((int) eVarD0.getLong(iD5));
                if (numValueOf2 != null) {
                    if (numValueOf2.intValue() == 0) {
                        z10 = false;
                    }
                    boolValueOf2 = Boolean.valueOf(z10);
                }
                memberResolutionBean = new MemberResolutionBean(strN0, i13, i14, boolValueOf, boolValueOf2);
            }
            eVarD0.close();
            return memberResolutionBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer p(boolean z10, String str, int i11, int i12, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("\n        UPDATE member_resolution\n        SET isUnlock = ?\n        WHERE subjectId = ?\n          AND se = ?\n          AND ep = ?\n    ");
        try {
            eVarD0.c(1, z10 ? 1L : 0L);
            if (str == null) {
                eVarD0.g(2);
            } else {
                eVarD0.j(2, str);
            }
            eVarD0.c(3, i11);
            eVarD0.c(4, i12);
            eVarD0.A0();
            return Integer.valueOf(j.b(bVar));
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object q(String str, int i11, int i12, boolean z10, Continuation continuation) {
        return MemberResolutionDao.DefaultImpls.a(this, str, i11, i12, z10, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer r(boolean z10, String str, int i11, int i12, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("\n        UPDATE member_resolution\n        SET vipResolutionTip = ?\n        WHERE subjectId = ?\n          AND se = ?\n          AND ep = ?\n    ");
        try {
            eVarD0.c(1, z10 ? 1L : 0L);
            if (str == null) {
                eVarD0.g(2);
            } else {
                eVarD0.j(2, str);
            }
            eVarD0.c(3, i11);
            eVarD0.c(4, i12);
            eVarD0.A0();
            return Integer.valueOf(j.b(bVar));
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object s(String str, int i11, int i12, boolean z10, Continuation continuation) {
        return MemberResolutionDao.DefaultImpls.b(this, str, i11, i12, z10, continuation);
    }

    @Override // com.transsion.baselib.db.member.MemberResolutionDao
    public Object a(final String str, final int i11, final int i12, final boolean z10, Continuation continuation) {
        return androidx.room.util.b.e(this.f43096a, new Function1() { // from class: com.transsion.baselib.db.member.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43076a.s(str, i11, i12, z10, (Continuation) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.member.MemberResolutionDao
    public Object b(final String str, final int i11, final int i12, Continuation continuation) {
        return androidx.room.util.b.f(this.f43096a, true, false, new Function1() { // from class: com.transsion.baselib.db.member.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return g.o(str, i11, i12, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.member.MemberResolutionDao
    public Object c(final String str, final int i11, final int i12, final boolean z10, Continuation continuation) {
        return androidx.room.util.b.f(this.f43096a, false, true, new Function1() { // from class: com.transsion.baselib.db.member.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return g.r(z10, str, i11, i12, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.member.MemberResolutionDao
    public Object d(final MemberResolutionBean memberResolutionBean, Continuation continuation) {
        memberResolutionBean.getClass();
        return androidx.room.util.b.f(this.f43096a, false, true, new Function1() { // from class: com.transsion.baselib.db.member.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43090a.n(memberResolutionBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.member.MemberResolutionDao
    public Object e(final String str, final int i11, final int i12, final boolean z10, Continuation continuation) {
        return androidx.room.util.b.f(this.f43096a, false, true, new Function1() { // from class: com.transsion.baselib.db.member.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return g.p(z10, str, i11, i12, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.member.MemberResolutionDao
    public Object f(final String str, final int i11, final int i12, final boolean z10, Continuation continuation) {
        return androidx.room.util.b.e(this.f43096a, new Function1() { // from class: com.transsion.baselib.db.member.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43081a.q(str, i11, i12, z10, (Continuation) obj);
            }
        }, continuation);
    }
}
