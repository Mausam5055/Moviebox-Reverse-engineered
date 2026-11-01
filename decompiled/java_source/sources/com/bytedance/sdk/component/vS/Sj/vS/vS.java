package com.bytedance.sdk.component.vS.Sj.vS;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class vS implements HiB {
    private Context Sj;

    public vS(Context context) {
        this.Sj = context;
    }

    public static String sP() {
        return "CREATE TABLE IF NOT EXISTS trackurl (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,url TEXT ,replaceholder INTEGER default 0, retry INTEGER default 0)";
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS.HiB
    public EjP Sj(String str) {
        Cursor cursorSj = com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(this.Sj, "trackurl", null, "id=?", new String[]{str}, null, null, null);
        if (cursorSj != null && cursorSj.moveToFirst()) {
            try {
                String string = cursorSj.getString(cursorSj.getColumnIndex("id"));
                String string2 = cursorSj.getString(cursorSj.getColumnIndex("url"));
                boolean z10 = cursorSj.getInt(cursorSj.getColumnIndex("replaceholder")) > 0;
                int i11 = cursorSj.getInt(cursorSj.getColumnIndex("retry"));
                int i12 = cursorSj.getInt(cursorSj.getColumnIndex("url_type"));
                String string3 = cursorSj.getString(cursorSj.getColumnIndex("ad_id"));
                String string4 = cursorSj.getString(cursorSj.getColumnIndex("error_code"));
                String string5 = cursorSj.getString(cursorSj.getColumnIndex(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG));
                EjP ejP = new EjP(string, string2, z10, i12, string3);
                ejP.Sj(i11);
                if (!TextUtils.isEmpty(string4)) {
                    ejP.Sj(string4);
                }
                if (!TextUtils.isEmpty(string5)) {
                    ejP.sP(string5);
                }
                cursorSj.close();
                return ejP;
            } catch (Throwable th2) {
                try {
                    th2.getMessage();
                    cursorSj.close();
                    cursorSj = null;
                } catch (Throwable th3) {
                    cursorSj.close();
                    throw th3;
                }
            }
        }
        if (cursorSj != null) {
            cursorSj.close();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS.HiB
    public List<EjP> Sj() {
        LinkedList linkedList = new LinkedList();
        Cursor cursorSj = com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(this.Sj, "trackurl", null, null, null, null, null, null);
        if (cursorSj != null) {
            while (cursorSj.moveToNext()) {
                try {
                    try {
                        String string = cursorSj.getString(cursorSj.getColumnIndex("id"));
                        String string2 = cursorSj.getString(cursorSj.getColumnIndex("url"));
                        boolean z10 = cursorSj.getInt(cursorSj.getColumnIndex("replaceholder")) > 0;
                        int i11 = cursorSj.getInt(cursorSj.getColumnIndex("retry"));
                        int i12 = cursorSj.getInt(cursorSj.getColumnIndex("url_type"));
                        String string3 = cursorSj.getString(cursorSj.getColumnIndex("ad_id"));
                        String string4 = cursorSj.getString(cursorSj.getColumnIndex("error_code"));
                        String string5 = cursorSj.getString(cursorSj.getColumnIndex(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG));
                        EjP ejP = new EjP(string, string2, z10, i12, string3);
                        ejP.Sj(i11);
                        if (!TextUtils.isEmpty(string4)) {
                            ejP.Sj(string4);
                        }
                        if (!TextUtils.isEmpty(string5)) {
                            ejP.sP(string5);
                        }
                        linkedList.add(ejP);
                    } catch (Throwable unused) {
                    }
                } finally {
                    cursorSj.close();
                }
            }
            cursorSj.close();
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS.HiB
    public void Sj(EjP ejP) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", ejP.Sj());
        contentValues.put("url", ejP.sP());
        contentValues.put("replaceholder", Integer.valueOf(ejP.TKC() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(ejP.EjP()));
        contentValues.put("url_type", Integer.valueOf(ejP.HiB()));
        contentValues.put("ad_id", ejP.vS());
        contentValues.put("error_code", ejP.Jcg());
        contentValues.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, ejP.uA());
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(this.Sj, "trackurl", contentValues);
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS.HiB
    public void TKC(EjP ejP) {
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(this.Sj, "trackurl", "id=?", new String[]{ejP.Sj()});
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS.HiB
    public void sP(EjP ejP) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", ejP.Sj());
        contentValues.put("url", ejP.sP());
        contentValues.put("replaceholder", Integer.valueOf(ejP.TKC() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(ejP.EjP()));
        contentValues.put("error_code", ejP.Jcg());
        contentValues.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, ejP.uA());
        contentValues.put("url_type", Integer.valueOf(ejP.HiB()));
        contentValues.put("ad_id", ejP.vS());
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(this.Sj, "trackurl", contentValues, "id=?", new String[]{ejP.Sj()});
    }
}
