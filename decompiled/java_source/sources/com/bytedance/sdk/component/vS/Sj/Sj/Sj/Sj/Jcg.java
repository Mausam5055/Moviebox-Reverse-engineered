package com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.Dq;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg extends TKC {
    protected List<String> Sj;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj TKC;

    public Jcg(Context context, com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
        super(context);
        this.Sj = new ArrayList();
        this.TKC = sj2;
        if (sj2 == null) {
            this.TKC = com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj.TKC();
        }
    }

    private static String Sj(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }

    private static String Sj(String str, List<?> list, int i11, boolean z10) {
        String str2 = z10 ? " IN " : " NOT IN ";
        String str3 = z10 ? " OR " : " AND ";
        int iMin = Math.min(i11, 1000);
        int size = list.size();
        int i12 = size % iMin == 0 ? size / iMin : (size / iMin) + 1;
        StringBuilder sb2 = new StringBuilder();
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i13 * iMin;
            String strSj = Sj(TextUtils.join("','", list.subList(i14, Math.min(i14 + iMin, size))), "");
            if (i13 != 0) {
                sb2.append(str3);
            }
            sb2.append(str);
            sb2.append(str2);
            sb2.append("('");
            sb2.append(strSj);
            sb2.append("')");
        }
        return Sj(sb2.toString(), str + str2 + "('')");
    }

    public static String TKC(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    private void sP(int i11, long j11) {
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), sP(), "gen_time <? AND retry >?", new String[]{String.valueOf(System.currentTimeMillis() - j11), String.valueOf(i11)});
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0023 A[EXC_TOP_SPLITTER, PHI: r0 r1
  0x0023: PHI (r0v2 int) = (r0v0 int), (r0v6 int) binds: [B:10:0x0028, B:6:0x0021] A[DONT_GENERATE, DONT_INLINE]
  0x0023: PHI (r1v2 android.database.Cursor) = (r1v1 android.database.Cursor), (r1v4 android.database.Cursor) binds: [B:10:0x0028, B:6:0x0021] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public int EjP() {
        Cursor cursorSj;
        int i11 = 0;
        try {
            cursorSj = com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), sP(), new String[]{"count(1)"}, null, null, null, null, null);
            if (cursorSj != null) {
                try {
                    cursorSj.moveToFirst();
                    i11 = cursorSj.getInt(0);
                } catch (Throwable unused) {
                    if (cursorSj != null) {
                        try {
                            cursorSj.close();
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
            if (cursorSj != null) {
                cursorSj.close();
            }
        } catch (Throwable unused3) {
            cursorSj = null;
        }
        return i11;
    }

    public byte Sj() {
        return (byte) 1;
    }

    public List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> Sj(int i11, String str) {
        long jSj = com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj(i11, HiB());
        if (jSj <= 0) {
            jSj = 1;
        } else if (jSj > 100) {
            jSj = 100;
        }
        ArrayList arrayList = new ArrayList();
        this.Sj.clear();
        Cursor cursorSj = com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), sP(), new String[]{"id", AppMeasurementSdk.ConditionalUserProperty.VALUE, "encrypt"}, null, null, null, null, str + " DESC limit " + jSj);
        if (cursorSj != null) {
            while (cursorSj.moveToNext()) {
                try {
                    try {
                        String string = cursorSj.getString(cursorSj.getColumnIndex("id"));
                        String string2 = cursorSj.getString(cursorSj.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                        if (cursorSj.getInt(cursorSj.getColumnIndex("encrypt")) == 1) {
                            string2 = Dq.Jcg().uvD().Sj(string2);
                        }
                        if (TextUtils.isEmpty(string2)) {
                            this.Sj.add(string);
                        } else {
                            if (arrayList.size() > 100) {
                                break;
                            }
                            com.bytedance.sdk.component.vS.Sj.EjP.Sj.Sj sj2 = new com.bytedance.sdk.component.vS.Sj.EjP.Sj.Sj(string, new JSONObject(string2));
                            sj2.sP(TKC());
                            sj2.Sj(Sj());
                            arrayList.add(sj2);
                        }
                    } catch (Throwable unused) {
                    }
                } finally {
                    try {
                        cursorSj.close();
                        if (!this.Sj.isEmpty()) {
                            Sj(this.Sj);
                            this.Sj.clear();
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
        }
        return arrayList;
    }

    public void Sj(int i11, long j11) {
        sP(i11, j11);
    }

    protected void Sj(List<String> list) {
        sP();
        list.size();
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), "DELETE FROM " + sP() + " WHERE " + Sj("id", list, 1000, true));
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.pfr(), list.size());
        TKC(list);
    }

    public boolean Sj(int i11) {
        return this.TKC != null && EjP() >= this.TKC.Sj();
    }

    public byte TKC() {
        return (byte) 2;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.TKC
    public String sP() {
        return Dq.Jcg().EjP().EjP();
    }

    public List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> sP(String str) {
        com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2 = this.TKC;
        return sj2 == null ? new ArrayList() : Sj(sj2.sP(), str);
    }

    public void sP(List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 : list) {
            linkedList.add(sj2.TKC());
            com.bytedance.sdk.component.vS.Sj.TKC.Sj.TEQ(sj2);
        }
        sP();
        linkedList.size();
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), "DELETE FROM " + sP() + " WHERE " + Sj("id", linkedList, 1000, true));
        TKC(linkedList);
    }
}
