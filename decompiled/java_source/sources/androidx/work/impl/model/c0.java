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
public final class c0 implements z {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f15726c = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f15727a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f15728b;

    public static final class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e statement, y entity) {
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

    public c0(RoomDatabase __db) {
        Intrinsics.h(__db, "__db");
        this.f15727a = __db;
        this.f15728b = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List e(String str, String str2, z3.b _connection) {
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
    public static final Unit f(c0 c0Var, y yVar, z3.b _connection) throws Exception {
        Intrinsics.h(_connection, "_connection");
        c0Var.f15728b.d(_connection, yVar);
        return Unit.f67061a;
    }

    @Override // androidx.work.impl.model.z
    public void a(final y workName) {
        Intrinsics.h(workName, "workName");
        androidx.room.util.b.d(this.f15727a, false, true, new Function1() { // from class: androidx.work.impl.model.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return c0.f(this.f15711a, workName, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.z
    public List b(final String workSpecId) {
        Intrinsics.h(workSpecId, "workSpecId");
        final String str = "SELECT name FROM workname WHERE work_spec_id=?";
        return (List) androidx.room.util.b.d(this.f15727a, true, false, new Function1() { // from class: androidx.work.impl.model.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return c0.e(str, workSpecId, (z3.b) obj);
            }
        });
    }
}
