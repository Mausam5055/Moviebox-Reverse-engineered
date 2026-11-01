package com.bytedance.sdk.openadsdk.multipro.Sj;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.vS;
import com.bytedance.sdk.openadsdk.core.HiB;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.multipro.EjP;
import com.bytedance.sdk.openadsdk.utils.Mts;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    public static vS Sj;
    private static final ConcurrentHashMap<String, Object> sP = new ConcurrentHashMap<>();

    public static int Sj(Context context, String str, ContentValues contentValues, String str2, String[] strArr) {
        if (contentValues != null && !TextUtils.isEmpty(str)) {
            synchronized (Sj(str)) {
                try {
                    try {
                        if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                            return HiB.Sj(context).Sj().Sj(str, contentValues, str2, strArr);
                        }
                        vS vSVarSj = Sj(context);
                        if (vSVarSj != null) {
                            return vSVarSj.Sj(Uri.parse(Sj() + str), contentValues, str2, strArr);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                } catch (Throwable unused) {
                }
            }
        }
        return 0;
    }

    public static int Sj(Context context, String str, String str2, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        synchronized (Sj(str)) {
            try {
                try {
                    if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                        return HiB.Sj(context).Sj().Sj(str, str2, strArr);
                    }
                    vS vSVarSj = Sj(context);
                    if (vSVarSj != null) {
                        return vSVarSj.Sj(Uri.parse(Sj() + str), str2, strArr);
                    }
                    return 0;
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0009 A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:3:0x0002, B:4:0x0005, B:6:0x0009, B:8:0x000f, B:9:0x001f), top: B:14:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:8:0x000f A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:3:0x0002, B:4:0x0005, B:6:0x0009, B:8:0x000f, B:9:0x001f), top: B:14:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:9:0x001f A[Catch: all -> 0x0026, TRY_LEAVE, TryCatch #0 {all -> 0x0026, blocks: (B:3:0x0002, B:4:0x0005, B:6:0x0009, B:8:0x000f, B:9:0x001f), top: B:14:0x0002 }] */
    public static vS Sj(Context context) {
        if (context == null) {
            try {
                dNu.Sj();
                if (Sj == null) {
                    if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                        Sj = vS.Sj.Sj(com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj().Sj(5));
                    } else {
                        Sj = com.bytedance.sdk.openadsdk.multipro.aidl.Sj.vS.sP();
                    }
                }
            } catch (Throwable unused) {
                Mts.Dq("binder error");
            }
        } else if (Sj == null) {
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                Sj = vS.Sj.Sj(com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj().Sj(5));
            } else {
                Sj = com.bytedance.sdk.openadsdk.multipro.aidl.Sj.vS.sP();
            }
        }
        return Sj;
    }

    private static Object Sj(String str) {
        Object obj;
        ConcurrentHashMap<String, Object> concurrentHashMap = sP;
        Object obj2 = concurrentHashMap.get(str);
        if (obj2 != null) {
            return obj2;
        }
        synchronized (Sj.class) {
            try {
                obj = concurrentHashMap.get(str);
                if (obj == null) {
                    obj = new Object();
                    concurrentHashMap.put(str, obj);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return obj;
    }

    private static String Sj() {
        return EjP.sP + "/t_db/ttopensdk.db/";
    }

    public static Map<String, List<String>> Sj(Context context, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (Sj(str)) {
            try {
                try {
                    if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                        return Sj(HiB.Sj(context).Sj().Sj(str, strArr, str2, strArr2, str3, str4, str5));
                    }
                    vS vSVarSj = Sj(context);
                    if (vSVarSj != null) {
                        return vSVarSj.Sj(Uri.parse(Sj() + str), strArr, str2, strArr2, str5);
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static Map<String, List<String>> Sj(Cursor cursor) {
        HashMap map = new HashMap();
        if (cursor != null) {
            try {
                String[] columnNames = cursor.getColumnNames();
                while (cursor.getCount() > 0 && cursor.moveToNext()) {
                    for (String str : columnNames) {
                        if (!map.containsKey(str)) {
                            map.put(str, new LinkedList());
                        }
                        ((List) map.get(str)).add(cursor.getString(cursor.getColumnIndex(str)));
                    }
                }
            } catch (Throwable unused) {
            }
            cursor.close();
        }
        return map;
    }

    public static void Sj(Context context, String str, ContentValues contentValues) {
        if (contentValues == null || TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (Sj(str)) {
            try {
                try {
                    if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                        HiB.Sj(context).Sj().Sj(str, (String) null, contentValues);
                        return;
                    }
                    vS vSVarSj = Sj(context);
                    if (vSVarSj != null) {
                        vSVarSj.Sj(Uri.parse(Sj() + str), contentValues);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (Throwable unused) {
            }
        }
    }
}
