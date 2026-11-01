package com.bytedance.sdk.openadsdk.multipro.EjP;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class TKC implements com.bytedance.sdk.openadsdk.multipro.Sj {
    private Context Sj;

    private Context sP() {
        Context context = this.Sj;
        return context == null ? dNu.Sj() : context;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public int Sj(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        if (contentValues == null) {
            return 0;
        }
        Sj(uri, contentValues);
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public int Sj(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        String[] strArrSplit = uri.getPath().split("/");
        if (strArrSplit[2].equals("clean")) {
            sP.sP(sP(), uri.getQueryParameter("sp_file_name"));
            return 0;
        }
        String str2 = strArrSplit[3];
        if (sP.Sj(sP(), uri.getQueryParameter("sp_file_name"), str2)) {
            sP.sP(sP(), uri.getQueryParameter("sp_file_name"), str2);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public Cursor Sj(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        Map<String, ?> mapTKC;
        if (!uri.getPath().split("/")[2].equals("get_all") || (mapTKC = sP.TKC(sP(), uri.getQueryParameter("sp_file_name"))) == null) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"cursor_name", "cursor_type", "cursor_value"});
        for (String str3 : mapTKC.keySet()) {
            Object[] objArr = new Object[3];
            objArr[0] = str3;
            Object obj = mapTKC.get(str3);
            objArr[2] = obj;
            if (obj instanceof Boolean) {
                objArr[1] = "boolean";
            } else if (obj instanceof String) {
                objArr[1] = "string";
            } else if (obj instanceof Integer) {
                objArr[1] = "int";
            } else if (obj instanceof Long) {
                objArr[1] = "long";
            } else if (obj instanceof Float) {
                objArr[1] = "float";
            }
            matrixCursor.addRow(objArr);
        }
        return matrixCursor;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public Uri Sj(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        if (contentValues == null) {
            return null;
        }
        String str = uri.getPath().split("/")[3];
        Object obj = contentValues.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (obj != null) {
            sP.Sj(sP(), uri.getQueryParameter("sp_file_name"), str, obj);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    @NonNull
    public String Sj() {
        return "t_sp";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public String Sj(@NonNull Uri uri) {
        String[] strArrSplit = uri.getPath().split("/");
        String str = strArrSplit[2];
        String str2 = strArrSplit[3];
        return str.equals("contain") ? String.valueOf(sP.Sj(dNu.Sj(), uri.getQueryParameter("sp_file_name"), str2)) : sP.Sj(sP(), uri.getQueryParameter("sp_file_name"), str2, str);
    }
}
