package com.bytedance.sdk.openadsdk.core.TEQ.Sj;

import android.content.ContentValues;
import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    public static int Sj = 20;
    private static volatile TKC sP;
    private final Object TKC = new Object();
    private final LruCache<String, Sj> EjP = new LruCache<String, Sj>(Sj) { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.TKC.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public int sizeOf(String str, Sj sj2) {
            return 1;
        }
    };

    private TKC() {
    }

    public static String EjP() {
        return "ALTER TABLE ugen_template ADD COLUMN rit TEXT ";
    }

    public static TKC Sj() {
        if (sP == null) {
            synchronized (TKC.class) {
                try {
                    if (sP == null) {
                        sP = new TKC();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    public static String TKC() {
        return new StringBuilder("CREATE TABLE IF NOT EXISTS ugen_template (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , rit TEXT , update_time TEXT)").toString();
    }

    private void sP(String str) {
        if (!TextUtils.isEmpty(str) && this.EjP.size() > 0) {
            synchronized (this.TKC) {
                this.EjP.remove(str);
            }
        }
    }

    Sj Sj(String str, String str2) {
        Sj sj2;
        Sj Sj2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.TKC) {
            sj2 = this.EjP.get(str);
        }
        if (sj2 != null) {
            if (TextUtils.equals(str2, sj2.sP())) {
                return sj2;
            }
            sP(str2);
            return null;
        }
        com.bytedance.sdk.openadsdk.multipro.aidl.TKC tkc = new com.bytedance.sdk.openadsdk.multipro.aidl.TKC(com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(dNu.Sj(), "ugen_template", null, "id=? AND md5=?", new String[]{str, str2}, null, null, null));
        try {
            if (tkc.moveToFirst()) {
                do {
                    int columnIndex = tkc.getColumnIndex("id");
                    int columnIndex2 = tkc.getColumnIndex("md5");
                    int columnIndex3 = tkc.getColumnIndex("url");
                    int columnIndex4 = tkc.getColumnIndex("data");
                    int columnIndex5 = tkc.getColumnIndex(PushConstants.PROVIDER_FIELD_UPDATE_TIME);
                    if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex5 != -1 && columnIndex4 != -1) {
                        int columnIndex6 = tkc.getColumnIndex("rit");
                        String string = tkc.getString(columnIndex);
                        String string2 = tkc.getString(columnIndex2);
                        String string3 = tkc.getString(columnIndex3);
                        String string4 = tkc.getString(columnIndex4);
                        if (TextUtils.isEmpty(string4)) {
                            tkc.close();
                            return null;
                        }
                        Sj2 = new Sj().Sj(string).sP(string2).EjP(string4).TKC(string3).HiB(columnIndex6 != -1 ? tkc.getString(columnIndex6) : null).Sj(Long.valueOf(tkc.getLong(columnIndex5)));
                        synchronized (this.TKC) {
                            this.EjP.put(string, Sj2);
                        }
                    }
                    tkc.close();
                    return null;
                } while (tkc.moveToNext());
                tkc.close();
                return Sj2;
            }
        } catch (Throwable th2) {
            try {
                sU.Sj("UGTmplDbHelper", "getGgenTemplate error", th2);
            } finally {
                tkc.close();
            }
        }
        return null;
    }

    Set<Sj> Sj(String str) {
        Sj sj2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashSet hashSet = new HashSet();
        com.bytedance.sdk.openadsdk.multipro.aidl.TKC tkc = new com.bytedance.sdk.openadsdk.multipro.aidl.TKC(com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(dNu.Sj(), "ugen_template", null, "rit=?", new String[]{str}, null, null, null));
        try {
            if (tkc.moveToFirst()) {
                do {
                    int columnIndex = tkc.getColumnIndex("id");
                    if (columnIndex != -1) {
                        String string = tkc.getString(columnIndex);
                        if (!TextUtils.isEmpty(string)) {
                            synchronized (this.TKC) {
                                sj2 = this.EjP.get(string);
                            }
                            if (sj2 != null) {
                                hashSet.add(sj2);
                            } else {
                                Sj sj3 = new Sj();
                                int columnIndex2 = tkc.getColumnIndex("data");
                                if (columnIndex2 != -1) {
                                    String string2 = tkc.getString(columnIndex2);
                                    if (!TextUtils.isEmpty(string2)) {
                                        sj3.EjP(string2);
                                        sj3.Sj(string);
                                        sj3.HiB(str);
                                        int columnIndex3 = tkc.getColumnIndex("md5");
                                        int columnIndex4 = tkc.getColumnIndex("url");
                                        int columnIndex5 = tkc.getColumnIndex(PushConstants.PROVIDER_FIELD_UPDATE_TIME);
                                        if (columnIndex3 != -1) {
                                            sj3.sP(tkc.getString(columnIndex3));
                                        }
                                        if (columnIndex4 != -1) {
                                            sj3.TKC(tkc.getString(columnIndex4));
                                        }
                                        if (columnIndex5 != -1) {
                                            sj3.Sj(Long.valueOf(tkc.getLong(columnIndex5)));
                                        }
                                        hashSet.add(sj3);
                                        synchronized (this.TKC) {
                                            this.EjP.put(string, sj3);
                                        }
                                    }
                                }
                            }
                        }
                    }
                } while (tkc.moveToNext());
            }
        } catch (Throwable th2) {
            try {
                sU.Sj("UGTmplDbHelper", "getUgenTemplateFormRit error", th2);
            } finally {
                tkc.close();
            }
        }
        return hashSet;
    }

    void Sj(Sj sj2) {
        if (sj2 == null || TextUtils.isEmpty(sj2.Sj())) {
            return;
        }
        com.bytedance.sdk.openadsdk.multipro.aidl.TKC tkc = new com.bytedance.sdk.openadsdk.multipro.aidl.TKC(com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(dNu.Sj(), "ugen_template", null, "id=?", new String[]{sj2.Sj()}, null, null, null));
        boolean z10 = tkc.getCount() > 0;
        try {
            tkc.close();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", sj2.Sj());
            contentValues.put("md5", sj2.sP());
            contentValues.put("url", sj2.TKC());
            contentValues.put("data", sj2.HiB());
            contentValues.put("rit", sj2.vS());
            contentValues.put(PushConstants.PROVIDER_FIELD_UPDATE_TIME, sj2.EjP());
            if (z10) {
                com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(dNu.Sj(), "ugen_template", contentValues, "id=?", new String[]{sj2.Sj()});
            } else {
                com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(dNu.Sj(), "ugen_template", contentValues);
            }
            synchronized (this.TKC) {
                this.EjP.put(sj2.Sj(), sj2);
            }
        } catch (Throwable unused) {
        }
    }

    void Sj(Set<String> set) {
        if (set == null || set.isEmpty()) {
            return;
        }
        String[] strArr = (String[]) set.toArray(new String[set.size()]);
        if (strArr.length > 0) {
            for (String str : strArr) {
                sP(str);
                com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(dNu.Sj(), "ugen_template", "id=?", new String[]{str});
            }
        }
    }

    List<Sj> sP() {
        ArrayList arrayList = new ArrayList();
        com.bytedance.sdk.openadsdk.multipro.aidl.TKC tkc = new com.bytedance.sdk.openadsdk.multipro.aidl.TKC(com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(dNu.Sj(), "ugen_template", null, null, null, null, null, null));
        try {
            if (tkc.moveToFirst()) {
                do {
                    int columnIndex = tkc.getColumnIndex("id");
                    int columnIndex2 = tkc.getColumnIndex("md5");
                    int columnIndex3 = tkc.getColumnIndex("url");
                    int columnIndex4 = tkc.getColumnIndex("data");
                    int columnIndex5 = tkc.getColumnIndex(PushConstants.PROVIDER_FIELD_UPDATE_TIME);
                    if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex5 != -1 && columnIndex4 != -1) {
                        int columnIndex6 = tkc.getColumnIndex("rit");
                        String string = columnIndex6 != -1 ? tkc.getString(columnIndex6) : null;
                        String string2 = tkc.getString(columnIndex);
                        String string3 = tkc.getString(columnIndex2);
                        String string4 = tkc.getString(columnIndex3);
                        Sj Sj2 = new Sj().Sj(string2).sP(string3).TKC(string4).EjP(tkc.getString(columnIndex4)).HiB(string).Sj(Long.valueOf(tkc.getLong(columnIndex5)));
                        arrayList.add(Sj2);
                        synchronized (this.TKC) {
                            this.EjP.put(string2, Sj2);
                        }
                    }
                } while (tkc.moveToNext());
            }
        } catch (Throwable th2) {
            try {
                sU.Sj("UGTmplDbHelper", "getUgenTemplate error", th2);
            } finally {
                tkc.close();
            }
        }
        return arrayList;
    }
}
