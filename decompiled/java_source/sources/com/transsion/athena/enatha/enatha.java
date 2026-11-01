package com.transsion.athena.enatha;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.tencent.mmkv.MMKV;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.data.AppIdData;
import com.transsion.athena.data.Track;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.data.TrackDataWrapper;
import com.transsion.athena.hatnea.atnhae;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.ga.i;
import com.transsion.gslb.GslbSdk;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class enatha extends com.transsion.athena.enatha.athena implements Handler.Callback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static volatile enatha f42724c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f42725d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f42726e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f42727f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f42728g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f42729h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ArrayList<Track> f42730i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f42731j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final SparseArray<String> f42732k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f42733l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f42734m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f42735n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f42736o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f42737p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final com.transsion.athena.aethna.aethna f42738q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Runnable f42739r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f42740s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Runnable f42741t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final LocationListener f42742u;

    class aatnhe implements GslbSdk.InitListener {
        aatnhe(enatha enathaVar) {
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitFail() {
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitSuccess(Map<String, String> map) {
        }
    }

    class aethna implements GslbSdk.InitListener {
        aethna() {
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitFail() {
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitSuccess(Map<String, String> map) {
            enatha.this.f42733l = map == null ? "" : map.toString();
        }
    }

    class anateh implements GslbSdk.InitListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f42744a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f42745b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.transsion.athena.config.data.model.athena f42746c;

        anateh(String str, int i11, com.transsion.athena.config.data.model.athena athenaVar) {
            this.f42744a = str;
            this.f42745b = i11;
            this.f42746c = athenaVar;
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitFail() {
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitSuccess(Map<String, String> map) {
            enatha.this.a(this.f42744a, this.f42745b, this.f42746c, map == null ? "" : map.toString());
        }
    }

    class anehat implements Runnable {
        anehat() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!com.transsion.athena.config.data.model.ehanat.r()) {
                com.transsion.athena.taaneh.aethna.c("Athena SDK isAthenaEnable = false");
                return;
            }
            try {
                MMKV mmkvJ = MMKV.J("AthenaKV", 2);
                String[] strArrA = mmkvJ.a();
                if (strArrA != null && strArrA.length > 0) {
                    enatha.this.a(mmkvJ);
                }
                enatha.this.f42722b.postDelayed(this, 300000L);
            } catch (Exception e11) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            }
        }
    }

    class athena extends com.transsion.athena.aethna.aethna {
        athena() {
        }

        @Override // com.transsion.athena.aethna.aethna
        public void a(int i11, boolean z10) {
            try {
                if (i11 > 0) {
                    enatha.this.a(i11, z10);
                } else {
                    enatha.a(enatha.this);
                }
            } catch (Exception e11) {
                com.transsion.athena.taaneh.aethna.b("onConfigChanged exception : %s", e11.getMessage());
            }
        }
    }

    class ehanat implements GslbSdk.ResultListener {
        ehanat(enatha enathaVar) {
        }

        @Override // com.transsion.gslb.GslbSdk.ResultListener
        public void onGslbFail() {
        }

        @Override // com.transsion.gslb.GslbSdk.ResultListener
        public void onGslbSuccess(String str) {
        }
    }

    class ehatna implements Runnable {
        ehatna() {
        }

        @Override // java.lang.Runnable
        @SuppressLint({"MissingPermission"})
        public void run() {
            try {
                enatha.this.a((Location) null);
                LocationManager locationManager = (LocationManager) enatha.this.f42721a.getApplicationContext().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
                if (locationManager != null) {
                    locationManager.removeUpdates(enatha.this.f42742u);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: renamed from: com.transsion.athena.enatha.enatha$enatha, reason: collision with other inner class name */
    class C0607enatha implements com.transsion.athena.data.anateh.enatha<String> {
        C0607enatha(enatha enathaVar) {
        }

        @Override // com.transsion.athena.data.anateh.enatha
        public void a(String str) {
            Bundle bundle = new Bundle();
            bundle.putString("v", str);
            i.a().c(new com.transsion.ga.anateh("cleanupEvents_oom", bundle));
        }
    }

    class hatnea implements LocationListener {
        hatnea() {
        }

        @Override // android.location.LocationListener
        @SuppressLint({"MissingPermission"})
        public void onLocationChanged(Location location) {
            enatha enathaVar = enatha.this;
            Handler handler = enathaVar.f42722b;
            if (handler != null) {
                handler.removeCallbacks(enathaVar.f42741t);
            }
            try {
                enatha.this.a(location);
                LocationManager locationManager = (LocationManager) enatha.this.f42721a.getApplicationContext().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
                if (locationManager != null) {
                    locationManager.removeUpdates(enatha.this.f42742u);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i11, Bundle bundle) {
        }
    }

    private enatha(Context context) {
        super(context);
        this.f42725d = false;
        this.f42726e = false;
        this.f42732k = new SparseArray<>();
        this.f42737p = 0L;
        this.f42738q = new athena();
        this.f42739r = new anehat();
        this.f42740s = 0L;
        this.f42741t = new ehatna();
        this.f42742u = new hatnea();
        HandlerThread handlerThread = new HandlerThread("Athena-Worker", 10);
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f42722b = handler;
        handler.sendEmptyMessage(303);
    }

    private Track a(TrackDataWrapper trackDataWrapper) {
        Object jSONObject;
        Track track = new Track();
        track.setEventName(trackDataWrapper.a());
        track.setTid(trackDataWrapper.b());
        track.setTrackTs(System.currentTimeMillis());
        track.setTrackErTs(SystemClock.elapsedRealtime());
        TrackData trackDataC = trackDataWrapper.c();
        try {
            JSONObject jSONObjectA = trackDataC.a();
            String str = com.transsion.athena.config.data.model.ehanat.f42607h;
            if (jSONObjectA.has("_eparam")) {
                jSONObject = jSONObjectA.get("_eparam");
                if (!(jSONObject instanceof JSONArray) || jSONObjectA.length() <= 1) {
                    jSONObjectA.remove("_eparam");
                } else {
                    jSONObject = new JSONObject();
                }
            } else {
                jSONObject = new JSONObject();
            }
            if ((jSONObject instanceof JSONObject) && jSONObjectA.length() > 0) {
                JSONArray jSONArrayNames = jSONObjectA.names();
                for (int i11 = 0; i11 < jSONArrayNames.length(); i11++) {
                    String string = jSONArrayNames.getString(i11);
                    ((JSONObject) jSONObject).put(string, jSONObjectA.get(string));
                    jSONObjectA.remove(string);
                }
            }
            JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
            jSONObjectA.put("_eparam", jSONObject);
            jSONObjectA.put("net", com.transsion.athena.taaneh.aatnhe.b(this.f42721a));
            jSONObjectA.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
            track.setJsonData(jSONObjectA);
            track.setOriginJsonData(jSONObject2);
            track.setTrackFlag(trackDataC.d());
            TidConfigBean tidConfigBeanA = com.transsion.athena.aethna.athena.c().a((int) track.getTid(), track.getEventName());
            if (tidConfigBeanA != null) {
                track.setTid(tidConfigBeanA.getTid());
            }
        } catch (JSONException e11) {
            com.transsion.athena.taaneh.aethna.b("Convert to Track exception : %s", e11.getMessage());
        }
        return track;
    }

    public static enatha a(Context context) {
        if (f42724c == null) {
            synchronized (enatha.class) {
                try {
                    if (f42724c == null) {
                        f42724c = new enatha(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f42724c;
    }

    private void a(int i11, String str) {
        com.transsion.athena.aethna.athena.c().a(i11);
        if (com.transsion.athena.data.anateh.aethna.a(this.f42721a) != null) {
            if (str == null) {
                com.transsion.athena.data.anateh.aethna.a(this.f42721a).a(AppIdData.a(this.f42721a, i11));
                return;
            }
            com.transsion.athena.data.anateh.aethna aethnaVarA = com.transsion.athena.data.anateh.aethna.a(this.f42721a);
            AppIdData appIdData = new AppIdData();
            appIdData.f42642a = i11;
            appIdData.f42643b = str;
            aethnaVarA.a(appIdData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11, boolean z10) {
        com.transsion.athena.config.data.model.athena athenaVarB = com.transsion.athena.aethna.athena.c().b(i11);
        if (athenaVarB != null) {
            com.transsion.athena.taaneh.aethna.a("handleTidChange appconf : %s", athenaVarB.m());
            com.transsion.athena.data.anateh.aethna.a(this.f42721a).a(athenaVarB, z10);
            String strH = athenaVarB.h();
            if (!TextUtils.isEmpty(strH)) {
                if (GslbSdk.isInitSuccess(strH)) {
                    a(strH, i11, athenaVarB, this.f42733l);
                } else {
                    GslbSdk.init(this.f42721a, new String[]{strH}, new anateh(strH, i11, athenaVarB));
                }
                GslbSdk.getDomain(strH, new ehanat(this));
            }
            String strC = athenaVarB.c();
            if (!TextUtils.isEmpty(strC)) {
                GslbSdk.init(this.f42721a, new String[]{strC}, new aatnhe(this));
                GslbSdk.getDomain(strC, (GslbSdk.ResultListener) null);
            }
        }
        if (z10) {
            List<TidConfigBean> listJ = athenaVarB.j();
            if (com.transsion.athena.config.data.model.anehat.a(listJ)) {
                com.transsion.athena.taaneh.aethna.c("%s", "handleTidChange tid config is null");
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (TidConfigBean tidConfigBean : listJ) {
                if (tidConfigBean.getTidConfig().i() == -1) {
                    arrayList.add(Long.valueOf(tidConfigBean.getTid()));
                }
            }
            if (!arrayList.isEmpty()) {
                try {
                    com.transsion.athena.data.anateh.aethna.a(this.f42721a).a(arrayList, this.f42726e, new com.transsion.athena.data.anateh.enatha() { // from class: com.transsion.athena.enatha.d
                        @Override // com.transsion.athena.data.anateh.enatha
                        public final void a(Object obj) {
                            enatha.a((String) obj);
                        }
                    });
                } catch (Exception e11) {
                    com.transsion.athena.taaneh.aethna.b("Handle tid change exception : %s", e11.getMessage());
                    a("handleTidChange", e11);
                }
            }
            AthenaAnalytics.I();
            if (com.transsion.athena.data.athena.b() == i11) {
                com.transsion.athena.config.data.model.ehanat.e(com.transsion.athena.aethna.athena.c().a(i11, "page_view", 1.0f) == 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void a(Location location) {
        boolean z10;
        TrackData trackData = new TrackData();
        boolean z11 = true;
        if (location != null) {
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(location.getLongitude());
            RoundingMode roundingMode = RoundingMode.HALF_UP;
            double dDoubleValue = bigDecimalValueOf.setScale(2, roundingMode).doubleValue();
            double dDoubleValue2 = BigDecimal.valueOf(location.getLatitude()).setScale(2, roundingMode).doubleValue();
            trackData.add("lng", dDoubleValue).add("lat", dDoubleValue2);
            try {
                trackData.add("geono", com.transsion.athena.aatnhe.aethna.a(dDoubleValue2, dDoubleValue, com.transsion.athena.aethna.athena.c().b()).a());
            } catch (Exception e11) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            }
            z10 = true;
        } else {
            trackData.add("lng", 0).add("lat", 0);
            z10 = false;
        }
        if (com.transsion.athena.taaneh.anehat.a(this.f42721a, "android.permission.ACCESS_FINE_LOCATION")) {
            List<com.transsion.athena.aatnhe.athena> listC = com.transsion.athena.taaneh.athena.c(this.f42721a);
            JSONArray jSONArray = new JSONArray();
            for (com.transsion.athena.aatnhe.athena athenaVar : (ArrayList) listC) {
                try {
                    jSONArray.put(new JSONObject().put("cellid", athenaVar.a()).put(PermissionConstant.level, athenaVar.f42542e));
                } catch (JSONException e12) {
                    com.transsion.athena.taaneh.aethna.b("%s", Log.getStackTraceString(e12));
                }
            }
            if (jSONArray.length() > 0) {
                trackData.add("cellidlist", jSONArray.toString());
            } else {
                trackData.add("cellidlist", "");
                z11 = z10;
            }
        } else {
            z11 = z10;
        }
        if (z11) {
            AthenaAnalytics.K(9999).g0(RequestParameters.SUBRESOURCE_LOCATION, trackData, 9999);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(SparseArray sparseArray) {
        ArrayList arrayList = new ArrayList(sparseArray.size());
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            arrayList.add((com.transsion.athena.config.data.model.athena) sparseArray.valueAt(i11));
        }
        com.transsion.athena.aethna.athena.c().a(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MMKV mmkv) {
        try {
            String[] strArrA = mmkv.a();
            if (strArrA != null && strArrA.length >= 1) {
                ArrayList arrayList = new ArrayList();
                String[] strArr = new String[100];
                for (int i11 = 0; i11 < strArrA.length; i11++) {
                    TrackDataWrapper trackDataWrapper = (TrackDataWrapper) mmkv.i(strArrA[i11], TrackDataWrapper.class);
                    if (trackDataWrapper != null && arrayList.size() < 100) {
                        arrayList.add(a(trackDataWrapper));
                        strArr[i11] = strArrA[i11];
                    }
                }
                if (!arrayList.isEmpty()) {
                    a(arrayList);
                    mmkv.removeValuesForKeys(strArr);
                }
                if (mmkv.a() == null || mmkv.a().length <= 0) {
                    return;
                }
                a(mmkv);
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
    }

    private void a(Track track) {
        TidConfigBean tidConfigBeanA;
        int iA = com.transsion.athena.taaneh.anehat.a(track.getTid());
        if (!"".equals(this.f42732k.get(iA, null)) && "page_enter".equals(track.getEventName())) {
            try {
                String string = new JSONObject().put(NotificationCompat.CATEGORY_EVENT, track.getEventName()).put("ts", track.getTrackTs()).put("tid", track.getTid()).put("net", track.getJsonData().getInt("net")).put("eparam", track.getJsonData().getJSONObject("_eparam").toString()).toString();
                this.f42732k.put(iA, string);
                k4.a.a(this.f42721a).g("first_page_enter_" + iA, string);
                com.transsion.athena.taaneh.aethna.a("save [%d] fpe to sp : %s", Integer.valueOf(iA), string);
                return;
            } catch (Exception e11) {
                com.transsion.athena.taaneh.aethna.b("saveFpeForAppId exception : %s", e11.getMessage());
            }
        }
        if (!com.transsion.athena.config.data.model.ehanat.r()) {
            com.transsion.athena.taaneh.aethna.c("%s", "Athena SDK Enable : [false]");
            return;
        }
        String string2 = track.getJsonData().toString();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(SafeStringUtils.SP_APPID, com.transsion.athena.taaneh.anehat.a(track.getTid()));
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
            jSONObject.put("ts", track.getTrackTs());
            jSONObject.put("params", track.getJsonData());
            com.transsion.athena.taaneh.aethna.c("track event:%s", jSONObject.toString());
        } catch (Exception e12) {
            com.transsion.athena.taaneh.aethna.b("handleSaveData exception:%s", e12.getMessage());
        }
        if (string2.length() >= 716800) {
            com.transsion.athena.taaneh.aethna.b("track [%d]-[%s], save2DB failed due to eparam out of limit [%d]", Long.valueOf(track.getTid()), track.getEventName(), 716800);
            return;
        }
        if (c(track)) {
            if (track.getTid() > 9999) {
                tidConfigBeanA = com.transsion.athena.aethna.athena.c().b(track.getTid());
            } else {
                tidConfigBeanA = com.transsion.athena.aethna.athena.c().a((int) track.getTid(), track.getEventName());
                if (tidConfigBeanA != null) {
                    track.setTid(tidConfigBeanA.getTid());
                }
            }
            boolean z10 = track.getTrackFlag() == 0 && tidConfigBeanA != null && tidConfigBeanA.isCacheEnable();
            int iJ = com.transsion.athena.config.data.model.ehanat.j();
            if (iJ <= 0 || !z10) {
                a(track, tidConfigBeanA);
                return;
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("tid", track.getTid());
                jSONObject2.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                com.transsion.athena.taaneh.aethna.c("save event to memory:%s", jSONObject2.toString());
            } catch (Exception e13) {
                com.transsion.athena.taaneh.aethna.b("print saveTrack2Mem exception:%s", e13.getMessage());
            }
            if (this.f42730i == null) {
                this.f42730i = new ArrayList<>();
            }
            if (this.f42730i.size() >= iJ - 1) {
                this.f42730i.add(track);
                a(this.f42730i);
                this.f42731j = 0L;
                return;
            }
            long trackTs = track.getTrackTs();
            if (!tidConfigBeanA.allowTrack(trackTs)) {
                com.transsion.athena.taaneh.aethna.c("save [%d]-[%s] to DB failed due to limit in one-life-cycle", Long.valueOf(track.getTid()), track.getEventName());
                return;
            }
            tidConfigBeanA.setLastTTime(trackTs);
            this.f42730i.add(track);
            long j11 = this.f42731j;
            if (j11 == 0) {
                this.f42731j = trackTs;
            } else if (trackTs - j11 >= 600000) {
                a(this.f42730i);
                this.f42731j = 0L;
            }
        }
    }

    private void a(Track track, TidConfigBean tidConfigBean) {
        int iA;
        int iA2 = track.getTid() > 9999 ? com.transsion.athena.aethna.athena.c().a(track.getTid(), track.getTrackData().b()) : com.transsion.athena.aethna.athena.c().a((int) track.getTid(), track.getEventName(), track.getTrackData().b());
        if (iA2 != 0) {
            com.transsion.athena.taaneh.aethna.b("recordTrackFailed reason : %d", Integer.valueOf(iA2));
            return;
        }
        if (tidConfigBean == null || tidConfigBean.allowTrack(track.getTrackTs())) {
            com.transsion.athena.ehatna.aethna.b().a(track);
            iA = com.transsion.athena.data.anateh.aethna.a(this.f42721a).a(track);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("tid", track.getTid());
                jSONObject.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                jSONObject.put("ts", track.getTrackTs());
                jSONObject.put("db_count", iA);
                com.transsion.athena.taaneh.aethna.c("save event to DB:%s", jSONObject.toString());
            } catch (Exception e11) {
                com.transsion.athena.taaneh.aethna.b("saveTrack2DB exception:%s", e11.getMessage());
            }
        } else {
            com.transsion.athena.taaneh.aethna.b("save [%d]-[%s] to DB failed due to limit in one-life-cycle", Long.valueOf(track.getTid()), track.getEventName());
            iA = 0;
        }
        if (iA == -1) {
            com.transsion.athena.taaneh.aethna.b("DB_UPDATE_ERROR");
        } else if (iA == -2) {
            com.transsion.athena.taaneh.aethna.c("save [%d]-[%s] to DB failed due to DB_OUT_OF_MEMORY_ERROR", Long.valueOf(track.getTid()), track.getEventName());
            com.transsion.athena.taaneh.aethna.c("Clean up DB due to DB_OUT_OF_MEMORY_ERROR, Count [%d]", Integer.valueOf(com.transsion.athena.data.anateh.aethna.a(this.f42721a).a(1000, new com.transsion.athena.data.anateh.enatha() { // from class: com.transsion.athena.enatha.b
                @Override // com.transsion.athena.data.anateh.enatha
                public final void a(Object obj) {
                    enatha.b((String) obj);
                }
            })));
        }
        if ("ev_athena".equals(track.getEventName())) {
            return;
        }
        if (iA > 0) {
            if (tidConfigBean != null) {
                tidConfigBean.setLastTTime(track.getTrackTs());
                tidConfigBean.getTidConfig().a(iA);
            }
            if ("device".equals(track.getEventName()) && 9999 == com.transsion.athena.taaneh.anehat.a(track.getTid())) {
                com.transsion.athena.aethna.athena.c().k();
            }
        }
        a(false, this.f42727f);
    }

    static void a(enatha enathaVar) {
        if (!enathaVar.f42728g) {
            enathaVar.f42727f = com.transsion.athena.aethna.athena.c().g() * 1000;
        }
        enathaVar.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("v", str);
        i.a().c(new com.transsion.ga.anateh("cleanupEvents_off", bundle));
        com.transsion.athena.taaneh.aethna.c("handleTidChange cleanupList : %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i11, com.transsion.athena.config.data.model.athena athenaVar, String str2) {
        String domain = TextUtils.isEmpty(str) ? GslbSdk.getDomain(com.transsion.athena.config.data.model.ehanat.o(), true) : GslbSdk.getDomain(com.transsion.athena.config.data.model.ehanat.b(str), true);
        Bundle bundle = new Bundle();
        bundle.putInt("app_id", i11);
        bundle.putString("url", domain);
        bundle.putLong("ver", athenaVar.k());
        bundle.putString("gslb_data", str2);
        new yi.a("app_cfg_log", 9999).c(bundle, null).b();
    }

    private void a(String str, Throwable th2) {
        i.a().c(new com.transsion.ga.anateh(str, th2));
    }

    private void a(final List<Track> list) {
        ArrayList<Track> arrayList = new ArrayList<>();
        for (Track track : list) {
            if (com.transsion.athena.aethna.athena.c().a(track.getTid(), track.getTrackData().b()) == 0) {
                com.transsion.athena.ehatna.aethna.b().a(track);
                arrayList.add(track);
            }
        }
        if (arrayList.size() > 0) {
            int iA = com.transsion.athena.data.anateh.aethna.a(this.f42721a).a(arrayList, new com.transsion.athena.data.anateh.enatha() { // from class: com.transsion.athena.enatha.c
                @Override // com.transsion.athena.data.anateh.enatha
                public final void a(Object obj) {
                    enatha.a(list, (LongSparseArray) obj);
                }
            });
            com.transsion.athena.taaneh.aethna.c("saveMemCacheToDb Count = " + iA);
            if (iA == -2) {
                com.transsion.athena.taaneh.aethna.b("saveToDB out of memory cleanCount = " + com.transsion.athena.data.anateh.aethna.a(this.f42721a).a(1000, new C0607enatha(this)));
            }
            a(false, this.f42727f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(List list, LongSparseArray longSparseArray) {
        com.transsion.athena.taaneh.aethna.c("saveMemCacheToDb tidCountArray = " + longSparseArray);
        list.clear();
        for (int i11 = 0; i11 < longSparseArray.size(); i11++) {
            long jKeyAt = longSparseArray.keyAt(i11);
            TidConfigBean tidConfigBeanB = com.transsion.athena.aethna.athena.c().b(jKeyAt);
            if (tidConfigBeanB != null) {
                tidConfigBeanB.getTidConfig().a(((Integer) longSparseArray.valueAt(i11)).intValue());
                if ("device".equals(tidConfigBeanB.getEvent()) && 9999 == com.transsion.athena.taaneh.anehat.a(jKeyAt)) {
                    com.transsion.athena.aethna.athena.c().k();
                }
            }
        }
    }

    private void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
        try {
            jSONObject.getString(str);
        } catch (JSONException unused) {
            jSONObject.put(str, obj);
        }
    }

    @SuppressLint({"MissingPermission"})
    private void a(boolean z10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if ((z10 && TextUtils.isEmpty(com.transsion.athena.config.data.model.ehanat.m())) || Math.abs(jCurrentTimeMillis - this.f42740s) < 3600000) {
            if (this.f42722b.hasMessages(502)) {
                return;
            }
            this.f42722b.sendMessageDelayed(this.f42722b.obtainMessage(502), 3600000L);
            return;
        }
        if (com.transsion.athena.aethna.athena.c().a(9999, RequestParameters.SUBRESOURCE_LOCATION, 1.0f) == 0) {
            if (com.transsion.athena.taaneh.anehat.a(this.f42721a, "android.permission.ACCESS_COARSE_LOCATION") || com.transsion.athena.taaneh.anehat.a(this.f42721a, "android.permission.ACCESS_FINE_LOCATION")) {
                LocationManager locationManager = (LocationManager) this.f42721a.getApplicationContext().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
                if (locationManager == null) {
                    a((Location) null);
                    return;
                }
                String str = "network";
                if (!locationManager.isProviderEnabled("network")) {
                    str = "passive";
                    if (!locationManager.isProviderEnabled("passive")) {
                        str = "gps";
                        if (!locationManager.isProviderEnabled("gps")) {
                            str = null;
                        }
                    }
                }
                if (str != null) {
                    this.f42722b.removeCallbacks(this.f42741t);
                    this.f42722b.postDelayed(this.f42741t, 30000L);
                    locationManager.requestSingleUpdate(str, this.f42742u, (Looper) null);
                    this.f42740s = jCurrentTimeMillis;
                }
                if (this.f42722b.hasMessages(502)) {
                    return;
                }
                this.f42722b.sendMessageDelayed(this.f42722b.obtainMessage(502), 3600000L);
            }
        }
    }

    private void a(boolean z10, long j11) {
        if (this.f42722b.hasMessages(298)) {
            return;
        }
        Message messageObtainMessage = this.f42722b.obtainMessage(298);
        if (z10) {
            messageObtainMessage.arg1 = 1;
            this.f42722b.sendMessage(messageObtainMessage);
        } else {
            messageObtainMessage.arg1 = 0;
            this.f42722b.sendMessageDelayed(messageObtainMessage, j11);
        }
    }

    private void b(Track track) {
        if (!com.transsion.athena.config.data.model.ehanat.r()) {
            com.transsion.athena.taaneh.aethna.c("Athena SDK isAthenaEnable = false");
            return;
        }
        if (c(track)) {
            int iA = com.transsion.athena.taaneh.anehat.a(track.getTid());
            String str = "";
            if (this.f42732k.indexOfKey(iA) >= 0) {
                String str2 = this.f42732k.get(iA, "");
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        String string = jSONObject.has("eparam") ? jSONObject.getString("eparam") : "";
                        JSONObject jSONObject2 = TextUtils.isEmpty(string) ? new JSONObject() : new JSONObject(string);
                        Track track2 = new Track();
                        track2.setEventName(jSONObject.getString(NotificationCompat.CATEGORY_EVENT));
                        track2.setTid(jSONObject.getLong("tid"));
                        track2.setTrackTs(jSONObject.getLong("ts"));
                        track2.setTrackErTs(SystemClock.elapsedRealtime());
                        track2.setOriginJsonData(jSONObject2);
                        this.f42732k.put(iA, "");
                        k4.a.a(AthenaAnalytics.J()).g("first_page_enter_" + iA, "");
                        b(track2);
                    } catch (Exception unused) {
                    }
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                jSONObject3.put("tid", track.getTid());
                jSONObject3.put(NativeComponentConstants.KEY_COMPONENT_TYPE, track.getTrackFlag());
                JSONObject originJsonData = track.getOriginJsonData();
                a(originJsonData, "_apkg", com.transsion.athena.taaneh.athena.h(this.f42721a));
                a(originJsonData, "_avn", com.transsion.athena.taaneh.athena.j(this.f42721a));
                a(originJsonData, "_avc", Integer.valueOf(com.transsion.athena.taaneh.athena.i(this.f42721a)));
                a(originJsonData, "_atutp", Short.valueOf(com.transsion.athena.config.data.model.ehanat.c()));
                String strB = com.transsion.athena.config.data.model.ehanat.b();
                if (strB != null) {
                    str = strB;
                }
                a(originJsonData, "_atuid", str);
                a(originJsonData, "_achannel", com.transsion.athena.config.data.model.ehanat.g());
                a(originJsonData, "_ainstallchnl", TextUtils.isEmpty(com.transsion.athena.taaneh.athena.e(this.f42721a)) ? " " : com.transsion.athena.taaneh.athena.e(this.f42721a));
                jSONObject3.put("_eparam", originJsonData);
            } catch (JSONException e11) {
                com.transsion.athena.taaneh.aethna.b("Track by DCS exception : ", e11.getMessage());
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("trackObject", jSONObject3.toString());
            this.f42721a.getContentResolver().insert(Uri.parse("content://com.transsion.dataservice.provider/track"), contentValues);
            com.transsion.athena.taaneh.aethna.c("track by DCS:%s", jSONObject3.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("v", str);
        i.a().c(new com.transsion.ga.anateh("cleanupEvents_oom", bundle));
    }

    private boolean c(Track track) {
        if (!"app_launch".equals(track.getEventName())) {
            return true;
        }
        k4.a aVarA = k4.a.a(this.f42721a);
        String str = "app_launch_" + com.transsion.athena.taaneh.anehat.a(track.getTid());
        int iE = aVarA.e(str);
        if (iE != 0 && Math.abs((track.getTrackTs() / 1000) - ((long) iE)) <= 7200) {
            return false;
        }
        aVarA.b(str, Long.valueOf(track.getTrackTs() / 1000).intValue());
        return true;
    }

    private void f() {
        Cursor cursorQuery = null;
        try {
            String strH = com.transsion.athena.taaneh.athena.h(this.f42721a);
            cursorQuery = this.f42721a.getContentResolver().query(Uri.parse("content://com.transsion.dataservice.provider/authorize"), null, "pkg = ?", new String[]{strH}, null);
            if (cursorQuery != null) {
                boolean z10 = cursorQuery.getCount() == 1;
                this.f42736o = z10;
                com.transsion.athena.taaneh.aethna.c("Pkg [%s] DCS authorize [%s]", strH, z10 ? OfflineConstantsKt.OFFLINE_CONFIG_ENABLE : "disable");
            } else {
                com.transsion.athena.taaneh.aethna.c("Cursor is null, Pkg [%s] may not on the DCS white list", strH);
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b("Dcs applyForAccess exception : %s", e11.getMessage());
        } finally {
            if (0 != 0) {
                cursorQuery.close();
            }
        }
    }

    private boolean g() {
        List<com.transsion.athena.config.data.model.athena> listA = com.transsion.athena.aethna.athena.c().a();
        if (com.transsion.athena.config.data.model.anehat.a(listA)) {
            return false;
        }
        for (com.transsion.athena.config.data.model.athena athenaVar : listA) {
            if (athenaVar != null && athenaVar.a()) {
                return true;
            }
        }
        return false;
    }

    private void h() {
        if (!com.transsion.athena.taaneh.aatnhe.c(this.f42721a)) {
            com.transsion.athena.taaneh.aethna.c("%s", "CheckConfig cancel, network is not available");
        } else if (GslbSdk.isInitSuccess(com.transsion.athena.config.data.model.ehanat.a(false))) {
            com.transsion.athena.aethna.athena.c().a(this.f42722b, this.f42738q);
        } else {
            com.transsion.athena.taaneh.aethna.c("%s", "CheckConfig cancel, GslbSdk is not inited");
        }
    }

    private void i() {
        if (!com.transsion.athena.taaneh.aatnhe.c(this.f42721a)) {
            com.transsion.athena.taaneh.aethna.a("%s", "checkUpload network unavailable");
            return;
        }
        if (com.transsion.athena.ehatna.aethna.b().f()) {
            if (com.transsion.athena.ehatna.aethna.b().e()) {
                return;
            }
            com.transsion.athena.taaneh.aethna.a("%s", "checkUpload sync baseTime");
            com.transsion.athena.ehatna.aethna.b().a(true);
            com.transsion.athena.hatnea.athena.a().a(new atnhae(this.f42722b));
            return;
        }
        if (!com.transsion.athena.config.data.model.ehanat.r()) {
            com.transsion.athena.taaneh.aethna.a("%s", "checkUpload sdk disable or gaid invalid");
            String strI = k4.a.a(this.f42721a).i("gdpr_close");
            if (TextUtils.isEmpty(strI)) {
                return;
            }
            com.transsion.athena.hatnea.athena.a().a(new com.transsion.athena.hatnea.aethna(this.f42722b, strI));
            return;
        }
        if (!GslbSdk.isInitSuccess(com.transsion.athena.config.data.model.ehanat.o())) {
            com.transsion.athena.taaneh.aethna.a("%s", "checkUpload GSLB is not ready");
            return;
        }
        if (com.transsion.athena.config.data.model.anehat.a(com.transsion.athena.aethna.athena.c().d())) {
            com.transsion.athena.taaneh.aethna.a("%s", "checkUpload global config is not ready");
            return;
        }
        List<AppIdData> listC = com.transsion.athena.data.anateh.aethna.a(this.f42721a).c();
        if (com.transsion.athena.config.data.model.anehat.a(listC)) {
            List<com.transsion.athena.config.data.model.athena> listA = com.transsion.athena.aethna.athena.c().a();
            if (com.transsion.athena.config.data.model.anehat.a(listA)) {
                com.transsion.athena.taaneh.aethna.a("%s", "checkUpload appid config list is null");
                return;
            }
            Iterator<com.transsion.athena.config.data.model.athena> it = listA.iterator();
            while (it.hasNext()) {
                AppIdData appIdDataA = AppIdData.a(this.f42721a, it.next().b());
                if (listC == null) {
                    listC = new ArrayList<>();
                }
                listC.add(appIdDataA);
                com.transsion.athena.data.anateh.aethna.a(this.f42721a).a(appIdDataA);
            }
        }
        HashSet hashSet = new HashSet();
        for (AppIdData appIdData : listC) {
            com.transsion.athena.config.data.model.athena athenaVarB = com.transsion.athena.aethna.athena.c().b(appIdData.f42642a);
            if (athenaVarB != null) {
                String domain = TextUtils.isEmpty(athenaVarB.h()) ? GslbSdk.getDomain(com.transsion.athena.config.data.model.ehanat.o(), true) : GslbSdk.getDomain(com.transsion.athena.config.data.model.ehanat.b(athenaVarB.h()), true);
                appIdData.f42647f = domain;
                hashSet.add(domain);
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            com.transsion.athena.hatnea.athena.a().a(new com.transsion.athena.hatnea.hatnea(this.f42722b, (String) it2.next(), listC, this.f42726e, this.f42732k));
        }
    }

    private void j() throws Throwable {
        this.f42735n = System.currentTimeMillis();
        this.f42734m = com.transsion.athena.taaneh.aatnhe.c(this.f42721a);
        com.transsion.athena.ehatna.aethna.b().d();
        com.transsion.athena.aethna.athena.c().h();
        com.transsion.athena.data.anateh.aethna.a(this.f42721a).a(new com.transsion.athena.data.anateh.enatha() { // from class: com.transsion.athena.enatha.a
            @Override // com.transsion.athena.data.anateh.enatha
            public final void a(Object obj) {
                enatha.a((SparseArray) obj);
            }
        });
        AthenaAnalytics.I();
        int iB = com.transsion.athena.data.athena.b();
        if (iB != 0) {
            com.transsion.athena.config.data.model.ehanat.e(com.transsion.athena.aethna.athena.c().a(iB, "page_view", 1.0f) == 0);
        }
        if (com.transsion.athena.taaneh.anehat.c(this.f42721a) && g() && com.transsion.athena.config.data.model.ehanat.r()) {
            com.transsion.athena.taaneh.aethna.c("%s", "Dcs available");
            f();
        } else {
            com.transsion.athena.taaneh.aethna.c("%s", "Dcs unavailable because of not support or conf disable");
        }
        GslbSdk.init(this.f42721a, com.transsion.athena.anehat.athena.f42561a, new aethna());
        Handler handler = this.f42722b;
        handler.postDelayed(new com.transsion.athena.enatha.anehat(handler), 7200000L);
        if (AthenaAnalytics.V()) {
            this.f42722b.post(this.f42739r);
        }
        try {
            k4.a aVarA = k4.a.a(this.f42721a);
            for (Integer num : com.transsion.athena.data.athena.a()) {
                String str = "first_page_enter_" + num;
                if (aVarA.d(str)) {
                    this.f42732k.put(num.intValue(), aVarA.i(str));
                }
            }
            File filesDir = this.f42721a.getFilesDir();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(filesDir);
            String str2 = File.separator;
            sb2.append(str2);
            sb2.append(com.transsion.athena.config.data.model.ehanat.f42610k);
            File file = new File(sb2.toString());
            File file2 = new File(filesDir + str2 + com.transsion.athena.config.data.model.ehanat.f42611l);
            if (AthenaAnalytics.S()) {
                this.f42726e = true;
            } else if (file.exists()) {
                String[] list = file.list();
                if (list != null && list.length != 0) {
                    this.f42726e = true;
                } else if (file.delete()) {
                    com.transsion.athena.taaneh.aethna.a("%s", "dataFile deleted");
                }
            }
            if (file2.exists()) {
                com.transsion.athena.taaneh.athena.a(this.f42721a, file2.getPath());
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.a("%s", e11.getMessage());
            a("handleInit", e11);
        }
        Message messageObtainMessage = this.f42722b.obtainMessage(502);
        messageObtainMessage.arg1 = 1;
        this.f42722b.sendMessageDelayed(messageObtainMessage, 3000L);
        if (this.f42728g) {
            return;
        }
        this.f42727f = com.transsion.athena.aethna.athena.c().g() * 1000;
    }

    @Override // com.transsion.athena.enatha.athena
    public void a() {
        Handler handler = this.f42722b;
        if (handler != null) {
            this.f42722b.sendMessageAtFrontOfQueue(handler.obtainMessage(308));
        }
    }

    @Override // com.transsion.athena.enatha.athena
    public void a(int i11) {
        this.f42727f = Math.max(i11, 2000);
        this.f42728g = true;
    }

    @Override // com.transsion.athena.enatha.athena
    public void a(Message message, long j11) {
        Handler handler = this.f42722b;
        if (handler != null) {
            if (j11 > 0) {
                handler.removeMessages(message.what);
            }
            this.f42722b.sendMessageDelayed(message, j11);
        }
    }

    @Override // com.transsion.athena.enatha.athena
    public void a(Runnable runnable) {
        Handler handler = this.f42722b;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    @Override // com.transsion.athena.enatha.athena
    public void a(Runnable runnable, long j11) {
        Handler handler = this.f42722b;
        if (handler != null) {
            handler.postDelayed(runnable, j11);
        }
    }

    @Override // com.transsion.athena.enatha.athena
    public void a(String str, TrackData trackData, long j11) {
        Track track = new Track();
        track.setEventName(str);
        track.setTid(j11);
        track.setTrackTs(System.currentTimeMillis());
        track.setTrackErTs(SystemClock.elapsedRealtime());
        track.setTrackData(trackData);
        int i11 = this.f42729h;
        if (i11 < 5000) {
            this.f42729h = i11 + 1;
            Message messageObtainMessage = this.f42722b.obtainMessage(Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE);
            messageObtainMessage.obj = track;
            this.f42722b.sendMessage(messageObtainMessage);
        }
    }

    @Override // com.transsion.athena.enatha.athena
    public boolean c() {
        return !this.f42725d;
    }

    @Override // com.transsion.athena.enatha.athena
    public void d() {
        Handler handler = this.f42722b;
        if (handler != null) {
            this.f42722b.sendMessageAtFrontOfQueue(handler.obtainMessage(504));
        }
    }

    @Override // com.transsion.athena.enatha.athena
    public void e() {
        a(true, this.f42727f);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:107:0x01fb A[Catch: Exception -> 0x0048, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x0220 A[Catch: Exception -> 0x0048, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x0242 A[Catch: Exception -> 0x0048, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x0246 A[Catch: Exception -> 0x0048, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0251 A[Catch: Exception -> 0x0048, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x028d A[Catch: Exception -> 0x0048, TRY_LEAVE, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x011d A[Catch: Exception -> 0x0048, JSONException -> 0x0131, TryCatch #0 {JSONException -> 0x0131, blocks: (B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:69:0x0133, B:70:0x0137), top: B:146:0x0111, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0133 A[Catch: Exception -> 0x0048, JSONException -> 0x0131, TryCatch #0 {JSONException -> 0x0131, blocks: (B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:69:0x0133, B:70:0x0137), top: B:146:0x0111, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0137 A[Catch: Exception -> 0x0048, JSONException -> 0x0131, TryCatch #0 {JSONException -> 0x0131, blocks: (B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:69:0x0133, B:70:0x0137), top: B:146:0x0111, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0151 A[Catch: Exception -> 0x0048, JSONException -> 0x0131, LOOP:0: B:76:0x014b->B:78:0x0151, LOOP_END, TryCatch #0 {JSONException -> 0x0131, blocks: (B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:69:0x0133, B:70:0x0137), top: B:146:0x0111, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x01b2 A[Catch: Exception -> 0x0048, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) throws Throwable {
        Context context;
        long jCurrentTimeMillis;
        long j11;
        long j12;
        com.transsion.athena.config.data.model.athena athenaVarB;
        JSONObject jSONObjectA;
        Object jSONObject;
        JSONArray jSONArrayNames;
        int i11;
        this.f42725d = true;
        try {
            int i12 = message.what;
            if (i12 == 298) {
                if (message.arg1 == 1) {
                    h();
                }
                if (!this.f42722b.hasMessages(299)) {
                    context = this.f42721a;
                    int i13 = com.transsion.athena.taaneh.anehat.f42803e;
                    if (TextUtils.isEmpty(k4.a.a(context).i("first_init")) || !com.transsion.athena.config.data.model.ehanat.K) {
                        Handler handler = this.f42722b;
                        handler.sendMessageAtFrontOfQueue(Message.obtain(handler, 299));
                    } else {
                        com.transsion.athena.taaneh.aethna.a("First init delay %d s upload!", Integer.valueOf(AthenaAnalytics.f44166p));
                        this.f42722b.sendEmptyMessageDelayed(299, ((long) AthenaAnalytics.f44166p) * 1000);
                        k4.a.a(this.f42721a).g("first_init", "false");
                    }
                }
            } else if (i12 == 299) {
                i();
            } else if (i12 == 302) {
                Track track = (Track) message.obj;
                TrackData trackData = track.getTrackData();
                try {
                    if (!track.getEventName().equals("page_enter") || com.transsion.athena.taaneh.athena.d() == null) {
                        try {
                            jSONObjectA = trackData.a();
                            String str = com.transsion.athena.config.data.model.ehanat.f42607h;
                            if (jSONObjectA.has("_eparam")) {
                                jSONObject = jSONObjectA.get("_eparam");
                                if ((jSONObject instanceof JSONArray) || jSONObjectA.length() <= 1) {
                                    jSONObjectA.remove("_eparam");
                                } else {
                                    jSONObject = new JSONObject();
                                }
                            } else {
                                jSONObject = new JSONObject();
                            }
                            if ((jSONObject instanceof JSONObject) && jSONObjectA.length() > 0) {
                                jSONArrayNames = jSONObjectA.names();
                                for (i11 = 0; i11 < jSONArrayNames.length(); i11++) {
                                    String string = jSONArrayNames.getString(i11);
                                    ((JSONObject) jSONObject).put(string, jSONObjectA.get(string));
                                    jSONObjectA.remove(string);
                                }
                            }
                            JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
                            jSONObjectA.put("_eparam", jSONObject);
                            jSONObjectA.put("net", com.transsion.athena.taaneh.aatnhe.b(this.f42721a));
                            jSONObjectA.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                            track.setJsonData(jSONObjectA);
                            track.setOriginJsonData(jSONObject2);
                            track.setTrackFlag(trackData.d());
                        } catch (JSONException e11) {
                            com.transsion.athena.taaneh.aethna.b("Record track exception : %s", e11.getMessage());
                        }
                        jCurrentTimeMillis = System.currentTimeMillis();
                        if (Math.abs(jCurrentTimeMillis - this.f42735n) > 3600000) {
                            this.f42735n = jCurrentTimeMillis;
                            this.f42734m = com.transsion.athena.taaneh.aatnhe.c(this.f42721a);
                        }
                        this.f42729h--;
                        if (this.f42734m && this.f42736o && com.transsion.athena.config.data.model.ehanat.R && !AthenaAnalytics.S() && (athenaVarB = com.transsion.athena.aethna.athena.c().b(com.transsion.athena.taaneh.anehat.a(track.getTid()))) != null && athenaVarB.a()) {
                            b(track);
                        } else {
                            if (!"ev_athena".equals(track.getEventName())) {
                                h();
                            }
                            a(track);
                        }
                        if (!this.f42734m && !this.f42736o && com.transsion.athena.config.data.model.ehanat.R && com.transsion.athena.config.data.model.ehanat.r()) {
                            this.f42737p++;
                            if (g()) {
                                j11 = this.f42737p;
                                j12 = 20;
                                if (j11 % j12 == 0 && j11 / j12 <= 3 && com.transsion.athena.taaneh.anehat.c(this.f42721a)) {
                                    f();
                                }
                            }
                        }
                    } else {
                        trackData.add("fromsite", com.transsion.athena.taaneh.athena.a(com.transsion.athena.taaneh.athena.d()));
                        jSONObjectA = trackData.a();
                        String str2 = com.transsion.athena.config.data.model.ehanat.f42607h;
                        if (jSONObjectA.has("_eparam")) {
                            jSONObject = jSONObjectA.get("_eparam");
                            if (jSONObject instanceof JSONArray) {
                                jSONObjectA.remove("_eparam");
                            } else {
                                jSONObjectA.remove("_eparam");
                            }
                        } else {
                            jSONObject = new JSONObject();
                        }
                        if (jSONObject instanceof JSONObject) {
                            jSONArrayNames = jSONObjectA.names();
                            while (i11 < jSONArrayNames.length()) {
                                String string2 = jSONArrayNames.getString(i11);
                                ((JSONObject) jSONObject).put(string2, jSONObjectA.get(string2));
                                jSONObjectA.remove(string2);
                            }
                        }
                        JSONObject jSONObject3 = new JSONObject(jSONObject.toString());
                        jSONObjectA.put("_eparam", jSONObject);
                        jSONObjectA.put("net", com.transsion.athena.taaneh.aatnhe.b(this.f42721a));
                        jSONObjectA.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                        track.setJsonData(jSONObjectA);
                        track.setOriginJsonData(jSONObject3);
                        track.setTrackFlag(trackData.d());
                        jCurrentTimeMillis = System.currentTimeMillis();
                        if (Math.abs(jCurrentTimeMillis - this.f42735n) > 3600000) {
                            this.f42735n = jCurrentTimeMillis;
                            this.f42734m = com.transsion.athena.taaneh.aatnhe.c(this.f42721a);
                        }
                        this.f42729h--;
                        if (this.f42734m) {
                            if (!"ev_athena".equals(track.getEventName())) {
                                h();
                            }
                            a(track);
                        } else {
                            if (!"ev_athena".equals(track.getEventName())) {
                                h();
                            }
                            a(track);
                        }
                        if (!this.f42734m) {
                            this.f42737p++;
                            if (g()) {
                                j11 = this.f42737p;
                                j12 = 20;
                                if (j11 % j12 == 0) {
                                    f();
                                }
                            }
                        }
                    }
                } catch (Exception e12) {
                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e12));
                }
            } else if (i12 == 303) {
                com.transsion.athena.taaneh.aethna.f42798a.m().r(com.transsion.athena.config.data.model.ehanat.q());
                com.transsion.athena.taaneh.aethna.c("Athena init, SDK Version is [%s]", "3.1.1.4");
                j();
                h();
            } else if (i12 == 308) {
                try {
                    com.transsion.athena.aethna.athena.c().j();
                    if (com.transsion.athena.data.anateh.aethna.a(this.f42721a) != null) {
                        com.transsion.athena.data.anateh.aethna.a(this.f42721a).a();
                    }
                } catch (Exception e13) {
                    a("handleCleanupData", e13);
                }
            } else if (i12 == 400) {
                a(message.arg1, (String) message.obj);
            } else if (i12 != 600) {
                switch (i12) {
                    case 502:
                        a(message.arg1 == 1);
                        break;
                    case 503:
                        if (com.transsion.athena.ehatna.aethna.b().a(((Long) message.obj).longValue())) {
                            String strA = com.transsion.athena.ehatna.aethna.b().a();
                            long jC = com.transsion.athena.ehatna.aethna.b().c();
                            if (jC > 0 && !TextUtils.isEmpty(strA)) {
                                com.transsion.athena.data.anateh.aethna.a(this.f42721a).a(strA, jC);
                            }
                        }
                        a(false, this.f42727f);
                        break;
                    case 504:
                        try {
                            if (com.transsion.athena.data.anateh.aethna.a(this.f42721a) != null) {
                                com.transsion.athena.data.anateh.aethna.a(this.f42721a).b();
                            }
                        } catch (Exception e14) {
                            a("disconnectDB", e14);
                        }
                        break;
                }
            } else {
                if (message.arg1 == 1) {
                    h();
                }
                if (!this.f42722b.hasMessages(299)) {
                    context = this.f42721a;
                    int i14 = com.transsion.athena.taaneh.anehat.f42803e;
                    if (TextUtils.isEmpty(k4.a.a(context).i("first_init"))) {
                        Handler handler2 = this.f42722b;
                        handler2.sendMessageAtFrontOfQueue(Message.obtain(handler2, 299));
                    } else {
                        Handler handler3 = this.f42722b;
                        handler3.sendMessageAtFrontOfQueue(Message.obtain(handler3, 299));
                    }
                }
            }
        } catch (Exception e15) {
            if (com.transsion.athena.taaneh.anehat.b()) {
                com.transsion.athena.taaneh.aethna.b("Worker handle message exception : %s", e15.getMessage());
            }
            a("handleMessage", e15);
        }
        this.f42725d = false;
        return false;
    }
}
