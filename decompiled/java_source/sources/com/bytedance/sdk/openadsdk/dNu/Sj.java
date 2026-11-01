package com.bytedance.sdk.openadsdk.dNu;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.bytedance.sdk.openadsdk.BusMonitorDependWrapper;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private static Context EjP;
    private static final long HiB = System.currentTimeMillis();
    private sP Sj;
    private Boolean TKC;
    private com.bytedance.sdk.openadsdk.dNu.TKC.Sj sP;
    private int vS = 0;
    private final ArrayList<EjP> Jcg = new ArrayList<>();
    private Runnable Dq = new Runnable() { // from class: com.bytedance.sdk.openadsdk.dNu.Sj.2
        @Override // java.lang.Runnable
        public void run() {
            Sj sj2 = Sj.this;
            sj2.TKC = Boolean.valueOf(sj2.Sj.isMonitorOpen());
            if (Sj.this.TKC.booleanValue()) {
                Sj sj3 = Sj.this;
                sj3.Sj(sj3.Jcg);
                Sj.this.Jcg.clear();
            }
        }
    };
    private Runnable uA = new Runnable() { // from class: com.bytedance.sdk.openadsdk.dNu.Sj.4
        @Override // java.lang.Runnable
        public void run() {
            String str = "is_init";
            String str2 = "mediation";
            try {
                SQLiteDatabase sQLiteDatabaseSP = com.bytedance.sdk.openadsdk.dNu.Sj.Sj.sP();
                if (sQLiteDatabaseSP == null) {
                    return;
                }
                String[] strArr = {"_id", "sdk_version", FrameworkConstants.GLOBAL_DATA_KEY_SCENE, "start_count", "success_count", "fail_count", "rit", "tag", "label", CampaignEx.JSON_KEY_TIMESTAMP, "mediation", "is_init", "extra"};
                String[] strArr2 = {String.valueOf(Sj.HiB)};
                try {
                    int iMax = Math.max(10, Sj.this.Sj.getOnceLogCount());
                    int i11 = iMax > 100 ? 10 : iMax;
                    Cursor cursorQuery = sQLiteDatabaseSP.query("monitor_table", strArr, "timestamp <= ?", strArr2, null, null, null, String.valueOf(i11));
                    if (cursorQuery != null) {
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        while (cursorQuery.moveToNext()) {
                            int i12 = i11;
                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                            if (cursorQuery.getColumnIndex("_id") >= 0) {
                                long j11 = cursorQuery.getLong(cursorQuery.getColumnIndex("_id"));
                                sj2.Sj(j11);
                                arrayList2.add(String.valueOf(j11));
                            }
                            if (cursorQuery.getColumnIndex("sdk_version") >= 0) {
                                sj2.Sj(cursorQuery.getString(cursorQuery.getColumnIndex("sdk_version")));
                            }
                            if (cursorQuery.getColumnIndex(FrameworkConstants.GLOBAL_DATA_KEY_SCENE) >= 0) {
                                sj2.sP(cursorQuery.getString(cursorQuery.getColumnIndex(FrameworkConstants.GLOBAL_DATA_KEY_SCENE)));
                            }
                            if (cursorQuery.getColumnIndex("start_count") >= 0) {
                                sj2.Sj(cursorQuery.getInt(cursorQuery.getColumnIndex("start_count")));
                            }
                            if (cursorQuery.getColumnIndex("success_count") >= 0) {
                                sj2.sP(cursorQuery.getInt(cursorQuery.getColumnIndex("success_count")));
                            }
                            if (cursorQuery.getColumnIndex("fail_count") >= 0) {
                                sj2.TKC(cursorQuery.getInt(cursorQuery.getColumnIndex("fail_count")));
                            }
                            if (cursorQuery.getColumnIndex("rit") >= 0) {
                                sj2.TKC(cursorQuery.getString(cursorQuery.getColumnIndex("rit")));
                            }
                            if (cursorQuery.getColumnIndex("tag") >= 0) {
                                sj2.EjP(cursorQuery.getString(cursorQuery.getColumnIndex("tag")));
                            }
                            if (cursorQuery.getColumnIndex("label") >= 0) {
                                sj2.HiB(cursorQuery.getString(cursorQuery.getColumnIndex("label")));
                            }
                            String str3 = str2;
                            if (cursorQuery.getColumnIndex(str3) >= 0) {
                                sj2.vS(cursorQuery.getString(cursorQuery.getColumnIndex(str3)));
                            }
                            String str4 = str;
                            if (cursorQuery.getColumnIndex(str4) >= 0) {
                                sj2.EjP(cursorQuery.getInt(cursorQuery.getColumnIndex(str4)));
                            }
                            if (cursorQuery.getColumnIndex("extra") >= 0) {
                                sj2.Jcg(cursorQuery.getString(cursorQuery.getColumnIndex("extra")));
                            }
                            arrayList = arrayList;
                            arrayList.add(sj2);
                            i11 = i12;
                            str2 = str3;
                            str = str4;
                        }
                        int i13 = i11;
                        cursorQuery.close();
                        if (!arrayList.isEmpty()) {
                            Sj.this.Sj.onMonitorUpload(arrayList);
                            SQLiteDatabase sQLiteDatabaseSj = com.bytedance.sdk.openadsdk.dNu.Sj.Sj.Sj();
                            if (sQLiteDatabaseSj != null && sQLiteDatabaseSj.isOpen()) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("_id IN (");
                                for (int i14 = 0; i14 < arrayList2.size(); i14++) {
                                    sb2.append(UrlUtils.QUESTION_MARK);
                                    if (i14 < arrayList2.size() - 1) {
                                        sb2.append(",");
                                    }
                                }
                                sb2.append(")");
                                sQLiteDatabaseSj.delete("monitor_table", sb2.toString(), (String[]) arrayList2.toArray(new String[0]));
                                if (Sj.this.sP != null) {
                                    Sj.this.sP.Sj(Sj.HiB);
                                }
                            }
                            if (arrayList.size() < i13 || Sj.this.vS > 1000) {
                                return;
                            }
                            Sj.this.Sj(false);
                            return;
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
            Log.e("BusMonitorCenter", th.getMessage());
        }
    };

    private Sj(sP sPVar) {
        try {
            this.Sj = new BusMonitorDependWrapper(sPVar);
            this.sP = new com.bytedance.sdk.openadsdk.dNu.TKC.Sj(sPVar.getContext());
            EjP = sPVar.getContext();
        } catch (Throwable th2) {
            Log.e("BusMonitorCenter", th2.getMessage());
        }
    }

    static /* synthetic */ int EjP(Sj sj2) {
        int i11 = sj2.vS;
        sj2.vS = i11 + 1;
        return i11;
    }

    public static Context Sj() {
        Context context = EjP;
        return context != null ? context : BusMonitorDependWrapper.getReflectContext();
    }

    public static Sj Sj(sP sPVar) {
        return new Sj(sPVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(List<EjP> list) {
        com.bytedance.sdk.openadsdk.dNu.sP.Sj sjGeneratorModel;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            if (list != null) {
                try {
                    if (!list.isEmpty()) {
                        SQLiteDatabase sQLiteDatabaseSj = com.bytedance.sdk.openadsdk.dNu.Sj.Sj.Sj();
                        if (sQLiteDatabaseSj != null) {
                            try {
                                sQLiteDatabaseSj.beginTransaction();
                                for (int i11 = 0; i11 < list.size(); i11++) {
                                    EjP ejP = list.get(i11);
                                    if (ejP != null && (sjGeneratorModel = ejP.generatorModel()) != null) {
                                        Cursor cursorQuery = sQLiteDatabaseSj.query("monitor_table", new String[]{"_id", "sdk_version", FrameworkConstants.GLOBAL_DATA_KEY_SCENE, "start_count", "success_count", "fail_count", "rit", "tag", "label", CampaignEx.JSON_KEY_TIMESTAMP, "mediation", "is_init", "extra"}, new StringBuilder("sdk_version = ? AND scene = ? AND rit = ? AND tag = ? AND label = ? AND mediation = ? AND is_init = ? AND extra = ?").toString(), new String[]{sjGeneratorModel.sP(), sjGeneratorModel.TKC(), sjGeneratorModel.Jcg(), sjGeneratorModel.Dq(), sjGeneratorModel.uA(), sjGeneratorModel.Ym(), String.valueOf(sjGeneratorModel.aa()), sjGeneratorModel.Fmk()}, null, null, null);
                                        if (cursorQuery != null) {
                                            if (cursorQuery.moveToNext()) {
                                                int columnIndex = cursorQuery.getColumnIndex("_id");
                                                if (columnIndex >= 0) {
                                                    sjGeneratorModel.Sj(cursorQuery.getLong(columnIndex));
                                                }
                                                int columnIndex2 = cursorQuery.getColumnIndex("start_count");
                                                if (columnIndex2 >= 0) {
                                                    sjGeneratorModel.Sj(cursorQuery.getInt(columnIndex2) + sjGeneratorModel.EjP());
                                                }
                                                int columnIndex3 = cursorQuery.getColumnIndex("success_count");
                                                if (columnIndex3 >= 0) {
                                                    sjGeneratorModel.sP(cursorQuery.getInt(columnIndex3) + sjGeneratorModel.HiB());
                                                }
                                                int columnIndex4 = cursorQuery.getColumnIndex("fail_count");
                                                if (columnIndex4 >= 0) {
                                                    sjGeneratorModel.TKC(cursorQuery.getInt(columnIndex4) + sjGeneratorModel.vS());
                                                }
                                                int columnIndex5 = cursorQuery.getColumnIndex(CampaignEx.JSON_KEY_TIMESTAMP);
                                                if (columnIndex5 >= 0) {
                                                    sjGeneratorModel.sP(Math.min(cursorQuery.getLong(columnIndex5), sjGeneratorModel.TEQ()));
                                                }
                                            }
                                            cursorQuery.close();
                                        }
                                        ContentValues contentValues = new ContentValues();
                                        if (sjGeneratorModel.Sj() > 0) {
                                            contentValues.put("_id", Long.valueOf(sjGeneratorModel.Sj()));
                                        }
                                        contentValues.put("sdk_version", sjGeneratorModel.sP());
                                        contentValues.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, sjGeneratorModel.TKC());
                                        contentValues.put("start_count", Integer.valueOf(sjGeneratorModel.EjP()));
                                        contentValues.put("success_count", Integer.valueOf(sjGeneratorModel.HiB()));
                                        contentValues.put("fail_count", Integer.valueOf(sjGeneratorModel.vS()));
                                        contentValues.put("rit", sjGeneratorModel.Jcg());
                                        contentValues.put("tag", sjGeneratorModel.Dq());
                                        contentValues.put("label", sjGeneratorModel.uA());
                                        contentValues.put(CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(sjGeneratorModel.TEQ()));
                                        contentValues.put("mediation", sjGeneratorModel.Ym());
                                        contentValues.put("is_init", Integer.valueOf(sjGeneratorModel.aa()));
                                        contentValues.put("extra", sjGeneratorModel.Fmk());
                                        sQLiteDatabaseSj.insertWithOnConflict("monitor_table", null, contentValues, 5);
                                    }
                                }
                                new StringBuilder("exec save size = ").append(list.size());
                                sQLiteDatabaseSj.setTransactionSuccessful();
                            } catch (Throwable th2) {
                                th = th2;
                                sQLiteDatabase = sQLiteDatabaseSj;
                                try {
                                    Log.e("BusMonitorCenter", th.getMessage());
                                    if (sQLiteDatabase != null) {
                                        sQLiteDatabase.endTransaction();
                                        return;
                                    }
                                    return;
                                } catch (Throwable th3) {
                                    if (sQLiteDatabase == null) {
                                        throw th3;
                                    }
                                    try {
                                        sQLiteDatabase.endTransaction();
                                        throw th3;
                                    } catch (Throwable th4) {
                                        Log.e("BusMonitorCenter", th4.getMessage());
                                        throw th3;
                                    }
                                }
                            }
                        }
                        sQLiteDatabase = sQLiteDatabaseSj;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            }
            if (sQLiteDatabase != null) {
                sQLiteDatabase.endTransaction();
            }
        } catch (Throwable th6) {
            Log.e("BusMonitorCenter", th6.getMessage());
        }
    }

    private boolean TKC() {
        if (this.TKC == null) {
            sP sPVar = this.Sj;
            if (sPVar == null || sPVar.getContext() == null || this.Sj.getHandler() == null) {
                return false;
            }
        } else {
            sP sPVar2 = this.Sj;
            if (sPVar2 == null || sPVar2.getContext() == null || !this.Sj.isMonitorOpen() || this.Sj.getHandler() == null) {
                return false;
            }
        }
        return true;
    }

    public void Sj(final EjP ejP) {
        if (ejP == null || !TKC()) {
            return;
        }
        this.Sj.getHandler().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.dNu.Sj.1
            @Override // java.lang.Runnable
            public void run() {
                Sj sj2 = Sj.this;
                sj2.TKC = Boolean.valueOf(sj2.Sj.isMonitorOpen());
                if (Sj.this.TKC.booleanValue()) {
                    Sj.this.Jcg.add(ejP);
                    if (Sj.this.Jcg.size() >= 10) {
                        Sj sj3 = Sj.this;
                        sj3.Sj(sj3.Jcg);
                        Sj.this.Jcg.clear();
                    }
                }
            }
        });
        this.Sj.getHandler().removeCallbacks(this.Dq);
        this.Sj.getHandler().postDelayed(this.Dq, 5000L);
    }

    public void Sj(final boolean z10) {
        sP sPVar = this.Sj;
        if (sPVar == null || sPVar.getHandler() == null || this.Sj.getContext() == null || this.sP == null || !this.Sj.isMonitorOpen()) {
            return;
        }
        this.Sj.getHandler().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.dNu.Sj.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Sj.EjP(Sj.this);
                    if (z10) {
                        long jSj = Sj.this.sP.Sj();
                        if (jSj == 0) {
                            Sj.this.sP.Sj(System.currentTimeMillis());
                            return;
                        } else if (Sj.HiB - jSj < Sj.this.Sj.getUploadIntervalTime()) {
                            return;
                        }
                    }
                    if (Sj.this.Sj.getHandler() != null) {
                        Sj.this.Sj.getHandler().post(Sj.this.uA);
                    }
                } catch (Throwable th2) {
                    Log.e("BusMonitorCenter", th2.getMessage());
                }
            }
        }, Math.max(this.Sj.getOnceLogInterval(), 10000));
    }
}
