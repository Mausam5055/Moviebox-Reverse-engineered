package ij;

import a4.d;
import android.database.Cursor;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(d dVar, String str, String str2) {
        Cursor cursorI0 = dVar.i0("PRAGMA table_info(" + str + ")");
        try {
            int columnIndex = cursorI0.getColumnIndex("name");
            if (columnIndex < 0) {
                CloseableKt.a(cursorI0, null);
                return false;
            }
            while (cursorI0.moveToNext()) {
                if (Intrinsics.c(cursorI0.getString(columnIndex), str2)) {
                    CloseableKt.a(cursorI0, null);
                    return true;
                }
            }
            Unit unit = Unit.f67061a;
            CloseableKt.a(cursorI0, null);
            return false;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(cursorI0, th2);
                throw th3;
            }
        }
    }
}
