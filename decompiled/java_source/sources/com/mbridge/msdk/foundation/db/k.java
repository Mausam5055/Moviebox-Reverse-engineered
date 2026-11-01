package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.mbridge.msdk.foundation.tools.o0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class k extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f35100a = "ReplaceTempDao";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static k f35101b;

    private k(f fVar) {
        super(fVar);
    }

    public static k a(f fVar) {
        if (f35101b == null) {
            synchronized (e.class) {
                try {
                    if (f35101b == null) {
                        f35101b = new k(fVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35101b;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0047 A[Catch: all -> 0x0043, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0043, blocks: (B:4:0x0011, B:6:0x0017, B:17:0x0047), top: B:35:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0064 A[DONT_GENERATE, EXC_TOP_SPLITTER, PHI: r1
  0x0064: PHI (r1v7 org.json.JSONObject) = (r1v3 org.json.JSONObject), (r1v9 org.json.JSONObject) binds: [B:21:0x0057, B:28:0x0062] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public JSONObject a() {
        JSONObject jSONObject;
        a(7);
        JSONObject jSONObject2 = null;
        Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT * FROM c_replace_temp", null);
        if (cursorRawQuery != null) {
            try {
                if (cursorRawQuery.getCount() > 0) {
                    jSONObject = new JSONObject();
                    while (cursorRawQuery.moveToNext()) {
                        try {
                            jSONObject.put(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("d_key")), new JSONObject(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("d_value"))));
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                o0.b(f35100a, th.getMessage());
                            } finally {
                                if (cursorRawQuery != null) {
                                    try {
                                        cursorRawQuery.close();
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        }
                    }
                    jSONObject2 = jSONObject;
                } else if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                jSONObject = jSONObject2;
                if (cursorRawQuery != null) {
                }
            } catch (Throwable th3) {
                JSONObject jSONObject3 = jSONObject2;
                th = th3;
                jSONObject = jSONObject3;
            }
        } else {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            jSONObject = jSONObject2;
            if (cursorRawQuery != null) {
            }
        }
        return jSONObject;
    }

    public void a(int i11) {
        long jCurrentTimeMillis = System.currentTimeMillis() - ((long) (i11 * TimeConstants.DAY));
        try {
            if (getWritableDatabase() == null) {
                return;
            }
            getWritableDatabase().delete("c_replace_temp", "time<?", new String[]{String.valueOf(jCurrentTimeMillis)});
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a(String str, JSONObject jSONObject) {
        try {
            if (getWritableDatabase() == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("d_key", str);
            contentValues.put("d_value", jSONObject.toString());
            contentValues.put(EventConstants.KEY_TIME, Long.valueOf(System.currentTimeMillis()));
            if (a(str)) {
                getWritableDatabase().update("c_replace_temp", contentValues, "d_key = ? ", new String[]{str});
            } else {
                getWritableDatabase().insert("c_replace_temp", null, contentValues);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public boolean a(String str) {
        Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT d_value FROM c_replace_temp WHERE d_key= ? ", new String[]{str});
        if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
            try {
                cursorRawQuery.close();
                return true;
            } catch (Exception unused) {
                return true;
            }
        }
        if (cursorRawQuery == null) {
            return false;
        }
        try {
            cursorRawQuery.close();
            return false;
        } catch (Exception unused2) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0058 A[DONT_GENERATE, EXC_TOP_SPLITTER, PHI: r1
  0x0058: PHI (r1v4 org.json.JSONObject) = (r1v0 org.json.JSONObject), (r1v6 org.json.JSONObject) binds: [B:20:0x004c, B:26:0x0056] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x003f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public JSONObject b(String str) {
        JSONObject jSONObject = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT * FROM c_replace_temp WHERE d_key = ? ", new String[]{str});
        if (cursorRawQuery != null) {
            try {
                if (cursorRawQuery.getCount() > 0) {
                    jSONObject = new JSONObject();
                    while (cursorRawQuery.moveToNext()) {
                        jSONObject = new JSONObject(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("d_value")));
                    }
                } else if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Exception unused) {
                    }
                }
                if (cursorRawQuery != null) {
                }
            } catch (Throwable th2) {
                try {
                    o0.b(f35100a, th2.getMessage());
                } finally {
                    if (cursorRawQuery != null) {
                        try {
                            cursorRawQuery.close();
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
        } else {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            if (cursorRawQuery != null) {
            }
        }
        return jSONObject;
    }
}
