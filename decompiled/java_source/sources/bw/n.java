package bw;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import kotlin.ExceptionsKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile String f16950a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile String f16951b = "";

    public static String a(Context context) {
        Intrinsics.h(context, "context");
        String language = context.getResources().getConfiguration().locale.getLanguage();
        Intrinsics.g(language, "getLanguage(...)");
        String upperCase = language.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase;
    }

    public static final void b(Application it) {
        Intrinsics.h(it, "$it");
        try {
            String id2 = AdvertisingIdClient.getAdvertisingIdInfo(it).getId();
            if (TextUtils.isEmpty(id2)) {
                return;
            }
            Intrinsics.e(id2);
            f16950a = id2;
            h hVar = i.f16941b;
            hVar.a(it).b("KV_UPGRADE_GAID_VALUE", f16950a);
            IvParameterSpec ivParameterSpec = c.f16936a;
            String packageName = it.getPackageName();
            Intrinsics.g(packageName, "getPackageName(...)");
            String strB = c.b(id2, packageName);
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            Intrinsics.e(strB);
            f16951b = strB;
            hVar.a(it).b("KV_UPGRADE_GAID_ENCRYPT_VALUE", f16951b);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static void c(String pkgName, int i11, int i12, Function0 callback) {
        String str;
        Intrinsics.h(pkgName, "pkgName");
        Intrinsics.h(callback, "callback");
        Application application = xv.a.f78447a;
        Application application2 = null;
        if (application == null) {
            Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
            application = null;
        }
        PackageManager packageManager = application.getPackageManager();
        if (packageManager != null) {
            boolean z10 = true;
            if (i11 == 0 || i11 == 1) {
                str = "&iad=" + i11;
            } else {
                str = "&su=" + i11;
            }
            try {
                StringBuilder sb2 = new StringBuilder("palmplay://thirdlauncher.com/?entryType=AppDetail&packageName=");
                sb2.append(pkgName);
                sb2.append("&_source=ps_updatesdk&backFloatball=");
                if (i12 != 1) {
                    z10 = false;
                }
                sb2.append(z10);
                sb2.append(str);
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(sb2.toString()));
                intent.addFlags(ASTNode.DEOP);
                intent.putExtra("currentUpdateTime", e());
                if (intent.resolveActivity(packageManager) != null) {
                    Application application3 = xv.a.f78447a;
                    if (application3 != null) {
                        application2 = application3;
                    } else {
                        Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                    }
                    application2.startActivity(intent);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            callback.invoke();
        }
    }

    public static boolean d() {
        Application application = xv.a.f78447a;
        if (application == null) {
            Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
            application = null;
        }
        return new Intent("android.intent.action.VIEW", Uri.parse("palmplay://thirdlauncher.com/?entryType=AppDetail")).resolveActivity(application.getPackageManager()) != null;
    }

    public static String e() throws BadPaddingException, InvalidKeySpecException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        String string;
        String fileName = j.f16945b;
        Intrinsics.h(fileName, "fileName");
        try {
            Application application = xv.a.f78447a;
            if (application == null) {
                Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                application = null;
            }
            InputStreamReader inputStreamReader = new InputStreamReader(application.getResources().getAssets().open(fileName));
            try {
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                try {
                    StringBuilder sb2 = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb2.append(line);
                        try {
                            inputStreamReader.close();
                        } catch (Throwable th2) {
                            ExceptionsKt.a(th, th2);
                        }
                        throw th;
                    }
                    string = sb2.toString();
                    Intrinsics.g(string, "toString(...)");
                    bufferedReader.close();
                    inputStreamReader.close();
                } catch (Throwable th3) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th4) {
                        ExceptionsKt.a(th3, th4);
                    }
                    throw th3;
                }
            } catch (Throwable th5) {
                inputStreamReader.close();
                throw th5;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            string = "";
        }
        byte[] bArrDecode = Base64.decode(string, 0);
        String strValueOf = String.valueOf(System.currentTimeMillis());
        byte[] bArr = j.f16944a;
        byte[] bytes = strValueOf.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
        Intrinsics.e(bArrDecode);
        String strEncodeToString = Base64.encodeToString(j.a(bytes, bArrDecode), 0);
        Intrinsics.g(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }

    public static vv.b f(Context context) {
        String upperCase;
        String str;
        List listL;
        List listL2;
        String str2 = "";
        Intrinsics.h(context, "context");
        Context applicationContext = context.getApplicationContext();
        vv.b bVar = new vv.b("", null, "", 0L, "", "", "", "", "", "", "", "1", "");
        PackageManager packageManager = applicationContext.getPackageManager();
        String packageName = applicationContext.getPackageName();
        Intrinsics.e(packageName);
        Intrinsics.h(packageName, "<set-?>");
        bVar.f77448a = packageName;
        String BRAND = Build.BRAND;
        Intrinsics.g(BRAND, "BRAND");
        Intrinsics.h(BRAND, "<set-?>");
        bVar.f77456i = BRAND;
        String MODEL = Build.MODEL;
        Intrinsics.g(MODEL, "MODEL");
        Intrinsics.h(MODEL, "<set-?>");
        bVar.f77458k = MODEL;
        try {
            if (TextUtils.isEmpty(MODEL)) {
                upperCase = "";
            } else {
                Intrinsics.e(MODEL);
                if (StringsKt.c0(MODEL, " ", false, 2, null)) {
                    List<String> listSplit = new Regex(" ").split(MODEL, 0);
                    if (!listSplit.isEmpty()) {
                        ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                        while (true) {
                            if (!listIterator.hasPrevious()) {
                                listL2 = CollectionsKt.l();
                                break;
                            }
                            if (listIterator.previous().length() != 0) {
                                listL2 = CollectionsKt.K0(listSplit, listIterator.nextIndex() + 1);
                                break;
                            }
                        }
                    } else {
                        listL2 = CollectionsKt.l();
                        break;
                    }
                    String[] strArr = (String[]) listL2.toArray(new String[0]);
                    str = strArr[strArr.length - 1];
                } else if (StringsKt.c0(MODEL, "-", false, 2, null)) {
                    List<String> listSplit2 = new Regex("-").split(MODEL, 0);
                    if (!listSplit2.isEmpty()) {
                        ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
                        while (true) {
                            if (!listIterator2.hasPrevious()) {
                                listL = CollectionsKt.l();
                                break;
                            }
                            if (listIterator2.previous().length() != 0) {
                                listL = CollectionsKt.K0(listSplit2, listIterator2.nextIndex() + 1);
                                break;
                            }
                        }
                    } else {
                        listL = CollectionsKt.l();
                        break;
                    }
                    String[] strArr2 = (String[]) listL.toArray(new String[0]);
                    str = strArr2[strArr2.length - 1];
                } else {
                    str = MODEL;
                }
                upperCase = str.toUpperCase(Locale.ROOT);
                Intrinsics.g(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            }
            StringBuilder sb2 = new StringBuilder();
            String BRAND2 = Build.BRAND;
            Intrinsics.g(BRAND2, "BRAND");
            String upperCase2 = BRAND2.toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            sb2.append(upperCase2);
            sb2.append('_');
            sb2.append(upperCase);
            MODEL = sb2.toString();
        } catch (Exception unused) {
            Intrinsics.e(MODEL);
        }
        Intrinsics.h(MODEL, "<set-?>");
        bVar.f77457j = MODEL;
        String strH = h();
        Intrinsics.h(strH, "<set-?>");
        bVar.f77459l = strH;
        Application application = xv.a.f78447a;
        if (application == null) {
            Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
            application = null;
        }
        try {
            Object systemService = application.getSystemService("phone");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
            String simCountryIso = ((TelephonyManager) systemService).getSimCountryIso();
            Intrinsics.g(simCountryIso, "getSimCountryIso(...)");
            str2 = simCountryIso;
        } catch (Exception unused2) {
        }
        Intrinsics.h(str2, "<set-?>");
        bVar.f77455h = str2;
        String string = Locale.getDefault().toString();
        Intrinsics.g(string, "toString(...)");
        Intrinsics.h(string, "<set-?>");
        bVar.f77460m = string;
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 0);
            Intrinsics.g(applicationInfo, "getApplicationInfo(...)");
            Drawable drawable = packageManager.getDrawable(packageName, applicationInfo.icon, null);
            CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
            Intrinsics.f(applicationLabel, "null cannot be cast to non-null type kotlin.String");
            String str3 = (String) applicationLabel;
            long longVersionCode = Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
            String str4 = packageInfo.versionName;
            Intrinsics.h(str3, "<set-?>");
            bVar.f77450c = str3;
            bVar.f77449b = drawable;
            bVar.f77451d = longVersionCode;
            Intrinsics.e(str4);
            Intrinsics.h(str4, "<set-?>");
            bVar.f77452e = str4;
            Intrinsics.e(applicationContext);
            String strA = a(applicationContext);
            Intrinsics.h(strA, "<set-?>");
            bVar.f77453f = strA;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
        }
        g();
        return bVar;
    }

    public static String g() {
        if (TextUtils.isEmpty(f16950a)) {
            final Application application = xv.a.f78447a;
            if (application == null) {
                Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                application = null;
            }
            new Thread(new Runnable() { // from class: bw.m
                @Override // java.lang.Runnable
                public final void run() {
                    n.b(application);
                }
            }).start();
            h hVar = i.f16941b;
            f16950a = hVar.a(application).a("KV_UPGRADE_GAID_VALUE", "");
            f16951b = hVar.a(application).a("KV_UPGRADE_GAID_ENCRYPT_VALUE", "");
        }
        String msg = "gaid : " + f16950a;
        Intrinsics.h("UpgradeSdkManager", "tag");
        Intrinsics.h(msg, "msg");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!g.f16939a && jCurrentTimeMillis - g.f16940b >= 5000) {
            g.f16940b = jCurrentTimeMillis;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f16939a = true;
            }
        }
        boolean z10 = yv.f.f79067o.a().f79072d;
        return f16950a;
    }

    public static String h() {
        String str;
        int iCharAt;
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, "ro.system.build.version.release");
            Intrinsics.f(objInvoke, "null cannot be cast to non-null type kotlin.String");
            str = (String) objInvoke;
        } catch (Exception e11) {
            e11.printStackTrace();
            str = "";
        }
        if (str == null || str.length() == 0) {
            iCharAt = -1;
        } else if (Character.isDigit(str.charAt(0))) {
            iCharAt = Integer.parseInt(str);
        } else {
            Locale locale = Locale.getDefault();
            Intrinsics.g(locale, "getDefault(...)");
            String upperCase = str.toUpperCase(locale);
            Intrinsics.g(upperCase, "this as java.lang.String).toUpperCase(locale)");
            iCharAt = upperCase.charAt(0) - 'G';
        }
        return String.valueOf(iCharAt);
    }

    public static long i() {
        try {
            PackageInfo packageInfo = qk.a.a().getPackageManager().getPackageInfo(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, 0);
            Intrinsics.g(packageInfo, "getPackageInfo(...)");
            return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return -1L;
        }
    }
}
