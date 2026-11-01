package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzov;
import com.google.android.gms.internal.measurement.zzpn;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.net.URL;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class zzhy implements zzjc {
    private static volatile zzhy zzb;
    final long zza;
    private Boolean zzaa;
    private long zzab;
    private volatile Boolean zzac;
    private Boolean zzad;
    private Boolean zzae;
    private volatile boolean zzaf;
    private int zzag;
    private int zzah;
    private final Context zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final boolean zzg;
    private final zzab zzh;
    private final zzag zzi;
    private final zzha zzj;
    private final zzgo zzk;
    private final zzhv zzl;
    private final zznb zzm;
    private final zzos zzn;
    private final zzgh zzo;
    private final Clock zzp;
    private final zzlj zzq;
    private final zzjq zzr;
    private final zzb zzs;
    private final zzle zzt;
    private final String zzu;
    private zzgf zzv;
    private zzls zzw;
    private zzaz zzx;
    private zzgg zzy;
    private boolean zzz = false;
    private AtomicInteger zzai = new AtomicInteger(0);

    private zzhy(zzjo zzjoVar) {
        Bundle bundle;
        boolean z10 = false;
        Preconditions.checkNotNull(zzjoVar);
        zzab zzabVar = new zzab(zzjoVar.zza);
        this.zzh = zzabVar;
        zzga.zza = zzabVar;
        Context context = zzjoVar.zza;
        this.zzc = context;
        this.zzd = zzjoVar.zzb;
        this.zze = zzjoVar.zzc;
        this.zzf = zzjoVar.zzd;
        this.zzg = zzjoVar.zzh;
        this.zzac = zzjoVar.zze;
        this.zzu = zzjoVar.zzj;
        this.zzaf = true;
        com.google.android.gms.internal.measurement.zzdw zzdwVar = zzjoVar.zzg;
        if (zzdwVar != null && (bundle = zzdwVar.zzg) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.zzad = (Boolean) obj;
            }
            Object obj2 = zzdwVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.zzae = (Boolean) obj2;
            }
        }
        com.google.android.gms.internal.measurement.zzhj.zzb(context);
        Clock defaultClock = DefaultClock.getInstance();
        this.zzp = defaultClock;
        Long l11 = zzjoVar.zzi;
        this.zza = l11 != null ? l11.longValue() : defaultClock.currentTimeMillis();
        this.zzi = new zzag(this);
        zzha zzhaVar = new zzha(this);
        zzhaVar.zzad();
        this.zzj = zzhaVar;
        zzgo zzgoVar = new zzgo(this);
        zzgoVar.zzad();
        this.zzk = zzgoVar;
        zzos zzosVar = new zzos(this);
        zzosVar.zzad();
        this.zzn = zzosVar;
        this.zzo = new zzgh(new zzjn(zzjoVar, this));
        this.zzs = new zzb(this);
        zzlj zzljVar = new zzlj(this);
        zzljVar.zzv();
        this.zzq = zzljVar;
        zzjq zzjqVar = new zzjq(this);
        zzjqVar.zzv();
        this.zzr = zzjqVar;
        zznb zznbVar = new zznb(this);
        zznbVar.zzv();
        this.zzm = zznbVar;
        zzle zzleVar = new zzle(this);
        zzleVar.zzad();
        this.zzt = zzleVar;
        zzhv zzhvVar = new zzhv(this);
        zzhvVar.zzad();
        this.zzl = zzhvVar;
        com.google.android.gms.internal.measurement.zzdw zzdwVar2 = zzjoVar.zzg;
        if (zzdwVar2 != null && zzdwVar2.zzb != 0) {
            z10 = true;
        }
        boolean z11 = !z10;
        if (context.getApplicationContext() instanceof Application) {
            zzp().zzb(z11);
        } else {
            zzj().zzu().zza("Application context is not an Application");
        }
        zzhvVar.zzb(new zzid(this, zzjoVar));
    }

    public static zzhy zza(Context context, com.google.android.gms.internal.measurement.zzdw zzdwVar, Long l11) {
        Bundle bundle;
        if (zzdwVar != null && (zzdwVar.zze == null || zzdwVar.zzf == null)) {
            zzdwVar = new com.google.android.gms.internal.measurement.zzdw(zzdwVar.zza, zzdwVar.zzb, zzdwVar.zzc, zzdwVar.zzd, null, null, zzdwVar.zzg, null);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzhy.class) {
                try {
                    if (zzb == null) {
                        zzb = new zzhy(new zzjo(context, zzdwVar, l11));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else if (zzdwVar != null && (bundle = zzdwVar.zzg) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.checkNotNull(zzb);
            zzb.zza(zzdwVar.zzg.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.checkNotNull(zzb);
        return zzb;
    }

    private static void zza(zzh zzhVar) {
        if (zzhVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (zzhVar.zzy()) {
            return;
        }
        throw new IllegalStateException("Component not initialized: " + String.valueOf(zzhVar.getClass()));
    }

    static /* synthetic */ void zza(zzhy zzhyVar, zzjo zzjoVar) {
        zzhyVar.zzl().zzt();
        zzaz zzazVar = new zzaz(zzhyVar);
        zzazVar.zzad();
        zzhyVar.zzx = zzazVar;
        zzgg zzggVar = new zzgg(zzhyVar, zzjoVar.zzf);
        zzggVar.zzv();
        zzhyVar.zzy = zzggVar;
        zzgf zzgfVar = new zzgf(zzhyVar);
        zzgfVar.zzv();
        zzhyVar.zzv = zzgfVar;
        zzls zzlsVar = new zzls(zzhyVar);
        zzlsVar.zzv();
        zzhyVar.zzw = zzlsVar;
        zzhyVar.zzn.zzae();
        zzhyVar.zzj.zzae();
        zzhyVar.zzy.zzw();
        zzhyVar.zzj().zzo().zza("App measurement initialized, version", 106000L);
        zzhyVar.zzj().zzo().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String strZzad = zzggVar.zzad();
        if (TextUtils.isEmpty(zzhyVar.zzd)) {
            if (zzhyVar.zzt().zzd(strZzad, zzhyVar.zzi.zzu())) {
                zzhyVar.zzj().zzo().zza("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                zzhyVar.zzj().zzo().zza("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app " + strZzad);
            }
        }
        zzhyVar.zzj().zzc().zza("Debug-level message logging enabled");
        if (zzhyVar.zzag != zzhyVar.zzai.get()) {
            zzhyVar.zzj().zzg().zza("Not all components initialized", Integer.valueOf(zzhyVar.zzag), Integer.valueOf(zzhyVar.zzai.get()));
        }
        zzhyVar.zzz = true;
    }

    private static void zza(zzja zzjaVar) {
        if (zzjaVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static void zza(zzjd zzjdVar) {
        if (zzjdVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (zzjdVar.zzaf()) {
            return;
        }
        throw new IllegalStateException("Component not initialized: " + String.valueOf(zzjdVar.getClass()));
    }

    private final zzle zzai() {
        zza((zzjd) this.zzt);
        return this.zzt;
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final Context zza() {
        return this.zzc;
    }

    protected final void zza(com.google.android.gms.internal.measurement.zzdw zzdwVar) {
        zzje zzjeVarZza;
        Boolean boolZza;
        zzl().zzt();
        if (zzpn.zza() && this.zzi.zza(zzbh.zzci) && zzt().zzw()) {
            zzos zzosVarZzt = zzt();
            zzosVarZzt.zzt();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
            androidx.core.content.b.registerReceiver(zzosVarZzt.zza(), new zzp(zzosVarZzt.zzu), intentFilter, 2);
            zzosVarZzt.zzj().zzc().zza("Registered app receiver");
        }
        zzje zzjeVarZzo = zzn().zzo();
        int iZza = zzjeVarZzo.zza();
        zzjh zzjhVarZzc = this.zzi.zzc("google_analytics_default_allow_ad_storage", false);
        zzjh zzjhVarZzc2 = this.zzi.zzc("google_analytics_default_allow_analytics_storage", false);
        zzjh zzjhVar = zzjh.UNINITIALIZED;
        if (!(zzjhVarZzc == zzjhVar && zzjhVarZzc2 == zzjhVar) && zzn().zza(-10)) {
            zzjeVarZza = zzje.zza(zzjhVarZzc, zzjhVarZzc2, -10);
        } else {
            if (!TextUtils.isEmpty(zzh().zzae()) && (iZza == 0 || iZza == 30 || iZza == 10 || iZza == 30 || iZza == 30 || iZza == 40)) {
                zzp().zza(new zzje(null, null, -10), this.zza, false);
            } else if (TextUtils.isEmpty(zzh().zzae()) && zzdwVar != null && zzdwVar.zzg != null && zzn().zza(30)) {
                zzjeVarZza = zzje.zza(zzdwVar.zzg, 30);
                if (!zzjeVarZza.zzi()) {
                }
            }
            zzjeVarZza = null;
        }
        if (zzjeVarZza != null) {
            zzp().zza(zzjeVarZza, this.zza, true);
            zzjeVarZzo = zzjeVarZza;
        }
        zzp().zza(zzjeVarZzo);
        int iZza2 = zzn().zzn().zza();
        zzjh zzjhVarZzc3 = this.zzi.zzc("google_analytics_default_allow_ad_personalization_signals", true);
        if (zzjhVarZzc3 != zzjhVar) {
            zzj().zzp().zza("Default ad personalization consent from Manifest", zzjhVarZzc3);
        }
        zzjh zzjhVarZzc4 = this.zzi.zzc("google_analytics_default_allow_ad_user_data", true);
        if (zzjhVarZzc4 != zzjhVar && zzje.zza(-10, iZza2)) {
            zzp().zza(zzax.zza(zzjhVarZzc4, -10), true);
        } else if (TextUtils.isEmpty(zzh().zzae()) || !(iZza2 == 0 || iZza2 == 30)) {
            if (TextUtils.isEmpty(zzh().zzae()) && zzdwVar != null && zzdwVar.zzg != null && zzje.zza(30, iZza2)) {
                zzax zzaxVarZza = zzax.zza(zzdwVar.zzg, 30);
                if (zzaxVarZza.zzg()) {
                    zzp().zza(zzaxVarZza, true);
                }
            }
            if (TextUtils.isEmpty(zzh().zzae()) && zzdwVar != null && zzdwVar.zzg != null && zzn().zzh.zza() == null && (boolZza = zzax.zza(zzdwVar.zzg)) != null) {
                zzp().zza(zzdwVar.zze, "allow_personalized_ads", (Object) boolZza.toString(), false);
            }
        } else {
            zzp().zza(new zzax(null, -10), true);
        }
        Boolean boolZze = this.zzi.zze("google_analytics_tcf_data_enabled");
        if (boolZze == null ? true : boolZze.booleanValue()) {
            zzj().zzc().zza("TCF client enabled.");
            zzp().zzat();
            zzp().zzar();
        }
        if (zzn().zzc.zza() == 0) {
            zzj().zzp().zza("Persisting first open", Long.valueOf(this.zza));
            zzn().zzc.zza(this.zza);
        }
        zzp().zza.zzb();
        if (zzaf()) {
            if (!TextUtils.isEmpty(zzh().zzae()) || !TextUtils.isEmpty(zzh().zzac())) {
                zzt();
                if (zzos.zza(zzh().zzae(), zzn().zzy(), zzh().zzac(), zzn().zzx())) {
                    zzj().zzo().zza("Rechecking which service to use due to a GMP App Id change");
                    zzn().zzz();
                    zzi().zzaa();
                    this.zzw.zzaf();
                    this.zzw.zzae();
                    zzn().zzc.zza(this.zza);
                    zzn().zze.zza(null);
                }
                zzn().zzc(zzh().zzae());
                zzn().zzb(zzh().zzac());
            }
            if (!zzn().zzo().zza(zzje.zza.ANALYTICS_STORAGE)) {
                zzn().zze.zza(null);
            }
            zzp().zzc(zzn().zze.zza());
            if (!zzt().zzx() && !TextUtils.isEmpty(zzn().zzq.zza())) {
                zzj().zzu().zza("Remote config removed with active feature rollouts");
                zzn().zzq.zza(null);
            }
            if (!TextUtils.isEmpty(zzh().zzae()) || !TextUtils.isEmpty(zzh().zzac())) {
                boolean zZzac = zzac();
                if (!zzn().zzab() && !this.zzi.zzx()) {
                    zzn().zzb(!zZzac);
                }
                if (zZzac) {
                    zzp().zzan();
                }
                zzs().zza.zza();
                zzr().zza(new AtomicReference<>());
                zzr().zza(zzn().zzt.zza());
            }
        } else if (zzac()) {
            if (!zzt().zze("android.permission.INTERNET")) {
                zzj().zzg().zza("App is missing INTERNET permission");
            }
            if (!zzt().zze("android.permission.ACCESS_NETWORK_STATE")) {
                zzj().zzg().zza("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!Wrappers.packageManager(this.zzc).isCallerInstantApp() && !this.zzi.zzy()) {
                if (!zzos.zza(this.zzc)) {
                    zzj().zzg().zza("AppMeasurementReceiver not registered/enabled");
                }
                if (!zzos.zza(this.zzc, false)) {
                    zzj().zzg().zza("AppMeasurementService not registered/enabled");
                }
            }
            zzj().zzg().zza("Uploading is not possible. App measurement disabled");
        }
        if (zzpn.zza() && this.zzi.zza(zzbh.zzci) && zzt().zzw()) {
            final zzjq zzjqVarZzp = zzp();
            Objects.requireNonNull(zzjqVarZzp);
            new Thread(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzib
                @Override // java.lang.Runnable
                public final void run() {
                    zzjqVarZzp.zzap();
                }
            }).start();
        }
        zzn().zzj.zza(true);
    }

    final /* synthetic */ void zza(String str, int i11, Throwable th2, byte[] bArr, Map map) {
        if ((i11 != 200 && i11 != 204 && i11 != 304) || th2 != null) {
            zzj().zzu().zza("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i11), th2);
            return;
        }
        zzn().zzo.zza(true);
        if (bArr == null || bArr.length == 0) {
            zzj().zzc().zza("Deferred Deep Link response empty.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            String strOptString = jSONObject.optString("deeplink", "");
            if (TextUtils.isEmpty(strOptString)) {
                zzj().zzc().zza("Deferred Deep Link is empty.");
                return;
            }
            String strOptString2 = jSONObject.optString("gclid", "");
            String strOptString3 = jSONObject.optString("gbraid", "");
            String strOptString4 = jSONObject.optString("gad_source", "");
            double dOptDouble = jSONObject.optDouble(CampaignEx.JSON_KEY_TIMESTAMP, 0.0d);
            Bundle bundle = new Bundle();
            if (zzov.zza() && this.zzi.zza(zzbh.zzct)) {
                if (!zzt().zzi(strOptString)) {
                    zzj().zzu().zza("Deferred Deep Link validation failed. gclid, gbraid, deep link", strOptString2, strOptString3, strOptString);
                    return;
                }
                if (!TextUtils.isEmpty(strOptString3)) {
                    bundle.putString("gbraid", strOptString3);
                }
                if (!TextUtils.isEmpty(strOptString4)) {
                    bundle.putString("gad_source", strOptString4);
                }
            } else if (!zzt().zzi(strOptString)) {
                zzj().zzu().zza("Deferred Deep Link validation failed. gclid, deep link", strOptString2, strOptString);
                return;
            }
            if (zzov.zza()) {
                this.zzi.zza(zzbh.zzct);
            }
            bundle.putString("gclid", strOptString2);
            bundle.putString("_cis", "ddp");
            this.zzr.zzc("auto", "_cmp", bundle);
            zzos zzosVarZzt = zzt();
            if (TextUtils.isEmpty(strOptString) || !zzosVarZzt.zza(strOptString, dOptDouble)) {
                return;
            }
            zzosVarZzt.zza().sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
        } catch (JSONException e11) {
            zzj().zzg().zza("Failed to parse the Deferred Deep Link response. exception", e11);
        }
    }

    final void zza(boolean z10) {
        this.zzac = Boolean.valueOf(z10);
    }

    final void zzaa() {
        this.zzag++;
    }

    public final boolean zzab() {
        return this.zzac != null && this.zzac.booleanValue();
    }

    public final boolean zzac() {
        return zzc() == 0;
    }

    public final boolean zzad() {
        zzl().zzt();
        return this.zzaf;
    }

    public final boolean zzae() {
        return TextUtils.isEmpty(this.zzd);
    }

    protected final boolean zzaf() {
        if (!this.zzz) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
        zzl().zzt();
        Boolean bool = this.zzaa;
        if (bool == null || this.zzab == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.zzp.elapsedRealtime() - this.zzab) > 1000)) {
            this.zzab = this.zzp.elapsedRealtime();
            boolean z10 = true;
            Boolean boolValueOf = Boolean.valueOf(zzt().zze("android.permission.INTERNET") && zzt().zze("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.packageManager(this.zzc).isCallerInstantApp() || this.zzi.zzy() || (zzos.zza(this.zzc) && zzos.zza(this.zzc, false))));
            this.zzaa = boolValueOf;
            if (boolValueOf.booleanValue()) {
                if (!zzt().zza(zzh().zzae(), zzh().zzac()) && TextUtils.isEmpty(zzh().zzac())) {
                    z10 = false;
                }
                this.zzaa = Boolean.valueOf(z10);
            }
        }
        return this.zzaa.booleanValue();
    }

    public final boolean zzag() {
        return this.zzg;
    }

    public final boolean zzah() {
        zzl().zzt();
        zza((zzjd) zzai());
        String strZzad = zzh().zzad();
        if (!this.zzi.zzv()) {
            zzj().zzp().zza("ADID collection is disabled from Manifest. Skipping");
            return false;
        }
        Pair<String, Boolean> pairZza = zzn().zza(strZzad);
        if (((Boolean) pairZza.second).booleanValue() || TextUtils.isEmpty((CharSequence) pairZza.first)) {
            zzj().zzp().zza("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return false;
        }
        if (!zzai().zzc()) {
            zzj().zzu().zza("Network is not available for Deferred Deep Link request. Skipping");
            return false;
        }
        StringBuilder sb2 = new StringBuilder();
        zzls zzlsVarZzr = zzr();
        zzlsVarZzr.zzt();
        zzlsVarZzr.zzu();
        if (!zzlsVarZzr.zzap() || zzlsVarZzr.zzq().zzg() >= 234200) {
            zzaj zzajVarZzab = zzp().zzab();
            Bundle bundle = zzajVarZzab != null ? zzajVarZzab.zza : null;
            if (bundle == null) {
                int i11 = this.zzah;
                this.zzah = i11 + 1;
                boolean z10 = i11 < 10;
                zzj().zzc().zza("Failed to retrieve DMA consent from the service, " + (z10 ? "Retrying." : "Skipping.") + " retryCount", Integer.valueOf(this.zzah));
                return z10;
            }
            zzje zzjeVarZza = zzje.zza(bundle, 100);
            sb2.append("&gcs=");
            sb2.append(zzjeVarZza.zze());
            zzax zzaxVarZza = zzax.zza(bundle, 100);
            sb2.append("&dma=");
            sb2.append(zzaxVarZza.zzd() == Boolean.FALSE ? 0 : 1);
            if (!TextUtils.isEmpty(zzaxVarZza.zze())) {
                sb2.append("&dma_cps=");
                sb2.append(zzaxVarZza.zze());
            }
            int i12 = zzax.zza(bundle) == Boolean.TRUE ? 0 : 1;
            sb2.append("&npa=");
            sb2.append(i12);
            zzj().zzp().zza("Consent query parameters to Bow", sb2);
        }
        zzos zzosVarZzt = zzt();
        zzh();
        URL urlZza = zzosVarZzt.zza(106000L, strZzad, (String) pairZza.first, zzn().zzp.zza() - 1, sb2.toString());
        if (urlZza != null) {
            zzle zzleVarZzai = zzai();
            zzld zzldVar = new zzld() { // from class: com.google.android.gms.measurement.internal.zzia
                @Override // com.google.android.gms.measurement.internal.zzld
                public final void zza(String str, int i13, Throwable th2, byte[] bArr, Map map) {
                    this.zza.zza(str, i13, th2, bArr, map);
                }
            };
            zzleVarZzai.zzt();
            zzleVarZzai.zzac();
            Preconditions.checkNotNull(urlZza);
            Preconditions.checkNotNull(zzldVar);
            zzleVarZzai.zzl().zza(new zzlg(zzleVarZzai, strZzad, urlZza, null, null, zzldVar));
        }
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final Clock zzb() {
        return this.zzp;
    }

    public final void zzb(boolean z10) {
        zzl().zzt();
        this.zzaf = z10;
    }

    public final int zzc() {
        zzl().zzt();
        if (this.zzi.zzx()) {
            return 1;
        }
        Boolean bool = this.zzae;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        if (!zzad()) {
            return 8;
        }
        Boolean boolZzv = zzn().zzv();
        if (boolZzv != null) {
            return boolZzv.booleanValue() ? 0 : 3;
        }
        Boolean boolZze = this.zzi.zze("firebase_analytics_collection_enabled");
        if (boolZze != null) {
            return boolZze.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.zzad;
        if (bool2 != null) {
            return bool2.booleanValue() ? 0 : 5;
        }
        return (this.zzac == null || this.zzac.booleanValue()) ? 0 : 7;
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final zzab zzd() {
        return this.zzh;
    }

    public final zzb zze() {
        zzb zzbVar = this.zzs;
        if (zzbVar != null) {
            return zzbVar;
        }
        throw new IllegalStateException("Component not created");
    }

    public final zzag zzf() {
        return this.zzi;
    }

    public final zzaz zzg() {
        zza((zzjd) this.zzx);
        return this.zzx;
    }

    public final zzgg zzh() {
        zza((zzh) this.zzy);
        return this.zzy;
    }

    public final zzgf zzi() {
        zza((zzh) this.zzv);
        return this.zzv;
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final zzgo zzj() {
        zza((zzjd) this.zzk);
        return this.zzk;
    }

    public final zzgh zzk() {
        return this.zzo;
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final zzhv zzl() {
        zza((zzjd) this.zzl);
        return this.zzl;
    }

    public final zzgo zzm() {
        zzgo zzgoVar = this.zzk;
        if (zzgoVar == null || !zzgoVar.zzaf()) {
            return null;
        }
        return this.zzk;
    }

    public final zzha zzn() {
        zza((zzja) this.zzj);
        return this.zzj;
    }

    final zzhv zzo() {
        return this.zzl;
    }

    public final zzjq zzp() {
        zza((zzh) this.zzr);
        return this.zzr;
    }

    public final zzlj zzq() {
        zza((zzh) this.zzq);
        return this.zzq;
    }

    public final zzls zzr() {
        zza((zzh) this.zzw);
        return this.zzw;
    }

    public final zznb zzs() {
        zza((zzh) this.zzm);
        return this.zzm;
    }

    public final zzos zzt() {
        zza((zzja) this.zzn);
        return this.zzn;
    }

    public final String zzu() {
        return this.zzd;
    }

    public final String zzv() {
        return this.zze;
    }

    public final String zzw() {
        return this.zzf;
    }

    public final String zzx() {
        return this.zzu;
    }

    final void zzy() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    final void zzz() {
        this.zzai.incrementAndGet();
    }
}
