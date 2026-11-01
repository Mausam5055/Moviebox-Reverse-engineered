package v6;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.cloud.hisavana.abtestkit.OnInitCompleteListener;
import com.cloud.hisavana.abtestkit.bean.OnlineABLayerDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.hisavana.common.tracking.TrackingKey;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f77055a = new AtomicBoolean(false);

    public static void a() {
        HSScopeHelper.f23167a.g(new Runnable() { // from class: v6.a
            @Override // java.lang.Runnable
            public final void run() {
                e.f();
            }
        });
    }

    public static void b(final long j11) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        if (l.f77065a.contains(Long.valueOf(j11))) {
            OnlineABLayerDTO onlineABLayerDTO = (OnlineABLayerDTO) l.f77065a.get(Long.valueOf(j11));
            if (onlineABLayerDTO != null) {
                onlineABLayerDTO.setRequestTime(jCurrentTimeMillis);
            }
        } else {
            OnlineABLayerDTO onlineABLayerDTO2 = new OnlineABLayerDTO(null, 1, null);
            onlineABLayerDTO2.setLayerId(j11);
            onlineABLayerDTO2.setRequestTime(jCurrentTimeMillis);
            l.f77065a.put(Long.valueOf(j11), onlineABLayerDTO2);
        }
        if (Log.isLoggable("ADSDK", 3)) {
            com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "ABMemoryCache upsertRequestTimeToMemoryCache onlineLayerMap = " + l.f77065a);
        }
        HSScopeHelper.f23167a.g(new Runnable() { // from class: v6.d
            @Override // java.lang.Runnable
            public final void run() {
                e.c(j11, jCurrentTimeMillis);
            }
        });
    }

    public static final void c(long j11, long j12) {
        Uri uri = com.cloud.hisavana.abtestkit.d.f21312a;
        try {
            ContentResolver contentResolver = com.cloud.sdk.commonutil.util.e.a().getContentResolver();
            z zVar = new z(0L, 0L, null, 7, null);
            zVar.setLayerId(j11);
            zVar.setRequestTime(j12);
            ContentValues contentValues = new ContentValues();
            contentValues.put("abData", GsonUtil.d(zVar));
            contentResolver.update(com.cloud.hisavana.abtestkit.d.f21312a, contentValues, null, null);
        } catch (Exception e11) {
            com.cloud.sdk.commonutil.util.c.Log().w("ABTEST", "ABDiskCache upsertRequestTimeToDiskCache fail, reason = " + e11.getMessage());
            Unit unit = Unit.f67061a;
        }
    }

    public static void d(OnInitCompleteListener onInitCompleteListener) {
        Uri uri = com.cloud.hisavana.abtestkit.d.f21312a;
        ConcurrentHashMap map = new ConcurrentHashMap();
        ConcurrentHashMap concurrentHashMapB = null;
        try {
            Cursor cursorQuery = com.cloud.sdk.commonutil.util.e.a().getContentResolver().query(com.cloud.hisavana.abtestkit.d.f21312a, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        int columnIndex = cursorQuery.getColumnIndex(ClientABTestDTOKt.LAYER_ID);
                        int columnIndex2 = cursorQuery.getColumnIndex(TrackingKey.REQUEST_TIME);
                        int columnIndex3 = cursorQuery.getColumnIndex("ab_info");
                        do {
                            Intrinsics.h(cursorQuery, "<this>");
                            Long lValueOf = columnIndex >= 0 ? Long.valueOf(cursorQuery.getLong(columnIndex)) : null;
                            if (lValueOf != null) {
                                OnlineABLayerDTO onlineABLayerDTO = new OnlineABLayerDTO(null, 1, null);
                                onlineABLayerDTO.setLayerId(lValueOf.longValue());
                                Intrinsics.h(cursorQuery, "<this>");
                                Long lValueOf2 = columnIndex2 >= 0 ? Long.valueOf(cursorQuery.getLong(columnIndex2)) : null;
                                onlineABLayerDTO.setRequestTime(lValueOf2 != null ? lValueOf2.longValue() : 0L);
                                Intrinsics.h(cursorQuery, "<this>");
                                String string = columnIndex3 >= 0 ? cursorQuery.getString(columnIndex3) : null;
                                if (string != null) {
                                    onlineABLayerDTO.setInfo(string);
                                    onlineABLayerDTO.setAbLayerInfo(onlineABLayerDTO.convertLayerInfo(string));
                                }
                                map.put(lValueOf, onlineABLayerDTO);
                            }
                        } while (cursorQuery.moveToNext());
                        com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "ABDiskCache queryAllFromDiskCache success, onlineLayerMap size = " + map.size());
                    }
                    Unit unit = Unit.f67061a;
                    CloseableKt.a(cursorQuery, null);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(cursorQuery, th2);
                        throw th3;
                    }
                }
            }
        } catch (Exception e11) {
            com.cloud.sdk.commonutil.util.c.Log().w("ABTEST", "ABDiskCache queryAllFromDiskCache fail, reason = " + e11.getMessage());
        }
        ConcurrentHashMap concurrentHashMap = l.f77065a;
        Intrinsics.h(map, "map");
        l.f77065a.clear();
        l.f77065a = map;
        Uri uri2 = com.cloud.hisavana.abtestkit.d.f21312a;
        try {
            int iF = j7.a.e().f("key_local_ab_data_version_code");
            if (iF != i7.c.m()) {
                concurrentHashMapB = com.cloud.hisavana.abtestkit.d.b();
            } else {
                String strJ = j7.a.e().n() ? j7.a.e().j("key_local_ab_data_json") : com.cloud.hisavana.abtestkit.d.a(Long.valueOf(iF));
                if (strJ != null && strJ.length() != 0) {
                    ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) GsonUtil.b(strJ, new com.cloud.hisavana.abtestkit.c().getType());
                    com.cloud.sdk.commonutil.util.c cVarLog = com.cloud.sdk.commonutil.util.c.Log();
                    StringBuilder sb2 = new StringBuilder("ABDiskCache queryFromAssets from localABDataJson, localLayerMap size = ");
                    sb2.append(concurrentHashMap2 != null ? Integer.valueOf(concurrentHashMap2.size()) : null);
                    cVarLog.d("ABTEST", sb2.toString());
                    concurrentHashMapB = concurrentHashMap2;
                }
            }
        } catch (Exception e12) {
            com.cloud.sdk.commonutil.util.c.Log().w("ABTEST", "ABDiskCache queryFromAssets fail, reason = " + e12.getMessage());
        }
        ConcurrentHashMap concurrentHashMap3 = l.f77066b;
        if (concurrentHashMap3 != null) {
            concurrentHashMap3.clear();
        }
        l.f77066b = concurrentHashMapB;
        if (onInitCompleteListener != null) {
            onInitCompleteListener.onInitComplete();
        }
    }

    public static void e(final OnlineABLayerDTO onlineABLayerDTO) {
        ConcurrentHashMap concurrentHashMap = l.f77065a;
        HSScopeHelper.f23167a.g(new Runnable() { // from class: v6.c
            @Override // java.lang.Runnable
            public final void run() {
                e.h(onlineABLayerDTO);
            }
        });
    }

    public static final void f() {
        Uri uri = com.cloud.hisavana.abtestkit.d.f21312a;
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().delete(com.cloud.hisavana.abtestkit.d.f21312a, null, null);
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().delete(com.cloud.hisavana.abtestkit.d.f21313b, null, null);
        } catch (Exception e11) {
            com.cloud.sdk.commonutil.util.c.Log().w("ABTEST", "ABDiskCache deleteTable fail, reason = " + e11.getMessage());
        }
    }

    public static void g(final OnInitCompleteListener onInitCompleteListener) {
        AtomicBoolean atomicBoolean = f77055a;
        if (atomicBoolean.get()) {
            com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "ABMemoryCache queryAllData Initialization has been completed");
            return;
        }
        atomicBoolean.set(true);
        HSScopeHelper hSScopeHelper = HSScopeHelper.f23167a;
        if (hSScopeHelper.c()) {
            hSScopeHelper.g(new Runnable() { // from class: v6.b
                @Override // java.lang.Runnable
                public final void run() {
                    e.i(onInitCompleteListener);
                }
            });
        } else {
            d(onInitCompleteListener);
        }
    }

    public static final void h(OnlineABLayerDTO onlineABLayerDTO) {
        Uri uri = com.cloud.hisavana.abtestkit.d.f21312a;
        if (onlineABLayerDTO != null) {
            long layerId = onlineABLayerDTO.getLayerId();
            try {
                z zVar = new z(0L, 0L, null, 7, null);
                zVar.setLayerId(layerId);
                zVar.setRequestTime(onlineABLayerDTO.getRequestTime());
                zVar.setInfo(onlineABLayerDTO.getInfo());
                ContentValues contentValues = new ContentValues();
                contentValues.put("abData", GsonUtil.d(zVar));
                com.cloud.sdk.commonutil.util.e.a().getContentResolver().insert(com.cloud.hisavana.abtestkit.d.f21312a, contentValues);
            } catch (Exception e11) {
                com.cloud.sdk.commonutil.util.c.Log().w("ABTEST", "ABDiskCache upsertToDiskCache fail, reason = " + e11.getMessage());
                Unit unit = Unit.f67061a;
            }
        }
    }

    public static final void i(OnInitCompleteListener onInitCompleteListener) {
        d(onInitCompleteListener);
    }
}
