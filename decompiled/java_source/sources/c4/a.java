package c4;

import android.database.sqlite.SQLiteDatabase;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import z3.e;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements z3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SQLiteDatabase f16987a;

    public a(SQLiteDatabase db2) {
        Intrinsics.h(db2, "db");
        this.f16987a = db2;
    }

    @Override // z3.b
    public e D0(String sql) {
        Intrinsics.h(sql, "sql");
        if (this.f16987a.isOpen()) {
            return c.f16988d.a(this.f16987a, sql);
        }
        z3.a.b(21, "connection is closed");
        throw new KotlinNothingValueException();
    }

    @Override // z3.b, java.lang.AutoCloseable
    public void close() {
        this.f16987a.close();
    }

    public final SQLiteDatabase d() {
        return this.f16987a;
    }
}
