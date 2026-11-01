package b4;

import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements a4.e.c {
    @Override // a4.e.c
    public a4.e a(a4.e.b configuration) {
        Intrinsics.h(configuration, "configuration");
        return new FrameworkSQLiteOpenHelper(configuration.f156a, configuration.f157b, configuration.f158c, configuration.f159d, configuration.f160e);
    }
}
