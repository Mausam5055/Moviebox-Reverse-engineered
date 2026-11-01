package androidx.room.driver;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements z3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a4.d f14660a;

    public a(a4.d db2) {
        Intrinsics.h(db2, "db");
        this.f14660a = db2;
    }

    @Override // z3.b, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f14660a.close();
    }

    public final a4.d d() {
        return this.f14660a;
    }

    @Override // z3.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public d D0(String sql) {
        Intrinsics.h(sql, "sql");
        return d.f14663d.a(this.f14660a, sql);
    }
}
