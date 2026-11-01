package com.cloud.sdk.commonutil.util;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.integration.athena.Constants;
import com.transsion.sdk.oneid.OneID;
import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class DeviceUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f23155a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f23156b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f23158d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final AtomicInteger f23157c = new AtomicInteger(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f23159e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f23160f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static long f23161g = 0;

    /* JADX INFO: loaded from: classes3.dex */
    private static class a {

        /* JADX INFO: renamed from: com.cloud.sdk.commonutil.util.DeviceUtil$a$a, reason: collision with other inner class name */
        public static final class C0312a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final String f23162a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final boolean f23163b;

            C0312a(String str, boolean z10) {
                this.f23162a = str;
                this.f23163b = z10;
            }

            public String a() {
                return this.f23162a;
            }

            public boolean b() {
                return this.f23163b;
            }
        }

        private static final class b implements ServiceConnection {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            boolean f23164a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final LinkedBlockingQueue f23165b;

            private b() {
                this.f23164a = false;
                this.f23165b = new LinkedBlockingQueue(1);
            }

            public IBinder a() {
                if (this.f23164a) {
                    throw new IllegalStateException();
                }
                this.f23164a = true;
                return (IBinder) this.f23165b.take();
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                try {
                    this.f23165b.put(iBinder);
                } catch (Exception e11) {
                    com.cloud.sdk.commonutil.util.c.Log().e(Log.getStackTraceString(e11));
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }
        }

        private static final class c implements IInterface {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final IBinder f23166a;

            c(IBinder iBinder) {
                this.f23166a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f23166a;
            }

            public String getId() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    this.f23166a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            boolean isLimitAdTrackingEnabled(boolean z10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    this.f23166a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        static C0312a a(Context context) throws PackageManager.NameNotFoundException, IOException {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new IllegalStateException("Cannot be called from the main thread");
            }
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            b bVar = new b();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            if (!context.bindService(intent, bVar, 1)) {
                throw new IOException("Google Play connection failed");
            }
            try {
                try {
                    c cVar = new c(bVar.a());
                    C0312a c0312a = new C0312a(cVar.getId(), cVar.isLimitAdTrackingEnabled(true));
                    context.unbindService(bVar);
                    return c0312a;
                } catch (Exception e11) {
                    throw e11;
                }
            } catch (Throwable th2) {
                context.unbindService(bVar);
                throw th2;
            }
        }
    }

    public static boolean b(String str, AtomicInteger atomicInteger, int i11) {
        return TextUtils.isEmpty(str) && atomicInteger.getAndIncrement() < i11;
    }

    public static String c() {
        String[] strArr = Build.SUPPORTED_ABIS;
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < strArr.length; i11++) {
            sb2.append(strArr[i11]);
            if (i11 < strArr.length - 1) {
                sb2.append(",");
            }
        }
        return sb2.toString();
    }

    public static String d() {
        try {
            if (!TextUtils.isEmpty(f23156b)) {
                return f23156b;
            }
            String simCountryIso = ((TelephonyManager) e.a().getSystemService("phone")).getSimCountryIso();
            if (TextUtils.isEmpty(simCountryIso)) {
                return "";
            }
            String upperCase = simCountryIso.toUpperCase();
            f23156b = upperCase;
            return upperCase;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String e() {
        if (TextUtils.isEmpty(f23159e)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - f23161g < 10000) {
                return f23159e;
            }
            f23161g = jCurrentTimeMillis;
            f23159e = j7.a.e().j("device_util_ga_id");
            if (Looper.myLooper() == Looper.getMainLooper()) {
                HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.sdk.commonutil.util.DeviceUtil.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DeviceUtil.s();
                    }
                });
            } else {
                s();
            }
        }
        return f23159e;
    }

    public static int f() {
        if (f23160f == 0) {
            f23160f = j7.a.e().g("is_limit_ad_tracking_enabled", 0);
        }
        return f23160f;
    }

    public static String g() {
        int cid;
        int lac;
        if (!b(f23155a, f23157c, 1)) {
            return f23155a;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) e.a().getSystemService("phone");
            CellLocation cellLocation = telephonyManager.getCellLocation();
            if (cellLocation == null) {
                return "";
            }
            if (telephonyManager.getPhoneType() == 2) {
                CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
                cid = cdmaCellLocation.getBaseStationId();
                lac = cdmaCellLocation.getNetworkId();
            } else {
                GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                cid = gsmCellLocation.getCid();
                lac = gsmCellLocation.getLac();
            }
            String str = cid + "|" + lac;
            f23155a = str;
            return str;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String h() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) e.a().getApplicationContext().getSystemService("connectivity");
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
            if (networkInfo.isConnected()) {
                f23158d = i();
            } else if (networkInfo2.isConnected()) {
                f23158d = p(((WifiManager) e.a().getApplicationContext().getSystemService("wifi")).getConnectionInfo().getIpAddress());
            }
        } catch (Exception e11) {
            c.Log().d("ssp", "获取本地ip地址失败 " + e11.getMessage());
        }
        return f23158d;
    }

    private static String i() {
        String hostAddress = "";
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress() && r(inetAddressNextElement.getHostAddress())) {
                        hostAddress = inetAddressNextElement.getHostAddress();
                    }
                }
            }
        } catch (SocketException e11) {
            c.Log().d("ssp", "获取本地ip地址失败 " + e11.getMessage());
        }
        return hostAddress;
    }

    public static String j() {
        try {
            return OneID.e().a(Constants.AD_APPID);
        } catch (Exception unused) {
            return "";
        }
    }

    public static int k() {
        return Build.VERSION.SDK_INT;
    }

    public static String l() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) e.a().getSystemService("phone");
            return telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String m() {
        return Build.VERSION.RELEASE.replace(";", "");
    }

    public static long n() {
        try {
            ActivityManager activityManager = (ActivityManager) e.a().getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.totalMem;
        } catch (Exception e11) {
            c.Log().d("ssp", "获取本地运行内存失败 " + e11.getMessage());
            return 0L;
        }
    }

    public static String o() {
        return UUID.randomUUID().toString();
    }

    public static String p(int i11) {
        return (i11 & 255) + "." + ((i11 >> 8) & 255) + "." + ((i11 >> 16) & 255) + "." + ((i11 >> 24) & 255);
    }

    public static boolean q() {
        try {
            Context contextA = e.a();
            return contextA.getResources() != null && (contextA.getResources().getConfiguration().screenLayout & 15) >= 3;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean r(String str) {
        try {
            return InetAddress.getByName(str) != null;
        } catch (UnknownHostException e11) {
            c.Log().d("ssp", "获取本地ip地址失败 " + e11.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void s() {
        try {
            a.C0312a c0312aA = a.a(e.a());
            if (c0312aA == null || c0312aA.a().equals(f23159e)) {
                return;
            }
            f23159e = c0312aA.a();
            boolean zB = c0312aA.b();
            j7.a.e().r("device_util_ga_id", f23159e);
            j7.a.e().p("is_limit_ad_tracking_enabled", zB ? 1 : 2);
            c.Log().i("ssp", "gaid limit ：" + zB + " GAID is ：" + f23159e);
        } catch (Exception e11) {
            c.Log().e("DeviceUtil", Log.getStackTraceString(e11));
        }
    }
}
