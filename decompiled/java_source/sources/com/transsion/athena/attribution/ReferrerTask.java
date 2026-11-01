package com.transsion.athena.attribution;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import g5.a;
import g5.c;
import g5.d;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class ReferrerTask implements Runnable {
    private final int mAppId;
    private final Context mContext;
    private a referrerClient;

    public ReferrerTask(Context context, int i11) {
        this.mContext = context;
        this.mAppId = i11;
    }

    private void checkGpReferrer() {
        if (isAppIdGpRefTracked()) {
            AttrLog.d("appId : " + this.mAppId + " referrer has tracked !");
            return;
        }
        String cachedGpRef = getCachedGpRef();
        if (!TextUtils.isEmpty(cachedGpRef)) {
            AttrLog.d("appId : " + this.mAppId + " has cached GP referrer !");
            try {
                trackGpReferrer(cachedGpRef);
                markAppIdGpRefTracked();
                return;
            } catch (Exception e11) {
                AttrLog.printStackTrace(e11);
                return;
            }
        }
        try {
            if (this.referrerClient == null) {
                this.referrerClient = a.c(this.mContext).a();
            }
            AttrLog.d("appId : " + this.mAppId + " referrerClient startConnection");
            this.referrerClient.d(new c() { // from class: com.transsion.athena.attribution.ReferrerTask.1
                @Override // g5.c
                public void onInstallReferrerServiceDisconnected() {
                    if (ReferrerTask.this.referrerClient != null) {
                        ReferrerTask.this.referrerClient.a();
                    }
                }

                /* JADX WARN: Code duplicated, block: B:22:0x0050 A[ORIG_RETURN, RETURN] */
                @Override // g5.c
                public void onInstallReferrerSetupFinished(int i11) {
                    try {
                        if (i11 == 0) {
                            AttrLog.d("InstallReferrerResponse.OK");
                            ReferrerTask.this.trackGpReferrer(ReferrerTask.this.referrerClient.b());
                            ReferrerTask.this.markAppIdGpRefTracked();
                        } else {
                            if (i11 != 1) {
                                if (i11 == 2) {
                                    AttrLog.d("InstallReferrerResponse.FEATURE_NOT_SUPPORTED");
                                }
                                if (ReferrerTask.this.referrerClient == null) {
                                }
                            }
                            AttrLog.d("InstallReferrerResponse.SERVICE_UNAVAILABLE");
                        }
                        if (ReferrerTask.this.referrerClient == null) {
                        }
                    } catch (Exception e12) {
                        AttrLog.printStackTrace(e12);
                    } finally {
                        if (ReferrerTask.this.referrerClient != null) {
                            ReferrerTask.this.referrerClient.a();
                        }
                    }
                }
            });
        } catch (Exception e12) {
            AttrLog.printStackTrace(e12);
        }
    }

    private void checkPsReferrer() {
        if (isAppIdPsRefTracked()) {
            return;
        }
        String cachedPsRef = getCachedPsRef();
        if (!TextUtils.isEmpty(cachedPsRef)) {
            try {
                trackPsReferrer(cachedPsRef);
                markAppIdPsRefTracked();
                return;
            } catch (Exception e11) {
                AttrLog.printStackTrace(e11);
                return;
            }
        }
        try {
            Cursor cursorQuery = this.mContext.getContentResolver().query(Uri.parse(AttrConstant.PS_REFERRER_PROVIDER_URI), null, null, new String[]{this.mContext.getPackageName()}, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        trackPsReferrer(cursorQuery.getString(0), cursorQuery.getString(1), cursorQuery.getString(2), cursorQuery.getString(3));
                        markAppIdPsRefTracked();
                    } else {
                        AttrLog.d(this.mContext.getPackageName() + " Referrer not found");
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
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception e12) {
            AttrLog.printStackTrace(e12);
        }
    }

    private String getCachedGpRef() {
        return SpUtils.getInstance(this.mContext).getString(AttrConstant.KEY_GP_REF);
    }

    private String getCachedPsRef() {
        return SpUtils.getInstance(this.mContext).getString(AttrConstant.KEY_PS_REF);
    }

    private boolean isAppIdGpRefTracked() {
        return !TextUtils.isEmpty(SpUtils.getInstance(this.mContext).getString("key_appid_gp_track_flag_" + this.mAppId));
    }

    private boolean isAppIdPsRefTracked() {
        return !TextUtils.isEmpty(SpUtils.getInstance(this.mContext).getString("key_appid_ps_track_flag_" + this.mAppId));
    }

    private boolean isGpReferrerValid(d dVar) {
        if (dVar == null) {
            return false;
        }
        String strD = dVar.d();
        long jF = dVar.f();
        return !TextUtils.isEmpty(strD) && jF > 0 && dVar.b() >= jF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void markAppIdGpRefTracked() {
        SpUtils.getInstance(this.mContext).saveString("key_appid_gp_track_flag_" + this.mAppId, String.valueOf(System.currentTimeMillis()));
    }

    private void markAppIdPsRefTracked() {
        SpUtils.getInstance(this.mContext).saveString("key_appid_ps_track_flag_" + this.mAppId, String.valueOf(System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trackGpReferrer(d dVar) {
        if (dVar == null) {
            return;
        }
        String strD = dVar.d();
        String strE = dVar.e();
        long jF = dVar.f();
        long jG = dVar.g();
        long jB = dVar.b();
        long jC = dVar.c();
        boolean zA = dVar.a();
        Bundle bundle = new Bundle();
        bundle.putString(AttrConstant.KEY_INSTALL_REFERRER, strD);
        bundle.putString(AttrConstant.KEY_INSTALL_VERSION, strE);
        bundle.putLong(AttrConstant.KEY_REFERRER_CLICK_TIMESTAMP, jF);
        bundle.putLong(AttrConstant.KEY_REFERRER_CLICK_TIMESTAMP_SERVER, jG);
        bundle.putLong(AttrConstant.KEY_INSTALL_BEGIN_TIMESTAMP, jB);
        bundle.putLong(AttrConstant.KEY_INSTALL_BEGIN_TIMESTAMP_SERVER, jC);
        bundle.putBoolean(AttrConstant.KEY_GOOGLE_PLAY_INSTANT, zA);
        new yi.a(AttrConstant.GP_REFERRER_EVENT, this.mAppId).c(bundle, null).b();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AttrConstant.KEY_INSTALL_REFERRER, strD);
            jSONObject.put(AttrConstant.KEY_INSTALL_VERSION, strE);
            jSONObject.put(AttrConstant.KEY_REFERRER_CLICK_TIMESTAMP, jF);
            jSONObject.put(AttrConstant.KEY_REFERRER_CLICK_TIMESTAMP_SERVER, jG);
            jSONObject.put(AttrConstant.KEY_INSTALL_BEGIN_TIMESTAMP, jB);
            jSONObject.put(AttrConstant.KEY_INSTALL_BEGIN_TIMESTAMP_SERVER, jC);
            jSONObject.put(AttrConstant.KEY_GOOGLE_PLAY_INSTANT, zA);
            SpUtils.getInstance(this.mContext).saveString(AttrConstant.KEY_GP_REF, jSONObject.toString());
        } catch (Exception e11) {
            AttrLog.printStackTrace(e11);
        }
    }

    private void trackGpReferrer(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        Bundle bundle = new Bundle();
        bundle.putString(AttrConstant.KEY_INSTALL_REFERRER, jSONObject.optString(AttrConstant.KEY_INSTALL_REFERRER));
        bundle.putString(AttrConstant.KEY_INSTALL_VERSION, jSONObject.optString(AttrConstant.KEY_INSTALL_VERSION));
        bundle.putLong(AttrConstant.KEY_REFERRER_CLICK_TIMESTAMP, jSONObject.optLong(AttrConstant.KEY_REFERRER_CLICK_TIMESTAMP));
        bundle.putLong(AttrConstant.KEY_REFERRER_CLICK_TIMESTAMP_SERVER, jSONObject.optLong(AttrConstant.KEY_REFERRER_CLICK_TIMESTAMP_SERVER));
        bundle.putLong(AttrConstant.KEY_INSTALL_BEGIN_TIMESTAMP, jSONObject.optLong(AttrConstant.KEY_INSTALL_BEGIN_TIMESTAMP));
        bundle.putLong(AttrConstant.KEY_INSTALL_BEGIN_TIMESTAMP_SERVER, jSONObject.optLong(AttrConstant.KEY_INSTALL_BEGIN_TIMESTAMP_SERVER));
        bundle.putBoolean(AttrConstant.KEY_GOOGLE_PLAY_INSTANT, jSONObject.optBoolean(AttrConstant.KEY_GOOGLE_PLAY_INSTANT));
        new yi.a(AttrConstant.GP_REFERRER_EVENT, this.mAppId).c(bundle, null).b();
    }

    private void trackPsReferrer(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        Bundle bundle = new Bundle();
        bundle.putString(AttrConstant.KEY_INSTALL_REFERRER, jSONObject.optString(AttrConstant.KEY_INSTALL_REFERRER));
        bundle.putString(AttrConstant.KEY_START_CLICK_TIME, jSONObject.optString(AttrConstant.KEY_START_CLICK_TIME));
        bundle.putString(AttrConstant.KEY_START_DOWNLOAD_TIME, jSONObject.optString(AttrConstant.KEY_START_DOWNLOAD_TIME));
        bundle.putString(AttrConstant.KEY_INSTALLED_FINISH_TIME, jSONObject.optString(AttrConstant.KEY_INSTALLED_FINISH_TIME));
        new yi.a(AttrConstant.PS_REFERRER_EVENT, this.mAppId).c(bundle, null).b();
    }

    private void trackPsReferrer(String str, String str2, String str3, String str4) {
        Bundle bundle = new Bundle();
        bundle.putString(AttrConstant.KEY_INSTALL_REFERRER, str);
        bundle.putString(AttrConstant.KEY_START_CLICK_TIME, str2);
        bundle.putString(AttrConstant.KEY_START_DOWNLOAD_TIME, str3);
        bundle.putString(AttrConstant.KEY_INSTALLED_FINISH_TIME, str4);
        new yi.a(AttrConstant.PS_REFERRER_EVENT, this.mAppId).c(bundle, null).b();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AttrConstant.KEY_INSTALL_REFERRER, str);
            jSONObject.put(AttrConstant.KEY_START_CLICK_TIME, str2);
            jSONObject.put(AttrConstant.KEY_START_DOWNLOAD_TIME, str3);
            jSONObject.put(AttrConstant.KEY_INSTALLED_FINISH_TIME, str4);
            SpUtils.getInstance(this.mContext).saveString(AttrConstant.KEY_PS_REF, jSONObject.toString());
        } catch (Exception e11) {
            AttrLog.printStackTrace(e11);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        AttrLog.d("====================\\ ReferrerTask start \\================");
        try {
            checkGpReferrer();
            checkPsReferrer();
        } catch (Exception e11) {
            AttrLog.printStackTrace(e11);
        }
        AttrLog.d("====================\\ ReferrerTask end \\================");
    }
}
