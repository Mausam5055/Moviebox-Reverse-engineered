package com.mbridge.msdk.tracker;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
class b extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f38497a;

    public b(Context context, String str, String str2) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 2);
        this.f38497a = str2;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.execSQL(String.format(i.f38516i, this.f38497a));
        } catch (Exception e11) {
            if (a.f38496a) {
                Log.e("TrackManager", "create table error", e11);
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.execSQL(String.format(i.f38517j, this.f38497a));
            sQLiteDatabase.execSQL(String.format(i.f38516i, this.f38497a));
        } catch (Exception e11) {
            if (a.f38496a) {
                Log.e("TrackManager", "downgrade table error", e11);
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.execSQL(String.format(i.f38517j, this.f38497a));
            sQLiteDatabase.execSQL(String.format(i.f38516i, this.f38497a));
        } catch (Exception e11) {
            if (a.f38496a) {
                Log.e("TrackManager", "upgrade table error", e11);
            }
        }
    }
}
