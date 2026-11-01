package y3;

import a4.d;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78824b;

    public c(int i11, int i12) {
        this.f78823a = i11;
        this.f78824b = i12;
    }

    public void a(d db2) {
        Intrinsics.h(db2, "db");
        throw new NotImplementedError("Migration functionality with a SupportSQLiteDatabase (without a provided SQLiteDriver) requires overriding the migrate(SupportSQLiteDatabase) function.");
    }

    public void b(z3.b connection) {
        Intrinsics.h(connection, "connection");
        if (!(connection instanceof androidx.room.driver.a)) {
            throw new NotImplementedError("Migration functionality with a provided SQLiteDriver requires overriding the migrate(SQLiteConnection) function.");
        }
        a(((androidx.room.driver.a) connection).d());
    }
}
