package androidx.work.impl.model;

import androidx.room.RoomDatabase;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class v implements q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f15861c = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f15862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f15863b;

    public static final class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e statement, o entity) {
            Intrinsics.h(statement, "statement");
            Intrinsics.h(entity, "entity");
            statement.j(1, entity.f15825a);
            statement.c(2, entity.a());
            statement.c(3, entity.f15827c);
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a() {
            return CollectionsKt.l();
        }
    }

    public v(RoomDatabase __db) {
        Intrinsics.h(__db, "__db");
        this.f15862a = __db;
        this.f15863b = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final o j(String str, String str2, int i11, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            eVarD0.c(2, i11);
            return eVarD0.A0() ? new o(eVarD0.n0(androidx.room.util.k.d(eVarD0, "work_spec_id")), (int) eVarD0.getLong(androidx.room.util.k.d(eVarD0, "generation")), (int) eVarD0.getLong(androidx.room.util.k.d(eVarD0, "system_id"))) : null;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List k(String str, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                arrayList.add(eVarD0.n0(0));
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(v vVar, o oVar, z3.b _connection) throws Exception {
        Intrinsics.h(_connection, "_connection");
        vVar.f15863b.d(_connection, oVar);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    @Override // androidx.work.impl.model.q
    public /* synthetic */ o a(x xVar) {
        return p.a(this, xVar);
    }

    @Override // androidx.work.impl.model.q
    public o b(final String workSpecId, final int i11) {
        Intrinsics.h(workSpecId, "workSpecId");
        final String str = "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?";
        return (o) androidx.room.util.b.d(this.f15862a, true, false, new Function1() { // from class: androidx.work.impl.model.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return v.j(str, workSpecId, i11, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.q
    public List c() {
        final String str = "SELECT DISTINCT work_spec_id FROM SystemIdInfo";
        return (List) androidx.room.util.b.d(this.f15862a, true, false, new Function1() { // from class: androidx.work.impl.model.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return v.k(str, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.q
    public void d(final o systemIdInfo) {
        Intrinsics.h(systemIdInfo, "systemIdInfo");
        androidx.room.util.b.d(this.f15862a, false, true, new Function1() { // from class: androidx.work.impl.model.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return v.l(this.f15839a, systemIdInfo, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.q
    public void e(final String workSpecId) {
        Intrinsics.h(workSpecId, "workSpecId");
        final String str = "DELETE FROM SystemIdInfo where work_spec_id=?";
        androidx.room.util.b.d(this.f15862a, false, true, new Function1() { // from class: androidx.work.impl.model.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return v.m(str, workSpecId, (z3.b) obj);
            }
        });
    }
}
