package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.component.vS.Sj.Sj.Sj.sP;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzov;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzpu;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.push.PushConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzal extends zznr {
    private static final String[] zza = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    private static final String[] zzb = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzc = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;", "daily_registered_triggers_count", "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;"};
    private static final String[] zzd = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zze = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", PushConstants.SP_KEY_RETRY_COUNT, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzf = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzh = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzi = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private static final String[] zzj = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};
    private static final String[] zzk = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};
    private final zzat zzl;
    private final zznl zzm;

    zzal(zznv zznvVar) {
        super(zznvVar);
        this.zzm = new zznl(zzb());
        this.zzl = new zzat(this, zza(), "google_app_measurement.db");
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0030  */
    private final long zza(String str, String[] strArr, long j11) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = e_().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    cursorRawQuery.close();
                    return j11;
                }
                long j12 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j12;
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Database error", str, e11);
                throw e11;
            }
        } catch (Throwable th2) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th2;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th2;
    }

    private final Object zza(Cursor cursor, int i11) {
        int type = cursor.getType(i11);
        if (type == 0) {
            zzj().zzg().zza("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i11));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i11));
        }
        if (type == 3) {
            return cursor.getString(i11);
        }
        if (type != 4) {
            zzj().zzg().zza("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        zzj().zzg().zza("Loaded invalid blob type value, ignoring it");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0046  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    private final <T> T zza(String str, String[] strArr, zzau<T> zzauVar) throws Throwable {
        Cursor cursorRawQuery;
        ?? r11 = 0;
        try {
            try {
                cursorRawQuery = e_().rawQuery(str, strArr);
                try {
                    if (cursorRawQuery.moveToFirst()) {
                        T tZza = zzauVar.zza(cursorRawQuery);
                        cursorRawQuery.close();
                        return tZza;
                    }
                    zzj().zzp().zza("No data found");
                    cursorRawQuery.close();
                    return null;
                } catch (SQLiteException e11) {
                    e = e11;
                    zzj().zzg().zza("Error querying database.", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                r11 = str;
                if (r11 != 0) {
                    r11.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e = e12;
            cursorRawQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (r11 != 0) {
                r11.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0030  */
    private final String zza(String str, String[] strArr, String str2) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = e_().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    cursorRawQuery.close();
                    return str2;
                }
                String string = cursorRawQuery.getString(0);
                cursorRawQuery.close();
                return string;
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Database error", str, e11);
                throw e11;
            }
        } catch (Throwable th2) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th2;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th2;
    }

    private static void zza(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put(str, (Double) obj);
        }
    }

    private final void zza(String str, zzbb zzbbVar) {
        Preconditions.checkNotNull(zzbbVar);
        zzt();
        zzal();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzbbVar.zza);
        contentValues.put("name", zzbbVar.zzb);
        contentValues.put("lifetime_count", Long.valueOf(zzbbVar.zzc));
        contentValues.put("current_bundle_count", Long.valueOf(zzbbVar.zzd));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzbbVar.zzf));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzbbVar.zzg));
        contentValues.put("last_bundled_day", zzbbVar.zzh);
        contentValues.put("last_sampled_complex_event_id", zzbbVar.zzi);
        contentValues.put("last_sampling_rate", zzbbVar.zzj);
        contentValues.put("current_session_count", Long.valueOf(zzbbVar.zze));
        Boolean bool = zzbbVar.zzk;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (e_().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update event aggregates (got -1). appId", zzgo.zza(zzbbVar.zza));
            }
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing event aggregates. appId", zzgo.zza(zzbbVar.zza), e11);
        }
    }

    private final void zza(String str, String str2, ContentValues contentValues) {
        try {
            SQLiteDatabase sQLiteDatabaseE_ = e_();
            String asString = contentValues.getAsString(str2);
            if (asString == null) {
                zzj().zzm().zza("Value of the primary key is not set.", zzgo.zza(str2));
                return;
            }
            if (sQLiteDatabaseE_.update(str, contentValues, str2 + " = ?", new String[]{asString}) == 0 && sQLiteDatabaseE_.insertWithOnConflict(str, null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update table (got -1). key", zzgo.zza(str), zzgo.zza(str2));
            }
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing into table. key", zzgo.zza(str), zzgo.zza(str2), e11);
        }
    }

    private final boolean zza(long j11, zzbc zzbcVar, long j12, boolean z10) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzbcVar);
        Preconditions.checkNotEmpty(zzbcVar.zza);
        byte[] bArrZzca = g_().zza(zzbcVar).zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzbcVar.zza);
        contentValues.put("name", zzbcVar.zzb);
        contentValues.put(CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(zzbcVar.zzd));
        contentValues.put("metadata_fingerprint", Long.valueOf(j12));
        contentValues.put("data", bArrZzca);
        contentValues.put("realtime", Integer.valueOf(z10 ? 1 : 0));
        try {
            long jUpdate = e_().update("raw_events", contentValues, "rowid = ?", new String[]{String.valueOf(j11)});
            if (jUpdate == 1) {
                return true;
            }
            zzj().zzg().zza("Failed to update raw event. appId, updatedRows", zzgo.zza(zzbcVar.zza), Long.valueOf(jUpdate));
            return false;
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error updating raw event. appId", zzgo.zza(zzbcVar.zza), e11);
            return false;
        }
    }

    private final boolean zza(String str, int i11, com.google.android.gms.internal.measurement.zzfo.zzb zzbVar) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbVar);
        if (zzbVar.zzf().isEmpty()) {
            zzj().zzu().zza("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzgo.zza(str), Integer.valueOf(i11), String.valueOf(zzbVar.zzl() ? Integer.valueOf(zzbVar.zzb()) : null));
            return false;
        }
        byte[] bArrZzca = zzbVar.zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i11));
        contentValues.put("filter_id", zzbVar.zzl() ? Integer.valueOf(zzbVar.zzb()) : null);
        contentValues.put("event_name", zzbVar.zzf());
        contentValues.put("session_scoped", zzbVar.zzm() ? Boolean.valueOf(zzbVar.zzj()) : null);
        contentValues.put("data", bArrZzca);
        try {
            if (e_().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert event filter (got -1). appId", zzgo.zza(str));
            return true;
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing event filter. appId", zzgo.zza(str), e11);
            return false;
        }
    }

    private final boolean zza(String str, int i11, com.google.android.gms.internal.measurement.zzfo.zze zzeVar) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzeVar);
        if (zzeVar.zze().isEmpty()) {
            zzj().zzu().zza("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzgo.zza(str), Integer.valueOf(i11), String.valueOf(zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null));
            return false;
        }
        byte[] bArrZzca = zzeVar.zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i11));
        contentValues.put("filter_id", zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null);
        contentValues.put("property_name", zzeVar.zze());
        contentValues.put("session_scoped", zzeVar.zzj() ? Boolean.valueOf(zzeVar.zzh()) : null);
        contentValues.put("data", bArrZzca);
        try {
            if (e_().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert property filter (got -1). appId", zzgo.zza(str));
            return false;
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing property filter. appId", zzgo.zza(str), e11);
            return false;
        }
    }

    private final String zzao() {
        long jCurrentTimeMillis = zzb().currentTimeMillis();
        zznt zzntVar = zznt.GOOGLE_SIGNAL;
        return "(" + ("(upload_type = " + zzntVar.zza() + " AND (ABS(creation_timestamp - " + jCurrentTimeMillis + ") > CAST(" + zzbh.zzaf.zza(null).longValue() + " AS INTEGER)))") + " OR " + ("(upload_type != " + zzntVar.zza() + " AND (ABS(creation_timestamp - " + jCurrentTimeMillis + ") > CAST(" + zzag.zzm() + " AS INTEGER)))") + ")";
    }

    private final long zzb(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = e_().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j11 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j11;
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Database error", str, e11);
                throw e11;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                cursor.close();
            }
            throw th2;
        }
    }

    private final boolean zzb(String str, List<Integer> list) {
        Preconditions.checkNotEmpty(str);
        zzal();
        zzt();
        SQLiteDatabase sQLiteDatabaseE_ = e_();
        try {
            long jZzb = zzb("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int iMax = Math.max(0, Math.min(2000, zze().zzb(str, zzbh.zzah)));
            if (jZzb <= iMax) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < list.size(); i11++) {
                Integer num = list.get(i11);
                if (num == null) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String str2 = "(" + TextUtils.join(",", arrayList) + ")";
            StringBuilder sb2 = new StringBuilder("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            sb2.append(str2);
            sb2.append(" order by rowid desc limit -1 offset ?)");
            return sQLiteDatabaseE_.delete("audience_filter_values", sb2.toString(), new String[]{str, Integer.toString(iMax)}) > 0;
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Database error querying filters. appId", zzgo.zza(str), e11);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x012c  */
    /* JADX WARN: Multi-variable type inference failed */
    private final zzbb zzc(String str, String str2, String str3) throws Throwable {
        Cursor cursorQuery;
        Boolean boolValueOf;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        zzt();
        zzal();
        sP.Sj sj2 = 0;
        try {
            try {
                cursorQuery = e_().query(str, (String[]) new ArrayList(Arrays.asList("lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling", "current_session_count")).toArray(new String[0]), "app_id=? and name=?", new String[]{str2, str3}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        cursorQuery.close();
                        return null;
                    }
                    long j11 = cursorQuery.getLong(0);
                    long j12 = cursorQuery.getLong(1);
                    long j13 = cursorQuery.getLong(2);
                    long j14 = cursorQuery.isNull(3) ? 0L : cursorQuery.getLong(3);
                    Long lValueOf = cursorQuery.isNull(4) ? null : Long.valueOf(cursorQuery.getLong(4));
                    Long lValueOf2 = cursorQuery.isNull(5) ? null : Long.valueOf(cursorQuery.getLong(5));
                    Long lValueOf3 = cursorQuery.isNull(6) ? null : Long.valueOf(cursorQuery.getLong(6));
                    if (cursorQuery.isNull(7)) {
                        boolValueOf = null;
                    } else {
                        boolValueOf = Boolean.valueOf(cursorQuery.getLong(7) == 1);
                    }
                    zzbb zzbbVar = new zzbb(str2, str3, j11, j12, cursorQuery.isNull(8) ? 0L : cursorQuery.getLong(8), j13, j14, lValueOf, lValueOf2, lValueOf3, boolValueOf);
                    if (cursorQuery.moveToNext()) {
                        zzj().zzg().zza("Got multiple records for event aggregates, expected one. appId", zzgo.zza(str2));
                    }
                    cursorQuery.close();
                    return zzbbVar;
                } catch (SQLiteException e11) {
                    e = e11;
                    zzj().zzg().zza("Error querying events. appId", zzgo.zza(str2), zzi().zza(str3), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                sj2 = "current_bundle_count";
                if (sj2 != 0) {
                    sj2.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e = e12;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (sj2 != 0) {
                sj2.close();
            }
            throw th;
        }
    }

    private final void zzi(String str, String str2) {
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        try {
            e_().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error deleting snapshot. appId", zzgo.zza(str2), e11);
        }
    }

    public final long b_() {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = e_().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (!cursorRawQuery.moveToFirst()) {
                    cursorRawQuery.close();
                    return -1L;
                }
                long j11 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j11;
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Error querying raw events", e11);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return -1L;
            }
        } catch (Throwable th2) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th2;
        }
    }

    public final long c_() {
        return zza("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    public final long d_() {
        return zza("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    final SQLiteDatabase e_() {
        zzt();
        try {
            return this.zzl.getWritableDatabase();
        } catch (SQLiteException e11) {
            zzj().zzu().zza("Error opening database", e11);
            throw e11;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x003e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.database.Cursor] */
    public final String f_() throws Throwable {
        Throwable th2;
        Cursor cursorRawQuery;
        ?? E_ = e_();
        try {
            try {
                cursorRawQuery = E_.rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
                try {
                    if (!cursorRawQuery.moveToFirst()) {
                        cursorRawQuery.close();
                        return null;
                    }
                    String string = cursorRawQuery.getString(0);
                    cursorRawQuery.close();
                    return string;
                } catch (SQLiteException e11) {
                    e = e11;
                    zzj().zzg().zza("Database error getting next bundle app id", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th3) {
                th2 = th3;
                if (E_ != 0) {
                    E_.close();
                }
                throw th2;
            }
        } catch (SQLiteException e12) {
            e = e12;
            cursorRawQuery = null;
        } catch (Throwable th4) {
            th2 = th4;
            E_ = 0;
            if (E_ != 0) {
                E_.close();
            }
            throw th2;
        }
    }

    public final int zza(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        try {
            return e_().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error deleting conditional property", zzgo.zza(str), zzi().zzc(str2), e11);
            return 0;
        }
    }

    public final long zza(com.google.android.gms.internal.measurement.zzfy.zzk zzkVar) throws IOException {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzkVar);
        Preconditions.checkNotEmpty(zzkVar.zzz());
        byte[] bArrZzca = zzkVar.zzca();
        long jZza = g_().zza(bArrZzca);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzkVar.zzz());
        contentValues.put("metadata_fingerprint", Long.valueOf(jZza));
        contentValues.put(TtmlNode.TAG_METADATA, bArrZzca);
        try {
            e_().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return jZza;
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing raw event metadata. appId", zzgo.zza(zzkVar.zzz()), e11);
            throw e11;
        }
    }

    public final long zza(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        try {
            return e_().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, zze().zzb(str, zzbh.zzp))))});
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error deleting over the limit events. appId", zzgo.zza(str), e11);
            return 0L;
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x008c  */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0031: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:10:0x0031 */
    public final Pair<com.google.android.gms.internal.measurement.zzfy.zzf, Long> zza(String str, Long l11) throws Throwable {
        Cursor cursorRawQuery;
        Cursor cursor;
        zzt();
        zzal();
        Cursor cursor2 = null;
        try {
            try {
                cursorRawQuery = e_().rawQuery("select main_event, children_to_process from main_event_params where app_id=? and event_id=?", new String[]{str, String.valueOf(l11)});
                try {
                    if (!cursorRawQuery.moveToFirst()) {
                        zzj().zzp().zza("Main event not found");
                        cursorRawQuery.close();
                        return null;
                    }
                    try {
                        Pair<com.google.android.gms.internal.measurement.zzfy.zzf, Long> pairCreate = Pair.create((com.google.android.gms.internal.measurement.zzfy.zzf) ((com.google.android.gms.internal.measurement.zzjt) ((com.google.android.gms.internal.measurement.zzfy.zzf.zza) zzoo.zza(com.google.android.gms.internal.measurement.zzfy.zzf.zze(), cursorRawQuery.getBlob(0))).zzai()), Long.valueOf(cursorRawQuery.getLong(1)));
                        cursorRawQuery.close();
                        return pairCreate;
                    } catch (IOException e11) {
                        zzj().zzg().zza("Failed to merge main event. appId, eventId", zzgo.zza(str), l11, e11);
                        cursorRawQuery.close();
                        return null;
                    }
                } catch (SQLiteException e12) {
                    e = e12;
                    zzj().zzg().zza("Error selecting main event", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e13) {
            e = e13;
            cursorRawQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    public final zzaq zza(long j11, String str, long j12, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        String[] strArr = {str};
        zzaq zzaqVar = new zzaq();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseE_ = e_();
                Cursor cursorQuery = sQLiteDatabaseE_.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count", "daily_realtime_dcu_count", "daily_registered_triggers_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    zzj().zzu().zza("Not updating daily counts, app is not known. appId", zzgo.zza(str));
                    cursorQuery.close();
                    return zzaqVar;
                }
                if (cursorQuery.getLong(0) == j11) {
                    zzaqVar.zzb = cursorQuery.getLong(1);
                    zzaqVar.zza = cursorQuery.getLong(2);
                    zzaqVar.zzc = cursorQuery.getLong(3);
                    zzaqVar.zzd = cursorQuery.getLong(4);
                    zzaqVar.zze = cursorQuery.getLong(5);
                    zzaqVar.zzf = cursorQuery.getLong(6);
                    zzaqVar.zzg = cursorQuery.getLong(7);
                }
                if (z10) {
                    zzaqVar.zzb += j12;
                }
                if (z11) {
                    zzaqVar.zza += j12;
                }
                if (z12) {
                    zzaqVar.zzc += j12;
                }
                if (z13) {
                    zzaqVar.zzd += j12;
                }
                if (z14) {
                    zzaqVar.zze += j12;
                }
                if (z15) {
                    zzaqVar.zzf += j12;
                }
                if (z16) {
                    zzaqVar.zzg += j12;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j11));
                contentValues.put("daily_public_events_count", Long.valueOf(zzaqVar.zza));
                contentValues.put("daily_events_count", Long.valueOf(zzaqVar.zzb));
                contentValues.put("daily_conversions_count", Long.valueOf(zzaqVar.zzc));
                contentValues.put("daily_error_events_count", Long.valueOf(zzaqVar.zzd));
                contentValues.put("daily_realtime_events_count", Long.valueOf(zzaqVar.zze));
                contentValues.put("daily_realtime_dcu_count", Long.valueOf(zzaqVar.zzf));
                contentValues.put("daily_registered_triggers_count", Long.valueOf(zzaqVar.zzg));
                sQLiteDatabaseE_.update("apps", contentValues, "app_id=?", strArr);
                cursorQuery.close();
                return zzaqVar;
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Error updating daily counts. appId", zzgo.zza(str), e11);
                if (0 != 0) {
                    cursor.close();
                }
                return zzaqVar;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                cursor.close();
            }
            throw th2;
        }
    }

    public final zzaq zza(long j11, String str, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        return zza(j11, str, 1L, false, false, z12, false, z14, z15, z16);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0057  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r4v0, types: [long] */
    public final String zza(long j11) throws Throwable {
        Cursor cursorRawQuery;
        zzt();
        zzal();
        ?? r11 = 0;
        try {
            try {
                cursorRawQuery = e_().rawQuery("select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", new String[]{String.valueOf((long) j11)});
                try {
                    if (cursorRawQuery.moveToFirst()) {
                        String string = cursorRawQuery.getString(0);
                        cursorRawQuery.close();
                        return string;
                    }
                    zzj().zzp().zza("No expired configs for apps with pending events");
                    cursorRawQuery.close();
                    return null;
                } catch (SQLiteException e11) {
                    e = e11;
                    zzj().zzg().zza("Error selecting expired configs", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                r11 = j11;
                if (r11 != 0) {
                    r11.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e = e12;
            cursorRawQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (r11 != 0) {
                r11.close();
            }
            throw th;
        }
    }

    public final List<Pair<com.google.android.gms.internal.measurement.zzfy.zzk, Long>> zza(String str, int i11, int i12) {
        long jZzc;
        long jZzc2;
        zzt();
        zzal();
        int i13 = 1;
        Preconditions.checkArgument(i11 > 0);
        Preconditions.checkArgument(i12 > 0);
        Preconditions.checkNotEmpty(str);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = e_().query("queue", new String[]{"rowid", "data", PushConstants.SP_KEY_RETRY_COUNT}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i11));
                if (!cursorQuery.moveToFirst()) {
                    List<Pair<com.google.android.gms.internal.measurement.zzfy.zzk, Long>> listEmptyList = Collections.emptyList();
                    cursorQuery.close();
                    return listEmptyList;
                }
                ArrayList arrayList = new ArrayList();
                int length = 0;
                while (true) {
                    long j11 = cursorQuery.getLong(0);
                    try {
                        byte[] bArrZzc = g_().zzc(cursorQuery.getBlob(i13));
                        if (!arrayList.isEmpty() && bArrZzc.length + length > i12) {
                            break;
                        }
                        try {
                            com.google.android.gms.internal.measurement.zzfy.zzk.zza zzaVar = (com.google.android.gms.internal.measurement.zzfy.zzk.zza) zzoo.zza(com.google.android.gms.internal.measurement.zzfy.zzk.zzw(), bArrZzc);
                            if (!arrayList.isEmpty()) {
                                com.google.android.gms.internal.measurement.zzfy.zzk zzkVar = (com.google.android.gms.internal.measurement.zzfy.zzk) ((Pair) arrayList.get(0)).first;
                                com.google.android.gms.internal.measurement.zzfy.zzk zzkVar2 = (com.google.android.gms.internal.measurement.zzfy.zzk) ((com.google.android.gms.internal.measurement.zzjt) zzaVar.zzai());
                                if (!zzkVar.zzae().equals(zzkVar2.zzae()) || !zzkVar.zzad().equals(zzkVar2.zzad()) || zzkVar.zzau() != zzkVar2.zzau() || !zzkVar.zzaf().equals(zzkVar2.zzaf())) {
                                    break;
                                }
                                Iterator<com.google.android.gms.internal.measurement.zzfy.zzo> it = zzkVar.zzas().iterator();
                                while (true) {
                                    jZzc = -1;
                                    if (!it.hasNext()) {
                                        jZzc2 = -1;
                                        break;
                                    }
                                    com.google.android.gms.internal.measurement.zzfy.zzo next = it.next();
                                    if ("_npa".equals(next.zzg())) {
                                        jZzc2 = next.zzc();
                                        break;
                                    }
                                }
                                for (com.google.android.gms.internal.measurement.zzfy.zzo zzoVar : zzkVar2.zzas()) {
                                    if ("_npa".equals(zzoVar.zzg())) {
                                        jZzc = zzoVar.zzc();
                                        break;
                                    }
                                }
                                if (jZzc2 != jZzc) {
                                    break;
                                }
                            }
                            if (!cursorQuery.isNull(2)) {
                                zzaVar.zzi(cursorQuery.getInt(2));
                            }
                            length += bArrZzc.length;
                            arrayList.add(Pair.create((com.google.android.gms.internal.measurement.zzfy.zzk) ((com.google.android.gms.internal.measurement.zzjt) zzaVar.zzai()), Long.valueOf(j11)));
                        } catch (IOException e11) {
                            zzj().zzg().zza("Failed to merge queued bundle. appId", zzgo.zza(str), e11);
                        }
                        if (!cursorQuery.moveToNext() || length > i12) {
                            break;
                        }
                        i13 = 1;
                    } catch (IOException e12) {
                        zzj().zzg().zza("Failed to unzip queued bundle. appId", zzgo.zza(str), e12);
                    }
                }
                cursorQuery.close();
                return arrayList;
            } catch (SQLiteException e13) {
                zzj().zzg().zza("Error querying bundles. appId", zzgo.zza(str), e13);
                List<Pair<com.google.android.gms.internal.measurement.zzfy.zzk, Long>> listEmptyList2 = Collections.emptyList();
                if (0 != 0) {
                    cursor.close();
                }
                return listEmptyList2;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                cursor.close();
            }
            throw th2;
        }
    }

    public final List<zzae> zza(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb2 = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb2.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(str3 + "*");
            sb2.append(" and name glob ?");
        }
        return zza(sb2.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public final List<zzae> zza(String str, String[] strArr) {
        zzt();
        zzal();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = e_().query("conditional_properties", new String[]{"app_id", "origin", "name", AppMeasurementSdk.ConditionalUserProperty.VALUE, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, "timed_out_event", AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, "triggered_event", AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, "expired_event"}, str, strArr, null, null, "rowid", "1001");
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return arrayList;
                }
                while (arrayList.size() < 1000) {
                    String string = cursorQuery.getString(0);
                    String string2 = cursorQuery.getString(1);
                    String string3 = cursorQuery.getString(2);
                    Object objZza = zza(cursorQuery, 3);
                    boolean z10 = cursorQuery.getInt(4) != 0;
                    String string4 = cursorQuery.getString(5);
                    long j11 = cursorQuery.getLong(6);
                    zzoo zzooVarG_ = g_();
                    byte[] blob = cursorQuery.getBlob(7);
                    Parcelable.Creator<zzbf> creator = zzbf.CREATOR;
                    zzbf zzbfVar = (zzbf) zzooVarG_.zza(blob, creator);
                    arrayList.add(new zzae(string, string2, new zzon(string3, cursorQuery.getLong(10), objZza, string2), cursorQuery.getLong(8), z10, string4, zzbfVar, j11, (zzbf) g_().zza(cursorQuery.getBlob(9), creator), cursorQuery.getLong(11), (zzbf) g_().zza(cursorQuery.getBlob(12), creator)));
                    if (!cursorQuery.moveToNext()) {
                        cursorQuery.close();
                        return arrayList;
                    }
                }
                zzj().zzg().zza("Read more than the max allowed conditional properties, ignoring extra", 1000);
                cursorQuery.close();
                return arrayList;
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Error querying conditional user property value", e11);
                List<zzae> listEmptyList = Collections.emptyList();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return listEmptyList;
            }
        } catch (Throwable th2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th2;
        }
    }

    public final void zza(zzbb zzbbVar) {
        zza("events", zzbbVar);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0045  */
    public final void zza(zzg zzgVar, boolean z10, boolean z11) {
        Preconditions.checkNotNull(zzgVar);
        zzt();
        zzal();
        String strZzac = zzgVar.zzac();
        Preconditions.checkNotNull(strZzac);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", strZzac);
        if (!com.google.android.gms.internal.measurement.zznm.zza() || !zze().zza(zzbh.zzcy)) {
            contentValues.put("app_instance_id", zzgVar.zzad());
        } else if (z10) {
            contentValues.put("app_instance_id", (String) null);
        } else if (this.zzg.zzb(strZzac).zza(zzje.zza.ANALYTICS_STORAGE)) {
            contentValues.put("app_instance_id", zzgVar.zzad());
        }
        contentValues.put("gmp_app_id", zzgVar.zzah());
        if (!com.google.android.gms.internal.measurement.zznm.zza() || !zze().zza(zzbh.zzcy) || this.zzg.zzb(strZzac).zza(zzje.zza.AD_STORAGE)) {
            contentValues.put("resettable_device_id_hash", zzgVar.zzaj());
        }
        contentValues.put("last_bundle_index", Long.valueOf(zzgVar.zzt()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzgVar.zzu()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzgVar.zzs()));
        contentValues.put("app_version", zzgVar.zzaf());
        contentValues.put("app_store", zzgVar.zzae());
        contentValues.put("gmp_version", Long.valueOf(zzgVar.zzq()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzgVar.zzn()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzgVar.zzar()));
        contentValues.put("day", Long.valueOf(zzgVar.zzm()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzgVar.zzk()));
        contentValues.put("daily_events_count", Long.valueOf(zzgVar.zzj()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzgVar.zzh()));
        contentValues.put("config_fetched_time", Long.valueOf(zzgVar.zzg()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzgVar.zzp()));
        contentValues.put("app_version_int", Long.valueOf(zzgVar.zze()));
        contentValues.put("firebase_instance_id", zzgVar.zzag());
        contentValues.put("daily_error_events_count", Long.valueOf(zzgVar.zzi()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzgVar.zzl()));
        contentValues.put("health_monitor_sample", zzgVar.zzai());
        contentValues.put("android_id", Long.valueOf(zzgVar.zzd()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzgVar.zzaq()));
        contentValues.put("admob_app_id", zzgVar.zzaa());
        contentValues.put("dynamite_version", Long.valueOf(zzgVar.zzo()));
        if (!com.google.android.gms.internal.measurement.zznm.zza() || !zze().zza(zzbh.zzcy) || this.zzg.zzb(strZzac).zza(zzje.zza.ANALYTICS_STORAGE)) {
            contentValues.put("session_stitching_token", zzgVar.zzal());
        }
        contentValues.put("sgtm_upload_enabled", Boolean.valueOf(zzgVar.zzat()));
        contentValues.put("target_os_version", Long.valueOf(zzgVar.zzw()));
        contentValues.put("session_stitching_token_hash", Long.valueOf(zzgVar.zzv()));
        if (zzpn.zza() && zze().zze(strZzac, zzbh.zzch)) {
            contentValues.put("ad_services_version", Integer.valueOf(zzgVar.zza()));
            contentValues.put("attribution_eligibility_status", Long.valueOf(zzgVar.zzf()));
        }
        contentValues.put("unmatched_first_open_without_ad_id", Boolean.valueOf(zzgVar.zzau()));
        contentValues.put("npa_metadata_value", zzgVar.zzx());
        if (zzpu.zza() && zze().zze(strZzac, zzbh.zzbx)) {
            zzq();
            if (zzos.zzf(strZzac)) {
                contentValues.put("bundle_delivery_index", Long.valueOf(zzgVar.zzr()));
            }
        }
        if (zzpu.zza() && zze().zze(strZzac, zzbh.zzby)) {
            contentValues.put("sgtm_preview_key", zzgVar.zzam());
        }
        contentValues.put("dma_consent_state", Integer.valueOf(zzgVar.zzc()));
        contentValues.put("daily_realtime_dcu_count", Integer.valueOf(zzgVar.zzb()));
        contentValues.put("serialized_npa_metadata", zzgVar.zzak());
        List<String> listZzan = zzgVar.zzan();
        if (listZzan != null) {
            if (listZzan.isEmpty()) {
                zzj().zzu().zza("Safelisted events should not be an empty list. appId", strZzac);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", listZzan));
            }
        }
        if (com.google.android.gms.internal.measurement.zzny.zza() && zze().zza(zzbh.zzbu) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        if (zze().zza(zzbh.zzcw)) {
            contentValues.put("unmatched_pfo", zzgVar.zzy());
            contentValues.put("unmatched_uwa", zzgVar.zzz());
        }
        if (zzov.zza() && zze().zze(strZzac, zzbh.zzcu)) {
            contentValues.put("ad_campaign_info", zzgVar.zzav());
        }
        try {
            SQLiteDatabase sQLiteDatabaseE_ = e_();
            if (sQLiteDatabaseE_.update("apps", contentValues, "app_id = ?", new String[]{strZzac}) == 0 && sQLiteDatabaseE_.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update app (got -1). appId", zzgo.zza(strZzac));
            }
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing app. appId", zzgo.zza(strZzac), e11);
        }
    }

    final void zza(Long l11) {
        zzt();
        zzal();
        Preconditions.checkNotNull(l11);
        if ((!zzpu.zza() || zze().zza(zzbh.zzcb)) && zzaa()) {
            if (zzb("SELECT COUNT(1) FROM upload_queue WHERE rowid = " + l11 + " AND retry_count =  2147483647 LIMIT 1", (String[]) null) > 0) {
                zzj().zzu().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                e_().execSQL("UPDATE upload_queue SET retry_count = retry_count + 1 WHERE rowid = " + l11 + " AND retry_count < 2147483647");
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Error incrementing retry count. error", e11);
            }
        }
    }

    public final void zza(String str, Bundle bundle) {
        Preconditions.checkNotNull(bundle);
        zzt();
        zzal();
        zzar zzarVar = new zzar(this, str);
        for (List<zzap> listZza = zzarVar.zza(); !listZza.isEmpty(); listZza = zzarVar.zza()) {
            for (zzap zzapVar : listZza) {
                zzoo zzooVarG_ = g_();
                com.google.android.gms.internal.measurement.zzfy.zzf zzfVar = zzapVar.zzd;
                Bundle bundle2 = new Bundle();
                for (com.google.android.gms.internal.measurement.zzfy.zzh zzhVar : zzfVar.zzh()) {
                    if (zzhVar.zzj()) {
                        bundle2.putDouble(zzhVar.zzg(), zzhVar.zza());
                    } else if (zzhVar.zzk()) {
                        bundle2.putFloat(zzhVar.zzg(), zzhVar.zzb());
                    } else if (zzhVar.zzl()) {
                        bundle2.putLong(zzhVar.zzg(), zzhVar.zzd());
                    } else if (zzhVar.zzn()) {
                        bundle2.putString(zzhVar.zzg(), zzhVar.zzh());
                    } else if (zzhVar.zzi().isEmpty()) {
                        zzooVarG_.zzj().zzg().zza("Unexpected parameter type for parameter", zzhVar);
                    } else {
                        bundle2.putParcelableArray(zzhVar.zzg(), zzoo.zzb(zzhVar.zzi()));
                    }
                }
                String string = bundle2.getString("_o");
                bundle2.remove("_o");
                String strZzg = zzfVar.zzg();
                if (string == null) {
                    string = "";
                }
                zzgs zzgsVar = new zzgs(strZzg, string, bundle2, zzfVar.zzd());
                zzq().zza(zzgsVar.zzc, bundle);
                zza(zzapVar.zza, new zzbc(this.zzu, zzgsVar.zzb, str, zzapVar.zzd.zzg(), zzapVar.zzd.zzd(), zzapVar.zzd.zzc(), zzgsVar.zzc), zzapVar.zzb, zzapVar.zzc);
            }
        }
    }

    public final void zza(String str, zzax zzaxVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzaxVar);
        zzt();
        zzal();
        if (zze().zza(zzbh.zzcr)) {
            zzje zzjeVarZzi = zzi(str);
            zzje zzjeVar = zzje.zza;
            if (zzjeVarZzi == zzjeVar) {
                zzb(str, zzjeVar);
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("dma_consent_settings", zzaxVar.zzf());
        zza("consent_settings", "app_id", contentValues);
    }

    public final void zza(String str, zzje zzjeVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzjeVar);
        zzt();
        zzal();
        zzb(str, zzi(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("storage_consent_at_bundling", zzjeVar.zzf());
        zza("consent_settings", "app_id", contentValues);
    }

    final void zza(String str, List<com.google.android.gms.internal.measurement.zzfo.zza> list) {
        boolean z10;
        boolean z11;
        Preconditions.checkNotNull(list);
        for (int i11 = 0; i11 < list.size(); i11++) {
            com.google.android.gms.internal.measurement.zzfo.zza.C0385zza c0385zzaZzcd = list.get(i11).zzcd();
            if (c0385zzaZzcd.zza() != 0) {
                for (int i12 = 0; i12 < c0385zzaZzcd.zza(); i12++) {
                    com.google.android.gms.internal.measurement.zzfo.zzb.zza zzaVarZzcd = c0385zzaZzcd.zza(i12).zzcd();
                    com.google.android.gms.internal.measurement.zzfo.zzb.zza zzaVar = (com.google.android.gms.internal.measurement.zzfo.zzb.zza) ((com.google.android.gms.internal.measurement.zzjt.zzb) zzaVarZzcd.clone());
                    String strZzb = zzji.zzb(zzaVarZzcd.zzb());
                    if (strZzb != null) {
                        zzaVar.zza(strZzb);
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    for (int i13 = 0; i13 < zzaVarZzcd.zza(); i13++) {
                        com.google.android.gms.internal.measurement.zzfo.zzc zzcVarZza = zzaVarZzcd.zza(i13);
                        String strZza = zzjk.zza(zzcVarZza.zze());
                        if (strZza != null) {
                            zzaVar.zza(i13, (com.google.android.gms.internal.measurement.zzfo.zzc) ((com.google.android.gms.internal.measurement.zzjt) zzcVarZza.zzcd().zza(strZza).zzai()));
                            z11 = true;
                        }
                    }
                    if (z11) {
                        com.google.android.gms.internal.measurement.zzfo.zza.C0385zza c0385zzaZza = c0385zzaZzcd.zza(i12, zzaVar);
                        list.set(i11, (com.google.android.gms.internal.measurement.zzfo.zza) ((com.google.android.gms.internal.measurement.zzjt) c0385zzaZza.zzai()));
                        c0385zzaZzcd = c0385zzaZza;
                    }
                }
            }
            if (c0385zzaZzcd.zzb() != 0) {
                for (int i14 = 0; i14 < c0385zzaZzcd.zzb(); i14++) {
                    com.google.android.gms.internal.measurement.zzfo.zze zzeVarZzb = c0385zzaZzcd.zzb(i14);
                    String strZza2 = zzjj.zza(zzeVarZzb.zze());
                    if (strZza2 != null) {
                        c0385zzaZzcd = c0385zzaZzcd.zza(i14, zzeVarZzb.zzcd().zza(strZza2));
                        list.set(i11, (com.google.android.gms.internal.measurement.zzfo.zza) ((com.google.android.gms.internal.measurement.zzjt) c0385zzaZzcd.zzai()));
                    }
                }
            }
        }
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(list);
        SQLiteDatabase sQLiteDatabaseE_ = e_();
        sQLiteDatabaseE_.beginTransaction();
        try {
            zzal();
            zzt();
            Preconditions.checkNotEmpty(str);
            SQLiteDatabase sQLiteDatabaseE_2 = e_();
            sQLiteDatabaseE_2.delete("property_filters", "app_id=?", new String[]{str});
            sQLiteDatabaseE_2.delete("event_filters", "app_id=?", new String[]{str});
            for (com.google.android.gms.internal.measurement.zzfo.zza zzaVar2 : list) {
                zzal();
                zzt();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(zzaVar2);
                if (zzaVar2.zzg()) {
                    int iZza = zzaVar2.zza();
                    Iterator<com.google.android.gms.internal.measurement.zzfo.zzb> it = zzaVar2.zze().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (!it.next().zzl()) {
                                zzj().zzu().zza("Event filter with no ID. Audience definition ignored. appId, audienceId", zzgo.zza(str), Integer.valueOf(iZza));
                                break;
                            }
                        } else {
                            Iterator<com.google.android.gms.internal.measurement.zzfo.zze> it2 = zzaVar2.zzf().iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    Iterator<com.google.android.gms.internal.measurement.zzfo.zzb> it3 = zzaVar2.zze().iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            if (!zza(str, iZza, it3.next())) {
                                                z10 = false;
                                                break;
                                            }
                                        } else {
                                            z10 = true;
                                            break;
                                        }
                                    }
                                    if (z10) {
                                        Iterator<com.google.android.gms.internal.measurement.zzfo.zze> it4 = zzaVar2.zzf().iterator();
                                        while (it4.hasNext()) {
                                            if (!zza(str, iZza, it4.next())) {
                                                z10 = false;
                                                break;
                                            }
                                        }
                                    }
                                    if (!z10) {
                                        zzal();
                                        zzt();
                                        Preconditions.checkNotEmpty(str);
                                        SQLiteDatabase sQLiteDatabaseE_3 = e_();
                                        sQLiteDatabaseE_3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iZza)});
                                        sQLiteDatabaseE_3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iZza)});
                                        break;
                                    }
                                    break;
                                }
                                if (!it2.next().zzi()) {
                                    zzj().zzu().zza("Property filter with no ID. Audience definition ignored. appId, audienceId", zzgo.zza(str), Integer.valueOf(iZza));
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    zzj().zzu().zza("Audience with no ID. appId", zzgo.zza(str));
                }
            }
            ArrayList arrayList = new ArrayList();
            for (com.google.android.gms.internal.measurement.zzfo.zza zzaVar3 : list) {
                arrayList.add(zzaVar3.zzg() ? Integer.valueOf(zzaVar3.zza()) : null);
            }
            zzb(str, arrayList);
            sQLiteDatabaseE_.setTransactionSuccessful();
        } finally {
            sQLiteDatabaseE_.endTransaction();
        }
    }

    final void zza(List<Long> list) {
        zzt();
        zzal();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (zzaa()) {
            String str = "(" + TextUtils.join(",", list) + ")";
            if (zzb("SELECT COUNT(1) FROM queue WHERE rowid IN " + str + " AND retry_count =  2147483647 LIMIT 1", (String[]) null) > 0) {
                zzj().zzu().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                e_().execSQL("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN " + str + " AND (retry_count IS NULL OR retry_count < 2147483647)");
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Error incrementing retry count. error", e11);
            }
        }
    }

    public final boolean zza(com.google.android.gms.internal.measurement.zzfy.zzk zzkVar, boolean z10) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzkVar);
        Preconditions.checkNotEmpty(zzkVar.zzz());
        Preconditions.checkState(zzkVar.zzbj());
        zzv();
        long jCurrentTimeMillis = zzb().currentTimeMillis();
        if (zzkVar.zzm() < jCurrentTimeMillis - zzag.zzm() || zzkVar.zzm() > zzag.zzm() + jCurrentTimeMillis) {
            zzj().zzu().zza("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzgo.zza(zzkVar.zzz()), Long.valueOf(jCurrentTimeMillis), Long.valueOf(zzkVar.zzm()));
        }
        try {
            byte[] bArrZzb = g_().zzb(zzkVar.zzca());
            zzj().zzp().zza("Saving bundle, size", Integer.valueOf(bArrZzb.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzkVar.zzz());
            contentValues.put("bundle_end_timestamp", Long.valueOf(zzkVar.zzm()));
            contentValues.put("data", bArrZzb);
            contentValues.put("has_realtime", Integer.valueOf(z10 ? 1 : 0));
            if (zzkVar.zzbq()) {
                contentValues.put(PushConstants.SP_KEY_RETRY_COUNT, Integer.valueOf(zzkVar.zzg()));
            }
            try {
                if (e_().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzj().zzg().zza("Failed to insert bundle (got -1). appId", zzgo.zza(zzkVar.zzz()));
                return false;
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Error storing bundle. appId", zzgo.zza(zzkVar.zzz()), e11);
                return false;
            }
        } catch (IOException e12) {
            zzj().zzg().zza("Data loss. Failed to serialize bundle. appId", zzgo.zza(zzkVar.zzz()), e12);
            return false;
        }
    }

    public final boolean zza(zzae zzaeVar) {
        Preconditions.checkNotNull(zzaeVar);
        zzt();
        zzal();
        String str = zzaeVar.zza;
        Preconditions.checkNotNull(str);
        if (zze(str, zzaeVar.zzc.zza) == null && zzb("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", zzaeVar.zzb);
        contentValues.put("name", zzaeVar.zzc.zza);
        zza(contentValues, AppMeasurementSdk.ConditionalUserProperty.VALUE, Preconditions.checkNotNull(zzaeVar.zzc.zza()));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.valueOf(zzaeVar.zze));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzaeVar.zzf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzaeVar.zzh));
        zzq();
        contentValues.put("timed_out_event", zzos.zza((Parcelable) zzaeVar.zzg));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzaeVar.zzd));
        zzq();
        contentValues.put("triggered_event", zzos.zza((Parcelable) zzaeVar.zzi));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzaeVar.zzc.zzb));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzaeVar.zzj));
        zzq();
        contentValues.put("expired_event", zzos.zza((Parcelable) zzaeVar.zzk));
        try {
            if (e_().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert/update conditional user property (got -1)", zzgo.zza(str));
            return true;
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing conditional user property", zzgo.zza(str), e11);
            return true;
        }
    }

    public final boolean zza(zzbc zzbcVar, long j11, boolean z10) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzbcVar);
        Preconditions.checkNotEmpty(zzbcVar.zza);
        byte[] bArrZzca = g_().zza(zzbcVar).zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzbcVar.zza);
        contentValues.put("name", zzbcVar.zzb);
        contentValues.put(CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(zzbcVar.zzd));
        contentValues.put("metadata_fingerprint", Long.valueOf(j11));
        contentValues.put("data", bArrZzca);
        contentValues.put("realtime", Integer.valueOf(z10 ? 1 : 0));
        try {
            if (e_().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert raw event (got -1). appId", zzgo.zza(zzbcVar.zza));
            return false;
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing raw event. appId", zzgo.zza(zzbcVar.zza), e11);
            return false;
        }
    }

    public final boolean zza(zzop zzopVar) {
        Preconditions.checkNotNull(zzopVar);
        zzt();
        zzal();
        if (zze(zzopVar.zza, zzopVar.zzc) == null) {
            if (zzos.zzh(zzopVar.zzc)) {
                if (zzb("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzopVar.zza}) >= zze().zza(zzopVar.zza, zzbh.zzai, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(zzopVar.zzc) && zzb("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzopVar.zza, zzopVar.zzb}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzopVar.zza);
        contentValues.put("origin", zzopVar.zzb);
        contentValues.put("name", zzopVar.zzc);
        contentValues.put("set_timestamp", Long.valueOf(zzopVar.zzd));
        zza(contentValues, AppMeasurementSdk.ConditionalUserProperty.VALUE, zzopVar.zze);
        try {
            if (e_().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert/update user property (got -1). appId", zzgo.zza(zzopVar.zza));
            return true;
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing user property. appId", zzgo.zza(zzopVar.zza), e11);
            return true;
        }
    }

    public final boolean zza(String str, com.google.android.gms.internal.measurement.zzfy.zzj zzjVar, String str2, Map<String, String> map, zznt zzntVar) {
        int iDelete;
        zzt();
        zzal();
        Preconditions.checkNotNull(zzjVar);
        Preconditions.checkNotEmpty(str);
        if (zzpu.zza() && !zze().zza(zzbh.zzcb)) {
            return false;
        }
        zzt();
        zzal();
        if (zzaa()) {
            long jZza = zzn().zzb.zza();
            long jElapsedRealtime = zzb().elapsedRealtime();
            if (Math.abs(jElapsedRealtime - jZza) > zzag.zzn()) {
                zzn().zzb.zza(jElapsedRealtime);
                zzt();
                zzal();
                if (zzaa() && (iDelete = e_().delete("upload_queue", zzao(), new String[0])) > 0) {
                    zzj().zzp().zza("Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted", Integer.valueOf(iDelete));
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(entry.getKey() + UrlUtils.EQUAL_MARK + entry.getValue());
        }
        byte[] bArrZzca = zzjVar.zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("measurement_batch", bArrZzca);
        contentValues.put("upload_uri", str2);
        StringBuilder sb2 = new StringBuilder();
        int size = arrayList.size();
        if (size > 0) {
            sb2.append((CharSequence) arrayList.get(0));
            int i11 = 1;
            while (i11 < size) {
                sb2.append((CharSequence) "\r\n");
                Object obj = arrayList.get(i11);
                i11++;
                sb2.append((CharSequence) obj);
            }
        }
        contentValues.put("upload_headers", sb2.toString());
        contentValues.put("upload_type", Integer.valueOf(zzntVar.zza()));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzb().currentTimeMillis()));
        contentValues.put(PushConstants.SP_KEY_RETRY_COUNT, (Integer) 0);
        try {
            if (e_().insert("upload_queue", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert MeasurementBatch (got -1) to upload_queue. appId", str);
            return false;
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing MeasurementBatch to upload_queue. appId", str, e11);
            return false;
        }
    }

    public final boolean zza(String str, zzno zznoVar) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zznoVar);
        Preconditions.checkNotEmpty(str);
        long jCurrentTimeMillis = zzb().currentTimeMillis();
        long j11 = zznoVar.zzb;
        zzfz<Long> zzfzVar = zzbh.zzbh;
        if (j11 < jCurrentTimeMillis - zzfzVar.zza(null).longValue() || zznoVar.zzb > zzfzVar.zza(null).longValue() + jCurrentTimeMillis) {
            zzj().zzu().zza("Storing trigger URI outside of the max retention time span. appId, now, timestamp", zzgo.zza(str), Long.valueOf(jCurrentTimeMillis), Long.valueOf(zznoVar.zzb));
        }
        zzj().zzp().zza("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", zznoVar.zza);
        contentValues.put(EventConstants.KEY_SOURCE, Integer.valueOf(zznoVar.zzc));
        contentValues.put("timestamp_millis", Long.valueOf(zznoVar.zzb));
        try {
            if (e_().insert("trigger_uris", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert trigger URI (got -1). appId", zzgo.zza(str));
            return false;
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing trigger URI. appId", zzgo.zza(str), e11);
            return false;
        }
    }

    public final boolean zza(String str, Long l11, long j11, com.google.android.gms.internal.measurement.zzfy.zzf zzfVar) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzfVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l11);
        byte[] bArrZzca = zzfVar.zzca();
        zzj().zzp().zza("Saving complex main event, appId, data size", zzi().zza(str), Integer.valueOf(bArrZzca.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l11);
        contentValues.put("children_to_process", Long.valueOf(j11));
        contentValues.put("main_event", bArrZzca);
        try {
            if (e_().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert complex main event (got -1). appId", zzgo.zza(str));
            return false;
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing complex main event. appId", zzgo.zza(str), e11);
            return false;
        }
    }

    protected final boolean zzaa() {
        return zza().getDatabasePath("google_app_measurement.db").exists();
    }

    public final long zzb(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        return zza("select first_open_count from app2 where app_id=?", new String[]{str}, -1L);
    }

    protected final long zzb(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        SQLiteDatabase sQLiteDatabaseE_ = e_();
        sQLiteDatabaseE_.beginTransaction();
        long j11 = 0;
        try {
            try {
                long jZza = zza("select " + str2 + " from app2 where app_id=?", new String[]{str}, -1L);
                if (jZza == -1) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put("first_open_count", (Integer) 0);
                    contentValues.put("previous_install_count", (Integer) 0);
                    if (sQLiteDatabaseE_.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        zzj().zzg().zza("Failed to insert column (got -1). appId", zzgo.zza(str), str2);
                        return -1L;
                    }
                    jZza = 0;
                    zzj().zzg().zza("Error inserting column. appId", zzgo.zza(str), str2, e);
                    return j11;
                }
                try {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("app_id", str);
                    contentValues2.put(str2, Long.valueOf(1 + jZza));
                    if (sQLiteDatabaseE_.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                        zzj().zzg().zza("Failed to update column (got 0). appId", zzgo.zza(str), str2);
                        return -1L;
                    }
                    sQLiteDatabaseE_.setTransactionSuccessful();
                    return jZza;
                } catch (SQLiteException e11) {
                    long j12 = jZza;
                    e = e11;
                    j11 = j12;
                }
            } finally {
                sQLiteDatabaseE_.endTransaction();
            }
        } catch (SQLiteException e12) {
            e = e12;
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0120  */
    /* JADX WARN: Code duplicated, block: B:51:0x0126  */
    public final List<zzop> zzb(String str, String str2, String str3) throws Throwable {
        String str4;
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                ArrayList arrayList2 = new ArrayList(3);
                try {
                    arrayList2.add(str);
                    StringBuilder sb2 = new StringBuilder("app_id=?");
                    if (TextUtils.isEmpty(str2)) {
                        str4 = str2;
                    } else {
                        str4 = str2;
                        try {
                            arrayList2.add(str4);
                            sb2.append(" and origin=?");
                        } catch (SQLiteException e11) {
                            e = e11;
                            zzj().zzg().zza("(2)Error querying user properties", zzgo.zza(str), str4, e);
                            List<zzop> listEmptyList = Collections.emptyList();
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return listEmptyList;
                        }
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        arrayList2.add(str3 + "*");
                        sb2.append(" and name glob ?");
                    }
                    cursorQuery = e_().query("user_attributes", new String[]{"name", "set_timestamp", AppMeasurementSdk.ConditionalUserProperty.VALUE, "origin"}, sb2.toString(), (String[]) arrayList2.toArray(new String[arrayList2.size()]), null, null, "rowid", "1001");
                    if (!cursorQuery.moveToFirst()) {
                        cursorQuery.close();
                        return arrayList;
                    }
                    while (arrayList.size() < 1000) {
                        String string = cursorQuery.getString(0);
                        long j11 = cursorQuery.getLong(1);
                        try {
                            try {
                                Object objZza = zza(cursorQuery, 2);
                                String string2 = cursorQuery.getString(3);
                                if (objZza == null) {
                                    try {
                                        zzj().zzg().zza("(2)Read invalid user property value, ignoring it", zzgo.zza(str), string2, str3);
                                    } catch (SQLiteException e12) {
                                        e = e12;
                                        str4 = string2;
                                        zzj().zzg().zza("(2)Error querying user properties", zzgo.zza(str), str4, e);
                                        List<zzop> listEmptyList2 = Collections.emptyList();
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        return listEmptyList2;
                                    }
                                } else {
                                    arrayList.add(new zzop(str, string2, string, j11, objZza));
                                }
                                if (!cursorQuery.moveToNext()) {
                                    cursorQuery.close();
                                    return arrayList;
                                }
                                str4 = string2;
                            } catch (SQLiteException e13) {
                                e = e13;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            throw th;
                        }
                    }
                    zzj().zzg().zza("Read more than the max allowed user properties, ignoring excess", 1000);
                    cursorQuery.close();
                    return arrayList;
                } catch (SQLiteException e14) {
                    e = e14;
                    str4 = str2;
                    zzj().zzg().zza("(2)Error querying user properties", zzgo.zza(str), str4, e);
                    List<zzop> listEmptyList3 = Collections.emptyList();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return listEmptyList3;
                }
            } catch (Throwable th3) {
                th = th3;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (SQLiteException e15) {
            e = e15;
        }
    }

    public final void zzb(String str, zzje zzjeVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzjeVar);
        zzt();
        zzal();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzjeVar.zzf());
        contentValues.put("consent_source", Integer.valueOf(zzjeVar.zza()));
        zza("consent_settings", "app_id", contentValues);
    }

    final boolean zzb(String str, Bundle bundle) {
        zzt();
        zzal();
        byte[] bArrZzca = g_().zza(new zzbc(this.zzu, "", str, "dep", 0L, 0L, bundle)).zzca();
        zzj().zzp().zza("Saving default event parameters, appId, data size", zzi().zza(str), Integer.valueOf(bArrZzca.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", bArrZzca);
        try {
            if (e_().insertWithOnConflict("default_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert default event parameters (got -1). appId", zzgo.zza(str));
            return false;
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error storing default event parameters. appId", zzgo.zza(str), e11);
            return false;
        }
    }

    public final long zzc(String str) {
        Preconditions.checkNotEmpty(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x011c  */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x0053: MOVE (r8 I:??[OBJECT, ARRAY]) = (r9 I:??[OBJECT, ARRAY]), block:B:14:0x0053 */
    public final zzae zzc(String str, String str2) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        Cursor cursor2 = null;
        try {
            try {
                cursorQuery = e_().query("conditional_properties", new String[]{"origin", AppMeasurementSdk.ConditionalUserProperty.VALUE, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, "timed_out_event", AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, "triggered_event", AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        cursorQuery.close();
                        return null;
                    }
                    String string = cursorQuery.getString(0);
                    if (string == null) {
                        string = "";
                    }
                    String str3 = string;
                    Object objZza = zza(cursorQuery, 1);
                    boolean z10 = cursorQuery.getInt(2) != 0;
                    String string2 = cursorQuery.getString(3);
                    long j11 = cursorQuery.getLong(4);
                    zzoo zzooVarG_ = g_();
                    byte[] blob = cursorQuery.getBlob(5);
                    Parcelable.Creator<zzbf> creator = zzbf.CREATOR;
                    zzae zzaeVar = new zzae(str, str3, new zzon(str2, cursorQuery.getLong(8), objZza, str3), cursorQuery.getLong(6), z10, string2, (zzbf) zzooVarG_.zza(blob, creator), j11, (zzbf) g_().zza(cursorQuery.getBlob(7), creator), cursorQuery.getLong(9), (zzbf) g_().zza(cursorQuery.getBlob(10), creator));
                    if (cursorQuery.moveToNext()) {
                        zzj().zzg().zza("Got multiple records for conditional property, expected one", zzgo.zza(str), zzi().zzc(str2));
                    }
                    cursorQuery.close();
                    return zzaeVar;
                } catch (SQLiteException e11) {
                    e = e11;
                    zzj().zzg().zza("Error querying conditional property", zzgo.zza(str), zzi().zzc(str2), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e = e12;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    protected final boolean zzc() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0086  */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x002d: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:10:0x002d */
    public final Bundle zzd(String str) throws Throwable {
        Cursor cursorRawQuery;
        Cursor cursor;
        zzt();
        zzal();
        Cursor cursor2 = null;
        try {
            try {
                cursorRawQuery = e_().rawQuery("select parameters from default_event_params where app_id=?", new String[]{str});
                try {
                    if (!cursorRawQuery.moveToFirst()) {
                        zzj().zzp().zza("Default event parameters not found");
                        cursorRawQuery.close();
                        return null;
                    }
                    try {
                        com.google.android.gms.internal.measurement.zzfy.zzf zzfVar = (com.google.android.gms.internal.measurement.zzfy.zzf) ((com.google.android.gms.internal.measurement.zzjt) ((com.google.android.gms.internal.measurement.zzfy.zzf.zza) zzoo.zza(com.google.android.gms.internal.measurement.zzfy.zzf.zze(), cursorRawQuery.getBlob(0))).zzai());
                        g_();
                        Bundle bundleZza = zzoo.zza(zzfVar.zzh());
                        cursorRawQuery.close();
                        return bundleZza;
                    } catch (IOException e11) {
                        zzj().zzg().zza("Failed to retrieve default event parameters. appId", zzgo.zza(str), e11);
                        cursorRawQuery.close();
                        return null;
                    }
                } catch (SQLiteException e12) {
                    e = e12;
                    zzj().zzg().zza("Error selecting default event parameters", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e13) {
            e = e13;
            cursorRawQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    public final zzbb zzd(String str, String str2) {
        return zzc("events", str, str2);
    }

    public final zzg zze(String str) {
        Cursor cursorQuery;
        Boolean boolValueOf;
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        Cursor cursor = null;
        try {
            cursorQuery = e_().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "admob_app_id", "dynamite_version", "safelisted_events", "ga_app_id", "session_stitching_token", "sgtm_upload_enabled", "target_os_version", "session_stitching_token_hash", "ad_services_version", "unmatched_first_open_without_ad_id", "npa_metadata_value", "attribution_eligibility_status", "sgtm_preview_key", "dma_consent_state", "daily_realtime_dcu_count", "bundle_delivery_index", "serialized_npa_metadata", "unmatched_pfo", "unmatched_uwa", "ad_campaign_info"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        cursorQuery.close();
                        return null;
                    }
                    zzg zzgVar = new zzg(this.zzg.zzk(), str);
                    if (!com.google.android.gms.internal.measurement.zznm.zza() || !zze().zza(zzbh.zzcy) || this.zzg.zzb(str).zza(zzje.zza.ANALYTICS_STORAGE)) {
                        zzgVar.zzb(cursorQuery.getString(0));
                    }
                    zzgVar.zzf(cursorQuery.getString(1));
                    if (!com.google.android.gms.internal.measurement.zznm.zza() || !zze().zza(zzbh.zzcy) || this.zzg.zzb(str).zza(zzje.zza.AD_STORAGE)) {
                        zzgVar.zzh(cursorQuery.getString(2));
                    }
                    zzgVar.zzq(cursorQuery.getLong(3));
                    zzgVar.zzr(cursorQuery.getLong(4));
                    zzgVar.zzp(cursorQuery.getLong(5));
                    zzgVar.zzd(cursorQuery.getString(6));
                    zzgVar.zzc(cursorQuery.getString(7));
                    zzgVar.zzn(cursorQuery.getLong(8));
                    zzgVar.zzk(cursorQuery.getLong(9));
                    zzgVar.zzb(cursorQuery.isNull(10) || cursorQuery.getInt(10) != 0);
                    zzgVar.zzj(cursorQuery.getLong(11));
                    zzgVar.zzh(cursorQuery.getLong(12));
                    zzgVar.zzg(cursorQuery.getLong(13));
                    zzgVar.zze(cursorQuery.getLong(14));
                    zzgVar.zzd(cursorQuery.getLong(15));
                    zzgVar.zzm(cursorQuery.getLong(16));
                    zzgVar.zzb(cursorQuery.isNull(17) ? -2147483648L : cursorQuery.getInt(17));
                    zzgVar.zze(cursorQuery.getString(18));
                    zzgVar.zzf(cursorQuery.getLong(19));
                    zzgVar.zzi(cursorQuery.getLong(20));
                    zzgVar.zzg(cursorQuery.getString(21));
                    zzgVar.zza(cursorQuery.isNull(23) || cursorQuery.getInt(23) != 0);
                    zzgVar.zza(cursorQuery.getString(24));
                    zzgVar.zzl(cursorQuery.isNull(25) ? 0L : cursorQuery.getLong(25));
                    if (!cursorQuery.isNull(26)) {
                        zzgVar.zza(Arrays.asList(cursorQuery.getString(26).split(",", -1)));
                    }
                    if (!com.google.android.gms.internal.measurement.zznm.zza() || !zze().zza(zzbh.zzcy) || this.zzg.zzb(str).zza(zzje.zza.ANALYTICS_STORAGE)) {
                        zzgVar.zzj(cursorQuery.getString(28));
                    }
                    if (zzpu.zza() && zze().zza(zzbh.zzbx)) {
                        zzq();
                        if (zzos.zzf(str)) {
                            zzgVar.zzc((cursorQuery.isNull(29) || cursorQuery.getInt(29) == 0) ? false : true);
                            zzgVar.zzo(cursorQuery.getLong(39));
                            if (zze().zza(zzbh.zzby)) {
                                zzgVar.zzk(cursorQuery.getString(36));
                            }
                        }
                    }
                    zzgVar.zzt(cursorQuery.getLong(30));
                    zzgVar.zzs(cursorQuery.getLong(31));
                    if (zzpn.zza() && zze().zze(str, zzbh.zzch)) {
                        zzgVar.zza(cursorQuery.getInt(32));
                        zzgVar.zzc(cursorQuery.getLong(35));
                    }
                    zzgVar.zzd((cursorQuery.isNull(33) || cursorQuery.getInt(33) == 0) ? false : true);
                    if (cursorQuery.isNull(34)) {
                        boolValueOf = null;
                    } else {
                        boolValueOf = Boolean.valueOf(cursorQuery.getInt(34) != 0);
                    }
                    zzgVar.zza(boolValueOf);
                    zzgVar.zzc(cursorQuery.getInt(37));
                    zzgVar.zzb(cursorQuery.getInt(38));
                    zzgVar.zzi(cursorQuery.isNull(40) ? "" : (String) Preconditions.checkNotNull(cursorQuery.getString(40)));
                    if (zze().zza(zzbh.zzcw)) {
                        if (!cursorQuery.isNull(41)) {
                            zzgVar.zza(Long.valueOf(cursorQuery.getLong(41)));
                        }
                        if (!cursorQuery.isNull(42)) {
                            zzgVar.zzb(Long.valueOf(cursorQuery.getLong(42)));
                        }
                    }
                    if (zzov.zza() && zze().zze(str, zzbh.zzcu)) {
                        zzgVar.zza(cursorQuery.getBlob(43));
                    }
                    zzgVar.zzao();
                    if (cursorQuery.moveToNext()) {
                        zzj().zzg().zza("Got multiple records for app, expected one. appId", zzgo.zza(str));
                    }
                    cursorQuery.close();
                    return zzgVar;
                } catch (SQLiteException e11) {
                    e = e11;
                    zzj().zzg().zza("Error querying app. appId", zzgo.zza(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
            }
        } catch (SQLiteException e12) {
            e = e12;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
        }
        th = th2;
        cursor = cursorQuery;
        if (cursor != null) {
            cursor.close();
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0097  */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x006a: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:19:0x006a */
    public final zzop zze(String str, String str2) {
        Cursor cursorQuery;
        Cursor cursor;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        Cursor cursor2 = null;
        try {
            try {
                cursorQuery = e_().query("user_attributes", new String[]{"set_timestamp", AppMeasurementSdk.ConditionalUserProperty.VALUE, "origin"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        cursorQuery.close();
                        return null;
                    }
                    long j11 = cursorQuery.getLong(0);
                    Object objZza = zza(cursorQuery, 1);
                    if (objZza == null) {
                        cursorQuery.close();
                        return null;
                    }
                    zzop zzopVar = new zzop(str, cursorQuery.getString(2), str2, j11, objZza);
                    if (cursorQuery.moveToNext()) {
                        zzj().zzg().zza("Got multiple records for user property, expected one. appId", zzgo.zza(str));
                    }
                    cursorQuery.close();
                    return zzopVar;
                } catch (SQLiteException e11) {
                    e = e11;
                    zzj().zzg().zza("Error querying user property. appId", zzgo.zza(str), zzi().zzc(str2), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e = e12;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0089  */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0059: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:14:0x0059 */
    public final zzan zzf(String str) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor;
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        Cursor cursor2 = null;
        try {
            try {
                cursorQuery = e_().query("apps", new String[]{"remote_config", "config_last_modified_time", "e_tag"}, "app_id=?", new String[]{str}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        cursorQuery.close();
                        return null;
                    }
                    byte[] blob = cursorQuery.getBlob(0);
                    String string = cursorQuery.getString(1);
                    String string2 = cursorQuery.getString(2);
                    if (cursorQuery.moveToNext()) {
                        zzj().zzg().zza("Got multiple records for app config, expected one. appId", zzgo.zza(str));
                    }
                    if (blob == null) {
                        cursorQuery.close();
                        return null;
                    }
                    zzan zzanVar = new zzan(blob, string, string2);
                    cursorQuery.close();
                    return zzanVar;
                } catch (SQLiteException e11) {
                    e = e11;
                    zzj().zzg().zza("Error querying remote config. appId", zzgo.zza(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e = e12;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    final Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zzb>> zzf(String str, String str2) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        androidx.collection.a aVar = new androidx.collection.a();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = e_().query("event_filters", new String[]{"audience_id", "data"}, "app_id=? AND event_name=?", new String[]{str, str2}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zzb>> mapEmptyMap = Collections.emptyMap();
                    cursorQuery.close();
                    return mapEmptyMap;
                }
                do {
                    try {
                        com.google.android.gms.internal.measurement.zzfo.zzb zzbVar = (com.google.android.gms.internal.measurement.zzfo.zzb) ((com.google.android.gms.internal.measurement.zzjt) ((com.google.android.gms.internal.measurement.zzfo.zzb.zza) zzoo.zza(com.google.android.gms.internal.measurement.zzfo.zzb.zzc(), cursorQuery.getBlob(1))).zzai());
                        int i11 = cursorQuery.getInt(0);
                        List arrayList = (List) aVar.get(Integer.valueOf(i11));
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            aVar.put(Integer.valueOf(i11), arrayList);
                        }
                        arrayList.add(zzbVar);
                    } catch (IOException e11) {
                        zzj().zzg().zza("Failed to merge filter. appId", zzgo.zza(str), e11);
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return aVar;
            } catch (SQLiteException e12) {
                zzj().zzg().zza("Database error querying filters. appId", zzgo.zza(str), e12);
                Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zzb>> mapEmptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return mapEmptyMap2;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                cursor.close();
            }
            throw th2;
        }
    }

    public final zzax zzg(String str) {
        Preconditions.checkNotNull(str);
        zzt();
        zzal();
        return zzax.zza(zza("select dma_consent_settings from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    final Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zze>> zzg(String str, String str2) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        androidx.collection.a aVar = new androidx.collection.a();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = e_().query("property_filters", new String[]{"audience_id", "data"}, "app_id=? AND property_name=?", new String[]{str, str2}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zze>> mapEmptyMap = Collections.emptyMap();
                    cursorQuery.close();
                    return mapEmptyMap;
                }
                do {
                    try {
                        com.google.android.gms.internal.measurement.zzfo.zze zzeVar = (com.google.android.gms.internal.measurement.zzfo.zze) ((com.google.android.gms.internal.measurement.zzjt) ((com.google.android.gms.internal.measurement.zzfo.zze.zza) zzoo.zza(com.google.android.gms.internal.measurement.zzfo.zze.zzc(), cursorQuery.getBlob(1))).zzai());
                        int i11 = cursorQuery.getInt(0);
                        List arrayList = (List) aVar.get(Integer.valueOf(i11));
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            aVar.put(Integer.valueOf(i11), arrayList);
                        }
                        arrayList.add(zzeVar);
                    } catch (IOException e11) {
                        zzj().zzg().zza("Failed to merge filter", zzgo.zza(str), e11);
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return aVar;
            } catch (SQLiteException e12) {
                zzj().zzg().zza("Database error querying filters. appId", zzgo.zza(str), e12);
                Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zze>> mapEmptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return mapEmptyMap2;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                cursor.close();
            }
            throw th2;
        }
    }

    public final zzje zzh(String str) {
        Preconditions.checkNotNull(str);
        zzt();
        zzal();
        return zzje.zzb(zza("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    public final void zzh(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        try {
            e_().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error deleting user property. appId", zzgo.zza(str), zzi().zzc(str2), e11);
        }
    }

    public final zzje zzi(String str) {
        Preconditions.checkNotNull(str);
        zzt();
        zzal();
        zzje zzjeVar = (zzje) zza("select consent_state, consent_source from consent_settings where app_id=? limit 1;", new String[]{str}, new zzau() { // from class: com.google.android.gms.measurement.internal.zzao
            @Override // com.google.android.gms.measurement.internal.zzau
            public final Object zza(Cursor cursor) {
                return zzje.zza(cursor.getString(0), cursor.getInt(1));
            }
        });
        return zzjeVar == null ? zzje.zza : zzjeVar;
    }

    /* JADX WARN: Code duplicated, block: B:61:0x017f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    public final zzoj zzj(String str) throws Throwable {
        Cursor cursorQuery;
        boolean zZza;
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        boolean zZza2 = zzpu.zza();
        ?? r11 = 0;
        ?? r12 = zZza2;
        if (zZza2 && !(zZza = zze().zza(zzbh.zzcb))) {
            r12 = zZza;
            return null;
        }
        try {
            try {
                r12 = zZza;
                cursorQuery = e_().query("upload_queue", new String[]{"rowId", "app_id", "measurement_batch", "upload_uri", "upload_headers", "upload_type", PushConstants.SP_KEY_RETRY_COUNT}, "app_id=? AND NOT " + zzao(), new String[]{str}, null, null, "creation_timestamp ASC", "1");
                try {
                    if (!cursorQuery.moveToFirst()) {
                        cursorQuery.close();
                        return null;
                    }
                    String string = cursorQuery.getString(3);
                    if (TextUtils.isEmpty(string)) {
                        zzj().zzc().zza("Upload uri is null or empty. Destination is unknown. Dropping batch. ");
                        cursorQuery.close();
                        return null;
                    }
                    try {
                        com.google.android.gms.internal.measurement.zzfy.zzj.zza zzaVar = (com.google.android.gms.internal.measurement.zzfy.zzj.zza) zzoo.zza(com.google.android.gms.internal.measurement.zzfy.zzj.zzb(), cursorQuery.getBlob(2));
                        zznt zzntVar = zznt.values()[cursorQuery.getInt(5)];
                        if (zzntVar == zznt.SGTM || zzntVar == zznt.GOOGLE_ANALYTICS) {
                            if (cursorQuery.getInt(6) > 0) {
                                ArrayList arrayList = new ArrayList();
                                Iterator<com.google.android.gms.internal.measurement.zzfy.zzk> it = zzaVar.zzd().iterator();
                                while (it.hasNext()) {
                                    com.google.android.gms.internal.measurement.zzfy.zzk.zza zzaVarZzcd = it.next().zzcd();
                                    zzaVarZzcd.zzi(cursorQuery.getInt(6));
                                    arrayList.add((com.google.android.gms.internal.measurement.zzfy.zzk) ((com.google.android.gms.internal.measurement.zzjt) zzaVarZzcd.zzai()));
                                }
                                zzaVar.zzb();
                                zzaVar.zza(arrayList);
                            }
                        }
                        HashMap map = new HashMap();
                        String string2 = cursorQuery.getString(4);
                        if (string2 != null) {
                            for (String str2 : string2.split("\r\n")) {
                                if (str2.isEmpty()) {
                                    break;
                                }
                                String[] strArrSplit = str2.split(UrlUtils.EQUAL_MARK, 2);
                                if (strArrSplit.length != 2) {
                                    zzj().zzg().zza("Invalid upload header: ", str2);
                                    break;
                                }
                                map.put(strArrSplit[0], strArrSplit[1]);
                            }
                        }
                        zzoj zzojVarZza = new zzom().zza(cursorQuery.getLong(0)).zza((com.google.android.gms.internal.measurement.zzfy.zzj) ((com.google.android.gms.internal.measurement.zzjt) zzaVar.zzai())).zza(string).zza(map).zza(zzntVar).zza();
                        cursorQuery.close();
                        return zzojVarZza;
                    } catch (IOException e11) {
                        zzj().zzg().zza("Failed to queued MeasurementBatch from upload_queue. appId", str, e11);
                        cursorQuery.close();
                        return null;
                    }
                } catch (SQLiteException e12) {
                    e = e12;
                    zzj().zzg().zza("Error to querying MeasurementBatch from upload_queue. appId", str, e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                r11 = r12;
                if (r11 != 0) {
                    r11.close();
                }
                throw th;
            }
        } catch (SQLiteException e13) {
            e = e13;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (r11 != 0) {
                r11.close();
            }
            throw th;
        }
    }

    public final List<zzno> zzk(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = e_().query("trigger_uris", new String[]{"trigger_uri", "timestamp_millis", EventConstants.KEY_SOURCE}, "app_id=?", new String[]{str}, null, null, "rowid", null);
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return arrayList;
                }
                do {
                    String string = cursorQuery.getString(0);
                    if (string == null) {
                        string = "";
                    }
                    arrayList.add(new zzno(string, cursorQuery.getLong(1), cursorQuery.getInt(2)));
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return arrayList;
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Error querying trigger uris. appId", zzgo.zza(str), e11);
                List<zzno> listEmptyList = Collections.emptyList();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return listEmptyList;
            }
        } catch (Throwable th2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th2;
        }
    }

    public final List<zzop> zzl(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = e_().query("user_attributes", new String[]{"name", "origin", "set_timestamp", AppMeasurementSdk.ConditionalUserProperty.VALUE}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return arrayList;
                }
                do {
                    String string = cursorQuery.getString(0);
                    String string2 = cursorQuery.getString(1);
                    if (string2 == null) {
                        string2 = "";
                    }
                    String str2 = string2;
                    long j11 = cursorQuery.getLong(2);
                    Object objZza = zza(cursorQuery, 3);
                    if (objZza == null) {
                        zzj().zzg().zza("Read invalid user property value, ignoring it. appId", zzgo.zza(str));
                    } else {
                        arrayList.add(new zzop(str, str2, string, j11, objZza));
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return arrayList;
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Error querying user properties. appId", zzgo.zza(str), e11);
                List<zzop> listEmptyList = Collections.emptyList();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return listEmptyList;
            }
        } catch (Throwable th2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th2;
        }
    }

    final Map<Integer, com.google.android.gms.internal.measurement.zzfy.zzm> zzm(String str) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = e_().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    Map<Integer, com.google.android.gms.internal.measurement.zzfy.zzm> mapEmptyMap = Collections.emptyMap();
                    cursorQuery.close();
                    return mapEmptyMap;
                }
                androidx.collection.a aVar = new androidx.collection.a();
                do {
                    int i11 = cursorQuery.getInt(0);
                    try {
                        aVar.put(Integer.valueOf(i11), (com.google.android.gms.internal.measurement.zzfy.zzm) ((com.google.android.gms.internal.measurement.zzjt) ((com.google.android.gms.internal.measurement.zzfy.zzm.zza) zzoo.zza(com.google.android.gms.internal.measurement.zzfy.zzm.zze(), cursorQuery.getBlob(1))).zzai()));
                    } catch (IOException e11) {
                        zzj().zzg().zza("Failed to merge filter results. appId, audienceId, error", zzgo.zza(str), Integer.valueOf(i11), e11);
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return aVar;
            } catch (SQLiteException e12) {
                zzj().zzg().zza("Database error querying filter results. appId", zzgo.zza(str), e12);
                Map<Integer, com.google.android.gms.internal.measurement.zzfy.zzm> mapEmptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return mapEmptyMap2;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                cursor.close();
            }
            throw th2;
        }
    }

    final Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zzb>> zzn(String str) {
        Preconditions.checkNotEmpty(str);
        androidx.collection.a aVar = new androidx.collection.a();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = e_().query("event_filters", new String[]{"audience_id", "data"}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zzb>> mapEmptyMap = Collections.emptyMap();
                    cursorQuery.close();
                    return mapEmptyMap;
                }
                do {
                    try {
                        com.google.android.gms.internal.measurement.zzfo.zzb zzbVar = (com.google.android.gms.internal.measurement.zzfo.zzb) ((com.google.android.gms.internal.measurement.zzjt) ((com.google.android.gms.internal.measurement.zzfo.zzb.zza) zzoo.zza(com.google.android.gms.internal.measurement.zzfo.zzb.zzc(), cursorQuery.getBlob(1))).zzai());
                        if (zzbVar.zzk()) {
                            int i11 = cursorQuery.getInt(0);
                            List arrayList = (List) aVar.get(Integer.valueOf(i11));
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                aVar.put(Integer.valueOf(i11), arrayList);
                            }
                            arrayList.add(zzbVar);
                        }
                    } catch (IOException e11) {
                        zzj().zzg().zza("Failed to merge filter. appId", zzgo.zza(str), e11);
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return aVar;
            } catch (Throwable th2) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th2;
            }
        } catch (SQLiteException e12) {
            zzj().zzg().zza("Database error querying filters. appId", zzgo.zza(str), e12);
            Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zzb>> mapEmptyMap2 = Collections.emptyMap();
            if (0 != 0) {
                cursor.close();
            }
            return mapEmptyMap2;
        }
    }

    final Map<Integer, List<Integer>> zzo(String str) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        androidx.collection.a aVar = new androidx.collection.a();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = e_().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str, str});
                if (!cursorRawQuery.moveToFirst()) {
                    Map<Integer, List<Integer>> mapEmptyMap = Collections.emptyMap();
                    cursorRawQuery.close();
                    return mapEmptyMap;
                }
                do {
                    int i11 = cursorRawQuery.getInt(0);
                    List arrayList = (List) aVar.get(Integer.valueOf(i11));
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        aVar.put(Integer.valueOf(i11), arrayList);
                    }
                    arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                } while (cursorRawQuery.moveToNext());
                cursorRawQuery.close();
                return aVar;
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Database error querying scoped filters. appId", zzgo.zza(str), e11);
                Map<Integer, List<Integer>> mapEmptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return mapEmptyMap2;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                cursor.close();
            }
            throw th2;
        }
    }

    public final void zzp() {
        zzal();
        e_().beginTransaction();
    }

    public final void zzp(String str) {
        zzt();
        zzal();
        try {
            e_().execSQL("delete from default_event_params where app_id=?", new String[]{str});
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error clearing default event params", e11);
        }
    }

    public final void zzq(String str) {
        zzbb zzbbVarZzd;
        zzi("events_snapshot", str);
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = e_().query("events", (String[]) Collections.singletonList("name").toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return;
                }
                do {
                    String string = cursorQuery.getString(0);
                    if (string != null && (zzbbVarZzd = zzd(str, string)) != null) {
                        zza("events_snapshot", zzbbVarZzd);
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Error creating snapshot. appId", zzgo.zza(str), e11);
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

    /* JADX WARN: Code duplicated, block: B:65:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:70:0x0106 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x0108 A[ADDED_TO_REGION] */
    public final void zzr(String str) throws Throwable {
        boolean z10;
        zzbb zzbbVarZzc;
        ArrayList arrayList = new ArrayList(Arrays.asList("name", "lifetime_count"));
        zzbb zzbbVarZzd = zzd(str, "_f");
        zzbb zzbbVarZzd2 = zzd(str, "_v");
        zzi("events", str);
        boolean z11 = false;
        Cursor cursorQuery = null;
        try {
            cursorQuery = e_().query("events_snapshot", (String[]) arrayList.toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
            if (!cursorQuery.moveToFirst()) {
                cursorQuery.close();
                if (zzbbVarZzd != null) {
                    zza("events", zzbbVarZzd);
                } else if (zzbbVarZzd2 != null) {
                    zza("events", zzbbVarZzd2);
                }
                zzi("events_snapshot", str);
                return;
            }
            boolean z12 = false;
            z10 = false;
            do {
                try {
                    String string = cursorQuery.getString(0);
                    if (zze().zza(zzbh.zzda)) {
                        if (cursorQuery.getLong(1) >= 1) {
                            if ("_f".equals(string)) {
                                z12 = true;
                            } else if ("_v".equals(string)) {
                                z10 = true;
                            }
                        }
                    } else if ("_f".equals(string)) {
                        z12 = true;
                    } else if ("_v".equals(string)) {
                        z10 = true;
                    }
                    if (string != null && (zzbbVarZzc = zzc("events_snapshot", str, string)) != null) {
                        zza("events", zzbbVarZzc);
                    }
                } catch (SQLiteException e11) {
                    e = e11;
                    z11 = z12;
                    try {
                        zzj().zzg().zza("Error querying snapshot. appId", zzgo.zza(str), e);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        if (!z11 && zzbbVarZzd != null) {
                            zza("events", zzbbVarZzd);
                        } else if (!z10 && zzbbVarZzd2 != null) {
                            zza("events", zzbbVarZzd2);
                        }
                        zzi("events_snapshot", str);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        if (z11 && zzbbVarZzd != null) {
                            zza("events", zzbbVarZzd);
                        } else if (!z10 && zzbbVarZzd2 != null) {
                            zza("events", zzbbVarZzd2);
                        }
                        zzi("events_snapshot", str);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    z11 = z12;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    if (z11) {
                        if (!z10) {
                            zza("events", zzbbVarZzd2);
                        }
                    } else if (!z10) {
                        zza("events", zzbbVarZzd2);
                    }
                    zzi("events_snapshot", str);
                    throw th;
                }
            } while (cursorQuery.moveToNext());
            cursorQuery.close();
            if (!z12 && zzbbVarZzd != null) {
                zza("events", zzbbVarZzd);
            } else if (!z10 && zzbbVarZzd2 != null) {
                zza("events", zzbbVarZzd2);
            }
            zzi("events_snapshot", str);
        } catch (SQLiteException e12) {
            e = e12;
            z10 = false;
        } catch (Throwable th4) {
            th = th4;
            z10 = false;
        }
    }

    public final boolean zzs(String str) {
        if (zzpu.zza() && !zze().zza(zzbh.zzcb)) {
            return false;
        }
        String strZzao = zzao();
        StringBuilder sb2 = new StringBuilder("SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=? AND NOT ");
        sb2.append(strZzao);
        return zzb(sb2.toString(), new String[]{str}) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005d  */
    final boolean zzt(String str) {
        boolean z10;
        boolean z11;
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = e_().rawQuery("select timestamp from raw_events where app_id=? and name = '_f' limit 1;", new String[]{str});
                if (!cursorRawQuery.moveToFirst()) {
                    cursorRawQuery.close();
                    return false;
                }
                z10 = zzb().currentTimeMillis() < cursorRawQuery.getLong(0) + MBInterstitialActivity.WEB_LOAD_TIME;
                try {
                    z11 = zza("select count(*) from raw_events where app_id=? and name not like '!_%' escape '!' limit 1;", new String[]{str}, 0L) > 0;
                    cursorRawQuery.close();
                } catch (SQLiteException e11) {
                    e = e11;
                    zzj().zzg().zza("Error checking backfill conditions", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    z11 = false;
                }
                return (z10 || z11) ? false : true;
            } catch (Throwable th2) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                throw th2;
            }
        } catch (SQLiteException e12) {
            e = e12;
            z10 = false;
        }
        zzj().zzg().zza("Error checking backfill conditions", e);
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        z11 = false;
        if (z10) {
        }
    }

    public final void zzu() {
        zzal();
        e_().endTransaction();
    }

    final void zzv() {
        int iDelete;
        zzt();
        zzal();
        if (zzaa()) {
            long jZza = zzn().zza.zza();
            long jElapsedRealtime = zzb().elapsedRealtime();
            if (Math.abs(jElapsedRealtime - jZza) > zzag.zzn()) {
                zzn().zza.zza(jElapsedRealtime);
                zzt();
                zzal();
                if (!zzaa() || (iDelete = e_().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzb().currentTimeMillis()), String.valueOf(zzag.zzm())})) <= 0) {
                    return;
                }
                zzj().zzp().zza("Deleted stale rows. rowsDeleted", Integer.valueOf(iDelete));
            }
        }
    }

    public final void zzw() {
        zzal();
        e_().setTransactionSuccessful();
    }

    public final boolean zzx() {
        return zzb("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean zzy() {
        return zzb("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    public final boolean zzz() {
        return zzb("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }
}
