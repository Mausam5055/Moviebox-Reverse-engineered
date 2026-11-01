package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;

/* JADX INFO: loaded from: classes2.dex */
class TransferDBBase {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Log f18452f = LogFactory.b(TransferDBBase.class);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Object f18453g = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f18454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Uri f18455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final UriMatcher f18456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TransferDatabaseHelper f18457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SQLiteDatabase f18458e;

    public TransferDBBase(Context context) {
        this.f18454a = context;
        String packageName = context.getApplicationContext().getPackageName();
        TransferDatabaseHelper transferDatabaseHelper = new TransferDatabaseHelper(context);
        this.f18457d = transferDatabaseHelper;
        this.f18458e = transferDatabaseHelper.getWritableDatabase();
        this.f18455b = Uri.parse("content://" + packageName + "/transfers");
        UriMatcher uriMatcher = new UriMatcher(-1);
        this.f18456c = uriMatcher;
        uriMatcher.addURI(packageName, "transfers", 10);
        uriMatcher.addURI(packageName, "transfers/#", 20);
        uriMatcher.addURI(packageName, "transfers/part/#", 30);
        uriMatcher.addURI(packageName, "transfers/state/*", 40);
    }

    private void c() {
        synchronized (f18453g) {
            try {
                if (!this.f18458e.isOpen()) {
                    this.f18458e = this.f18457d.getWritableDatabase();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int a(Uri uri, ContentValues[] contentValuesArr) {
        int iMatch = this.f18456c.match(uri);
        c();
        if (iMatch != 10) {
            throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        int iInsertOrThrow = 0;
        try {
            try {
                this.f18458e.beginTransaction();
                iInsertOrThrow = (int) this.f18458e.insertOrThrow("awstransfer", null, contentValuesArr[0]);
                for (int i11 = 1; i11 < contentValuesArr.length; i11++) {
                    contentValuesArr[i11].put("main_upload_id", Integer.valueOf(iInsertOrThrow));
                    this.f18458e.insertOrThrow("awstransfer", null, contentValuesArr[i11]);
                }
                this.f18458e.setTransactionSuccessful();
            } catch (Exception e11) {
                f18452f.e("bulkInsert error : ", e11);
            }
            return iInsertOrThrow;
        } finally {
            this.f18458e.endTransaction();
        }
    }

    public int b(Uri uri, String str, String[] strArr) {
        int iMatch = this.f18456c.match(uri);
        c();
        if (iMatch == 10) {
            return this.f18458e.delete("awstransfer", str, strArr);
        }
        if (iMatch != 20) {
            throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (TextUtils.isEmpty(str)) {
            return this.f18458e.delete("awstransfer", "_id=" + lastPathSegment, null);
        }
        return this.f18458e.delete("awstransfer", "_id=" + lastPathSegment + " and " + str, strArr);
    }

    public Uri d() {
        return this.f18455b;
    }

    public Uri e(Uri uri, ContentValues contentValues) {
        int iMatch = this.f18456c.match(uri);
        c();
        if (iMatch != 10) {
            throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        return Uri.parse("transfers/" + this.f18458e.insertOrThrow("awstransfer", null, contentValues));
    }

    public Cursor f(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("awstransfer");
        int iMatch = this.f18456c.match(uri);
        if (iMatch == 10) {
            sQLiteQueryBuilder.appendWhere("part_num=0");
        } else if (iMatch == 20) {
            sQLiteQueryBuilder.appendWhere("_id=" + uri.getLastPathSegment());
        } else if (iMatch == 30) {
            sQLiteQueryBuilder.appendWhere("main_upload_id=" + uri.getLastPathSegment());
        } else {
            if (iMatch != 40) {
                throw new IllegalArgumentException("Unknown URI: " + uri);
            }
            sQLiteQueryBuilder.appendWhere("state=");
            sQLiteQueryBuilder.appendWhereEscapeString(uri.getLastPathSegment());
        }
        c();
        return sQLiteQueryBuilder.query(this.f18458e, strArr, str, strArr2, null, null, str2);
    }

    public synchronized int g(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int iUpdate;
        try {
            int iMatch = this.f18456c.match(uri);
            c();
            if (iMatch == 10) {
                iUpdate = this.f18458e.update("awstransfer", contentValues, str, strArr);
            } else {
                if (iMatch != 20) {
                    throw new IllegalArgumentException("Unknown URI: " + uri);
                }
                String lastPathSegment = uri.getLastPathSegment();
                if (TextUtils.isEmpty(str)) {
                    iUpdate = this.f18458e.update("awstransfer", contentValues, "_id=" + lastPathSegment, null);
                } else {
                    iUpdate = this.f18458e.update("awstransfer", contentValues, "_id=" + lastPathSegment + " and " + str, strArr);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return iUpdate;
    }
}
