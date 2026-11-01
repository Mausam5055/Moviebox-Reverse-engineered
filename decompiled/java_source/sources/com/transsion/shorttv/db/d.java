package com.transsion.shorttv.db;

import androidx.room.RoomDatabase;
import androidx.room.util.k;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements ShortTvAdUnlockDao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f53018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f53019b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f53020c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `short_tv_ad_unlock_state` (`subjectId`,`unlockedEps`) VALUES (?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, e eVar2) {
            if (eVar2.a() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, eVar2.a());
            }
            if (eVar2.b() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, eVar2.b());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `short_tv_ad_unlock_state` SET `subjectId` = ?,`unlockedEps` = ? WHERE `subjectId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, e eVar2) {
            if (eVar2.a() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, eVar2.a());
            }
            if (eVar2.b() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, eVar2.b());
            }
            if (eVar2.a() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, eVar2.a());
            }
        }
    }

    public d(RoomDatabase roomDatabase) {
        this.f53018a = roomDatabase;
    }

    public static List h() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit i(e eVar, z3.b bVar) throws Exception {
        this.f53019b.d(bVar, eVar);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e j(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM short_tv_ad_unlock_state WHERE subjectId=?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = k.d(eVarD0, "subjectId");
            int iD2 = k.d(eVarD0, "unlockedEps");
            e eVar = null;
            String strN0 = null;
            if (eVarD0.A0()) {
                String strN1 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                if (!eVarD0.isNull(iD2)) {
                    strN0 = eVarD0.n0(iD2);
                }
                eVar = new e(strN1, strN0);
            }
            eVarD0.close();
            return eVar;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit k(e eVar, z3.b bVar) throws Exception {
        this.f53020c.c(bVar, eVar);
        return Unit.f67061a;
    }

    @Override // com.transsion.shorttv.db.ShortTvAdUnlockDao
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f53018a, true, false, new Function1() { // from class: com.transsion.shorttv.db.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return d.j(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.shorttv.db.ShortTvAdUnlockDao
    public Object b(e eVar, Continuation continuation) {
        return ShortTvAdUnlockDao.DefaultImpls.a(this, eVar, continuation);
    }

    @Override // com.transsion.shorttv.db.ShortTvAdUnlockDao
    public Object c(final e eVar, Continuation continuation) {
        eVar.getClass();
        return androidx.room.util.b.f(this.f53018a, false, true, new Function1() { // from class: com.transsion.shorttv.db.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f53014a.k(eVar, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.shorttv.db.ShortTvAdUnlockDao
    public Object d(final e eVar, Continuation continuation) {
        eVar.getClass();
        return androidx.room.util.b.f(this.f53018a, false, true, new Function1() { // from class: com.transsion.shorttv.db.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f53016a.i(eVar, (z3.b) obj);
            }
        }, continuation);
    }
}
