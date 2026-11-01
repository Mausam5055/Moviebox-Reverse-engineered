package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile c f35069a;

    private c(f fVar) {
        super(fVar);
    }

    public static c a(f fVar) {
        if (f35069a == null) {
            synchronized (c.class) {
                try {
                    if (f35069a == null) {
                        f35069a = new c(fVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35069a;
    }

    public long a(String str, String str2, String str3, int i11) {
        if (!a(str, str3)) {
            return -1L;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", Integer.valueOf(i11));
        return getWritableDatabase().update("CacheCampaign", contentValues, "rid= ? AND unitid = ? AND state = 0", new String[]{str, str3});
    }

    public long a(List<CampaignEx> list, String str) {
        CampaignEx campaignEx;
        if (list != null) {
            try {
                if (list.size() == 0 || TextUtils.isEmpty(str) || (campaignEx = list.get(0)) == null) {
                    return 0L;
                }
                if (getWritableDatabase() == null) {
                    return -1L;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("rid", campaignEx.getRequestId());
                contentValues.put("lrid", campaignEx.getLocalRequestId());
                contentValues.put("unitid", str);
                JSONArray jSONArray = new JSONArray();
                Iterator<CampaignEx> it = list.iterator();
                while (it.hasNext()) {
                    jSONArray.put(CampaignEx.campaignToJsonObject(it.next()));
                }
                contentValues.put("campaigns", jSONArray.toString());
                contentValues.put("ts", Long.valueOf(campaignEx.getTimestamp()));
                long candidateCacheTime = campaignEx.getCandidateCacheTime();
                if (candidateCacheTime == 0) {
                    candidateCacheTime = campaignEx.getPlctb();
                    if (candidateCacheTime == 0) {
                        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                        if (gVarD == null) {
                            gVarD = com.mbridge.msdk.setting.h.b().a();
                        }
                        candidateCacheTime = gVarD.a0();
                    }
                }
                try {
                    if (q0.a().a("c_e_t", false)) {
                        candidateCacheTime *= 24;
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                contentValues.put("interval_ts", Long.valueOf(candidateCacheTime * 1000));
                contentValues.put("ecppv", campaignEx.getEcppv());
                contentValues.put("show_count", Integer.valueOf(campaignEx.getShowCount()));
                contentValues.put("state", (Integer) 0);
                return a(campaignEx.getRequestId(), str) ? getWritableDatabase().update("CacheCampaign", contentValues, "rid= ? AND lrid= ? AND unitid = ? AND state = 1", new String[]{campaignEx.getRequestId(), campaignEx.getLocalRequestId(), str}) : getWritableDatabase().insert("CacheCampaign", null, contentValues);
            } catch (Exception e12) {
                e12.printStackTrace();
                return -1L;
            }
        }
        return 0L;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0109 A[DONT_GENERATE, EXC_TOP_SPLITTER, PHI: r5
  0x0109: PHI (r5v4 android.database.Cursor) = (r5v3 android.database.Cursor), (r5v5 android.database.Cursor) binds: [B:32:0x0107, B:27:0x00ff] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public List<com.mbridge.msdk.foundation.cache.b> a(String str, int i11, long j11) {
        Cursor cursorRawQuery;
        try {
            cursorRawQuery = getReadableDatabase().rawQuery("SELECT * FROM CacheCampaign WHERE unitid = ? AND state > ? and (show_time is null or show_time < ? )", new String[]{str, String.valueOf(i11), String.valueOf(j11)});
            if (cursorRawQuery != null) {
                try {
                    if (cursorRawQuery.getCount() > 0) {
                        ArrayList arrayList = new ArrayList();
                        while (cursorRawQuery.moveToNext()) {
                            com.mbridge.msdk.foundation.cache.b bVar = new com.mbridge.msdk.foundation.cache.b();
                            String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("campaigns"));
                            JSONArray jSONArray = new JSONArray(string);
                            if (TextUtils.isEmpty(string)) {
                                try {
                                    cursorRawQuery.close();
                                } catch (Exception unused) {
                                }
                                return null;
                            }
                            if (jSONArray.length() > 0) {
                                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
                                for (int i12 = 0; i12 < jSONArray.length(); i12++) {
                                    copyOnWriteArrayList.add(CampaignEx.parseCampaignWithBackData((JSONObject) jSONArray.get(i12)));
                                }
                                bVar.a(copyOnWriteArrayList);
                            }
                            bVar.b(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("lrid")));
                            bVar.c(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("rid")));
                            bVar.d(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("unitid")));
                            bVar.a(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("ecppv")));
                            bVar.c(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("ts")));
                            bVar.b(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("state")));
                            bVar.a(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("show_count")));
                            bVar.b(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex(TrackingKey.SHOW_TIME)));
                            bVar.a(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("interval_ts")));
                            arrayList.add(bVar);
                        }
                        try {
                            cursorRawQuery.close();
                        } catch (Exception unused2) {
                        }
                        return arrayList;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        th.printStackTrace();
                    } finally {
                        if (cursorRawQuery != null) {
                            try {
                                cursorRawQuery.close();
                            } catch (Exception unused3) {
                            }
                        }
                    }
                }
            }
            if (cursorRawQuery != null) {
            }
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
        }
        return null;
    }

    public List<com.mbridge.msdk.foundation.cache.b> a(String str, long j11) {
        return a(str, 0, j11);
    }

    public synchronized void a(String str, int i11) {
        if (i11 <= 0) {
            i11 = 1;
        }
        try {
            String str2 = "unitid = ? AND ( (ts + interval_ts) < " + System.currentTimeMillis() + " OR show_count >= ?)";
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            try {
                writableDatabase.delete("CacheCampaign", str2, new String[]{str, String.valueOf(i11)});
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } catch (Exception e12) {
            o0.b("CacheCampaignDao", e12.getLocalizedMessage());
        }
    }

    public synchronized void a(String str, String str2, String str3) {
        try {
            if (a(str2, str)) {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if (writableDatabase == null) {
                    return;
                }
                try {
                    writableDatabase.delete("CacheCampaign", "unitid = ? AND rid = ? ", new String[]{str, str2});
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        } catch (Exception e12) {
            o0.b("CampaignDao", e12.getLocalizedMessage());
        }
    }

    public synchronized boolean a(String str, String str2) {
        Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT rid FROM CacheCampaign WHERE rid= ? AND unitid = ? ", new String[]{str, str2});
        if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
            try {
                cursorRawQuery.close();
            } catch (Exception unused) {
            }
            return true;
        }
        if (cursorRawQuery != null) {
            try {
                cursorRawQuery.close();
            } catch (Exception unused2) {
            }
        }
        return false;
    }

    public void b(String str, String str2, String str3) {
        if (a(str, str3)) {
            try {
                getWritableDatabase().execSQL("UPDATE CacheCampaign SET show_count = show_count + 1, show_time = ? WHERE rid = ? AND unitid = ? AND state = ?", new Object[]{Long.valueOf(System.currentTimeMillis()), str, str3, "1"});
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }
}
