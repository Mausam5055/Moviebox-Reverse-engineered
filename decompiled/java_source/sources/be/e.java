package be;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public class e implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SQLiteDatabase f16387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInteger f16388b;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final e f16389a = new e();
    }

    public e() {
        this.f16388b = new AtomicInteger();
    }

    public static e d() {
        return b.f16389a;
    }

    @Override // be.j
    public void a() {
        try {
            e();
            this.f16387a.delete("cloudList", null, null);
        } catch (Exception e11) {
            AdLogUtil.Log().e("CloudControlDatabaseManager", Log.getStackTraceString(e11));
        }
    }

    @Override // be.j
    public void a(CloudControlConfig.CodeSeat codeSeat) {
        SQLiteDatabase sQLiteDatabase;
        try {
            try {
                e();
                SQLiteDatabase sQLiteDatabase2 = this.f16387a;
                if (sQLiteDatabase2 == null) {
                    if (sQLiteDatabase2 != null) {
                        sQLiteDatabase2.endTransaction();
                        return;
                    }
                    return;
                }
                sQLiteDatabase2.beginTransaction();
                String strD = GsonUtil.d(codeSeat);
                ContentValues contentValues = new ContentValues();
                contentValues.put("codeSeatId", codeSeat.getCodeSeatId());
                contentValues.put("json", strD);
                this.f16387a.update("cloudList", contentValues, "codeSeatId=?", new String[]{codeSeat.getCodeSeatId()});
                this.f16387a.setTransactionSuccessful();
                sQLiteDatabase = this.f16387a;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.endTransaction();
                }
            } catch (Exception e11) {
                AdLogUtil.Log().e("CloudControlDatabaseManager", "update e " + Log.getStackTraceString(e11));
                sQLiteDatabase = this.f16387a;
                if (sQLiteDatabase != null) {
                }
            }
        } catch (Throwable th2) {
            SQLiteDatabase sQLiteDatabase3 = this.f16387a;
            if (sQLiteDatabase3 != null) {
                sQLiteDatabase3.endTransaction();
            }
            throw th2;
        }
    }

    @Override // be.j
    public boolean a(List list) {
        if (list != null) {
            try {
                if (list.size() >= 1) {
                    try {
                        e();
                        SQLiteDatabase sQLiteDatabase = this.f16387a;
                        if (sQLiteDatabase == null) {
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.endTransaction();
                            }
                            return false;
                        }
                        sQLiteDatabase.beginTransaction();
                        this.f16387a.delete("cloudList", null, null);
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            CloudControlConfig.CodeSeat codeSeat = (CloudControlConfig.CodeSeat) it.next();
                            if (codeSeat != null) {
                                String strD = GsonUtil.d(codeSeat);
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("codeSeatId", codeSeat.getCodeSeatId());
                                contentValues.put("json", strD);
                                this.f16387a.insert("cloudList", null, contentValues);
                            }
                        }
                        this.f16387a.setTransactionSuccessful();
                        SQLiteDatabase sQLiteDatabase2 = this.f16387a;
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.endTransaction();
                        }
                        return true;
                    } catch (Exception e11) {
                        AdLogUtil.Log().e("CloudControlDatabaseManager", "insert cloud data 2 db failed in work thread " + Log.getStackTraceString(e11));
                        SQLiteDatabase sQLiteDatabase3 = this.f16387a;
                        if (sQLiteDatabase3 != null) {
                            sQLiteDatabase3.endTransaction();
                        }
                        return false;
                    }
                }
            } catch (Throwable th2) {
                SQLiteDatabase sQLiteDatabase4 = this.f16387a;
                if (sQLiteDatabase4 != null) {
                    sQLiteDatabase4.endTransaction();
                }
                throw th2;
            }
        }
        return false;
    }

    @Override // be.j
    public long b() {
        Cursor cursorRawQuery = null;
        try {
            try {
                e();
                cursorRawQuery = this.f16387a.rawQuery("select count(*) from cloudList", null);
                cursorRawQuery.moveToFirst();
                long j11 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j11;
            } catch (Exception e11) {
                AdLogUtil.Log().e("CloudControlDatabaseManager", Log.getStackTraceString(e11));
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return 0L;
            }
        } catch (Throwable th2) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th2;
        }
    }

    @Override // be.j
    public List c() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            try {
                e();
                cursorRawQuery = this.f16387a.rawQuery("select * from cloudList", null);
                while (cursorRawQuery.moveToNext()) {
                    arrayList.add((CloudControlConfig.CodeSeat) GsonUtil.a(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("json")), CloudControlConfig.CodeSeat.class));
                }
            } catch (Exception e11) {
                AdLogUtil.Log().e("CloudControlDatabaseManager", Log.getStackTraceString(e11));
                if (cursorRawQuery != null) {
                }
                return arrayList;
            }
            cursorRawQuery.close();
            return arrayList;
        } catch (Throwable th2) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th2;
        }
    }

    public final synchronized SQLiteDatabase e() {
        if (this.f16388b.incrementAndGet() == 1 || this.f16387a == null) {
            try {
                this.f16387a = new d(com.cloud.sdk.commonutil.util.e.a()).getWritableDatabase();
            } catch (Exception e11) {
                AdLogUtil.Log().e("CloudControlDatabaseManager", Log.getStackTraceString(e11));
            }
        }
        return this.f16387a;
    }
}
