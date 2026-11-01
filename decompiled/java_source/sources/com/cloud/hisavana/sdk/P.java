package com.cloud.hisavana.sdk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.util.g;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class P {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Uri f21527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f21528b;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f21529a;

        a(String str) {
            this.f21529a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            e4.b().d("CloudProviderManager", "updateConfigShowTimes " + this.f21529a);
            if (TextUtils.isEmpty(this.f21529a)) {
                return;
            }
            try {
                ConfigCodeSeatDTO configCodeSeatDTOH = P.this.h(this.f21529a);
                if (configCodeSeatDTOH != null) {
                    configCodeSeatDTOH.setCurrentShowTimes(configCodeSeatDTOH.getCurrentShowTimes() + 1);
                    configCodeSeatDTOH.setLastShowAdTime(System.currentTimeMillis());
                    P.this.j(configCodeSeatDTOH);
                } else {
                    e4.b().e("CloudProviderManager", "updateConfigShowTimes,can't find codeSeatId " + this.f21529a);
                }
            } catch (Exception e11) {
                e4.b().e("CloudProviderManager", "updateConfigShowTimes " + Log.getStackTraceString(e11));
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ContentValues f21531a;

        b(ContentValues contentValues) {
            this.f21531a = contentValues;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int iUpdate = com.cloud.sdk.commonutil.util.e.a().getContentResolver().update(P.this.f21527a, this.f21531a, null, null);
                e4.b().d("CloudProviderManager", "updateConfigData result " + iUpdate);
            } catch (Exception e11) {
                e4.b().d("CloudProviderManager", "updateConfigData " + Log.getStackTraceString(e11));
            }
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final P f21533a = new P(null);
    }

    private P() {
        this.f21528b = new ConcurrentHashMap();
        this.f21527a = Uri.parse("content://" + com.cloud.sdk.commonutil.util.e.a().getPackageName() + ".HisavanaContentProvider/config");
    }

    /* synthetic */ P(a aVar) {
        this();
    }

    private void e(ConfigCodeSeatDTO configCodeSeatDTO, List list) {
        if (configCodeSeatDTO == null) {
            return;
        }
        long j11 = Long.parseLong(configCodeSeatDTO.getDate());
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (Math.abs(jCurrentTimeMillis - j11) > 86400000) {
            configCodeSeatDTO.setDate(String.valueOf(com.cloud.hisavana.sdk.common.util.l0.c(jCurrentTimeMillis)));
            configCodeSeatDTO.setCurrentShowTimes(0);
            if (list != null) {
                list.add(configCodeSeatDTO);
            }
        }
    }

    public static P g() {
        return c.f21533a;
    }

    public ConfigCodeSeatDTO b(ConfigCodeSeatDTO configCodeSeatDTO) {
        ConfigCodeSeatDTO configCodeSeatDTO2 = null;
        if (configCodeSeatDTO == null) {
            return null;
        }
        if (TextUtils.isEmpty(configCodeSeatDTO.getJson())) {
            return configCodeSeatDTO;
        }
        try {
            configCodeSeatDTO2 = (ConfigCodeSeatDTO) GsonUtil.a(configCodeSeatDTO.getJson(), ConfigCodeSeatDTO.class);
        } catch (GsonUtil.GsonParseException unused) {
            e4.b().e("CloudProviderManager", "");
        }
        if (configCodeSeatDTO2 != null) {
            this.f21528b.put(configCodeSeatDTO.getCodeSeatId(), configCodeSeatDTO2);
        }
        return configCodeSeatDTO2;
    }

    public ConfigCodeSeatDTO c(String str) {
        e4.b().d("CloudProviderManager", "getConfigById " + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!l()) {
            d();
            Map map = this.f21528b;
            if (map == null || map.isEmpty()) {
                return null;
            }
        }
        try {
            ConfigCodeSeatDTO configCodeSeatDTOB = b((ConfigCodeSeatDTO) this.f21528b.get(str));
            e(configCodeSeatDTOB, null);
            return configCodeSeatDTOB;
        } catch (Exception e11) {
            e4.b().e("CloudProviderManager", "getConfigById " + Log.getStackTraceString(e11));
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0096 A[PHI: r0
  0x0096: PHI (r0v8 android.database.Cursor) = (r0v7 android.database.Cursor), (r0v9 android.database.Cursor) binds: [B:33:0x0094, B:30:0x0086] A[DONT_GENERATE, DONT_INLINE]] */
    public Map d() {
        if (l()) {
            e4.b().d("CloudProviderManager", "getAllConfig, memory cache has value");
        } else {
            e4.b().d("CloudProviderManager", "getAllConfig, memory cache is null, query from disk");
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = com.cloud.sdk.commonutil.util.e.a().getContentResolver().query(this.f21527a, null, "select * from cloudList_room", null, null);
                    if (cursorQuery != null) {
                        while (cursorQuery.moveToNext()) {
                            int columnIndex = cursorQuery.getColumnIndex("code_seat_bean");
                            String string = columnIndex >= 0 ? cursorQuery.getString(columnIndex) : "";
                            if (!TextUtils.isEmpty(string)) {
                                ConfigCodeSeatDTO configCodeSeatDTO = new ConfigCodeSeatDTO();
                                configCodeSeatDTO.setJson(string);
                                int columnIndex2 = cursorQuery.getColumnIndex("codeSeatId");
                                if (columnIndex2 >= 0) {
                                    configCodeSeatDTO.setCodeSeatId(cursorQuery.getString(columnIndex2));
                                }
                                int columnIndex3 = cursorQuery.getColumnIndex("current_codeseat_show_times");
                                if (columnIndex3 >= 0) {
                                    configCodeSeatDTO.setCurrentShowTimes(cursorQuery.getInt(columnIndex3));
                                }
                                int columnIndex4 = cursorQuery.getColumnIndex("datetime");
                                if (columnIndex4 >= 0) {
                                    configCodeSeatDTO.setDate(cursorQuery.getString(columnIndex4));
                                }
                                this.f21528b.put(configCodeSeatDTO.getCodeSeatId(), configCodeSeatDTO);
                            }
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception e11) {
                    e4.b().e("CloudProviderManager", Log.getStackTraceString(e11));
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            } catch (Throwable th2) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th2;
            }
        }
        e4.b().d("CloudProviderManager", "getAllConfig, size=" + this.f21528b.size());
        return this.f21528b;
    }

    public boolean f(List list) {
        Map map;
        if (list == null || list.isEmpty()) {
            return false;
        }
        if (this.f21528b.isEmpty()) {
            d();
        }
        try {
            Collection<ConfigCodeSeatDTO> collectionValues = this.f21528b.values();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (collectionValues != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ConfigCodeSeatDTO configCodeSeatDTO = (ConfigCodeSeatDTO) it.next();
                    if (configCodeSeatDTO != null) {
                        for (ConfigCodeSeatDTO configCodeSeatDTO2 : collectionValues) {
                            if (configCodeSeatDTO2 != null && TextUtils.equals(configCodeSeatDTO.getCodeSeatId(), configCodeSeatDTO2.getCodeSeatId())) {
                                ConfigCodeSeatDTO configCodeSeatDTOB = b(configCodeSeatDTO2);
                                if (Math.abs(jCurrentTimeMillis - Long.parseLong(configCodeSeatDTOB.getDate())) >= 86400000) {
                                    configCodeSeatDTO.setCurrentShowTimes(0);
                                    configCodeSeatDTO.setDate(String.valueOf(com.cloud.hisavana.sdk.common.util.l0.c(jCurrentTimeMillis)));
                                } else {
                                    configCodeSeatDTO.setDate(configCodeSeatDTOB.getDate());
                                    configCodeSeatDTO.setCurrentShowTimes(configCodeSeatDTOB.getCurrentShowTimes());
                                }
                                configCodeSeatDTO.setLastRequestAdTime(configCodeSeatDTOB.getLastRequestAdTime());
                                configCodeSeatDTO.setAdRequestFail(configCodeSeatDTOB.isAdRequestFail());
                                configCodeSeatDTO.setLastShowAdTime(configCodeSeatDTOB.getLastShowAdTime());
                                configCodeSeatDTO.setAdRequestVer(configCodeSeatDTOB.getAdRequestVer());
                                configCodeSeatDTO.setLocalOfflineAdCacheCount(configCodeSeatDTOB.getLocalOfflineAdCacheCount());
                                break;
                            }
                        }
                    }
                }
                this.f21528b.clear();
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ConfigCodeSeatDTO configCodeSeatDTO3 = (ConfigCodeSeatDTO) it2.next();
                if (configCodeSeatDTO3 != null && (map = this.f21528b) != null) {
                    map.put(configCodeSeatDTO3.getCodeSeatId(), configCodeSeatDTO3);
                }
            }
            ContentResolver contentResolver = com.cloud.sdk.commonutil.util.e.a().getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("CloudConfig", GsonUtil.d(list));
            return contentResolver.insert(this.f21527a, contentValues).toString().contains("true");
        } catch (Exception e11) {
            e4.b().e("CloudProviderManager", Log.getStackTraceString(e11));
            return false;
        }
    }

    public ConfigCodeSeatDTO h(String str) {
        return (ConfigCodeSeatDTO) this.f21528b.get(str);
    }

    public void i(ConfigCodeSeatDTO configCodeSeatDTO) {
        AdsDTO adsDTO;
        if (configCodeSeatDTO == null) {
            return;
        }
        String[] strArr = {configCodeSeatDTO.getCodeSeatId(), "1", configCodeSeatDTO.getCodeSeatId(), "1"};
        if (e4.c()) {
            e4.b().d("CloudProviderManager", "update config offline ad count------> code seat id:" + configCodeSeatDTO.getCodeSeatId() + ", selection: SELECT ad_bean FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ? AND ad_request_ver = ( SELECT MAX(ad_request_ver) FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ?);, selectionArgs: " + Arrays.toString(strArr));
        }
        try {
            Cursor cursorQuery = com.cloud.sdk.commonutil.util.e.a().getContentResolver().query(this.f21527a, null, "SELECT ad_bean FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ? AND ad_request_ver = ( SELECT MAX(ad_request_ver) FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ?);", strArr, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                    return;
                }
                return;
            }
            int i11 = 0;
            while (cursorQuery.moveToNext()) {
                try {
                    int columnIndex = cursorQuery.getColumnIndex("ad_bean");
                    if (columnIndex >= 0) {
                        String string = cursorQuery.getString(columnIndex);
                        if (!TextUtils.isEmpty(string)) {
                            try {
                                adsDTO = (AdsDTO) GsonUtil.a(string, AdsDTO.class);
                            } catch (Throwable unused) {
                                adsDTO = null;
                            }
                            if (adsDTO != null && !g.b(adsDTO)) {
                                i11++;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            e4.b().d("CloudProviderManager", "updateCodeOfflineAdCount ----> offline ad count is " + i11);
            configCodeSeatDTO.setLocalOfflineAdCacheCount(i11);
            cursorQuery.close();
        } catch (Exception e11) {
            e4.b().e("CloudProviderManager", "updateCodeOfflineAdCount error: " + e11.getMessage());
        }
    }

    public void j(ConfigCodeSeatDTO configCodeSeatDTO) {
        if (configCodeSeatDTO == null || configCodeSeatDTO.isDefaultConfig().booleanValue()) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        ArrayList arrayList = new ArrayList();
        arrayList.add(configCodeSeatDTO);
        contentValues.put("CloudConfig", GsonUtil.d(arrayList));
        HSScopeHelper.f23167a.i(new b(contentValues));
    }

    public void k(String str) {
        HSScopeHelper.f23167a.i(new a(str));
    }

    public boolean l() {
        Map map = this.f21528b;
        return (map == null || map.isEmpty()) ? false : true;
    }
}
