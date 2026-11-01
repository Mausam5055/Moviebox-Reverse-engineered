package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.u0;

/* JADX INFO: loaded from: classes5.dex */
public class d extends a<JumpLoaderResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f35070a = "d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static d f35071b;

    private d(f fVar) {
        super(fVar);
    }

    public static synchronized d a(f fVar) {
        try {
            if (f35071b == null) {
                f35071b = new d(fVar);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f35071b;
    }

    public synchronized long a(CampaignEx campaignEx, String str) {
        if (campaignEx == null) {
            return 0L;
        }
        try {
            try {
                String strA = u0.a(campaignEx.getJumpResult());
                ContentValues contentValues = new ContentValues();
                contentValues.put("id", campaignEx.getId());
                contentValues.put("unitid", str);
                contentValues.put("result", strA);
                contentValues.put("cti", Integer.valueOf(campaignEx.getClickInterval() * 1000));
                contentValues.put("package_name", campaignEx.getPackageName());
                com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                contentValues.put("ts", Long.valueOf(System.currentTimeMillis()));
                if (gVarD != null && gVarD.X() > 0) {
                    contentValues.put("cpei", Integer.valueOf(gVarD.X() * 1000));
                }
                if (gVarD != null && gVarD.Y() > 0) {
                    contentValues.put("cpoci", Integer.valueOf(gVarD.Y() * 1000));
                }
                if (!a(campaignEx.getId(), str)) {
                    return getWritableDatabase().insert("campaignclick", null, contentValues);
                }
                if (getWritableDatabase() == null) {
                    return -1L;
                }
                return getWritableDatabase().update("campaignclick", contentValues, "id = ? AND unitid = ? ", new String[]{campaignEx.getId(), str});
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b(f35070a, e11.getMessage());
                }
                return -1L;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void a() {
        try {
            getWritableDatabase().delete("campaignclick", " ( " + System.currentTimeMillis() + " - ts) > cti", null);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(f35070a, e11.getMessage());
            }
        }
    }

    public synchronized boolean a(String str, String str2) {
        Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT id FROM campaignclick WHERE id= ? AND unitid= ?", new String[]{str, str2});
        if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
            cursorRawQuery.close();
            return true;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x005d A[Catch: all -> 0x0040, PHI: r11
  0x005d: PHI (r11v4 android.database.Cursor) = (r11v3 android.database.Cursor), (r11v5 android.database.Cursor) binds: [B:31:0x005b, B:22:0x0047] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0040, blocks: (B:13:0x003b, B:32:0x005d, B:36:0x0064, B:37:0x0067), top: B:40:0x0002 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.database.Cursor] */
    public synchronized JumpLoaderResult b(String str, String str2) {
        Cursor cursorQuery;
        ?? r11 = 0;
        try {
            try {
                try {
                    cursorQuery = getReadableDatabase().query("campaignclick", null, "id=? AND unitid=?", new String[]{str, str2}, null, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.getCount() > 0 && cursorQuery.moveToFirst()) {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndex("result"));
                                if (!TextUtils.isEmpty(string)) {
                                    JumpLoaderResult jumpLoaderResult = (JumpLoaderResult) u0.a(string);
                                    cursorQuery.close();
                                    return jumpLoaderResult;
                                }
                            }
                        } catch (Exception e11) {
                            e = e11;
                            if (MBridgeConstans.DEBUG) {
                                o0.b(f35070a, e.getMessage());
                            }
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (Exception e12) {
                e = e12;
                cursorQuery = null;
            } catch (Throwable th3) {
                th = th3;
                if (r11 != 0) {
                    r11.close();
                }
                throw th;
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
            r11 = str;
        }
    }

    public synchronized boolean c(String str, String str2) {
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT id FROM campaignclick WHERE id= ? AND unitid= ? AND cti + ts > " + System.currentTimeMillis(), new String[]{str, str2});
            if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
                cursorRawQuery.close();
                return true;
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return false;
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(f35070a, e11.getMessage());
            }
            return false;
        }
    }
}
