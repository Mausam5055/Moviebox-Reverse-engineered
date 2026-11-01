package androidx.work.impl;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class h1 extends y3.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f15687c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(Context context) {
        super(9, 10);
        Intrinsics.h(context, "context");
        this.f15687c = context;
    }

    @Override // y3.c
    public void a(a4.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
        androidx.work.impl.utils.z.c(this.f15687c, db2);
        androidx.work.impl.utils.n.c(this.f15687c, db2);
    }
}
