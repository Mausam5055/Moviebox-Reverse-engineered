package com.transsion.gslb;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class GslbSdk {
    public static Context context;
    public static String deviceId;
    public static boolean isDebug;
    public static String mcc;
    public static volatile Worker worker;

    public interface GetDomainListener {
        void onGslbFail(String str);

        void onGslbSuccess(String str);
    }

    public interface GslbInitListener {
        void onInitFail(String str);

        void onInitSuccess(Map<String, String> map);
    }

    public interface InitListener {
        void onInitFail();

        void onInitSuccess(Map<String, String> map);
    }

    public interface ResultListener {
        void onGslbFail();

        void onGslbSuccess(String str);
    }

    public static Context getContext() {
        return context;
    }

    public static String getCountry() {
        return DomainManager.getInstance().getCountry();
    }

    public static String getDeviceId() {
        return deviceId;
    }

    public static String getDomain(String str, boolean z10) {
        if (worker == null) {
            Utils.LOG.i("GslbSdk is not initialized");
            return str;
        }
        if (TextUtils.isEmpty(str)) {
            Utils.LOG.i("url is empty");
            return str;
        }
        String domain = Utils.getDomain(str);
        String domain2 = DomainManager.getInstance().getDomain(domain);
        if (domain2 != null && !domain2.equals(DomainManager.BLANK_DOMAIN)) {
            return str.replace(domain, domain2);
        }
        if (domain2 == null) {
            Utils.LOG.z(domain + " is not in init list ");
        }
        if (z10) {
            return str;
        }
        return null;
    }

    public static void getDomain(String str, GetDomainListener getDomainListener) {
        if (worker == null) {
            Utils.LOG.i("GslbSdk is not initialized");
            if (getDomainListener != null) {
                getDomainListener.onGslbFail("GslbSdk is not initialized");
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Utils.LOG.i("url is empty");
            if (getDomainListener != null) {
                getDomainListener.onGslbFail("input url is empty");
                return;
            }
            return;
        }
        String domain = Utils.getDomain(str);
        String domain2 = DomainManager.getInstance().getDomain(domain);
        if (domain2 != null) {
            if (domain2.equals(DomainManager.BLANK_DOMAIN)) {
                worker.addListeners(new ListenerBean(true, str, getDomainListener));
                return;
            } else {
                if (getDomainListener != null) {
                    getDomainListener.onGslbSuccess(str.replace(domain, domain2));
                    return;
                }
                return;
            }
        }
        Utils.LOG.z(domain + " this domain is not in init list ");
        if (getDomainListener != null) {
            getDomainListener.onGslbFail("this domain is not in init list");
        }
    }

    public static void getDomain(String str, ResultListener resultListener) {
        if (worker == null) {
            Utils.LOG.i("GslbSdk is not initialized");
            if (resultListener != null) {
                resultListener.onGslbFail();
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Utils.LOG.i("url is empty");
            if (resultListener != null) {
                resultListener.onGslbFail();
                return;
            }
            return;
        }
        String domain = Utils.getDomain(str);
        String domain2 = DomainManager.getInstance().getDomain(domain);
        if (domain2 != null) {
            if (domain2.equals(DomainManager.BLANK_DOMAIN)) {
                worker.addListeners(new ListenerBean(str, resultListener));
                return;
            } else {
                if (resultListener != null) {
                    resultListener.onGslbSuccess(str.replace(domain, domain2));
                    return;
                }
                return;
            }
        }
        Utils.LOG.z(domain + " this domain is not in init list ");
        if (resultListener != null) {
            resultListener.onGslbFail();
        }
    }

    public static String getMcc() {
        return mcc;
    }

    public static Worker getWorker() {
        return worker;
    }

    public static void init(Context context2, String str, String str2, String[] strArr, GslbInitListener gslbInitListener) {
        mcc = str;
        deviceId = str2;
        init(context2, strArr, gslbInitListener);
    }

    public static void init(Context context2, String str, String str2, String[] strArr, InitListener initListener) {
        mcc = str;
        deviceId = str2;
        init(context2, strArr, initListener);
    }

    public static void init(Context context2, String[] strArr, GslbInitListener gslbInitListener) {
        context = context2.getApplicationContext();
        if (worker == null) {
            worker = Worker.getInstance();
        }
        if (strArr == null || strArr.length <= 0) {
            Log.e("GslbSdk", "Init with invalid domains");
        } else {
            worker.addListeners(new ListenerBean(true, strArr, gslbInitListener));
        }
    }

    public static void init(Context context2, String[] strArr, InitListener initListener) {
        context = context2.getApplicationContext();
        if (worker == null) {
            worker = Worker.getInstance();
        }
        if (strArr == null || strArr.length <= 0) {
            Log.e("GslbSdk", "Init with invalid domains");
        } else {
            worker.addListeners(new ListenerBean(strArr, initListener));
        }
    }

    public static boolean isInitSuccess(String str) {
        if (worker == null) {
            Utils.LOG.i("GslbSdk is not initialized");
            return false;
        }
        if (str != null) {
            return !TextUtils.isEmpty(getDomain(str, false));
        }
        return false;
    }

    public static boolean isTestMode() {
        return isDebug;
    }

    public static void reset() {
        if (context != null) {
            DomainManager.getInstance().reset();
        }
    }

    public static boolean reset(String str) {
        if (context != null) {
            return DomainManager.getInstance().reset(str);
        }
        return false;
    }

    public static void setDebug(boolean z10) {
        Utils.LOG.m().r(z10);
        isDebug = z10;
    }
}
