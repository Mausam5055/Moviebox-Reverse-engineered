package x00;

import java.util.Locale;
import org.apache.tools.ant.BuildException;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f78005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f78006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f78007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f78008d;

    static {
        String property = System.getProperty("os.name");
        Locale locale = Locale.US;
        f78005a = property.toLowerCase(locale);
        f78006b = System.getProperty("os.arch").toLowerCase(locale);
        f78007c = System.getProperty("os.version").toLowerCase(locale);
        f78008d = System.getProperty("path.separator");
    }

    public static boolean a(String str) {
        return c(str, null, null, null);
    }

    public static boolean b(String str) {
        return c(null, str, null, null);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x005b  */
    /* JADX WARN: Code duplicated, block: B:98:0x0140  */
    public static boolean c(String str, String str2, String str3, String str4) {
        boolean z10;
        boolean z11;
        boolean z12;
        if (str == null && str2 == null && str3 == null && str4 == null) {
            return false;
        }
        if (str != null) {
            String str5 = f78005a;
            z10 = str5.indexOf("windows") > -1;
            if (z10) {
                z11 = str5.indexOf("95") >= 0 || str5.indexOf("98") >= 0 || str5.indexOf("me") >= 0 || str5.indexOf("ce") >= 0;
                z12 = !z11;
            } else {
                z11 = false;
                z12 = false;
            }
            if (!str.equals("windows")) {
                if (str.equals("win9x")) {
                    if (z10 && z11) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else if (str.equals("winnt")) {
                    if (z10 && z12) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else if (str.equals("os/2")) {
                    if (str5.indexOf("os/2") > -1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else if (str.equals("netware")) {
                    if (str5.indexOf("netware") > -1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else if (str.equals("dos")) {
                    if (!f78008d.equals(";") || a("netware")) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                } else if (str.equals("mac")) {
                    if (str5.indexOf("mac") > -1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else if (str.equals("tandem")) {
                    if (str5.indexOf("nonstop_kernel") > -1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else if (str.equals("unix")) {
                    if (!f78008d.equals(":") || a("openvms") || (a("mac") && !str5.endsWith("x"))) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                } else if (str.equals("z/os")) {
                    if (str5.indexOf("z/os") > -1 || str5.indexOf("os/390") > -1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else if (str.equals("os/400")) {
                    if (str5.indexOf("os/400") > -1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else {
                    if (!str.equals("openvms")) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Don't know how to detect os family \"");
                        stringBuffer.append(str);
                        stringBuffer.append("\"");
                        throw new BuildException(stringBuffer.toString());
                    }
                    if (str5.indexOf("openvms") > -1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
            }
        } else {
            z10 = true;
        }
        return z10 && (str2 != null ? str2.equals(f78005a) : true) && (str3 != null ? str3.equals(f78006b) : true) && (str4 != null ? str4.equals(f78007c) : true);
    }
}
