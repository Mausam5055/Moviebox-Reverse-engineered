package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.same.report.BatchReportMessage;
import com.mbridge.msdk.system.NoProGuard;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class BatchReportDao extends a<BatchReportMessage> implements Serializable, NoProGuard {
    private static volatile BatchReportDao instance;
    private final Object lock;

    protected BatchReportDao(f fVar) {
        super(fVar);
        this.lock = new Object();
    }

    public static BatchReportDao getInstance(Context context) {
        if (instance == null) {
            synchronized (BatchReportDao.class) {
                try {
                    if (instance == null) {
                        instance = new BatchReportDao(g.a(context));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return instance;
    }

    public static BatchReportDao getInstance(f fVar) {
        if (instance == null) {
            synchronized (BatchReportDao.class) {
                try {
                    if (instance == null) {
                        instance = new BatchReportDao(fVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return instance;
    }

    public void addReportMessage(String str, int i11) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (com.mbridge.msdk.util.d.a(writableDatabase)) {
            try {
                synchronized (this.lock) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("report_message", str);
                        contentValues.put(EventConstants.KEY_TIME, Long.valueOf(System.currentTimeMillis()));
                        contentValues.put("uuid", UUID.randomUUID().toString().replace("-", ""));
                        contentValues.put("report_state", (Integer) 0);
                        contentValues.put(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(i11));
                        writableDatabase.insert("batch_report", null, contentValues);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void deleteBatchReportMessagesByTimestamp(long j11) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (com.mbridge.msdk.util.d.a(writableDatabase)) {
            try {
                synchronized (this.lock) {
                    writableDatabase.execSQL("delete from batch_report where " + EventConstants.KEY_TIME + " <= ?", new Object[]{Long.valueOf(j11)});
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public ArrayList<BatchReportMessage> getBatchReportMessages(long j11, int i11) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursor = null;
        if (!com.mbridge.msdk.util.d.a(writableDatabase)) {
            return null;
        }
        ArrayList<BatchReportMessage> arrayList = new ArrayList<>();
        synchronized (this.lock) {
            try {
                try {
                    Cursor cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM batch_report WHERE " + EventConstants.KEY_TIME + " <= ? AND report_state = 0 AND " + NativeComponentConstants.KEY_COMPONENT_TYPE + " = ? ORDER BY " + EventConstants.KEY_TIME + " ASC ", new String[]{String.valueOf(j11), String.valueOf(i11)});
                    if (cursorRawQuery != null) {
                        while (cursorRawQuery.moveToNext()) {
                            try {
                                arrayList.add(new BatchReportMessage(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("uuid")), cursorRawQuery.getString(cursorRawQuery.getColumnIndex("report_message")), cursorRawQuery.getLong(cursorRawQuery.getColumnIndex(EventConstants.KEY_TIME))));
                            } catch (Throwable th2) {
                                th = th2;
                                cursor = cursorRawQuery;
                                if (cursor != null) {
                                    try {
                                        cursor.close();
                                    } catch (Exception unused) {
                                    }
                                }
                                throw th;
                            }
                        }
                    }
                    if (cursorRawQuery != null) {
                        try {
                            cursorRawQuery.close();
                        } catch (Exception unused2) {
                        }
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("report_state", (Integer) 1);
                    writableDatabase.update("batch_report", contentValues, "time <= ?", new String[]{String.valueOf(j11)});
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return arrayList;
    }

    public void updateMessagesReportState(ArrayList<BatchReportMessage> arrayList) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (arrayList == null || arrayList.size() == 0 || !com.mbridge.msdk.util.d.a(writableDatabase)) {
            return;
        }
        for (BatchReportMessage batchReportMessage : arrayList) {
            try {
                synchronized (this.lock) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("report_state", (Integer) 0);
                        writableDatabase.update("batch_report", contentValues, "uuid = ?", new String[]{batchReportMessage.getUuid()});
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }
}
