package com.bytedance.sdk.openadsdk.multipro.Sj;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.HiB;
import com.bytedance.sdk.openadsdk.core.dNu;

/* JADX INFO: loaded from: classes3.dex */
public class sP implements com.bytedance.sdk.openadsdk.multipro.Sj {
    private static final Object sP = new Object();
    private Context Sj;

    private Context sP() {
        Context context = this.Sj;
        return context == null ? dNu.Sj() : context;
    }

    private boolean sP(Uri uri) {
        return uri == null || TextUtils.isEmpty(uri.getPath());
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public int Sj(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        synchronized (sP) {
            try {
                if (sP(uri)) {
                    return 0;
                }
                String[] strArrSplit = uri.getPath().split("/");
                if (strArrSplit != null && strArrSplit.length >= 4) {
                    String str2 = strArrSplit[2];
                    String str3 = strArrSplit[3];
                    if (!"ttopensdk.db".equals(str2)) {
                        return 0;
                    }
                    return HiB.Sj(sP()).Sj().Sj(str3, contentValues, str, strArr);
                }
                return 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public int Sj(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        synchronized (sP) {
            try {
                if (sP(uri)) {
                    return 0;
                }
                String[] strArrSplit = uri.getPath().split("/");
                if (strArrSplit != null && strArrSplit.length >= 4) {
                    String str2 = strArrSplit[2];
                    String str3 = strArrSplit[3];
                    if (!"ttopensdk.db".equals(str2)) {
                        return 0;
                    }
                    return HiB.Sj(sP()).Sj().Sj(str3, str, strArr);
                }
                return 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public Cursor Sj(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        synchronized (sP) {
            try {
                if (sP(uri)) {
                    return null;
                }
                String[] strArrSplit = uri.getPath().split("/");
                if (strArrSplit != null && strArrSplit.length >= 4) {
                    String str3 = strArrSplit[2];
                    String str4 = strArrSplit[3];
                    if (!"ttopensdk.db".equals(str3)) {
                        return null;
                    }
                    return HiB.Sj(sP()).Sj().Sj(str4, strArr, str, strArr2, null, null, str2);
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public Uri Sj(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        synchronized (sP) {
            try {
                if (sP(uri)) {
                    return null;
                }
                String[] strArrSplit = uri.getPath().split("/");
                if (strArrSplit != null && strArrSplit.length >= 4) {
                    String str = strArrSplit[2];
                    String str2 = strArrSplit[3];
                    if ("ttopensdk.db".equals(str)) {
                        HiB.Sj(sP()).Sj().Sj(str2, (String) null, contentValues);
                    }
                    return null;
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    @NonNull
    public String Sj() {
        return "t_db";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public String Sj(@NonNull Uri uri) {
        synchronized (sP) {
            try {
                if (sP(uri)) {
                    return null;
                }
                String[] strArrSplit = uri.getPath().split("/");
                if (strArrSplit != null && strArrSplit.length >= 5) {
                    String str = strArrSplit[2];
                    String str2 = strArrSplit[4];
                    if ("ttopensdk.db".equals(str)) {
                        if ("execSQL".equals(str2)) {
                            String queryParameter = uri.getQueryParameter("sql");
                            if (!TextUtils.isEmpty(queryParameter)) {
                                HiB.Sj(sP()).Sj().Sj(Uri.decode(queryParameter));
                            }
                        } else if ("transactionBegin".equals(str2)) {
                            HiB.Sj(sP()).Sj().sP();
                        } else if ("transactionSetSuccess".equals(str2)) {
                            HiB.Sj(sP()).Sj().TKC();
                        } else if ("transactionEnd".equals(str2)) {
                            HiB.Sj(sP()).Sj().EjP();
                        }
                    }
                    return null;
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
