package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzpn;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhc {
    private final String zza;
    private final Bundle zzb;
    private Bundle zzc;
    private final /* synthetic */ zzha zzd;

    public zzhc(zzha zzhaVar, String str, Bundle bundle) {
        this.zzd = zzhaVar;
        Preconditions.checkNotEmpty(str);
        this.zza = str;
        if (zzhaVar.zze().zza(zzbh.zzdk)) {
            this.zzb = new Bundle();
        } else {
            this.zzb = new Bundle();
        }
    }

    private final String zzb(Bundle bundle) {
        JSONArray jSONArray = new JSONArray();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("n", str);
                    if (zzpn.zza() && this.zzd.zze().zza(zzbh.zzci)) {
                        if (obj instanceof String) {
                            jSONObject.put("v", String.valueOf(obj));
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("v", String.valueOf(obj));
                            jSONObject.put("t", "l");
                        } else if (obj instanceof int[]) {
                            jSONObject.put("v", Arrays.toString((int[]) obj));
                            jSONObject.put("t", "ia");
                        } else if (obj instanceof long[]) {
                            jSONObject.put("v", Arrays.toString((long[]) obj));
                            jSONObject.put("t", "la");
                        } else if (obj instanceof Double) {
                            jSONObject.put("v", String.valueOf(obj));
                            jSONObject.put("t", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);
                        } else {
                            this.zzd.zzj().zzg().zza("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    } else {
                        jSONObject.put("v", String.valueOf(obj));
                        if (obj instanceof String) {
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);
                        } else {
                            this.zzd.zzj().zzg().zza("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    }
                } catch (JSONException e11) {
                    this.zzd.zzj().zzg().zza("Cannot serialize bundle value to SharedPreferences", e11);
                }
            }
        }
        return jSONArray.toString();
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0084  */
    public final Bundle zza() {
        byte b11;
        if (this.zzc == null) {
            String string = this.zzd.zzg().getString(this.zza, null);
            if (string != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i11);
                            String string2 = jSONObject.getString("n");
                            String string3 = jSONObject.getString("t");
                            int iHashCode = string3.hashCode();
                            if (iHashCode != 100) {
                                if (iHashCode != 108) {
                                    if (iHashCode != 115) {
                                        if (iHashCode != 3352) {
                                            if (iHashCode == 3445 && string3.equals("la")) {
                                                b11 = 4;
                                            } else {
                                                b11 = -1;
                                            }
                                        } else if (string3.equals("ia")) {
                                            b11 = 3;
                                        } else {
                                            b11 = -1;
                                        }
                                    } else if (string3.equals("s")) {
                                        b11 = 0;
                                    } else {
                                        b11 = -1;
                                    }
                                } else if (string3.equals("l")) {
                                    b11 = 2;
                                } else {
                                    b11 = -1;
                                }
                            } else if (string3.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D)) {
                                b11 = 1;
                            } else {
                                b11 = -1;
                            }
                            if (b11 == 0) {
                                bundle.putString(string2, jSONObject.getString("v"));
                            } else if (b11 == 1) {
                                bundle.putDouble(string2, Double.parseDouble(jSONObject.getString("v")));
                            } else if (b11 == 2) {
                                bundle.putLong(string2, Long.parseLong(jSONObject.getString("v")));
                            } else if (b11 != 3) {
                                if (b11 != 4) {
                                    this.zzd.zzj().zzg().zza("Unrecognized persisted bundle type. Type", string3);
                                } else if (zzpn.zza() && this.zzd.zze().zza(zzbh.zzci)) {
                                    JSONArray jSONArray2 = new JSONArray(jSONObject.getString("v"));
                                    int length = jSONArray2.length();
                                    long[] jArr = new long[length];
                                    for (int i12 = 0; i12 < length; i12++) {
                                        jArr[i12] = jSONArray2.optLong(i12);
                                    }
                                    bundle.putLongArray(string2, jArr);
                                }
                            } else if (zzpn.zza() && this.zzd.zze().zza(zzbh.zzci)) {
                                JSONArray jSONArray3 = new JSONArray(jSONObject.getString("v"));
                                int length2 = jSONArray3.length();
                                int[] iArr = new int[length2];
                                for (int i13 = 0; i13 < length2; i13++) {
                                    iArr[i13] = jSONArray3.optInt(i13);
                                }
                                bundle.putIntArray(string2, iArr);
                            }
                        } catch (NumberFormatException | JSONException unused) {
                            this.zzd.zzj().zzg().zza("Error reading value from SharedPreferences. Value dropped");
                        }
                    }
                    this.zzc = bundle;
                } catch (JSONException unused2) {
                    this.zzd.zzj().zzg().zza("Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (this.zzc == null) {
                this.zzc = this.zzb;
            }
        }
        return this.zzd.zze().zza(zzbh.zzdk) ? new Bundle((Bundle) Preconditions.checkNotNull(this.zzc)) : (Bundle) Preconditions.checkNotNull(this.zzc);
    }

    public final void zza(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        } else if (this.zzd.zze().zza(zzbh.zzdk)) {
            bundle = new Bundle(bundle);
        }
        SharedPreferences.Editor editorEdit = this.zzd.zzg().edit();
        if (bundle.size() == 0) {
            editorEdit.remove(this.zza);
        } else {
            editorEdit.putString(this.zza, zzb(bundle));
        }
        editorEdit.apply();
        this.zzc = bundle;
    }
}
