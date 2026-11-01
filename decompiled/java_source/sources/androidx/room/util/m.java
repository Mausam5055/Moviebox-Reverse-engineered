package androidx.room.util;

import android.os.Build;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
abstract /* synthetic */ class m {
    public static final int a(z3.e eVar, String name) {
        Intrinsics.h(eVar, "<this>");
        Intrinsics.h(name, "name");
        int iB = k.b(eVar, name);
        if (iB >= 0) {
            return iB;
        }
        int iB2 = k.b(eVar, '`' + name + '`');
        return iB2 >= 0 ? iB2 : b(eVar, name);
    }

    private static final int b(z3.e eVar, String str) {
        if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
            int columnCount = eVar.getColumnCount();
            String str2 = '.' + str;
            String str3 = '.' + str + '`';
            for (int i11 = 0; i11 < columnCount; i11++) {
                String columnName = eVar.getColumnName(i11);
                if (columnName.length() >= str.length() + 2) {
                    if (StringsKt.G(columnName, str2, false, 2, null)) {
                        return i11;
                    }
                    if (columnName.charAt(0) == '`' && StringsKt.G(columnName, str3, false, 2, null)) {
                        return i11;
                    }
                }
            }
        }
        return -1;
    }
}
