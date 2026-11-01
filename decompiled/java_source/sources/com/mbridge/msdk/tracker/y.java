package com.mbridge.msdk.tracker;

import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
class y {
    public static long a(int i11, long j11, long j12) {
        if (i11 <= 0 || j11 == 0 || i11 <= 10) {
            return j12;
        }
        if (i11 <= 20) {
            return 60000L;
        }
        if (i11 <= 30) {
            return TmcConstants.DEBUG_REQUEST_TIME_INTERVAL;
        }
        if (i11 <= 40) {
            return 180000L;
        }
        return i11 <= 50 ? 240000L : 300000L;
    }

    static void a(Cursor cursor) {
        try {
            if (!a((Object) cursor) || cursor.isClosed()) {
                return;
            }
            cursor.close();
        } catch (Exception unused) {
        }
    }

    static boolean a(e eVar) {
        return a((Object) eVar) && eVar.c() == 1;
    }

    static boolean a(Object obj) {
        return obj != null;
    }

    static boolean a(List<i> list) {
        if (b((List<?>) list)) {
            return false;
        }
        for (i iVar : list) {
            if (!b(iVar)) {
                e eVarA = iVar.a();
                if (!b(eVarA) && eVarA.c() == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00fe  */
    static List<i> b(Cursor cursor) {
        int i11;
        int i12;
        int i13;
        Cursor cursor2 = cursor;
        ArrayList arrayList = new ArrayList();
        try {
            int columnIndex = cursor2.getColumnIndex("name");
            int columnIndex2 = cursor2.getColumnIndex(NativeComponentConstants.KEY_COMPONENT_TYPE);
            int columnIndex3 = cursor2.getColumnIndex("time_stamp");
            int columnIndex4 = cursor2.getColumnIndex("properties");
            int columnIndex5 = cursor2.getColumnIndex(TrackingKey.PRIORITY);
            int columnIndex6 = cursor2.getColumnIndex("uuid");
            int columnIndex7 = cursor2.getColumnIndex("duration");
            int columnIndex8 = cursor2.getColumnIndex("state");
            int columnIndex9 = cursor2.getColumnIndex("report_count");
            int columnIndex10 = cursor2.getColumnIndex("ignore_max_timeout");
            int columnIndex11 = cursor2.getColumnIndex("ignore_max_retry_times");
            int columnIndex12 = cursor2.getColumnIndex("invalid_time");
            int columnIndex13 = cursor2.getColumnIndex("report_error_message");
            while (cursor.moveToNext()) {
                try {
                    i11 = columnIndex;
                    try {
                        e eVar = new e(cursor2.getString(columnIndex));
                        eVar.b(cursor2.getInt(columnIndex2));
                        int i14 = columnIndex12;
                        int i15 = columnIndex13;
                        try {
                            eVar.c(cursor2.getLong(columnIndex3));
                            eVar.a(new JSONObject(cursor2.getString(columnIndex4)));
                            eVar.a(cursor2.getInt(columnIndex5));
                            eVar.a(cursor2.getString(columnIndex6));
                            eVar.a(cursor2.getLong(columnIndex7));
                            i iVar = new i(eVar);
                            iVar.b(cursor2.getInt(columnIndex8));
                            iVar.a(cursor2.getInt(columnIndex9));
                            iVar.b(cursor2.getInt(columnIndex10) == 0);
                            iVar.a(cursor2.getInt(columnIndex11) == 0);
                            i12 = i14;
                            try {
                                iVar.a(cursor2.getLong(i12));
                                i13 = i15;
                                try {
                                    String string = cursor2.getString(i13);
                                    if (TextUtils.isEmpty(string)) {
                                        string = "";
                                    }
                                    iVar.a(string);
                                    arrayList.add(iVar);
                                } catch (JSONException e11) {
                                    e = e11;
                                    if (a.f38496a) {
                                        Log.e("TrackManager", "create: ", e);
                                    }
                                    cursor2 = cursor;
                                }
                            } catch (JSONException e12) {
                                e = e12;
                                i13 = i15;
                                if (a.f38496a) {
                                    Log.e("TrackManager", "create: ", e);
                                }
                                cursor2 = cursor;
                                columnIndex13 = i13;
                                columnIndex12 = i12;
                                columnIndex = i11;
                            }
                        } catch (JSONException e13) {
                            e = e13;
                            i12 = i14;
                        }
                    } catch (JSONException e14) {
                        e = e14;
                        i12 = columnIndex12;
                        i13 = columnIndex13;
                        if (a.f38496a) {
                            Log.e("TrackManager", "create: ", e);
                        }
                        cursor2 = cursor;
                        columnIndex13 = i13;
                        columnIndex12 = i12;
                        columnIndex = i11;
                    }
                } catch (JSONException e15) {
                    e = e15;
                    i11 = columnIndex;
                }
                columnIndex13 = i13;
                columnIndex12 = i12;
                columnIndex = i11;
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    static boolean b(Object obj) {
        return obj == null;
    }

    static boolean b(List<?> list) {
        return list == null || list.isEmpty();
    }
}
