package com.hisavana.mediation.config;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.util.Log;
import be.d;
import com.cloud.config.utils.XLogUtil;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ConfigContentProvider extends ContentProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public UriMatcher f33237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f33238b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SQLiteDatabase f33239c;

    public final UriMatcher a() {
        if (this.f33237a == null) {
            if (e.a() != null) {
                this.f33238b = e.a().getPackageName() + ".HisavanaConfigContentProvider";
                UriMatcher uriMatcher = new UriMatcher(-1);
                this.f33237a = uriMatcher;
                uriMatcher.addURI(this.f33238b, XLogUtil.TAG, 200);
            } else {
                AdLogUtil.Log().e("ssp", "HSCoreUtil is not init now");
            }
        }
        return this.f33237a;
    }

    public final Cursor b(String[] strArr) {
        String str;
        if (strArr != null) {
            try {
                if (strArr.length == 0) {
                    str = "select * from cloudList";
                } else {
                    StringBuilder sb2 = new StringBuilder("(");
                    for (int i11 = 0; i11 < strArr.length; i11++) {
                        AdLogUtil.Log().d("ConfigContentProvider", "getCursorForProvider ***** " + strArr[i11]);
                        if (i11 == strArr.length - 1) {
                            sb2.append("'");
                            sb2.append(strArr[i11]);
                            sb2.append("'");
                        } else {
                            sb2.append("'");
                            sb2.append(strArr[i11]);
                            sb2.append("',");
                        }
                    }
                    sb2.append(")");
                    str = "select * from cloudList where codeSeatId IN " + sb2.toString();
                }
            } catch (Exception e11) {
                AdLogUtil.Log().e("ConfigContentProvider", "getCursorForProvider e " + Log.getStackTraceString(e11));
                return null;
            }
        } else {
            str = "select * from cloudList";
        }
        c();
        AdLogUtil.Log().d("ConfigContentProvider", "getCursorForProvider sql " + str);
        return this.f33239c.rawQuery(str, null);
    }

    public final synchronized SQLiteDatabase c() {
        SQLiteDatabase sQLiteDatabase = this.f33239c;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            try {
                this.f33239c = new d(e.a()).getWritableDatabase();
            } catch (Exception e11) {
                AdLogUtil.Log().e("ConfigContentProvider", "openDB ex " + Log.getStackTraceString(e11));
            }
        }
        return this.f33239c;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        if (a() == null || this.f33237a.match(uri) != 200) {
            return 0;
        }
        c();
        AdLogUtil.Log().d("ConfigContentProvider", "delete ");
        try {
            return this.f33239c.delete("cloudList", str, strArr);
        } catch (Exception e11) {
            AdLogUtil.Log().e("ConfigContentProvider", "delete Exception:" + Log.getStackTraceString(e11));
            return 0;
        }
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        SQLiteDatabase sQLiteDatabase;
        if (a() == null) {
            return null;
        }
        boolean z10 = false;
        if (this.f33237a.match(uri) == 200) {
            if (contentValues != null && contentValues.keySet() != null) {
                try {
                    if (!contentValues.keySet().isEmpty()) {
                        try {
                            SQLiteDatabase sQLiteDatabaseC = c();
                            this.f33239c = sQLiteDatabaseC;
                            if (sQLiteDatabaseC == null) {
                                Uri uri2 = Uri.parse("content://" + this.f33238b + "/" + XLogUtil.TAG + "/false");
                                SQLiteDatabase sQLiteDatabase2 = this.f33239c;
                                if (sQLiteDatabase2 != null) {
                                    sQLiteDatabase2.endTransaction();
                                }
                                return uri2;
                            }
                            Set<String> setKeySet = contentValues.keySet();
                            AdLogUtil.Log().d("ConfigContentProvider", "insert ids " + setKeySet);
                            ArrayList<CloudControlConfig.CodeSeat> arrayList = new ArrayList();
                            Iterator<String> it = setKeySet.iterator();
                            while (it.hasNext()) {
                                arrayList.add((CloudControlConfig.CodeSeat) GsonUtil.a((String) contentValues.get(it.next()), CloudControlConfig.CodeSeat.class));
                            }
                            this.f33239c.beginTransaction();
                            this.f33239c.delete("cloudList", null, null);
                            for (CloudControlConfig.CodeSeat codeSeat : arrayList) {
                                String strD = GsonUtil.d(codeSeat);
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put("codeSeatId", codeSeat.getCodeSeatId());
                                contentValues2.put("json", strD);
                                this.f33239c.insert("cloudList", null, contentValues2);
                            }
                            z10 = true;
                            this.f33239c.setTransactionSuccessful();
                            sQLiteDatabase = this.f33239c;
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.endTransaction();
                            }
                        } catch (Exception e11) {
                            AdLogUtil.Log().e("ConfigContentProvider", "insert e " + Log.getStackTraceString(e11));
                            sQLiteDatabase = this.f33239c;
                            if (sQLiteDatabase != null) {
                            }
                        }
                    }
                } catch (Throwable th2) {
                    SQLiteDatabase sQLiteDatabase3 = this.f33239c;
                    if (sQLiteDatabase3 != null) {
                        sQLiteDatabase3.endTransaction();
                    }
                    throw th2;
                }
            }
            return Uri.parse("content://" + this.f33238b + "/" + XLogUtil.TAG + "/false");
        }
        return Uri.parse("content://" + this.f33238b + "/" + XLogUtil.TAG + "/" + z10);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            AdLogUtil.Log().d("ConfigContentProvider", "query " + uri);
            if (a() != null && this.f33237a.match(uri) == 200) {
                AdLogUtil.Log().d("ConfigContentProvider", "query ");
                return b(strArr);
            }
        } catch (Exception e11) {
            AdLogUtil.Log().e("ConfigContentProvider", "query error: " + Log.getStackTraceString(e11));
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        SQLiteDatabase sQLiteDatabase;
        int iUpdate = 0;
        if (a() == null) {
            return 0;
        }
        if (this.f33237a.match(uri) == 200 && contentValues != null && contentValues.keySet() != null && !contentValues.keySet().isEmpty()) {
            try {
                try {
                    c();
                    SQLiteDatabase sQLiteDatabase2 = this.f33239c;
                    if (sQLiteDatabase2 == null) {
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.endTransaction();
                        }
                        return 0;
                    }
                    Set<String> setKeySet = contentValues.keySet();
                    AdLogUtil.Log().d("ConfigContentProvider", "update id " + setKeySet);
                    ArrayList<CloudControlConfig.CodeSeat> arrayList = new ArrayList();
                    Iterator<String> it = setKeySet.iterator();
                    while (it.hasNext()) {
                        arrayList.add((CloudControlConfig.CodeSeat) GsonUtil.a((String) contentValues.get(it.next()), CloudControlConfig.CodeSeat.class));
                    }
                    this.f33239c.beginTransaction();
                    for (CloudControlConfig.CodeSeat codeSeat : arrayList) {
                        String strD = GsonUtil.d(codeSeat);
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put("codeSeatId", codeSeat.getCodeSeatId());
                        contentValues2.put("json", strD);
                        iUpdate = this.f33239c.update("cloudList", contentValues2, "codeSeatId=?", new String[]{codeSeat.getCodeSeatId()});
                    }
                    this.f33239c.setTransactionSuccessful();
                    sQLiteDatabase = this.f33239c;
                    if (sQLiteDatabase != null) {
                    }
                } catch (Exception e11) {
                    AdLogUtil.Log().e("ConfigContentProvider", "update e " + Log.getStackTraceString(e11));
                    sQLiteDatabase = this.f33239c;
                    if (sQLiteDatabase != null) {
                    }
                }
                sQLiteDatabase.endTransaction();
            } catch (Throwable th2) {
                SQLiteDatabase sQLiteDatabase3 = this.f33239c;
                if (sQLiteDatabase3 != null) {
                    sQLiteDatabase3.endTransaction();
                }
                throw th2;
            }
        }
        return iUpdate;
    }
}
