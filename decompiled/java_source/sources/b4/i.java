package b4;

import android.database.sqlite.SQLiteProgram;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public class i implements a4.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SQLiteProgram f16222a;

    public i(SQLiteProgram delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f16222a = delegate;
    }

    @Override // a4.f
    public void a(int i11, double d11) {
        this.f16222a.bindDouble(i11, d11);
    }

    @Override // a4.f
    public void c(int i11, long j11) {
        this.f16222a.bindLong(i11, j11);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f16222a.close();
    }

    @Override // a4.f
    public void e(int i11, byte[] value) {
        Intrinsics.h(value, "value");
        this.f16222a.bindBlob(i11, value);
    }

    @Override // a4.f
    public void g(int i11) {
        this.f16222a.bindNull(i11);
    }

    @Override // a4.f
    public void y(int i11, String value) {
        Intrinsics.h(value, "value");
        this.f16222a.bindString(i11, value);
    }
}
