package androidx.room.util;

import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Build;
import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.collections.ArraysKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static final Cursor a(Cursor c11) {
        Intrinsics.h(c11, "c");
        try {
            MatrixCursor matrixCursor = new MatrixCursor(c11.getColumnNames(), c11.getCount());
            while (c11.moveToNext()) {
                Object[] objArr = new Object[c11.getColumnCount()];
                int columnCount = c11.getColumnCount();
                for (int i11 = 0; i11 < columnCount; i11++) {
                    int type = c11.getType(i11);
                    if (type == 0) {
                        objArr[i11] = null;
                    } else if (type == 1) {
                        objArr[i11] = Long.valueOf(c11.getLong(i11));
                    } else if (type == 2) {
                        objArr[i11] = Double.valueOf(c11.getDouble(i11));
                    } else if (type == 3) {
                        objArr[i11] = c11.getString(i11);
                    } else {
                        if (type != 4) {
                            throw new IllegalStateException();
                        }
                        objArr[i11] = c11.getBlob(i11);
                    }
                }
                matrixCursor.addRow(objArr);
            }
            CloseableKt.a(c11, null);
            return matrixCursor;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(c11, th2);
                throw th3;
            }
        }
    }

    private static final int b(Cursor cursor, String str) {
        if (Build.VERSION.SDK_INT > 25 || str.length() == 0) {
            return -1;
        }
        String[] columnNames = cursor.getColumnNames();
        Intrinsics.e(columnNames);
        return c(columnNames, str);
    }

    public static final int c(String[] columnNames, String name) {
        Intrinsics.h(columnNames, "columnNames");
        Intrinsics.h(name, "name");
        String str = '.' + name;
        String str2 = '.' + name + '`';
        int length = columnNames.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            String str3 = columnNames[i11];
            int i13 = i12 + 1;
            if (str3.length() >= name.length() + 2) {
                if (StringsKt.G(str3, str, false, 2, null)) {
                    return i12;
                }
                if (str3.charAt(0) == '`' && StringsKt.G(str3, str2, false, 2, null)) {
                    return i12;
                }
            }
            i11++;
            i12 = i13;
        }
        return -1;
    }

    public static final int d(Cursor c11, String name) {
        Intrinsics.h(c11, "c");
        Intrinsics.h(name, "name");
        int columnIndex = c11.getColumnIndex(name);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = c11.getColumnIndex('`' + name + '`');
        return columnIndex2 >= 0 ? columnIndex2 : b(c11, name);
    }

    public static final int e(Cursor c11, String name) {
        String strP0;
        Intrinsics.h(c11, "c");
        Intrinsics.h(name, "name");
        int iD = d(c11, name);
        if (iD >= 0) {
            return iD;
        }
        try {
            String[] columnNames = c11.getColumnNames();
            Intrinsics.g(columnNames, "getColumnNames(...)");
            strP0 = ArraysKt.p0(columnNames, null, null, null, 0, null, null, 63, null);
        } catch (Exception unused) {
            strP0 = TmcConstants.ROUTE_UNKNOWN;
        }
        throw new IllegalArgumentException("column '" + name + "' does not exist. Available columns: " + strP0);
    }
}
