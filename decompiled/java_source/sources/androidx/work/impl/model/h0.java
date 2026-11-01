package androidx.work.impl.model;

import androidx.room.RoomDatabase;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class h0 implements e0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f15754c = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f15755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f15756b;

    public static final class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        public /* bridge */ /* synthetic */ void a(z3.e eVar, Object obj) {
            android.support.v4.media.session.c.a(obj);
            f(eVar, null);
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        protected void f(z3.e statement, d0 entity) {
            Intrinsics.h(statement, "statement");
            Intrinsics.h(entity, "entity");
            throw null;
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

    public h0(RoomDatabase __db) {
        Intrinsics.h(__db, "__db");
        this.f15755a = __db;
        this.f15756b = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(String str, String str2, z3.b _connection) {
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
    public static final Unit f(String str, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    @Override // androidx.work.impl.model.e0
    public void b(final String workSpecId) {
        Intrinsics.h(workSpecId, "workSpecId");
        final String str = "DELETE from WorkProgress where work_spec_id=?";
        androidx.room.util.b.d(this.f15755a, false, true, new Function1() { // from class: androidx.work.impl.model.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h0.e(str, workSpecId, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.e0
    public void c() {
        final String str = "DELETE FROM WorkProgress";
        androidx.room.util.b.d(this.f15755a, false, true, new Function1() { // from class: androidx.work.impl.model.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h0.f(str, (z3.b) obj);
            }
        });
    }
}
