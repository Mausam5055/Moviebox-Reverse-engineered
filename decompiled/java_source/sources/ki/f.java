package ki;

import androidx.room.RoomDatabase;
import androidx.room.g;
import androidx.room.util.k;
import com.transsion.ad.db.mcc.LocalMcc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements ki.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f66790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f66791b = new a();

    class a extends g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `local_mcc` (`id`,`Country`,`Mcc`,`Iso`,`CountryCode`) VALUES (nullif(?, 0),?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, LocalMcc localMcc) {
            eVar.c(1, localMcc.getId());
            if (localMcc.getCountry() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, localMcc.getCountry());
            }
            if (localMcc.getMcc() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, localMcc.getMcc());
            }
            if (localMcc.getIso() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, localMcc.getIso());
            }
            if (localMcc.getCountryCode() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, localMcc.getCountryCode());
            }
        }
    }

    public f(RoomDatabase roomDatabase) {
        this.f66790a = roomDatabase;
    }

    public static List i() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List j(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM local_mcc");
        try {
            int iD = k.d(eVarD0, "id");
            int iD2 = k.d(eVarD0, "Country");
            int iD3 = k.d(eVarD0, "Mcc");
            int iD4 = k.d(eVarD0, "Iso");
            int iD5 = k.d(eVarD0, "CountryCode");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                arrayList.add(new LocalMcc((int) eVarD0.getLong(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5)));
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ LocalMcc k(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM local_mcc LIMIT 1");
        try {
            int iD = k.d(eVarD0, "id");
            int iD2 = k.d(eVarD0, "Country");
            int iD3 = k.d(eVarD0, "Mcc");
            int iD4 = k.d(eVarD0, "Iso");
            int iD5 = k.d(eVarD0, "CountryCode");
            LocalMcc localMcc = null;
            if (eVarD0.A0()) {
                localMcc = new LocalMcc((int) eVarD0.getLong(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5));
            }
            return localMcc;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List l(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM local_mcc WHERE Iso = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = k.d(eVarD0, "id");
            int iD2 = k.d(eVarD0, "Country");
            int iD3 = k.d(eVarD0, "Mcc");
            int iD4 = k.d(eVarD0, "Iso");
            int iD5 = k.d(eVarD0, "CountryCode");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                arrayList.add(new LocalMcc((int) eVarD0.getLong(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5)));
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit m(List list, z3.b bVar) throws Exception {
        this.f66791b.c(bVar, list);
        return Unit.f67061a;
    }

    @Override // ki.a
    public Object a(final List list, Continuation continuation) {
        list.getClass();
        return androidx.room.util.b.f(this.f66790a, false, true, new Function1() { // from class: ki.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f66788a.m(list, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // ki.a
    public Object b(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f66790a, true, false, new Function1() { // from class: ki.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return f.l(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // ki.a
    public Object c(Continuation continuation) {
        return androidx.room.util.b.f(this.f66790a, true, false, new Function1() { // from class: ki.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return f.j((z3.b) obj);
            }
        }, continuation);
    }

    @Override // ki.a
    public Object d(Continuation continuation) {
        return androidx.room.util.b.f(this.f66790a, true, false, new Function1() { // from class: ki.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return f.k((z3.b) obj);
            }
        }, continuation);
    }
}
