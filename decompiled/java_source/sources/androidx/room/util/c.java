package androidx.room.util;

import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
abstract /* synthetic */ class c {
    public static final void a(z3.b connection) {
        Intrinsics.h(connection, "connection");
        List listC = CollectionsKt.c();
        z3.e eVarD0 = connection.D0("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (eVarD0.A0()) {
            try {
                listC.add(eVarD0.n0(0));
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    AutoCloseableKt.a(eVarD0, th2);
                    throw th3;
                }
            }
        }
        Unit unit = Unit.f67061a;
        AutoCloseableKt.a(eVarD0, null);
        for (String str : CollectionsKt.a(listC)) {
            if (StringsKt.W(str, "room_fts_content_sync_", false, 2, null)) {
                z3.a.a(connection, "DROP TRIGGER IF EXISTS " + str);
            }
        }
    }
}
