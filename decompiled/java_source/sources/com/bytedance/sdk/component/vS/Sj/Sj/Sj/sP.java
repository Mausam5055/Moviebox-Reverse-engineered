package com.bytedance.sdk.component.vS.Sj.Sj.Sj;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.Dq;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.meituan.android.walle.ChannelReader;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class sP {
    private C0231sP Sj;
    private Context sP;

    private class Sj extends AbstractCursor {
        private Sj() {
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[0];
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public double getDouble(int i11) {
            return 0.0d;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public float getFloat(int i11) {
            return 0.0f;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getInt(int i11) {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public long getLong(int i11) {
            return 0L;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public short getShort(int i11) {
            return (short) 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String getString(int i11) {
            return null;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public boolean isNull(int i11) {
            return true;
        }
    }

    /* JADX INFO: renamed from: com.bytedance.sdk.component.vS.Sj.Sj.Sj.sP$sP, reason: collision with other inner class name */
    public class C0231sP {
        private volatile SQLiteDatabase sP = null;

        public C0231sP() {
        }

        private void Sj() {
            try {
                if (this.sP != null && this.sP.isOpen()) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (this.sP == null || !this.sP.isOpen()) {
                            this.sP = Dq.Jcg().EjP().Sj(Dq.Jcg().vS());
                            this.sP.setLockingEnabled(false);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                if (sP()) {
                    throw th3;
                }
            }
        }

        private boolean sP() {
            SQLiteDatabase sQLiteDatabase = this.sP;
            return sQLiteDatabase != null && sQLiteDatabase.inTransaction();
        }

        public int Sj(String str, ContentValues contentValues, String str2, String[] strArr) throws Exception {
            try {
                Sj();
                return this.sP.update(str, contentValues, str2, strArr);
            } catch (Exception e11) {
                if (sP()) {
                    throw e11;
                }
                return 0;
            }
        }

        public int Sj(String str, String str2, String[] strArr) throws Exception {
            try {
                Sj();
                return this.sP.delete(str, str2, strArr);
            } catch (Exception e11) {
                if (sP()) {
                    throw e11;
                }
                return 0;
            }
        }

        public long Sj(String str, String str2, ContentValues contentValues) throws Exception {
            try {
                Sj();
                return this.sP.insert(str, str2, contentValues);
            } catch (Exception e11) {
                if (sP()) {
                    throw e11;
                }
                return -1L;
            }
        }

        public Cursor Sj(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            try {
                Sj();
                return this.sP.query(str, strArr, str2, strArr2, str3, str4, str5);
            } catch (Throwable th2) {
                Sj sj2 = new Sj();
                if (sP()) {
                    throw th2;
                }
                return sj2;
            }
        }

        public void Sj(String str) throws SQLException {
            try {
                Sj();
                this.sP.execSQL(str);
            } catch (Throwable th2) {
                if (sP()) {
                    throw th2;
                }
            }
        }

        public synchronized void Sj(String str, String str2, List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
            JSONObject jSONObjectJcg;
            try {
                try {
                    Sj();
                    this.sP.beginTransaction();
                    ContentValues contentValues = new ContentValues();
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 = list.get(i11);
                        if (sj2 != null && (jSONObjectJcg = sj2.Jcg()) != null) {
                            contentValues.put("id", sj2.TKC());
                            String strSP = Dq.Jcg().uvD().sP(jSONObjectJcg.toString());
                            if (!TextUtils.isEmpty(strSP)) {
                                contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, strSP);
                                contentValues.put("gen_time", Long.valueOf(System.currentTimeMillis()));
                                contentValues.put("retry", (Integer) 0);
                                contentValues.put("encrypt", (Integer) 1);
                                if (com.bytedance.sdk.component.vS.Sj.TKC.Sj.EjP() && sj2.TEQ() > 0 && (sj2.EjP() == 0 || sj2.EjP() == 3)) {
                                    contentValues.put(ChannelReader.CHANNEL_KEY, Integer.valueOf(sj2.TEQ()));
                                }
                                this.sP.insert(str, str2, contentValues);
                            }
                            contentValues.clear();
                        }
                    }
                    this.sP.setTransactionSuccessful();
                    list.size();
                    if (this.sP != null) {
                        this.sP.endTransaction();
                    }
                } catch (Exception e11) {
                    list.size();
                    if (sP()) {
                        throw e11;
                    }
                    if (this.sP != null) {
                        this.sP.endTransaction();
                    }
                }
            } catch (Throwable th2) {
                if (this.sP != null) {
                    this.sP.endTransaction();
                }
                throw th2;
            }
        }
    }

    sP(Context context) {
        try {
            this.sP = context.getApplicationContext();
            if (this.Sj == null) {
                this.Sj = new C0231sP();
            }
        } catch (Throwable unused) {
        }
    }

    public C0231sP Sj() {
        return this.Sj;
    }
}
