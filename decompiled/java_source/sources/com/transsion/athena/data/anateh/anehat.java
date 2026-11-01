package com.transsion.athena.data.anateh;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.text.TextUtils;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.Pair;
import android.util.SparseArray;
import androidx.core.app.NotificationCompat;
import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.config.data.model.aatnhe;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.AppIdData;
import com.transsion.athena.data.Track;
import com.transsion.ga.anateh;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class anehat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static volatile anehat f42669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.transsion.athena.data.anateh.athena f42670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f42671c;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class athena {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final athena f42672a = new athena("EVENTS", 0, "events");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final athena f42673b = new athena("COUNTER", 1, "counter");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final athena f42674c = new athena("TID_CONFIG", 2, "tidconfig");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final athena f42675d = new athena("APPID_CONFIG", 3, "appidconfig");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f42676e;

        private athena(String str, int i11, String str2) {
            super(str, i11);
            this.f42676e = str2;
        }

        public String a() {
            return this.f42676e;
        }
    }

    private anehat(Context context) {
        try {
            this.f42671c = context;
            this.f42670b = new com.transsion.athena.data.anateh.athena(context, "athena.db");
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(e11.getMessage());
        }
    }

    public static synchronized anehat a(Context context) {
        try {
            if (f42669a == null) {
                synchronized (anehat.class) {
                    try {
                        if (f42669a == null) {
                            f42669a = new anehat(context);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return f42669a;
    }

    private void a(SQLiteException sQLiteException) {
        try {
            if (sQLiteException instanceof SQLiteFullException) {
                this.f42670b.close();
            } else {
                this.f42670b.close();
                this.f42670b.a();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private SQLiteDatabase b() {
        try {
            if (!this.f42671c.getDatabasePath("athena.db").exists()) {
                this.f42670b.close();
            }
            return this.f42670b.getWritableDatabase();
        } catch (SQLiteException e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00cc  */
    public int a(athena athenaVar, int i11, enatha<String> enathaVar) throws anateh {
        String strA = athenaVar.a();
        LongSparseArray longSparseArray = new LongSparseArray();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseB = b();
                if (sQLiteDatabaseB == null) {
                    return 0;
                }
                Cursor cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT _id,tid FROM " + strA + " ORDER BY _id LIMIT " + i11, null);
                long j11 = 0;
                while (cursorRawQuery != null && cursorRawQuery.moveToNext()) {
                    long j12 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("tid"));
                    longSparseArray.put(j12, Integer.valueOf(((Integer) longSparseArray.get(j12, 0)).intValue() + 1));
                    j11 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                int iDelete = sQLiteDatabaseB.delete(strA, "_id<=" + j11 + " AND CAST(tid AS TEXT) NOT LIKE ?", new String[]{"9999%"});
                if (enathaVar != null && longSparseArray.size() > 0) {
                    enathaVar.a(longSparseArray.toString());
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return iDelete;
            } catch (SQLiteException e11) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
                if (0 != 0) {
                    cursor.close();
                }
                a(e11);
                throw new anateh("cleanupEvents_oom_sql", e11);
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                cursor.close();
            }
            throw th2;
        }
        if (0 != 0) {
            cursor.close();
        }
        throw th2;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01d8 A[Catch: all -> 0x0108, Exception -> 0x01c6, SQLiteException -> 0x01cc, TryCatch #22 {all -> 0x0108, blocks: (B:49:0x00f2, B:51:0x00f9, B:58:0x0123, B:62:0x0133, B:65:0x013f, B:67:0x0145, B:69:0x014e, B:71:0x0154, B:79:0x0175, B:87:0x0196, B:90:0x01aa, B:91:0x01af, B:94:0x01bd, B:101:0x01d8, B:120:0x027f, B:99:0x01d2, B:104:0x01f9), top: B:209:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x027f A[Catch: all -> 0x0108, Exception -> 0x01c6, SQLiteException -> 0x01cc, TRY_LEAVE, TryCatch #22 {all -> 0x0108, blocks: (B:49:0x00f2, B:51:0x00f9, B:58:0x0123, B:62:0x0133, B:65:0x013f, B:67:0x0145, B:69:0x014e, B:71:0x0154, B:79:0x0175, B:87:0x0196, B:90:0x01aa, B:91:0x01af, B:94:0x01bd, B:101:0x01d8, B:120:0x027f, B:99:0x01d2, B:104:0x01f9), top: B:209:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:159:0x036c A[Catch: all -> 0x0372, Exception -> 0x0375, SQLiteException -> 0x0378, TRY_LEAVE, TryCatch #24 {SQLiteException -> 0x0378, Exception -> 0x0375, all -> 0x0372, blocks: (B:157:0x0366, B:159:0x036c), top: B:220:0x0366 }] */
    /* JADX WARN: Code duplicated, block: B:167:0x037b  */
    /* JADX WARN: Code duplicated, block: B:169:0x037e  */
    /* JADX WARN: Code duplicated, block: B:172:0x038b  */
    /* JADX WARN: Code duplicated, block: B:186:0x03ba A[Catch: all -> 0x03aa, TryCatch #4 {all -> 0x03aa, blocks: (B:178:0x039b, B:179:0x03a9, B:184:0x03b1, B:186:0x03ba, B:187:0x03bd, B:188:0x03c7), top: B:198:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:190:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:193:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:220:0x0366 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x0196 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:234:0x01f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:238:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x00b7 A[Catch: all -> 0x00a3, Exception -> 0x00a9, SQLiteException -> 0x00af, TryCatch #26 {SQLiteException -> 0x00af, Exception -> 0x00a9, all -> 0x00a3, blocks: (B:21:0x0098, B:32:0x00b7, B:34:0x00c0, B:33:0x00ba), top: B:218:0x0098 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00ba A[Catch: all -> 0x00a3, Exception -> 0x00a9, SQLiteException -> 0x00af, TryCatch #26 {SQLiteException -> 0x00af, Exception -> 0x00a9, all -> 0x00a3, blocks: (B:21:0x0098, B:32:0x00b7, B:34:0x00c0, B:33:0x00ba), top: B:218:0x0098 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01aa A[Catch: all -> 0x0108, Exception -> 0x01c6, SQLiteException -> 0x01cc, TRY_ENTER, TRY_LEAVE, TryCatch #22 {all -> 0x0108, blocks: (B:49:0x00f2, B:51:0x00f9, B:58:0x0123, B:62:0x0133, B:65:0x013f, B:67:0x0145, B:69:0x014e, B:71:0x0154, B:79:0x0175, B:87:0x0196, B:90:0x01aa, B:91:0x01af, B:94:0x01bd, B:101:0x01d8, B:120:0x027f, B:99:0x01d2, B:104:0x01f9), top: B:209:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01bd A[Catch: all -> 0x0108, Exception -> 0x01c6, SQLiteException -> 0x01cc, TRY_ENTER, TryCatch #22 {all -> 0x0108, blocks: (B:49:0x00f2, B:51:0x00f9, B:58:0x0123, B:62:0x0133, B:65:0x013f, B:67:0x0145, B:69:0x014e, B:71:0x0154, B:79:0x0175, B:87:0x0196, B:90:0x01aa, B:91:0x01af, B:94:0x01bd, B:101:0x01d8, B:120:0x027f, B:99:0x01d2, B:104:0x01f9), top: B:209:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01d2 A[Catch: all -> 0x0108, Exception -> 0x01c6, SQLiteException -> 0x01cc, TryCatch #22 {all -> 0x0108, blocks: (B:49:0x00f2, B:51:0x00f9, B:58:0x0123, B:62:0x0133, B:65:0x013f, B:67:0x0145, B:69:0x014e, B:71:0x0154, B:79:0x0175, B:87:0x0196, B:90:0x01aa, B:91:0x01af, B:94:0x01bd, B:101:0x01d8, B:120:0x027f, B:99:0x01d2, B:104:0x01f9), top: B:209:0x00f2 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:101:0x01d8, please report this as an issue */
    public int a(athena athenaVar, Track track, int i11) throws Throwable {
        String str;
        Cursor cursorRawQuery;
        String str2;
        String str3;
        String str4;
        JSONObject jSONObject;
        int i12;
        boolean z10;
        Cursor cursor;
        boolean z11;
        String str5;
        String str6;
        boolean zContains;
        long j11;
        JSONObject jSONObject2;
        String string;
        String strA;
        byte[] bArr;
        byte[] bArr2;
        String str7;
        int i13;
        this = this;
        String str8 = "There is not enough space left";
        String strA2 = athenaVar.a();
        long tid = track.getTid();
        JSONObject jsonData = track.getJsonData();
        List<byte[]> listD = com.transsion.athena.aethna.athena.c().d();
        try {
            try {
                SQLiteDatabase sQLiteDatabaseB = b();
                if (sQLiteDatabaseB == null) {
                    if (this.f42670b.b()) {
                        com.transsion.athena.taaneh.aethna.b("There is not enough space left");
                    }
                    return -1;
                }
                String str9 = "pi";
                String str10 = " WHERE ";
                String str11 = UrlUtils.EQUAL_MARK;
                String str12 = "tid";
                String str13 = "_eid";
                if (i11 == 1) {
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        JSONObject jSONObject3 = jsonData;
                        sb2.append("SELECT * FROM ");
                        sb2.append(strA2);
                        sb2.append(" WHERE ");
                        sb2.append("tid");
                        sb2.append(UrlUtils.EQUAL_MARK);
                        sb2.append(tid);
                        sb2.append(" AND ");
                        sb2.append("et");
                        sb2.append(UrlUtils.EQUAL_MARK);
                        sb2.append(i11);
                        Cursor cursorRawQuery2 = sQLiteDatabaseB.rawQuery(sb2.toString(), null);
                        byte[] bArr3 = null;
                        String str14 = null;
                        String str15 = null;
                        while (true) {
                            if (cursorRawQuery2 != null) {
                                try {
                                    if (cursorRawQuery2.moveToNext()) {
                                        int i14 = cursorRawQuery2.getInt(cursorRawQuery2.getColumnIndex(str9));
                                        byte[] bArr4 = bArr3;
                                        String string2 = cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex(NotificationCompat.CATEGORY_EVENT));
                                        str11 = str11;
                                        if (i14 != -1) {
                                            if (i14 != 0) {
                                                try {
                                                    if (com.transsion.athena.config.data.model.anehat.b(listD)) {
                                                        if (i14 == 0) {
                                                            bArr2 = ehanat.f42613n;
                                                        } else {
                                                            bArr2 = listD.get(i14);
                                                        }
                                                        byte[] bArr5 = bArr2;
                                                        strA = com.transsion.athena.anateh.anehat.a(string2, bArr2, i14);
                                                        bArr = bArr5;
                                                    } else {
                                                        strA = string2;
                                                        bArr = bArr4;
                                                    }
                                                } catch (SQLiteException e11) {
                                                    e = e11;
                                                    cursorRawQuery = cursorRawQuery2;
                                                } catch (Exception e12) {
                                                    e = e12;
                                                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                                    throw new anateh("addJSON", e);
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    cursorRawQuery = cursorRawQuery2;
                                                    str = str8;
                                                    if (cursorRawQuery != null) {
                                                        cursorRawQuery.close();
                                                    }
                                                    if (this.f42670b.b()) {
                                                        com.transsion.athena.taaneh.aethna.b(str);
                                                    }
                                                    throw th;
                                                }
                                            } else {
                                                if (i14 == 0) {
                                                    bArr2 = ehanat.f42613n;
                                                } else {
                                                    bArr2 = listD.get(i14);
                                                }
                                                byte[] bArr6 = bArr2;
                                                strA = com.transsion.athena.anateh.anehat.a(string2, bArr2, i14);
                                                bArr = bArr6;
                                            }
                                            if (bArr == null || strA == null) {
                                                cursorRawQuery2.close();
                                                if (!this.f42670b.b()) {
                                                    return -1;
                                                }
                                                com.transsion.athena.taaneh.aethna.b(str8);
                                                return -1;
                                            }
                                            String str16 = strA;
                                            bArr3 = bArr;
                                            string2 = str16;
                                        } else {
                                            bArr3 = bArr4;
                                        }
                                        if (str14 == null) {
                                            str = str8;
                                            jSONObject = jSONObject3;
                                            try {
                                                try {
                                                    str2 = str10;
                                                    try {
                                                        str14 = String.format("\"%s\":\"%s\"", NotificationCompat.CATEGORY_EVENT, jSONObject.getString(NotificationCompat.CATEGORY_EVENT));
                                                    } catch (Exception unused) {
                                                        tid = tid;
                                                        str4 = str9;
                                                        str5 = str13;
                                                        str3 = str12;
                                                        jSONObject3 = jSONObject;
                                                        str12 = str3;
                                                        str8 = str;
                                                        str10 = str2;
                                                        tid = tid;
                                                        str13 = str5;
                                                        str9 = str4;
                                                    }
                                                } catch (Exception unused2) {
                                                    str2 = str10;
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                this = this;
                                                cursorRawQuery = cursorRawQuery2;
                                                if (cursorRawQuery != null) {
                                                    cursorRawQuery.close();
                                                }
                                                if (this.f42670b.b()) {
                                                    com.transsion.athena.taaneh.aethna.b(str);
                                                }
                                                throw th;
                                            }
                                        } else {
                                            str2 = str10;
                                            str = str8;
                                            jSONObject = jSONObject3;
                                        }
                                        String str17 = str14;
                                        try {
                                            boolean zContains2 = string2.contains(str17);
                                            str6 = str17;
                                            if (zContains2) {
                                                str4 = str9;
                                                try {
                                                    if ("ev_athena".equals(track.getEventName())) {
                                                        if (str15 == null) {
                                                            str5 = str13;
                                                            try {
                                                                String strOptString = jSONObject.getJSONObject("_eparam").optString(str5);
                                                                tid = tid;
                                                                str3 = str12;
                                                                try {
                                                                    Object[] objArr = new Object[2];
                                                                    objArr[0] = str5;
                                                                    try {
                                                                        objArr[1] = strOptString;
                                                                        str15 = String.format("\"%s\":\"%s\"", objArr);
                                                                    } catch (Exception unused3) {
                                                                        str14 = str6;
                                                                        jSONObject3 = jSONObject;
                                                                        str12 = str3;
                                                                        str8 = str;
                                                                        str10 = str2;
                                                                        tid = tid;
                                                                        str13 = str5;
                                                                        str9 = str4;
                                                                    }
                                                                } catch (Exception unused4) {
                                                                }
                                                            } catch (Exception unused5) {
                                                                str3 = str12;
                                                                str14 = str6;
                                                                jSONObject3 = jSONObject;
                                                                str12 = str3;
                                                                str8 = str;
                                                                str10 = str2;
                                                                tid = tid;
                                                                str13 = str5;
                                                                str9 = str4;
                                                            }
                                                        } else {
                                                            tid = tid;
                                                            str5 = str13;
                                                            str3 = str12;
                                                        }
                                                        String str18 = str15;
                                                        try {
                                                            str15 = str18;
                                                            zContains = string2.contains(str18);
                                                        } catch (Exception unused6) {
                                                            str15 = str18;
                                                            str14 = str6;
                                                            jSONObject3 = jSONObject;
                                                            str12 = str3;
                                                            str8 = str;
                                                            str10 = str2;
                                                            tid = tid;
                                                            str13 = str5;
                                                        }
                                                    }
                                                    if (zContains) {
                                                        try {
                                                            j11 = cursorRawQuery2.getLong(cursorRawQuery2.getColumnIndex("_id"));
                                                            if (string2.length() < 131072) {
                                                                jSONObject2 = new JSONObject(string2);
                                                                try {
                                                                    com.transsion.athena.config.data.model.anehat.a(jSONObject.getJSONObject("_eparam"), jSONObject2.getJSONObject("_eparam"));
                                                                    i12 = -1;
                                                                    if (i14 != -1) {
                                                                        string = com.transsion.athena.anateh.anehat.a(jSONObject2.toString(), bArr3);
                                                                    } else {
                                                                        string = jSONObject2.toString();
                                                                    }
                                                                    if (string != null) {
                                                                        ContentValues contentValues = new ContentValues();
                                                                        contentValues.put(NotificationCompat.CATEGORY_EVENT, string);
                                                                        sQLiteDatabaseB.update(strA2, contentValues, "_id=" + j11, null);
                                                                    }
                                                                    z10 = false;
                                                                } catch (JSONException unused7) {
                                                                    str12 = str3;
                                                                    str14 = str6;
                                                                    str10 = str2;
                                                                    tid = tid;
                                                                    jSONObject3 = jSONObject;
                                                                    str13 = str5;
                                                                    str8 = str;
                                                                    str9 = str4;
                                                                }
                                                            } else {
                                                                i12 = -1;
                                                                ContentValues contentValues2 = new ContentValues();
                                                                contentValues2.put("et", (Integer) 2);
                                                                sQLiteDatabaseB.update(strA2, contentValues2, "_id=" + j11, null);
                                                                z10 = true;
                                                            }
                                                            if (cursorRawQuery2 != null) {
                                                                cursorRawQuery2.close();
                                                            }
                                                            cursor = cursorRawQuery2;
                                                            z11 = z10;
                                                        } catch (SQLiteException e13) {
                                                            e = e13;
                                                            this = this;
                                                            cursorRawQuery = cursorRawQuery2;
                                                        } catch (Exception e14) {
                                                            e = e14;
                                                            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                                            throw new anateh("addJSON", e);
                                                        }
                                                    }
                                                    str12 = str3;
                                                    str14 = str6;
                                                    str10 = str2;
                                                    tid = tid;
                                                    jSONObject3 = jSONObject;
                                                    str13 = str5;
                                                    str8 = str;
                                                } catch (Exception unused8) {
                                                    str5 = str13;
                                                }
                                                str9 = str4;
                                            } else {
                                                str4 = str9;
                                            }
                                            str5 = str13;
                                            str3 = str12;
                                            zContains = zContains2;
                                            if (zContains) {
                                                j11 = cursorRawQuery2.getLong(cursorRawQuery2.getColumnIndex("_id"));
                                                if (string2.length() < 131072) {
                                                    jSONObject2 = new JSONObject(string2);
                                                    com.transsion.athena.config.data.model.anehat.a(jSONObject.getJSONObject("_eparam"), jSONObject2.getJSONObject("_eparam"));
                                                    i12 = -1;
                                                    if (i14 != -1) {
                                                        string = com.transsion.athena.anateh.anehat.a(jSONObject2.toString(), bArr3);
                                                    } else {
                                                        string = jSONObject2.toString();
                                                    }
                                                    if (string != null) {
                                                        ContentValues contentValues3 = new ContentValues();
                                                        contentValues3.put(NotificationCompat.CATEGORY_EVENT, string);
                                                        sQLiteDatabaseB.update(strA2, contentValues3, "_id=" + j11, null);
                                                    }
                                                    z10 = false;
                                                } else {
                                                    i12 = -1;
                                                    ContentValues contentValues4 = new ContentValues();
                                                    contentValues4.put("et", (Integer) 2);
                                                    sQLiteDatabaseB.update(strA2, contentValues4, "_id=" + j11, null);
                                                    z10 = true;
                                                }
                                                if (cursorRawQuery2 != null) {
                                                    cursorRawQuery2.close();
                                                }
                                                cursor = cursorRawQuery2;
                                                z11 = z10;
                                            }
                                            str12 = str3;
                                            str14 = str6;
                                            str10 = str2;
                                            tid = tid;
                                            jSONObject3 = jSONObject;
                                            str13 = str5;
                                            str8 = str;
                                        } catch (Exception unused9) {
                                            str6 = str17;
                                            tid = tid;
                                            str4 = str9;
                                            str5 = str13;
                                            str3 = str12;
                                        }
                                        str9 = str4;
                                    }
                                } catch (SQLiteException e15) {
                                    e = e15;
                                    this = this;
                                    cursorRawQuery = cursorRawQuery2;
                                } catch (Exception e16) {
                                    e = e16;
                                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                    throw new anateh("addJSON", e);
                                } catch (Throwable th4) {
                                    th = th4;
                                    str = str8;
                                    this = this;
                                    cursorRawQuery = cursorRawQuery2;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (this.f42670b.b()) {
                                        com.transsion.athena.taaneh.aethna.b(str);
                                    }
                                    throw th;
                                }
                                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                if (cursorRawQuery != null) {
                                    cursorRawQuery.close();
                                }
                                this.a(e);
                                throw new anateh("addJSON_sql", e);
                            }
                            str2 = str10;
                            str = str8;
                            tid = tid;
                            str3 = str12;
                            str11 = str11;
                            str4 = str9;
                            jSONObject = jSONObject3;
                            i12 = -1;
                            z10 = true;
                            if (cursorRawQuery2 != null) {
                                cursorRawQuery2.close();
                            }
                            cursor = cursorRawQuery2;
                            z11 = z10;
                        }
                    } catch (SQLiteException e17) {
                        e = e17;
                        cursorRawQuery = null;
                        this = this;
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        this.a(e);
                        throw new anateh("addJSON_sql", e);
                    } catch (Exception e18) {
                        e = e18;
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                        throw new anateh("addJSON", e);
                    } catch (Throwable th5) {
                        th = th5;
                        str = "There is not enough space left";
                        cursorRawQuery = null;
                        this = this;
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        if (this.f42670b.b()) {
                            com.transsion.athena.taaneh.aethna.b(str);
                        }
                        throw th;
                    }
                } else {
                    str2 = " WHERE ";
                    str = "There is not enough space left";
                    tid = tid;
                    jSONObject = jsonData;
                    str3 = "tid";
                    str11 = UrlUtils.EQUAL_MARK;
                    str4 = "pi";
                    i12 = -1;
                    z11 = true;
                    cursor = null;
                }
                if (z11) {
                    try {
                        Pair<Integer, byte[]> pairI = com.transsion.athena.aethna.athena.c().i();
                        Integer num = (Integer) pairI.first;
                        num.intValue();
                        String strA3 = com.transsion.athena.anateh.anehat.a(jSONObject.toString(), (byte[]) pairI.second);
                        if (strA3 != null) {
                            ContentValues contentValues5 = new ContentValues();
                            str7 = str3;
                            contentValues5.put(str7, Long.valueOf(tid));
                            contentValues5.put(NotificationCompat.CATEGORY_EVENT, strA3);
                            contentValues5.put("et", Integer.valueOf(i11));
                            contentValues5.put(str4, num);
                            contentValues5.put("created_at", Long.valueOf(track.getTrackTs()));
                            if (com.transsion.athena.taaneh.anehat.b(tid)) {
                                contentValues5.put("ext", track.getEventName());
                            }
                            if (track.getBootId() != null) {
                                contentValues5.put("er_ts", Long.valueOf(track.getTrackErTs()));
                                contentValues5.put("boot_id", track.getBootId());
                            }
                            sQLiteDatabaseB.insert(strA2, null, contentValues5);
                        }
                        cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT COUNT(*) FROM " + strA2 + str2 + str7 + str11 + tid, null);
                        if (cursorRawQuery == null) {
                            try {
                                if (cursorRawQuery.moveToNext()) {
                                    i13 = cursorRawQuery.getInt(0);
                                } else {
                                    i13 = i12;
                                }
                            } catch (SQLiteException e19) {
                                e = e19;
                                this = this;
                                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                if (cursorRawQuery != null) {
                                    cursorRawQuery.close();
                                }
                                this.a(e);
                                throw new anateh("addJSON_sql", e);
                            } catch (Exception e20) {
                                e = e20;
                                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                throw new anateh("addJSON", e);
                            } catch (Throwable th6) {
                                th = th6;
                                this = this;
                                if (cursorRawQuery != null) {
                                    cursorRawQuery.close();
                                }
                                if (this.f42670b.b()) {
                                    com.transsion.athena.taaneh.aethna.b(str);
                                }
                                throw th;
                            }
                        } else {
                            i13 = i12;
                        }
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        if (this.f42670b.b()) {
                            return i13;
                        }
                        com.transsion.athena.taaneh.aethna.b(str);
                        return -2;
                    } catch (SQLiteException e21) {
                        e = e21;
                        this = this;
                        cursorRawQuery = cursor;
                    } catch (Exception e22) {
                        e = e22;
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                        throw new anateh("addJSON", e);
                    } catch (Throwable th7) {
                        th = th7;
                        this = this;
                        cursorRawQuery = cursor;
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        if (this.f42670b.b()) {
                            com.transsion.athena.taaneh.aethna.b(str);
                        }
                        throw th;
                    }
                }
                str7 = str3;
                cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT COUNT(*) FROM " + strA2 + str2 + str7 + str11 + tid, null);
                if (cursorRawQuery == null) {
                    i13 = i12;
                } else if (cursorRawQuery.moveToNext()) {
                    i13 = cursorRawQuery.getInt(0);
                } else {
                    i13 = i12;
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                if (this.f42670b.b()) {
                    return i13;
                }
                com.transsion.athena.taaneh.aethna.b(str);
                return -2;
            } catch (Throwable th8) {
                th = th8;
            }
        } catch (SQLiteException e23) {
            e = e23;
            cursorRawQuery = null;
        } catch (Exception e24) {
            e = e24;
        } catch (Throwable th9) {
            th = th9;
            str = "There is not enough space left";
            cursorRawQuery = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:145:0x02c7  */
    public com.transsion.athena.data.anehat a(athena athenaVar, long j11, long j12, String str, int i11, int i12) throws Throwable {
        String str2;
        long j13;
        int i13;
        int i14;
        String str3;
        int iIntValue;
        String str4 = "net";
        String str5 = NotificationCompat.CATEGORY_EVENT;
        List<byte[]> listD = com.transsion.athena.aethna.athena.c().d();
        Cursor cursor = null;
        if (com.transsion.athena.config.data.model.anehat.a(listD)) {
            return null;
        }
        String strA = athenaVar.a();
        try {
            try {
                SQLiteDatabase sQLiteDatabaseB = b();
                if (sQLiteDatabaseB == null) {
                    return null;
                }
                String str6 = "_eparam";
                if (TextUtils.isEmpty(str)) {
                    try {
                        str2 = "SELECT * FROM " + strA + " WHERE tid" + UrlUtils.EQUAL_MARK + j11 + " AND created_at<=" + j12 + " ORDER BY _id LIMIT " + i12;
                    } catch (SQLiteException e11) {
                        e = e11;
                        cursor = null;
                    } catch (Exception e12) {
                        e = e12;
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                        throw new anateh("queryEventList", e);
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = null;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } else {
                    try {
                        str2 = "SELECT * FROM " + strA + " WHERE tid" + UrlUtils.EQUAL_MARK + j11 + " AND " + CommonUtils.PARAM_UID + "='" + str + "' ORDER BY _id";
                    } catch (SQLiteException e13) {
                        e = e13;
                        cursor = null;
                    } catch (Exception e14) {
                        e = e14;
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                        throw new anateh("queryEventList", e);
                    } catch (Throwable th3) {
                        th = th3;
                        cursor = null;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                cursor = null;
                Cursor cursorRawQuery = sQLiteDatabaseB.rawQuery(str2, null);
                if (cursorRawQuery != null) {
                    try {
                        try {
                            if (cursorRawQuery.getCount() != 0) {
                                int count = cursorRawQuery.getCount();
                                ArrayList arrayList = new ArrayList();
                                String str7 = "";
                                long j14 = 0;
                                int i15 = 0;
                                int i16 = 0;
                                int i17 = 0;
                                long j15 = 0;
                                while (true) {
                                    if (!cursorRawQuery.moveToNext()) {
                                        j13 = j14;
                                        i13 = i16;
                                        i14 = i17;
                                        str3 = str7;
                                        break;
                                    }
                                    String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(str5));
                                    long j16 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("created_at"));
                                    int i18 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("pi"));
                                    int i19 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("et"));
                                    if (i18 != -1) {
                                        string = com.transsion.athena.anateh.anehat.a(string, listD.get(i18), i18);
                                    }
                                    if (j14 == 0) {
                                        j14 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                    }
                                    if (string != null) {
                                        if (i19 != 0) {
                                            string = string.replace("&add", "").replace("&append", "");
                                        }
                                        try {
                                            JSONObject jSONObject = new JSONObject(string);
                                            String str8 = (String) jSONObject.remove(str5);
                                            try {
                                                if (jSONObject.has(str4)) {
                                                    try {
                                                        iIntValue = ((Integer) jSONObject.remove(str4)).intValue();
                                                    } catch (Exception e15) {
                                                        e = e15;
                                                        str7 = str8;
                                                        str6 = str6;
                                                        str4 = str4;
                                                        e.printStackTrace();
                                                        i15++;
                                                    }
                                                } else {
                                                    iIntValue = 0;
                                                }
                                                try {
                                                    Object objRemove = jSONObject.has(str6) ? jSONObject.remove(str6) : new JSONObject();
                                                    if (objRemove instanceof JSONObject) {
                                                        try {
                                                            if (jSONObject.length() > 0) {
                                                                Iterator<String> itKeys = jSONObject.keys();
                                                                while (itKeys.hasNext()) {
                                                                    itKeys = itKeys;
                                                                    String next = itKeys.next();
                                                                    str4 = str4;
                                                                    try {
                                                                        if (next.startsWith("_")) {
                                                                            str5 = str5;
                                                                            try {
                                                                                ((JSONObject) objRemove).put(next, jSONObject.get(next));
                                                                                str5 = str5;
                                                                            } catch (Exception e16) {
                                                                                e = e16;
                                                                                str7 = str8;
                                                                                e.printStackTrace();
                                                                                i15++;
                                                                                j15 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                                                                str4 = str4;
                                                                                str5 = str5;
                                                                                str6 = str6;
                                                                            }
                                                                        }
                                                                    } catch (Exception e17) {
                                                                        e = e17;
                                                                        str5 = str5;
                                                                        str7 = str8;
                                                                        e.printStackTrace();
                                                                        i15++;
                                                                        j15 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                                                        str4 = str4;
                                                                        str5 = str5;
                                                                        str6 = str6;
                                                                    }
                                                                }
                                                            }
                                                        } catch (Exception e18) {
                                                            e = e18;
                                                            str4 = str4;
                                                        }
                                                    }
                                                    str4 = str4;
                                                    str5 = str5;
                                                    arrayList.add(new com.transsion.athena.data.anehat.athena(str8, j16, iIntValue, objRemove.toString()));
                                                    i16++;
                                                    int length = i17 + string.length();
                                                    if (length >= i11) {
                                                        try {
                                                            i14 = length;
                                                            j15 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                                            str3 = str8;
                                                            j13 = j14;
                                                            i13 = i16;
                                                            break;
                                                        } catch (Exception e19) {
                                                            e = e19;
                                                            i17 = length;
                                                            str7 = str8;
                                                            e.printStackTrace();
                                                            i15++;
                                                            j15 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                                            str4 = str4;
                                                            str5 = str5;
                                                            str6 = str6;
                                                        }
                                                    } else {
                                                        i17 = length;
                                                        str7 = str8;
                                                        j15 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                                        str4 = str4;
                                                        str5 = str5;
                                                        str6 = str6;
                                                    }
                                                } catch (Exception e20) {
                                                    e = e20;
                                                    str4 = str4;
                                                    str5 = str5;
                                                }
                                            } catch (Exception e21) {
                                                e = e21;
                                                str5 = str5;
                                                str6 = str6;
                                                str4 = str4;
                                            }
                                        } catch (Exception e22) {
                                            e = e22;
                                        }
                                    } else {
                                        str5 = str5;
                                        str6 = str6;
                                        str4 = str4;
                                    }
                                    i15++;
                                    j15 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                    str4 = str4;
                                    str5 = str5;
                                    str6 = str6;
                                }
                                cursorRawQuery.close();
                                if (i13 <= 0) {
                                    cursorRawQuery.close();
                                    return null;
                                }
                                int i20 = i13 + i15;
                                com.transsion.athena.data.anehat anehatVar = new com.transsion.athena.data.anehat(j11, str3, arrayList, j13, j15, i13, i14, count <= i20 && !(count == i12 && count == i20));
                                cursorRawQuery.close();
                                return anehatVar;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            cursor = cursorRawQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    } catch (SQLiteException e23) {
                        e = e23;
                        cursor = cursorRawQuery;
                    } catch (Exception e24) {
                        e = e24;
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                        throw new anateh("queryEventList", e);
                    }
                }
                if (cursorRawQuery == null) {
                    return null;
                }
                cursorRawQuery.close();
                return null;
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (SQLiteException e25) {
            e = e25;
        } catch (Exception e26) {
            e = e26;
        } catch (Throwable th6) {
            th = th6;
        }
        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
        if (cursor != null) {
            cursor.close();
        }
        try {
            a(e);
            throw new anateh("queryEventList_sql", e);
        } catch (Throwable th7) {
            th = th7;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x008a  */
    public List<AppIdData> a(athena athenaVar) throws anateh {
        String strA = athenaVar.a();
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseB = b();
                if (sQLiteDatabaseB == null) {
                    return arrayList;
                }
                cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT * FROM " + strA, null);
                while (cursorRawQuery != null && cursorRawQuery.moveToNext()) {
                    AppIdData appIdData = new AppIdData();
                    appIdData.f42642a = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(SafeStringUtils.SP_APPID));
                    appIdData.f42643b = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("base"));
                    appIdData.f42644c = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(CommonUtils.PARAM_UID));
                    appIdData.f42645d = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("try"));
                    arrayList.add(appIdData);
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return arrayList;
            } catch (SQLiteException e11) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                a(e11);
                throw new anateh("getAppIdList_sql", e11);
            }
        } catch (Throwable th2) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th2;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th2;
    }

    public void a() {
        com.transsion.athena.taaneh.aethna.a("deleteDB");
        try {
            this.f42670b.a();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:68:0x019e  */
    /* JADX WARN: Code duplicated, block: B:70:0x01a3  */
    public void a(athena athenaVar, com.transsion.athena.config.data.model.athena athenaVar2, boolean z10) throws Throwable {
        SQLiteDatabase sQLiteDatabaseB;
        Cursor cursor;
        Cursor cursorRawQuery;
        String strA = athenaVar.a();
        Cursor cursor2 = null;
        cursor2 = null;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabaseB = b();
            if (sQLiteDatabaseB == null) {
                if (sQLiteDatabaseB != null) {
                    sQLiteDatabaseB.endTransaction();
                    return;
                }
                return;
            }
            try {
                sQLiteDatabaseB.beginTransaction();
                ContentValues contentValues = new ContentValues();
                contentValues.put("cfg", athenaVar2.m());
                sQLiteDatabaseB.update(strA, contentValues, "appid=" + athenaVar2.b(), null);
                if (z10) {
                    sQLiteDatabaseB.delete(athena.f42674c.a(), "CAST(tid AS TEXT) LIKE ?", new String[]{athenaVar2.b() + "%"});
                    List<TidConfigBean> listJ = athenaVar2.j();
                    HashMap map = new HashMap();
                    for (TidConfigBean tidConfigBean : listJ) {
                        aatnhe tidConfig = tidConfigBean.getTidConfig();
                        contentValues.clear();
                        contentValues.put("tid", Long.valueOf(tidConfigBean.getTid()));
                        contentValues.put("ev", tidConfigBean.getEvent());
                        contentValues.put("pt", Long.valueOf(tidConfig.j()));
                        contentValues.put("cf", tidConfig.o());
                        sQLiteDatabaseB.insert(athena.f42674c.a(), null, contentValues);
                        if (tidConfigBean.getEvent() != null) {
                            map.put(tidConfigBean.getEvent(), Long.valueOf(tidConfigBean.getTid()));
                        }
                    }
                    cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT DISTINCT ext FROM " + athena.f42672a.a() + " WHERE tid" + UrlUtils.EQUAL_MARK + athenaVar2.b(), null);
                    while (cursorRawQuery != null) {
                        try {
                            if (!cursorRawQuery.moveToNext()) {
                                break;
                            }
                            String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("ext"));
                            if (map.containsKey(string)) {
                                contentValues.clear();
                                contentValues.put("tid", (Long) map.get(string));
                                sQLiteDatabaseB.update(athena.f42672a.a(), contentValues, "tid=" + athenaVar2.b() + " AND ext=?", new String[]{string});
                            }
                        } catch (SQLiteException e11) {
                            cursor = cursorRawQuery;
                            e = e11;
                            try {
                                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (sQLiteDatabaseB != null) {
                                    sQLiteDatabaseB.endTransaction();
                                } else {
                                    sQLiteDatabase = sQLiteDatabaseB;
                                }
                                try {
                                    a(e);
                                    throw new anateh("updateAppConfig_sql", e);
                                } catch (Throwable th2) {
                                    th = th2;
                                    sQLiteDatabaseB = sQLiteDatabase;
                                    cursor2 = cursor;
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    if (sQLiteDatabaseB != null) {
                                        sQLiteDatabaseB.endTransaction();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Throwable th4) {
                            cursor2 = cursorRawQuery;
                            th = th4;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            if (sQLiteDatabaseB != null) {
                                sQLiteDatabaseB.endTransaction();
                            }
                            throw th;
                        }
                    }
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                } else {
                    cursorRawQuery = null;
                }
                sQLiteDatabaseB.setTransactionSuccessful();
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                sQLiteDatabaseB.endTransaction();
            } catch (SQLiteException e12) {
                e = e12;
                cursor = null;
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (SQLiteException e13) {
            e = e13;
            cursor = null;
            sQLiteDatabaseB = null;
        } catch (Throwable th6) {
            th = th6;
            sQLiteDatabaseB = null;
        }
    }

    public void a(athena athenaVar, AppIdData appIdData) throws anateh {
        String strA = athenaVar.a();
        try {
            SQLiteDatabase sQLiteDatabaseB = b();
            if (sQLiteDatabaseB == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put(SafeStringUtils.SP_APPID, Integer.valueOf(appIdData.f42642a));
            contentValues.put("base", appIdData.f42643b);
            if (sQLiteDatabaseB.update(strA, contentValues, "appid=" + appIdData.f42642a, null) != 1) {
                sQLiteDatabaseB.insert(strA, null, contentValues);
            }
        } catch (SQLiteException e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            a(e11);
            throw new anateh("addAppId_sql", e11);
        }
    }

    public void a(athena athenaVar, String str, long j11) throws anateh {
        String strA = athenaVar.a();
        try {
            SQLiteDatabase sQLiteDatabaseB = b();
            if (sQLiteDatabaseB == null) {
                return;
            }
            sQLiteDatabaseB.execSQL("UPDATE " + strA + " SET created_at = er_ts + " + j11 + ", boot_id = '' WHERE boot_id = '" + str + "'");
        } catch (SQLiteException e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            a(e11);
            throw new anateh("updateEvents_sql", e11);
        }
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0064: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:16:0x0064 */
    public void a(athena athenaVar, List<AppIdData> list) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabaseB;
        String strA = athenaVar.a();
        StringBuilder sb2 = new StringBuilder();
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            try {
                try {
                    sQLiteDatabaseB = b();
                    if (sQLiteDatabaseB == null) {
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.endTransaction();
                            return;
                        }
                        return;
                    }
                    try {
                        sQLiteDatabaseB.beginTransaction();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(CommonUtils.PARAM_UID, "");
                        for (AppIdData appIdData : list) {
                            sQLiteDatabaseB.update(athena.f42672a.a(), contentValues, "CAST(tid AS TEXT) LIKE ? AND uid=?", new String[]{appIdData.f42642a + "%", appIdData.f42644c});
                            com.transsion.athena.config.data.model.anehat.a(sb2, Integer.valueOf(appIdData.f42642a));
                        }
                        contentValues.put("try", (Integer) 0);
                        sQLiteDatabaseB.update(strA, contentValues, "appid IN (" + sb2.toString() + ")", null);
                        sQLiteDatabaseB.setTransactionSuccessful();
                        sQLiteDatabaseB.endTransaction();
                    } catch (SQLiteException e11) {
                        e = e11;
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.endTransaction();
                        } else {
                            sQLiteDatabase2 = sQLiteDatabaseB;
                        }
                        a(e);
                        throw new anateh("updateAppIdList_sql", e);
                    }
                } catch (SQLiteException e12) {
                    e = e12;
                    sQLiteDatabaseB = null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (sQLiteDatabase2 != null) {
                    sQLiteDatabase2.endTransaction();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabase2 = sQLiteDatabase;
        }
    }

    public void a(athena athenaVar, List<AppIdData> list, int i11) throws anateh {
        String strA = athenaVar.a();
        StringBuilder sb2 = new StringBuilder();
        try {
            for (AppIdData appIdData : list) {
                com.transsion.athena.config.data.model.anehat.a(sb2, Integer.valueOf(appIdData.f42642a));
                appIdData.f42645d = i11;
            }
            SQLiteDatabase sQLiteDatabaseB = b();
            if (sQLiteDatabaseB == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("try", Integer.valueOf(i11));
            sQLiteDatabaseB.update(strA, contentValues, "appid IN (" + sb2.toString() + ")", null);
        } catch (SQLiteException e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            a(e11);
            throw new anateh("updateEvents_sql", e11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0276 A[Catch: all -> 0x00c6, TryCatch #2 {all -> 0x00c6, blocks: (B:20:0x0088, B:22:0x008e, B:29:0x00a3, B:31:0x00c1, B:42:0x00d7, B:38:0x00ce, B:44:0x00e2, B:113:0x026d, B:115:0x0276, B:117:0x027b), top: B:131:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:117:0x027b A[Catch: all -> 0x00c6, TRY_LEAVE, TryCatch #2 {all -> 0x00c6, blocks: (B:20:0x0088, B:22:0x008e, B:29:0x00a3, B:31:0x00c1, B:42:0x00d7, B:38:0x00ce, B:44:0x00e2, B:113:0x026d, B:115:0x0276, B:117:0x027b), top: B:131:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:119:0x0282  */
    /* JADX WARN: Code duplicated, block: B:125:0x0296  */
    /* JADX WARN: Code duplicated, block: B:127:0x029b  */
    public void a(athena athenaVar, List<AppIdData> list, long j11, String str, enatha<SparseArray<com.transsion.athena.data.enatha>> enathaVar) throws Throwable {
        Cursor cursor;
        SQLiteDatabase sQLiteDatabaseB;
        Cursor cursorRawQuery;
        SQLiteDatabase sQLiteDatabase;
        String str2;
        Cursor cursor2;
        String str3;
        int i11;
        String str4 = "_id";
        String str5 = " AND ";
        String strA = athenaVar.a();
        StringBuilder sb2 = new StringBuilder();
        SparseArray<com.transsion.athena.data.enatha> sparseArray = new SparseArray<>();
        Cursor cursor3 = null;
        try {
            try {
                Iterator<AppIdData> it = list.iterator();
                while (it.hasNext()) {
                    try {
                        com.transsion.athena.config.data.model.anehat.a(sb2, Integer.valueOf(it.next().f42642a));
                    } catch (SQLiteException e11) {
                        e = e11;
                        sQLiteDatabaseB = null;
                        cursorRawQuery = null;
                        cursor = null;
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.endTransaction();
                            sQLiteDatabase = cursor;
                        } else {
                            sQLiteDatabase = sQLiteDatabaseB;
                        }
                        try {
                            a(e);
                            throw new anateh("cleanupEvents_sql", e);
                        } catch (Throwable th2) {
                            th = th2;
                            sQLiteDatabaseB = sQLiteDatabase;
                            cursor3 = cursorRawQuery;
                            if (cursor3 != null) {
                                cursor3.close();
                            }
                            if (sQLiteDatabaseB != null) {
                                sQLiteDatabaseB.endTransaction();
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        sQLiteDatabaseB = null;
                        if (cursor3 != null) {
                            cursor3.close();
                        }
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.endTransaction();
                        }
                        throw th;
                    }
                }
                sQLiteDatabaseB = b();
                if (sQLiteDatabaseB == null) {
                    if (sQLiteDatabaseB != null) {
                        sQLiteDatabaseB.endTransaction();
                        return;
                    }
                    return;
                }
                try {
                    sQLiteDatabaseB.beginTransaction();
                    cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT * FROM " + athena.f42675d.a() + " WHERE " + SafeStringUtils.SP_APPID + " IN (" + ((Object) sb2) + ")", null);
                    while (true) {
                        str2 = "ext";
                        if (cursorRawQuery == null) {
                            break;
                        }
                        try {
                            if (!cursorRawQuery.moveToNext()) {
                                break;
                            }
                            int i12 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(SafeStringUtils.SP_APPID));
                            if (i12 != 9999 && i12 != 1031 && i12 != 1041) {
                                int i13 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("cnt"));
                                String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("date"));
                                String string2 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("ext"));
                                if (TextUtils.isEmpty(string2)) {
                                    i11 = 0;
                                } else {
                                    try {
                                        i11 = Integer.parseInt(string2);
                                    } catch (Exception e12) {
                                        e12.printStackTrace();
                                        i11 = 0;
                                    }
                                }
                                sparseArray.put(i12, new com.transsion.athena.data.enatha(i12, string, i13, i11));
                            }
                        } catch (SQLiteException e13) {
                            e = e13;
                            cursor = null;
                            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                            }
                            if (sQLiteDatabaseB != null) {
                                sQLiteDatabaseB.endTransaction();
                                sQLiteDatabase = cursor;
                            } else {
                                sQLiteDatabase = sQLiteDatabaseB;
                            }
                            a(e);
                            throw new anateh("cleanupEvents_sql", e);
                        }
                    }
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    try {
                        try {
                            Iterator<AppIdData> it2 = list.iterator();
                            while (it2.hasNext()) {
                                AppIdData next = it2.next();
                                int i14 = 0;
                                for (com.transsion.athena.data.anehat anehatVar : next.f42646e) {
                                    try {
                                        Iterator<AppIdData> it3 = it2;
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("tid=");
                                        cursor2 = cursorRawQuery;
                                        String str6 = str2;
                                        try {
                                            try {
                                                sb3.append(anehatVar.f42687a);
                                                sb3.append(str5);
                                                sb3.append(str4);
                                                sb3.append(">=");
                                                sb3.append(anehatVar.f42690d);
                                                sb3.append(str5);
                                                sb3.append(str4);
                                                sb3.append("<=");
                                                sb3.append(anehatVar.f42691e);
                                                sQLiteDatabaseB.delete(strA, sb3.toString(), null);
                                                if (anehatVar.f42694h) {
                                                    ContentValues contentValues = new ContentValues();
                                                    contentValues.put("pt", Long.valueOf(j11));
                                                    sQLiteDatabaseB.update(athena.f42674c.a(), contentValues, "tid=" + anehatVar.f42687a, null);
                                                }
                                                i14 += anehatVar.f42692f;
                                                it2 = it3;
                                                cursorRawQuery = cursor2;
                                                str2 = str6;
                                                str4 = str4;
                                                str5 = str5;
                                                cursor3 = null;
                                            } catch (SQLiteException e14) {
                                                e = e14;
                                                cursorRawQuery = cursor2;
                                                cursor = null;
                                                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                                if (cursorRawQuery != null) {
                                                    cursorRawQuery.close();
                                                }
                                                if (sQLiteDatabaseB != null) {
                                                    sQLiteDatabaseB.endTransaction();
                                                    sQLiteDatabase = cursor;
                                                } else {
                                                    sQLiteDatabase = sQLiteDatabaseB;
                                                }
                                                a(e);
                                                throw new anateh("cleanupEvents_sql", e);
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            cursor3 = cursor2;
                                            if (cursor3 != null) {
                                                cursor3.close();
                                            }
                                            if (sQLiteDatabaseB != null) {
                                                sQLiteDatabaseB.endTransaction();
                                            }
                                            throw th;
                                        }
                                    } catch (SQLiteException e15) {
                                        e = e15;
                                    }
                                }
                                String str7 = str4;
                                String str8 = str5;
                                Iterator<AppIdData> it4 = it2;
                                cursor2 = cursorRawQuery;
                                String str9 = str2;
                                try {
                                    ContentValues contentValues2 = new ContentValues();
                                    com.transsion.athena.data.enatha enathaVar2 = sparseArray.get(next.f42642a);
                                    if (enathaVar2 != null) {
                                        String str10 = enathaVar2.f42702b;
                                        if (str10 == null || str10.equals(str)) {
                                            sparseArray.remove(next.f42642a);
                                        }
                                        String str11 = enathaVar2.f42702b;
                                        if (str11 == null || !str11.equals(str)) {
                                            str3 = str9;
                                            contentValues2.put("date", str);
                                            contentValues2.put("cnt", Integer.valueOf(i14));
                                            contentValues2.put(str3, "1");
                                        } else {
                                            contentValues2.put("cnt", Integer.valueOf(enathaVar2.f42703c + i14));
                                            str3 = str9;
                                            contentValues2.put(str3, String.valueOf(enathaVar2.f42704d + 1));
                                        }
                                    } else {
                                        str3 = str9;
                                    }
                                    contentValues2.put(CommonUtils.PARAM_UID, "");
                                    contentValues2.put("try", (Integer) 0);
                                    cursor = null;
                                    try {
                                        sQLiteDatabaseB.update(athena.f42675d.a(), contentValues2, "appid=" + next.f42642a, null);
                                        cursor3 = null;
                                        cursorRawQuery = cursor2;
                                        str4 = str7;
                                        str5 = str8;
                                        str2 = str3;
                                        it2 = it4;
                                    } catch (SQLiteException e16) {
                                        e = e16;
                                        cursorRawQuery = cursor2;
                                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                        if (cursorRawQuery != null) {
                                            cursorRawQuery.close();
                                        }
                                        if (sQLiteDatabaseB != null) {
                                            sQLiteDatabaseB.endTransaction();
                                            sQLiteDatabase = cursor;
                                        } else {
                                            sQLiteDatabase = sQLiteDatabaseB;
                                        }
                                        a(e);
                                        throw new anateh("cleanupEvents_sql", e);
                                    }
                                } catch (SQLiteException e17) {
                                    e = e17;
                                    cursor = null;
                                    cursorRawQuery = cursor2;
                                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseB != null) {
                                        sQLiteDatabaseB.endTransaction();
                                        sQLiteDatabase = cursor;
                                    } else {
                                        sQLiteDatabase = sQLiteDatabaseB;
                                    }
                                    a(e);
                                    throw new anateh("cleanupEvents_sql", e);
                                }
                            }
                            cursor = cursor3;
                            cursor2 = cursorRawQuery;
                            sQLiteDatabaseB.setTransactionSuccessful();
                            if (enathaVar != null) {
                                enathaVar.a(sparseArray);
                            }
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            sQLiteDatabaseB.endTransaction();
                        } catch (SQLiteException e18) {
                            e = e18;
                            cursor = cursor3;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        cursor2 = cursorRawQuery;
                    }
                } catch (SQLiteException e19) {
                    e = e19;
                    cursor = null;
                    cursorRawQuery = null;
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Throwable th7) {
                th = th7;
                cursor3 = cursorRawQuery;
                if (cursor3 != null) {
                    cursor3.close();
                }
                if (sQLiteDatabaseB != null) {
                    sQLiteDatabaseB.endTransaction();
                }
                throw th;
            }
        } catch (SQLiteException e20) {
            e = e20;
            cursor = null;
            sQLiteDatabaseB = null;
            cursorRawQuery = null;
        } catch (Throwable th8) {
            th = th8;
        }
    }

    public void a(athena athenaVar, List<Long> list, enatha<String> enathaVar) throws Throwable {
        String strA = athenaVar.a();
        String strA2 = com.transsion.athena.config.data.model.anehat.a(list, ",");
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseB = b();
                if (sQLiteDatabaseB == null) {
                    return;
                }
                LongSparseArray longSparseArray = new LongSparseArray();
                Cursor cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT tid FROM " + strA + " WHERE tid IN (" + strA2 + ")", null);
                while (cursorRawQuery != null) {
                    try {
                        if (!cursorRawQuery.moveToNext()) {
                            break;
                        }
                        long j11 = cursorRawQuery.getLong(0);
                        longSparseArray.put(j11, Integer.valueOf(((Integer) longSparseArray.get(j11, 0)).intValue() + 1));
                    } catch (SQLiteException e11) {
                        e = e11;
                        cursor = cursorRawQuery;
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = cursorRawQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                sQLiteDatabaseB.delete(strA, "tid IN (" + strA2 + ")", null);
                if (enathaVar != null && longSparseArray.size() > 0) {
                    enathaVar.a(longSparseArray.toString());
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                    return;
                }
                return;
            } catch (SQLiteException e12) {
                e = e12;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
        if (cursor != null) {
            cursor.close();
        }
        a(e);
        throw new anateh("cleanupEvents_off_sql", e);
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0081: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:16:0x0081 */
    public void a(athena athenaVar, List<AppIdData> list, String str) throws Throwable {
        SQLiteDatabase sQLiteDatabaseB;
        SQLiteDatabase sQLiteDatabase;
        String strA = athenaVar.a();
        StringBuilder sb2 = new StringBuilder();
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            try {
                try {
                    sQLiteDatabaseB = b();
                    if (sQLiteDatabaseB == null) {
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.endTransaction();
                            return;
                        }
                        return;
                    }
                    try {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(CommonUtils.PARAM_UID, str);
                        sQLiteDatabaseB.beginTransaction();
                        for (AppIdData appIdData : list) {
                            for (com.transsion.athena.data.anehat anehatVar : appIdData.f42646e) {
                                sQLiteDatabaseB.update(strA, contentValues, "tid=" + anehatVar.f42687a + " AND _id>=" + anehatVar.f42690d + " AND _id<=" + anehatVar.f42691e, null);
                            }
                            com.transsion.athena.config.data.model.anehat.a(sb2, Integer.valueOf(appIdData.f42642a));
                        }
                        contentValues.put("try", (Integer) 0);
                        sQLiteDatabaseB.update(athena.f42675d.a(), contentValues, "appid IN (" + sb2.toString() + ")", null);
                        sQLiteDatabaseB.setTransactionSuccessful();
                        sQLiteDatabaseB.endTransaction();
                    } catch (SQLiteException e11) {
                        e = e11;
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.endTransaction();
                        }
                        a(e);
                        throw new anateh("updateEvents_sql", e);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteDatabase2 = sQLiteDatabase;
                    if (sQLiteDatabase2 != null) {
                        sQLiteDatabase2.endTransaction();
                    }
                    throw th;
                }
            } catch (SQLiteException e12) {
                e = e12;
                sQLiteDatabaseB = null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void a(enatha<SparseArray<com.transsion.athena.config.data.model.athena>> enathaVar) throws Throwable {
        com.transsion.athena.config.data.model.athena athenaVarA;
        SparseArray<com.transsion.athena.config.data.model.athena> sparseArray = new SparseArray<>();
        Cursor cursorRawQuery = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseB = b();
                if (sQLiteDatabaseB == null) {
                    return;
                }
                Cursor cursorRawQuery2 = sQLiteDatabaseB.rawQuery("SELECT * FROM " + athena.f42675d.a(), null);
                while (cursorRawQuery2 != null) {
                    try {
                        if (!cursorRawQuery2.moveToNext()) {
                            break;
                        }
                        String string = cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex("cfg"));
                        if (!TextUtils.isEmpty(string) && (athenaVarA = com.transsion.athena.config.data.model.athena.a(string)) != null) {
                            athenaVarA.a(cursorRawQuery2.getInt(cursorRawQuery2.getColumnIndex(SafeStringUtils.SP_APPID)));
                            sparseArray.put(athenaVarA.b(), athenaVarA);
                        }
                    } catch (SQLiteException e11) {
                        e = e11;
                        cursorRawQuery = cursorRawQuery2;
                    } catch (Throwable th2) {
                        th = th2;
                        cursorRawQuery = cursorRawQuery2;
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        throw th;
                    }
                }
                if (cursorRawQuery2 != null) {
                    cursorRawQuery2.close();
                }
                cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT * FROM " + athena.f42674c.a(), null);
                while (cursorRawQuery != null && cursorRawQuery.moveToNext()) {
                    long j11 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("tid"));
                    String string2 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("ev"));
                    aatnhe aatnheVar = new aatnhe();
                    aatnheVar.c(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("pt")));
                    aatnheVar.a(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("cf")));
                    com.transsion.athena.config.data.model.athena athenaVar = sparseArray.get(com.transsion.athena.taaneh.anehat.a(j11));
                    if (athenaVar != null) {
                        athenaVar.a(new TidConfigBean(j11, string2, aatnheVar));
                    }
                }
                if (enathaVar != null) {
                    enathaVar.a(sparseArray);
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                    return;
                }
                return;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (SQLiteException e12) {
            e = e12;
        }
        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        a(e);
        throw new anateh("getAPPIDApp_sql", e);
    }

    public void a(boolean z10) {
        if (z10) {
            try {
                this.f42670b.close();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public boolean a(athena athenaVar, int i11) throws anateh {
        String strA = athenaVar.a();
        try {
            SQLiteDatabase sQLiteDatabaseB = b();
            if (sQLiteDatabaseB == null) {
                return false;
            }
            sQLiteDatabaseB.delete(strA, "CAST(tid AS TEXT) LIKE ?", new String[]{i11 + "%"});
            return true;
        } catch (SQLiteException e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            a(e11);
            throw new anateh("cleanupEvents_del_sql", e11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:86:0x0192  */
    /* JADX WARN: Code duplicated, block: B:88:0x0197  */
    /* JADX WARN: Code duplicated, block: B:91:0x01a2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v5, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v8, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.StringBuilder] */
    public int b(athena athenaVar, List<Track> list, enatha<LongSparseArray<Integer>> enathaVar) throws Throwable {
        ?? r11;
        ?? r12;
        Cursor cursorRawQuery;
        ?? A = athenaVar.a();
        HashSet hashSet = new HashSet();
        ?? r13 = 0;
        ?? r14 = 0;
        r13 = 0;
        try {
            try {
                try {
                    ?? B = b();
                    int i11 = 0;
                    if (B == 0) {
                        if (B != 0) {
                            B.endTransaction();
                        }
                        if (this.f42670b.b()) {
                            com.transsion.athena.taaneh.aethna.b("There is not enough space left");
                        }
                        return 0;
                    }
                    try {
                        B.beginTransaction();
                        ContentValues contentValues = new ContentValues();
                        for (Track track : list) {
                            JSONObject jsonData = track.getJsonData();
                            Pair<Integer, byte[]> pairI = com.transsion.athena.aethna.athena.c().i();
                            Integer num = (Integer) pairI.first;
                            num.intValue();
                            String strA = com.transsion.athena.anateh.anehat.a(jsonData.toString(), (byte[]) pairI.second);
                            if (strA != null) {
                                contentValues.clear();
                                contentValues.put("tid", Long.valueOf(track.getTid()));
                                contentValues.put(NotificationCompat.CATEGORY_EVENT, strA);
                                contentValues.put("et", (Integer) 0);
                                contentValues.put("pi", num);
                                contentValues.put("created_at", Long.valueOf(track.getTrackTs()));
                                if (track.getBootId() != null) {
                                    contentValues.put("er_ts", Long.valueOf(track.getTrackErTs()));
                                    contentValues.put("boot_id", track.getBootId());
                                }
                                if (B.insert(A, null, contentValues) > 0) {
                                    hashSet.add(Long.valueOf(track.getTid()));
                                }
                            }
                        }
                        if (hashSet.size() > 0) {
                            LongSparseArray<Integer> longSparseArray = new LongSparseArray<>();
                            cursorRawQuery = B.rawQuery("SELECT tid,COUNT(*) FROM " + A + " WHERE tid IN (" + com.transsion.athena.config.data.model.anehat.a(hashSet, ",") + ") GROUP BY tid", null);
                            int i12 = 0;
                            while (cursorRawQuery != null) {
                                try {
                                    if (!cursorRawQuery.moveToNext()) {
                                        break;
                                    }
                                    longSparseArray.put(cursorRawQuery.getLong(0), Integer.valueOf(cursorRawQuery.getInt(1)));
                                    i12++;
                                } catch (SQLiteException e11) {
                                    e = e11;
                                    A = cursorRawQuery;
                                    r12 = B;
                                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                    if (A != 0) {
                                        A.close();
                                    }
                                    if (r12 != 0) {
                                        r12.endTransaction();
                                    } else {
                                        r14 = r12;
                                    }
                                    try {
                                        a(e);
                                        throw new anateh("addJSON_sql", e);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        r11 = r14;
                                        r13 = A;
                                        if (r13 != 0) {
                                            r13.close();
                                        }
                                        if (r11 != 0) {
                                            r11.endTransaction();
                                        }
                                        if (this.f42670b.b()) {
                                            com.transsion.athena.taaneh.aethna.b("There is not enough space left");
                                        }
                                        throw th;
                                    }
                                } catch (Exception e12) {
                                    e = e12;
                                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                    throw new anateh("addJSON", e);
                                }
                            }
                            if (enathaVar != null && longSparseArray.size() > 0) {
                                enathaVar.a(longSparseArray);
                            }
                            i11 = i12;
                            cursorRawQuery = cursorRawQuery;
                        } else {
                            cursorRawQuery = null;
                        }
                        B.setTransactionSuccessful();
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        B.endTransaction();
                        if (!this.f42670b.b()) {
                            return i11;
                        }
                        com.transsion.athena.taaneh.aethna.b("There is not enough space left");
                        return -2;
                    } catch (SQLiteException e13) {
                        e = e13;
                        A = 0;
                        r12 = B;
                    } catch (Exception e14) {
                        e = e14;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    r13 = A;
                    if (r13 != 0) {
                        r13.close();
                    }
                    if (r11 != 0) {
                        r11.endTransaction();
                    }
                    if (this.f42670b.b()) {
                        com.transsion.athena.taaneh.aethna.b("There is not enough space left");
                    }
                    throw th;
                }
            } catch (SQLiteException e15) {
                e = e15;
                A = 0;
                r12 = 0;
            } catch (Exception e16) {
                e = e16;
            } catch (Throwable th4) {
                th = th4;
                r11 = 0;
                if (r13 != 0) {
                    r13.close();
                }
                if (r11 != 0) {
                    r11.endTransaction();
                }
                if (this.f42670b.b()) {
                    com.transsion.athena.taaneh.aethna.b("There is not enough space left");
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }
}
