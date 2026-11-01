package ak;

import Abdullah.hook;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import com.blankj.utilcode.util.Utils;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f632a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashMap f633b = new HashMap();

    private d() {
    }

    public static final String c(Context context) {
        Intrinsics.h(context, "context");
        ArrayList arrayListD = f632a.d(context, "SHA1");
        if (arrayListD == null || arrayListD.isEmpty()) {
            return "";
        }
        Object obj = arrayListD.get(0);
        Intrinsics.g(obj, "get(...)");
        return (String) obj;
    }

    private final String e(Signature signature, String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance(str).digest(signature.toByteArray());
            StringBuilder sb2 = new StringBuilder();
            for (byte b11 : bArrDigest) {
                String hexString = Integer.toHexString((b11 & 255) | 256);
                Intrinsics.g(hexString, "toHexString(...)");
                String strSubstring = hexString.substring(1, 3);
                Intrinsics.g(strSubstring, "substring(...)");
                String upperCase = strSubstring.toUpperCase(Locale.ROOT);
                Intrinsics.g(upperCase, "toUpperCase(...)");
                sb2.append(upperCase);
                sb2.append(":");
            }
            return sb2.substring(0, sb2.length() - 1).toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    private final Signature[] f(Context context, String str) {
        Signature[] apkContentsSigners;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (Build.VERSION.SDK_INT < 28) {
                Signature[] signatureArr = packageManager.getPackageInfo(Utils.a().getPackageName(), 64).signatures;
                return signatureArr == null ? new Signature[0] : signatureArr;
            }
            SigningInfo signingInfo = packageManager.getPackageInfo(Utils.a().getPackageName(), ASTNode.NOJIT).signingInfo;
            if (signingInfo != null && (apkContentsSigners = hook.a.getApkContentsSigners(signingInfo)) != null) {
                return apkContentsSigners;
            }
            return new Signature[0];
        } catch (Exception e11) {
            e11.printStackTrace();
            return new Signature[0];
        }
    }

    public final String a(Context context) {
        Intrinsics.h(context, "context");
        ArrayList arrayListD = d(context, "MD5");
        if (arrayListD == null || arrayListD.isEmpty()) {
            return "";
        }
        Object obj = arrayListD.get(0);
        Intrinsics.g(obj, "get(...)");
        return (String) obj;
    }

    public final String b(Context context) {
        Intrinsics.h(context, "context");
        ArrayList arrayListD = d(context, "SHA256");
        if (arrayListD == null || arrayListD.isEmpty()) {
            return "";
        }
        Object obj = arrayListD.get(0);
        Intrinsics.g(obj, "get(...)");
        return (String) obj;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0061  */
    public final ArrayList d(Context context, String str) {
        String strE;
        ArrayList arrayList = null;
        if (context != null && str != null) {
            String packageName = context.getPackageName();
            if (packageName == null) {
                return null;
            }
            ArrayList arrayList2 = (ArrayList) f633b.get(str);
            if (arrayList2 != null) {
                return arrayList2;
            }
            arrayList = new ArrayList();
            try {
                for (Signature signature : f(context, packageName)) {
                    int iHashCode = str.hashCode();
                    if (iHashCode != -1850268089) {
                        if (iHashCode != 76158) {
                            if (iHashCode == 2543909 && str.equals("SHA1")) {
                                strE = e(signature, "SHA1");
                            } else {
                                strE = "error!";
                            }
                        } else if (str.equals("MD5")) {
                            strE = e(signature, "MD5");
                        } else {
                            strE = "error!";
                        }
                    } else if (str.equals("SHA256")) {
                        strE = e(signature, "SHA256");
                    } else {
                        strE = "error!";
                    }
                    arrayList.add(strE);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            f633b.put(str, arrayList);
        }
        return arrayList;
    }
}
