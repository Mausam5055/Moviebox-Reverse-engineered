package com.bykv.vk.openvk.preload.geckox.a;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.core.app.NotificationCompat;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.statistic.model.StatisticModel;
import com.bykv.vk.openvk.preload.geckox.utils.CloseableUtils;
import com.meituan.android.walle.ChannelReader;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class b extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile b f20594a;

    private b(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
        super(context, str, cursorFactory, 1);
    }

    public static b a(Context context) {
        if (f20594a == null) {
            synchronized (b.class) {
                try {
                    if (f20594a == null) {
                        f20594a = new b(context.getApplicationContext(), "geckox_clean_statistic" + com.bykv.vk.openvk.preload.geckox.utils.a.a() + ".db", null);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f20594a;
    }

    final List<StatisticModel.PackageStatisticModel> a() {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor cursorQuery = getWritableDatabase().query("geckox_clean_statistic", null, null, null, null, null, null);
            if (cursorQuery == null) {
                return arrayList;
            }
            while (cursorQuery.moveToNext()) {
                try {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("access_key"));
                    String string2 = cursorQuery.getString(cursorQuery.getColumnIndex(ChannelReader.CHANNEL_KEY));
                    int i11 = cursorQuery.getInt(cursorQuery.getColumnIndex("clean_type"));
                    int i12 = cursorQuery.getInt(cursorQuery.getColumnIndex(NotificationCompat.CATEGORY_STATUS));
                    long j11 = cursorQuery.getInt(cursorQuery.getColumnIndex("pkg_id"));
                    int i13 = cursorQuery.getInt(cursorQuery.getColumnIndex("err_code"));
                    String string3 = cursorQuery.getString(cursorQuery.getColumnIndex("err_msg"));
                    int i14 = cursorQuery.getInt(cursorQuery.getColumnIndex("clean_strategy"));
                    long j12 = cursorQuery.getLong(cursorQuery.getColumnIndex("clean_duration"));
                    StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
                    packageStatisticModel.accessKey = string;
                    packageStatisticModel.channel = string2;
                    packageStatisticModel.statsType = Integer.valueOf(i12);
                    packageStatisticModel.f20726id = Long.valueOf(j11);
                    packageStatisticModel.errCode = i13 == 0 ? null : String.valueOf(i13);
                    packageStatisticModel.errMsg = string3;
                    packageStatisticModel.cleanType = Integer.valueOf(i11);
                    packageStatisticModel.cleanDuration = Long.valueOf(j12);
                    packageStatisticModel.cleanStrategy = Integer.valueOf(i14);
                    arrayList.add(packageStatisticModel);
                } catch (Exception e11) {
                    e = e11;
                    cursor = cursorQuery;
                    GeckoLogger.w("clean-channel", "get all statistic failed!", e);
                    cursorQuery = cursor;
                }
            }
            getWritableDatabase().delete("geckox_clean_statistic", null, null);
            CloseableUtils.close(cursorQuery);
            return arrayList;
        } catch (Exception e12) {
            e = e12;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists geckox_clean_statistic (id integer primary key autoincrement,access_key text,channel text,clean_type integer,status integer,pkg_id integer,err_code integer,clean_strategy integer,clean_duration integer,err_msg text)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
    }
}
