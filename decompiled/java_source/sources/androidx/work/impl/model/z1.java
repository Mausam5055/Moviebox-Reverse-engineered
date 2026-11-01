package androidx.work.impl.model;

import androidx.room.RoomDatabase;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class z1 implements v1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f15887c = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f15888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f15889b;

    public static final class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e statement, t1 entity) {
            Intrinsics.h(statement, "statement");
            Intrinsics.h(entity, "entity");
            statement.j(1, entity.a());
            statement.j(2, entity.b());
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

    public z1(RoomDatabase __db) {
        Intrinsics.h(__db, "__db");
        this.f15888a = __db;
        this.f15889b = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(String str, String str2, z3.b _connection) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final List i(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
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
    public static final Unit j(z1 z1Var, t1 t1Var, z3.b _connection) throws Exception {
        Intrinsics.h(_connection, "_connection");
        z1Var.f15889b.d(_connection, t1Var);
        return Unit.f67061a;
    }

    @Override // androidx.work.impl.model.v1
    public List a(final String id2) {
        Intrinsics.h(id2, "id");
        final String str = "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?";
        return (List) androidx.room.util.b.d(this.f15888a, true, false, new Function1() { // from class: androidx.work.impl.model.w1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return z1.i(str, id2, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.v1
    public void b(final String id2) {
        Intrinsics.h(id2, "id");
        final String str = "DELETE FROM worktag WHERE work_spec_id=?";
        androidx.room.util.b.d(this.f15888a, false, true, new Function1() { // from class: androidx.work.impl.model.y1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return z1.h(str, id2, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.v1
    public void c(final t1 workTag) {
        Intrinsics.h(workTag, "workTag");
        androidx.room.util.b.d(this.f15888a, false, true, new Function1() { // from class: androidx.work.impl.model.x1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return z1.j(this.f15876a, workTag, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.v1
    public /* synthetic */ void d(String str, Set set) {
        u1.a(this, str, set);
    }
}
