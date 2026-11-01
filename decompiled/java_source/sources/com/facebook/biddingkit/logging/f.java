package com.facebook.biddingkit.logging;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile f f24128b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f24129a;

    public f(Context context) {
        this.f24129a = new d(context, "EventLogsDatabase.db", null, 1);
    }

    public static void b(String str) {
        try {
            d().c().delete("EVENT_LOGS", "ID=?", new String[]{str});
        } catch (Throwable th2) {
            b.b("EventLogDatabaseAdapter", "Failed deleting entry", th2);
        }
    }

    public static f d() {
        return f24128b;
    }

    public static List e(int i11) {
        LinkedList linkedList = new LinkedList();
        try {
            Cursor cursorQuery = d().c().query("EVENT_LOGS", null, null, null, null, null, null, null);
            int columnIndex = cursorQuery.getColumnIndex("exception");
            int columnIndex2 = cursorQuery.getColumnIndex("auction_id");
            int columnIndex3 = cursorQuery.getColumnIndex("ID");
            int columnIndex4 = cursorQuery.getColumnIndex("bidder_data");
            while (cursorQuery.moveToNext() && i11 > 0) {
                e eVar = new e();
                eVar.e(cursorQuery.getString(columnIndex));
                eVar.a(cursorQuery.getString(columnIndex2));
                eVar.c(cursorQuery.getString(columnIndex3));
                JSONObject jSONObject = new JSONObject(cursorQuery.getString(columnIndex4));
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    eVar.g(next, jSONObject2.optString("result"));
                    eVar.b(next, jSONObject2.optString("cpm_cents"));
                    eVar.d(next, jSONObject2.optString("error"));
                    eVar.f(next, jSONObject2.optString("latency_ms"));
                }
                linkedList.add(eVar);
                i11--;
            }
            cursorQuery.close();
        } catch (Throwable th2) {
            b.b("EventLogDatabaseAdapter", "Failed getting rows", th2);
        }
        return linkedList;
    }

    public static void f(Context context) {
        if (f24128b == null) {
            synchronized (f.class) {
                try {
                    if (f24128b == null) {
                        f24128b = new f(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void g(e eVar) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("auction_id", eVar.i());
            contentValues.put("exception", eVar.l());
            contentValues.put("bidder_data", eVar.h().toString());
            SQLiteDatabase sQLiteDatabaseC = d().c();
            sQLiteDatabaseC.insert("EVENT_LOGS", null, contentValues);
            sQLiteDatabaseC.close();
        } catch (Exception e11) {
            b.b("EventLogDatabaseAdapter", "Failed inserting an entry", e11);
        }
    }

    public void a() {
        SQLiteDatabase sQLiteDatabaseC = c();
        if (sQLiteDatabaseC != null) {
            sQLiteDatabaseC.close();
        }
    }

    public SQLiteDatabase c() {
        try {
            return this.f24129a.getWritableDatabase();
        } catch (Throwable th2) {
            b.b("EventLogDatabaseAdapter", "Failed getting Writable Database", th2);
            return null;
        }
    }

    public void finalize() throws Throwable {
        a();
        super.finalize();
    }
}
