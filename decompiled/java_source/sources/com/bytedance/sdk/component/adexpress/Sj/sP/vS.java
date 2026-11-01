package com.bytedance.sdk.component.adexpress.Sj.sP;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class vS {
    public static int Sj = 20;
    private static volatile vS sP;
    private volatile ConcurrentHashMap<String, com.bytedance.sdk.component.adexpress.Sj.TKC.TKC> HiB;
    private final Object EjP = new Object();
    private AtomicBoolean vS = new AtomicBoolean(false);
    private LruCache<String, com.bytedance.sdk.component.adexpress.Sj.TKC.sP> Jcg = new LruCache<String, com.bytedance.sdk.component.adexpress.Sj.TKC.sP>(Sj) { // from class: com.bytedance.sdk.component.adexpress.Sj.sP.vS.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public int sizeOf(String str, com.bytedance.sdk.component.adexpress.Sj.TKC.sP sPVar) {
            return 1;
        }
    };
    private Set<String> TKC = Collections.synchronizedSet(new HashSet());

    private vS() {
    }

    private void EjP(String str) {
        LruCache<String, com.bytedance.sdk.component.adexpress.Sj.TKC.sP> lruCache;
        if (TextUtils.isEmpty(str) || (lruCache = this.Jcg) == null || lruCache.size() <= 0) {
            return;
        }
        synchronized (this.EjP) {
            this.Jcg.remove(str);
        }
    }

    public static vS Sj() {
        if (sP == null) {
            synchronized (vS.class) {
                try {
                    if (sP == null) {
                        sP = new vS();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    public static void Sj(int i11) {
        Sj = i11;
    }

    public static String TKC() {
        return new StringBuilder("CREATE TABLE IF NOT EXISTS template_diff_new (_id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT ,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , version TEXT , update_time TEXT)").toString();
    }

    com.bytedance.sdk.component.adexpress.Sj.TKC.sP Sj(String str) {
        com.bytedance.sdk.component.adexpress.Sj.TKC.sP sPVar;
        com.bytedance.sdk.component.adexpress.Sj.TKC.sP sPVarSj;
        if (TextUtils.isEmpty(str) || com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().sP() == null) {
            return null;
        }
        synchronized (this.EjP) {
            sPVar = this.Jcg.get(String.valueOf(str));
        }
        if (sPVar != null) {
            return sPVar;
        }
        Cursor cursorSj = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().sP().Sj("template_diff_new", null, "id=?", new String[]{str}, null, null, null);
        if (cursorSj != null) {
            try {
                if (cursorSj.moveToFirst()) {
                    do {
                        String string = cursorSj.getString(cursorSj.getColumnIndex("rit"));
                        String string2 = cursorSj.getString(cursorSj.getColumnIndex("id"));
                        String string3 = cursorSj.getString(cursorSj.getColumnIndex("md5"));
                        String string4 = cursorSj.getString(cursorSj.getColumnIndex("url"));
                        String string5 = cursorSj.getString(cursorSj.getColumnIndex("data"));
                        String string6 = cursorSj.getString(cursorSj.getColumnIndex("version"));
                        sPVarSj = new com.bytedance.sdk.component.adexpress.Sj.TKC.sP().Sj(string).sP(string2).TKC(string3).EjP(string4).HiB(string5).vS(string6).Sj(Long.valueOf(cursorSj.getLong(cursorSj.getColumnIndex(PushConstants.PROVIDER_FIELD_UPDATE_TIME))));
                        synchronized (this.EjP) {
                            this.Jcg.put(string2, sPVarSj);
                        }
                        this.TKC.add(string2);
                    } while (cursorSj.moveToNext());
                    cursorSj.close();
                    return sPVarSj;
                }
            } catch (Throwable unused) {
            }
            cursorSj.close();
        }
        return null;
    }

    void Sj(com.bytedance.sdk.component.adexpress.Sj.TKC.sP sPVar, boolean z10) {
        if (sPVar == null || com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().sP() == null || TextUtils.isEmpty(sPVar.sP())) {
            return;
        }
        Cursor cursorSj = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().sP().Sj("template_diff_new", null, "id=?", new String[]{sPVar.sP()}, null, null, null);
        boolean z11 = cursorSj != null && cursorSj.getCount() > 0;
        String string = null;
        if (cursorSj != null) {
            try {
                string = cursorSj.moveToFirst() ? cursorSj.getString(cursorSj.getColumnIndex("rit")) : null;
                cursorSj.close();
            } catch (Throwable unused) {
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("rit", sPVar.Sj());
        contentValues.put("id", sPVar.sP());
        contentValues.put("md5", sPVar.TKC());
        contentValues.put("url", sPVar.EjP());
        contentValues.put("data", sPVar.HiB());
        contentValues.put("version", sPVar.vS());
        contentValues.put(PushConstants.PROVIDER_FIELD_UPDATE_TIME, sPVar.Jcg());
        if (z11) {
            com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().sP().Sj("template_diff_new", contentValues, "id=?", new String[]{sPVar.sP()});
        } else {
            com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().sP().Sj("template_diff_new", contentValues);
        }
        synchronized (this.EjP) {
            this.Jcg.put(sPVar.sP(), sPVar);
        }
        this.TKC.add(sPVar.sP());
        if (z10) {
            return;
        }
        try {
            if (com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().vS() == null) {
                return;
            }
            if (this.HiB == null) {
                this.HiB = new ConcurrentHashMap<>();
            }
            com.bytedance.sdk.component.adexpress.Sj.TKC.TKC tkc = new com.bytedance.sdk.component.adexpress.Sj.TKC.TKC(sPVar.Sj(), sPVar.sP(), sPVar.TKC());
            this.HiB.put(sPVar.sP(), tkc);
            if (string != null) {
                com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().vS();
                tkc.sP();
            }
            com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().vS();
            sPVar.Sj();
        } catch (Throwable unused2) {
        }
    }

    void Sj(Set<String> set) {
        if (set == null || set.isEmpty() || com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().sP() == null) {
            return;
        }
        String[] strArr = (String[]) set.toArray(new String[set.size()]);
        if (strArr.length > 0) {
            for (int i11 = 0; i11 < strArr.length; i11++) {
                EjP(strArr[i11]);
                com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().sP().Sj("template_diff_new", "id=?", new String[]{strArr[i11]});
                TKC(strArr[i11]);
            }
        }
    }

    void TKC(String str) {
        com.bytedance.sdk.component.adexpress.Sj.TKC.TKC tkc;
        try {
            if (this.HiB == null || this.HiB.isEmpty() || (tkc = this.HiB.get(str)) == null) {
                return;
            }
            if (!TextUtils.isEmpty(tkc.Sj()) && com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().vS() != null) {
                com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().vS();
            }
            this.HiB.remove(str);
        } catch (Throwable unused) {
        }
    }

    List<com.bytedance.sdk.component.adexpress.Sj.TKC.sP> sP() {
        if (com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().sP() == null) {
            return null;
        }
        boolean z10 = this.vS.get();
        this.vS.set(true);
        ArrayList arrayList = new ArrayList();
        Cursor cursorSj = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().sP().Sj("template_diff_new", null, null, null, null, null, null);
        if (cursorSj != null) {
            while (cursorSj.moveToNext()) {
                try {
                    String string = cursorSj.getString(cursorSj.getColumnIndex("rit"));
                    String string2 = cursorSj.getString(cursorSj.getColumnIndex("id"));
                    String string3 = cursorSj.getString(cursorSj.getColumnIndex("md5"));
                    String string4 = cursorSj.getString(cursorSj.getColumnIndex("url"));
                    String string5 = cursorSj.getString(cursorSj.getColumnIndex("data"));
                    String string6 = cursorSj.getString(cursorSj.getColumnIndex("version"));
                    arrayList.add(new com.bytedance.sdk.component.adexpress.Sj.TKC.sP().Sj(string).sP(string2).TKC(string3).EjP(string4).HiB(string5).vS(string6).Sj(Long.valueOf(cursorSj.getLong(cursorSj.getColumnIndex(PushConstants.PROVIDER_FIELD_UPDATE_TIME)))));
                    synchronized (this.EjP) {
                        this.Jcg.put(string2, (com.bytedance.sdk.component.adexpress.Sj.TKC.sP) arrayList.get(arrayList.size() - 1));
                    }
                    this.TKC.add(string2);
                    if (!z10 && com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().vS() != null) {
                        if (this.HiB == null) {
                            this.HiB = new ConcurrentHashMap<>();
                        }
                        if (string2 != null && !this.HiB.contains(string2)) {
                            this.HiB.put(string2, new com.bytedance.sdk.component.adexpress.Sj.TKC.TKC(string, string2, string3));
                        }
                    }
                } catch (Throwable unused) {
                }
            }
            cursorSj.close();
        }
        return arrayList;
    }

    Set<String> sP(String str) {
        if (!TextUtils.isEmpty(str) && com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().sP() != null) {
            HashSet hashSet = new HashSet();
            Cursor cursorSj = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().sP().Sj("template_diff_new", null, "rit=?", new String[]{str}, null, null, null);
            if (cursorSj != null) {
                try {
                    try {
                        if (cursorSj.moveToFirst()) {
                            do {
                                hashSet.add(cursorSj.getString(cursorSj.getColumnIndex("id")));
                            } while (cursorSj.moveToNext());
                            return hashSet;
                        }
                    } catch (Exception e11) {
                        Log.e("TmplDbHelper", "", e11);
                    }
                } finally {
                    cursorSj.close();
                }
            }
        }
        return null;
    }
}
