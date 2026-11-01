package androidx.work.impl.model;

import androidx.room.RoomDatabase;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f15814c = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f15815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f15816b;

    public static final class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e statement, h entity) {
            Intrinsics.h(statement, "statement");
            Intrinsics.h(entity, "entity");
            statement.j(1, entity.a());
            Long lB = entity.b();
            if (lB == null) {
                statement.g(2);
            } else {
                statement.c(2, lB.longValue());
            }
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

    public l(RoomDatabase __db) {
        Intrinsics.h(__db, "__db");
        this.f15815a = __db;
        this.f15816b = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Long d(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            Long lValueOf = null;
            if (eVarD0.A0() && !eVarD0.isNull(0)) {
                lValueOf = Long.valueOf(eVarD0.getLong(0));
            }
            return lValueOf;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(l lVar, h hVar, z3.b _connection) throws Exception {
        Intrinsics.h(_connection, "_connection");
        lVar.f15816b.d(_connection, hVar);
        return Unit.f67061a;
    }

    @Override // androidx.work.impl.model.i
    public void a(final h preference) {
        Intrinsics.h(preference, "preference");
        androidx.room.util.b.d(this.f15815a, false, true, new Function1() { // from class: androidx.work.impl.model.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l.e(this.f15761a, preference, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.i
    public Long getLongValue(final String key) {
        Intrinsics.h(key, "key");
        final String str = "SELECT long_value FROM Preference where `key`=?";
        return (Long) androidx.room.util.b.d(this.f15815a, true, false, new Function1() { // from class: androidx.work.impl.model.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l.d(str, key, (z3.b) obj);
            }
        });
    }
}
