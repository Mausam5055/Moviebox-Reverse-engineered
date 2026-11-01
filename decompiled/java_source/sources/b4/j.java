package b4;

import android.database.sqlite.SQLiteStatement;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends i implements a4.h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SQLiteStatement f16223b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(SQLiteStatement delegate) {
        super(delegate);
        Intrinsics.h(delegate, "delegate");
        this.f16223b = delegate;
    }

    @Override // a4.h
    public int F() {
        return this.f16223b.executeUpdateDelete();
    }

    @Override // a4.h
    public long R() {
        return this.f16223b.executeInsert();
    }

    @Override // a4.h
    public void execute() {
        this.f16223b.execute();
    }
}
