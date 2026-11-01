package com.cloud.config.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.concurrent.LinkedBlockingQueue;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001*B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00062\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\u001e\u001a\u00020\u0006J\u0006\u0010\u001f\u001a\u00020\u0006J\n\u0010 \u001a\u0004\u0018\u00010\u0016H\u0002J\u0006\u0010!\u001a\u00020\u0006J\u0006\u0010\"\u001a\u00020\u0006J\u000e\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006J\u0006\u0010%\u001a\u00020\u0006J\u0006\u0010&\u001a\u00020\u0006J\b\u0010'\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020(2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/cloud/config/utils/CommonUtils;", "", "()V", "MAX_QUERY_GAID_COUNT", "", "PARAM_CONDITIONPARAMKEYS", "", "PARAM_KEY", "PARAM_MCC", "PARAM_OSVERSION", "PARAM_PHONEBRAND", "PARAM_PHONELANGUAGE", "PARAM_PHONEMODEL", "PARAM_SHUNTTYPE", "PARAM_UID", "PREF_GAID", "SHUNT_OPEN_FLAG", "brand", "context", "Landroid/content/Context;", TmcConstants.KEY_LANGUAGE, "locale", "Ljava/util/Locale;", "mGaid", CommonUtils.PARAM_MCC, "model", CommonUtils.PARAM_OSVERSION, "queryGaidCount", "encryptMD5", "inputStr", "getBrand", LauncherMiniAppConfigHelper.KEY_MINI_GET_GAID, "getLocale", "getMcc", "getModel", "getShuntValue", "key", "getSystemLanguage", "getVersion", "queryGaid", "", "setContext", "AdvertisingIdClient", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CommonUtils {
    private static final int MAX_QUERY_GAID_COUNT = 5;
    public static final String PARAM_CONDITIONPARAMKEYS = "conditionParamKeys";
    public static final String PARAM_KEY = "cloudConfigKey";
    private static final String PARAM_MCC = "mcc";
    private static final String PARAM_OSVERSION = "osVersion";
    private static final String PARAM_PHONEBRAND = "phoneBrand";
    private static final String PARAM_PHONELANGUAGE = "phoneLanguage";
    private static final String PARAM_PHONEMODEL = "phoneModel";
    public static final String PARAM_SHUNTTYPE = "shuntType";
    public static final String PARAM_UID = "uid";
    private static final String PREF_GAID = "device_util_ga_id";
    public static final String SHUNT_OPEN_FLAG = "shuntopen";
    private static Context context;
    private static Locale locale;
    private static int queryGaidCount;
    public static final CommonUtils INSTANCE = new CommonUtils();
    private static String mcc = "";
    private static String brand = "";
    private static String model = "";
    private static String osVersion = "";
    private static String language = "";
    private static String mGaid = "";

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÂ\u0002\u0018\u00002\u00020\u0001:\u0003\u0007\b\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\n"}, d2 = {"Lcom/cloud/config/utils/CommonUtils$AdvertisingIdClient;", "", "()V", "getAdvertisingIdInfo", "Lcom/cloud/config/utils/CommonUtils$AdvertisingIdClient$AdInfo;", "context", "Landroid/content/Context;", "AdInfo", "AdvertisingConnection", "AdvertisingInterface", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class AdvertisingIdClient {
        public static final AdvertisingIdClient INSTANCE = new AdvertisingIdClient();

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\t¨\u0006\n"}, d2 = {"Lcom/cloud/config/utils/CommonUtils$AdvertisingIdClient$AdInfo;", "", "id", "", "isLimitAdTrackingEnabled", "", "(Ljava/lang/String;Z)V", "getId", "()Ljava/lang/String;", "()Z", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class AdInfo {
            private final String id;
            private final boolean isLimitAdTrackingEnabled;

            public AdInfo(String str, boolean z10) {
                this.id = str;
                this.isLimitAdTrackingEnabled = z10;
            }

            public final String getId() {
                return this.id;
            }

            /* JADX INFO: renamed from: isLimitAdTrackingEnabled, reason: from getter */
            public final boolean getIsLimitAdTrackingEnabled() {
                return this.isLimitAdTrackingEnabled;
            }
        }

        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004H\u0016J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0015"}, d2 = {"Lcom/cloud/config/utils/CommonUtils$AdvertisingIdClient$AdvertisingConnection;", "Landroid/content/ServiceConnection;", "()V", "binder", "Landroid/os/IBinder;", "getBinder", "()Landroid/os/IBinder;", "queue", "Ljava/util/concurrent/LinkedBlockingQueue;", "retrieved", "", "getRetrieved", "()Z", "setRetrieved", "(Z)V", "onServiceConnected", "", "name", "Landroid/content/ComponentName;", NotificationCompat.CATEGORY_SERVICE, "onServiceDisconnected", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        private static final class AdvertisingConnection implements ServiceConnection {
            private final LinkedBlockingQueue<IBinder> queue = new LinkedBlockingQueue<>(1);
            private boolean retrieved;

            public final IBinder getBinder() throws InterruptedException {
                if (this.retrieved) {
                    throw new IllegalStateException();
                }
                this.retrieved = true;
                return this.queue.take();
            }

            public final boolean getRetrieved() {
                return this.retrieved;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName name, IBinder service) {
                Intrinsics.h(name, "name");
                Intrinsics.h(service, "service");
                try {
                    this.queue.put(service);
                } catch (Exception e11) {
                    XLogUtil log = XLogUtil.INSTANCE.getLog();
                    String stackTraceString = Log.getStackTraceString(e11);
                    Intrinsics.g(stackTraceString, "getStackTraceString(var4)");
                    log.e(stackTraceString);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name) {
                Intrinsics.h(name, "name");
            }

            public final void setRetrieved(boolean z10) {
                this.retrieved = z10;
            }
        }

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\t\u001a\u00020\u0003H\u0016J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/cloud/config/utils/CommonUtils$AdvertisingIdClient$AdvertisingInterface;", "Landroid/os/IInterface;", "binder", "Landroid/os/IBinder;", "(Landroid/os/IBinder;)V", "id", "", "getId", "()Ljava/lang/String;", "asBinder", "isLimitAdTrackingEnabled", "", "paramBoolean", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        private static final class AdvertisingInterface implements IInterface {
            private final IBinder binder;

            public AdvertisingInterface(IBinder binder) {
                Intrinsics.h(binder, "binder");
                this.binder = binder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.binder;
            }

            public final String getId() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Intrinsics.g(parcelObtain, "obtain()");
                Parcel parcelObtain2 = Parcel.obtain();
                Intrinsics.g(parcelObtain2, "obtain()");
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    this.binder.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public final boolean isLimitAdTrackingEnabled(boolean paramBoolean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Intrinsics.g(parcelObtain, "obtain()");
                Parcel parcelObtain2 = Parcel.obtain();
                Intrinsics.g(parcelObtain2, "obtain()");
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    parcelObtain.writeInt(paramBoolean ? 1 : 0);
                    this.binder.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        private AdvertisingIdClient() {
        }

        public final AdInfo getAdvertisingIdInfo(Context context) throws Exception {
            Intrinsics.h(context, "context");
            if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                throw new IllegalStateException("Cannot be called from the main thread");
            }
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            AdvertisingConnection advertisingConnection = new AdvertisingConnection();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                if (!context.bindService(intent, advertisingConnection, 1)) {
                    throw new IOException("Google Play connection failed");
                }
                try {
                    IBinder binder = advertisingConnection.getBinder();
                    Intrinsics.e(binder);
                    AdvertisingInterface advertisingInterface = new AdvertisingInterface(binder);
                    AdInfo adInfo = new AdInfo(advertisingInterface.getId(), advertisingInterface.isLimitAdTrackingEnabled(true));
                    context.unbindService(advertisingConnection);
                    return adInfo;
                } catch (Exception e11) {
                    throw e11;
                }
            } catch (Throwable th2) {
                context.unbindService(advertisingConnection);
                throw th2;
            }
        }
    }

    private CommonUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getGaid$lambda-0, reason: not valid java name */
    public static final void m209getGaid$lambda0() {
        INSTANCE.queryGaid();
    }

    private final Locale getLocale() {
        if (locale == null) {
            try {
                locale = Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
            } catch (Throwable th2) {
                locale = Locale.getDefault();
                XLogUtil log = XLogUtil.INSTANCE.getLog();
                String stackTraceString = Log.getStackTraceString(th2);
                Intrinsics.g(stackTraceString, "getStackTraceString(e)");
                log.e(stackTraceString);
            }
        }
        return locale;
    }

    private final void queryGaid() {
        try {
            if (context == null) {
                return;
            }
            AdvertisingIdClient advertisingIdClient = AdvertisingIdClient.INSTANCE;
            Context context2 = context;
            Intrinsics.e(context2);
            AdvertisingIdClient.AdInfo advertisingIdInfo = advertisingIdClient.getAdvertisingIdInfo(context2);
            if (advertisingIdInfo == null || Intrinsics.c(advertisingIdInfo.getId(), mGaid)) {
                return;
            }
            mGaid = String.valueOf(advertisingIdInfo.getId());
            SPHelper.INSTANCE.getInstance().p(PREF_GAID, mGaid);
            XLogUtil.INSTANCE.getLog().i("CommonUtil", Intrinsics.q(" GAID is ：", mGaid));
        } catch (Throwable th2) {
            XLogUtil log = XLogUtil.INSTANCE.getLog();
            String stackTraceString = Log.getStackTraceString(th2);
            Intrinsics.g(stackTraceString, "getStackTraceString(e)");
            log.e(stackTraceString);
        }
    }

    public final String encryptMD5(String inputStr) {
        byte[] bytes;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            Intrinsics.g(messageDigest, "getInstance(\"MD5\")");
            if (inputStr == null) {
                bytes = null;
            } else {
                Charset UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.g(UTF_8, "UTF_8");
                bytes = inputStr.getBytes(UTF_8);
                Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
            }
            byte[] bArrDigest = messageDigest.digest(bytes);
            Intrinsics.g(bArrDigest, "md.digest(inputStr?.toBy…(StandardCharsets.UTF_8))");
            StringBuilder sb2 = new StringBuilder();
            int length = bArrDigest.length;
            int i11 = 0;
            while (i11 < length) {
                byte b11 = bArrDigest[i11];
                i11++;
                String hexString = Integer.toHexString(b11 & 255);
                if (hexString.length() == 1) {
                    sb2.append('0');
                }
                sb2.append(hexString);
            }
            return sb2.toString();
        } catch (Throwable th2) {
            XLogUtil log = XLogUtil.INSTANCE.getLog();
            String stackTraceString = Log.getStackTraceString(th2);
            Intrinsics.g(stackTraceString, "getStackTraceString(e)");
            log.e(stackTraceString);
            return null;
        }
    }

    public final String getBrand() {
        if (brand.length() == 0) {
            String BRAND = Build.BRAND;
            if (BRAND == null || StringsKt.q0(BRAND)) {
                BRAND = "";
            } else {
                Intrinsics.g(BRAND, "BRAND");
            }
            brand = BRAND;
        }
        return brand;
    }

    public final String getGaid() {
        int i11;
        try {
            if (TextUtils.isEmpty(mGaid) && (i11 = queryGaidCount) < 5) {
                queryGaidCount = i11 + 1;
                XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, Intrinsics.q("queryGaidCount ：", Integer.valueOf(queryGaidCount)));
                String strI = SPHelper.INSTANCE.getInstance().i(PREF_GAID);
                Intrinsics.g(strI, "SPHelper.instance.getString(PREF_GAID)");
                mGaid = strI;
                if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                    ExecutorUtils.io().execute(new Runnable() { // from class: com.cloud.config.utils.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            CommonUtils.m209getGaid$lambda0();
                        }
                    });
                } else {
                    queryGaid();
                }
            }
            XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, Intrinsics.q("mGaid ：", mGaid));
            return mGaid;
        } catch (Throwable th2) {
            XLogUtil log = XLogUtil.INSTANCE.getLog();
            String stackTraceString = Log.getStackTraceString(th2);
            Intrinsics.g(stackTraceString, "getStackTraceString(e)");
            log.e(stackTraceString);
            return "";
        }
    }

    public final String getMcc() {
        String simOperator;
        try {
            if (mcc.length() != 0) {
                return mcc;
            }
            Context context2 = context;
            Object systemService = context2 == null ? null : context2.getSystemService("phone");
            TelephonyManager telephonyManager = systemService instanceof TelephonyManager ? (TelephonyManager) systemService : null;
            if (telephonyManager == null || (simOperator = telephonyManager.getSimOperator()) == null) {
                simOperator = "";
            }
            if (simOperator.length() < 3) {
                return "";
            }
            String strSubstring = simOperator.substring(0, 3);
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring;
        } catch (Throwable th2) {
            XLogUtil log = XLogUtil.INSTANCE.getLog();
            String stackTraceString = Log.getStackTraceString(th2);
            Intrinsics.g(stackTraceString, "getStackTraceString(e)");
            log.e(stackTraceString);
            return "";
        }
    }

    public final String getModel() {
        if (model.length() == 0) {
            String MODEL = Build.MODEL;
            if (MODEL == null || StringsKt.q0(MODEL)) {
                MODEL = "";
            } else {
                Intrinsics.g(MODEL, "MODEL");
            }
            model = MODEL;
        }
        return model;
    }

    public final String getShuntValue(String key) {
        Intrinsics.h(key, "key");
        try {
            switch (key.hashCode()) {
                case -1850780999:
                    if (key.equals(PARAM_PHONEBRAND)) {
                        return getBrand();
                    }
                case -1840709029:
                    return !key.equals(PARAM_PHONEMODEL) ? "" : getModel();
                case 107917:
                    if (key.equals(PARAM_MCC)) {
                        return getMcc();
                    }
                case 115792:
                    if (key.equals(PARAM_UID)) {
                        return Intrinsics.q("", Integer.valueOf((mGaid.hashCode() & Integer.MAX_VALUE) % 1000000));
                    }
                case 585295590:
                    if (key.equals(PARAM_PHONELANGUAGE)) {
                        return getSystemLanguage();
                    }
                case 1812004436:
                    if (key.equals(PARAM_OSVERSION)) {
                        return getVersion();
                    }
                default:
            }
        } catch (Throwable th2) {
            XLogUtil log = XLogUtil.INSTANCE.getLog();
            String stackTraceString = Log.getStackTraceString(th2);
            Intrinsics.g(stackTraceString, "getStackTraceString(e)");
            log.e(stackTraceString);
            return "";
        }
    }

    public final String getSystemLanguage() {
        String language2;
        if (language.length() == 0) {
            Locale locale2 = getLocale();
            String str = "";
            if (locale2 != null && (language2 = locale2.getLanguage()) != null) {
                str = language2;
            }
            language = str;
        }
        return language;
    }

    public final String getVersion() {
        if (osVersion.length() == 0) {
            String RELEASE = Build.VERSION.RELEASE;
            if (RELEASE == null || StringsKt.q0(RELEASE)) {
                RELEASE = "";
            } else {
                Intrinsics.g(RELEASE, "RELEASE");
            }
            osVersion = RELEASE;
        }
        return osVersion;
    }

    public final void setContext(Context context2) {
        context = context2;
    }
}
