package com.bytedance.sdk.openadsdk.multipro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class HiB implements Sj {
    private static volatile HiB Sj;
    private static final List<Sj> TKC;
    private static WeakReference<Context> sP;

    static {
        List<Sj> listSynchronizedList = Collections.synchronizedList(new ArrayList());
        TKC = listSynchronizedList;
        listSynchronizedList.add(new com.bytedance.sdk.openadsdk.multipro.EjP.TKC());
        listSynchronizedList.add(new com.bytedance.sdk.openadsdk.multipro.Sj.sP());
        listSynchronizedList.add(new com.bytedance.sdk.openadsdk.multipro.TKC.Sj());
        listSynchronizedList.add(new com.bytedance.sdk.openadsdk.EjP.Sj.HiB(new com.bytedance.sdk.component.vS.Sj.sP.sP.sP()));
        Iterator<Sj> it = listSynchronizedList.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    private HiB() {
    }

    public static HiB Sj(Context context) {
        if (context != null) {
            sP = new WeakReference<>(context.getApplicationContext());
        }
        if (Sj == null) {
            synchronized (HiB.class) {
                try {
                    if (Sj == null) {
                        Sj = new HiB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    private boolean TKC(Uri uri) {
        return true;
    }

    private Sj sP(Uri uri) {
        if (uri == null || !TKC(uri)) {
            return null;
        }
        String[] strArrSplit = uri.getPath().split("/");
        if (strArrSplit.length < 2) {
            return null;
        }
        String str = strArrSplit[1];
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (Sj sj2 : TKC) {
            if (str.equals(sj2.Sj())) {
                return sj2;
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public int Sj(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        try {
            Sj sjSP = sP(uri);
            if (sjSP != null) {
                return sjSP.Sj(uri, contentValues, str, strArr);
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public int Sj(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        try {
            Sj sjSP = sP(uri);
            if (sjSP != null) {
                return sjSP.Sj(uri, str, strArr);
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public Cursor Sj(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        try {
            Sj sjSP = sP(uri);
            if (sjSP != null) {
                return sjSP.Sj(uri, strArr, str, strArr2, str2);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public Uri Sj(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        try {
            Sj sjSP = sP(uri);
            if (sjSP != null) {
                return sjSP.Sj(uri, contentValues);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    @NonNull
    public String Sj() {
        return "";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public String Sj(@NonNull Uri uri) {
        try {
            Sj sjSP = sP(uri);
            if (sjSP != null) {
                return sjSP.Sj(uri);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
