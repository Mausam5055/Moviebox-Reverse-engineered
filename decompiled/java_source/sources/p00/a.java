package p00;

import androidx.core.view.InputDeviceCompat;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.transsion.baselib.db.download.DownloadException;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.compress.archivers.zip.r;

/* JADX INFO: loaded from: classes7.dex */
public class a implements o00.a {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final a[] f72231w = new a[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f72232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f72233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f72234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f72235d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f72236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f72237f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f72238g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f72239h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private byte f72240i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f72241j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f72242k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f72243l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f72244m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f72245n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f72246o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f72247p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f72248q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f72249r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f72250s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f72251t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final File f72252u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Map f72253v;

    private a(boolean z10) {
        this.f72232a = "";
        this.f72235d = 0L;
        this.f72236e = 0L;
        this.f72237f = 0L;
        this.f72241j = "";
        this.f72242k = "ustar\u0000";
        this.f72243l = "00";
        this.f72245n = "";
        this.f72246o = 0;
        this.f72247p = 0;
        this.f72253v = new HashMap();
        String property = System.getProperty("user.name", "");
        this.f72244m = property.length() > 31 ? property.substring(0, 31) : property;
        this.f72252u = null;
        this.f72233b = z10;
    }

    public a(byte[] bArr, r rVar, boolean z10) {
        this(false);
        q(bArr, rVar, false, z10);
    }

    private int b(byte[] bArr) {
        if (q00.a.c("ustar ", bArr, InputDeviceCompat.SOURCE_KEYBOARD, 6)) {
            return 2;
        }
        if (q00.a.c("ustar\u0000", bArr, InputDeviceCompat.SOURCE_KEYBOARD, 6)) {
            return q00.a.c("tar\u0000", bArr, DownloadException.EXCEPTION_IO_MALFORMED_URL, 4) ? 4 : 3;
        }
        return 0;
    }

    private static String o(String str, boolean z10) {
        String lowerCase;
        int iIndexOf;
        if (!z10 && (lowerCase = System.getProperty("os.name").toLowerCase(Locale.ENGLISH)) != null) {
            if (lowerCase.startsWith("windows")) {
                if (str.length() > 2) {
                    char cCharAt = str.charAt(0);
                    if (str.charAt(1) == ':' && ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z'))) {
                        str = str.substring(2);
                    }
                }
            } else if (lowerCase.contains("netware") && (iIndexOf = str.indexOf(58)) != -1) {
                str = str.substring(iIndexOf + 1);
            }
        }
        String strReplace = str.replace(File.separatorChar, '/');
        while (!z10 && strReplace.startsWith("/")) {
            strReplace = strReplace.substring(1);
        }
        return strReplace;
    }

    private long p(byte[] bArr, int i11, int i12, boolean z10) {
        if (!z10) {
            return d.h(bArr, i11, i12);
        }
        try {
            return d.h(bArr, i11, i12);
        } catch (IllegalArgumentException unused) {
            return -1L;
        }
    }

    private void q(byte[] bArr, r rVar, boolean z10, boolean z11) {
        this.f72232a = z10 ? d.e(bArr, 0, 100) : d.f(bArr, 0, 100, rVar);
        this.f72234c = (int) p(bArr, 100, 8, z11);
        this.f72235d = (int) p(bArr, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 8, z11);
        this.f72236e = (int) p(bArr, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, 8, z11);
        this.f72237f = d.h(bArr, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 12);
        this.f72238g = p(bArr, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 12, z11);
        this.f72239h = d.i(bArr);
        this.f72240i = bArr[156];
        this.f72241j = z10 ? d.e(bArr, 157, 100) : d.f(bArr, 157, 100, rVar);
        this.f72242k = d.e(bArr, InputDeviceCompat.SOURCE_KEYBOARD, 6);
        this.f72243l = d.e(bArr, 263, 2);
        this.f72244m = z10 ? d.e(bArr, 265, 32) : d.f(bArr, 265, 32, rVar);
        this.f72245n = z10 ? d.e(bArr, 297, 32) : d.f(bArr, 297, 32, rVar);
        byte b11 = this.f72240i;
        if (b11 == 51 || b11 == 52) {
            this.f72246o = (int) p(bArr, 329, 8, z11);
            this.f72247p = (int) p(bArr, 337, 8, z11);
        }
        int iB = b(bArr);
        if (iB == 2) {
            this.f72248q = d.d(bArr, 482);
            this.f72249r = d.g(bArr, 483, 12);
            return;
        }
        if (iB == 4) {
            String strE = z10 ? d.e(bArr, 345, Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE) : d.f(bArr, 345, Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, rVar);
            if (strE.length() > 0) {
                this.f72232a = strE + "/" + this.f72232a;
                return;
            }
            return;
        }
        String strE2 = z10 ? d.e(bArr, 345, 155) : d.f(bArr, 345, 155, rVar);
        if (h() && !this.f72232a.endsWith("/")) {
            this.f72232a += "/";
        }
        if (strE2.length() > 0) {
            this.f72232a = strE2 + "/" + this.f72232a;
        }
    }

    private void r(String str, String str2, Map map) {
        str.hashCode();
        switch (str) {
            case "SCHILY.devmajor":
                s(Integer.parseInt(str2));
                break;
            case "SCHILY.devminor":
                t(Integer.parseInt(str2));
                break;
            case "GNU.sparse.realsize":
                d(map);
                break;
            case "GNU.sparse.size":
                c(map);
                break;
            case "gid":
                u(Long.parseLong(str2));
                break;
            case "uid":
                A(Long.parseLong(str2));
                break;
            case "path":
                y(str2);
                break;
            case "size":
                z(Long.parseLong(str2));
                break;
            case "gname":
                v(str2);
                break;
            case "mtime":
                x((long) (Double.parseDouble(str2) * 1000.0d));
                break;
            case "uname":
                B(str2);
                break;
            case "SCHILY.filetype":
                if ("sparse".equals(str2)) {
                    e(map);
                    break;
                }
                break;
            case "linkpath":
                w(str2);
                break;
            default:
                this.f72253v.put(str, str2);
                break;
        }
    }

    public void A(long j11) {
        this.f72235d = j11;
    }

    public void B(String str) {
        this.f72244m = str;
    }

    void C(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            r((String) entry.getKey(), (String) entry.getValue(), map);
        }
    }

    public boolean a(a aVar) {
        return aVar != null && f().equals(aVar.f());
    }

    void c(Map map) {
        this.f72250s = true;
        this.f72249r = Integer.parseInt((String) map.get("GNU.sparse.size"));
        if (map.containsKey("GNU.sparse.name")) {
            this.f72232a = (String) map.get("GNU.sparse.name");
        }
    }

    void d(Map map) {
        this.f72250s = true;
        this.f72249r = Integer.parseInt((String) map.get("GNU.sparse.realsize"));
        this.f72232a = (String) map.get("GNU.sparse.name");
    }

    void e(Map map) {
        this.f72251t = true;
        if (map.containsKey("SCHILY.realsize")) {
            this.f72249r = Long.parseLong((String) map.get("SCHILY.realsize"));
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return a((a) obj);
    }

    public String f() {
        return this.f72232a;
    }

    public long g() {
        return this.f72237f;
    }

    public boolean h() {
        File file = this.f72252u;
        if (file != null) {
            return file.isDirectory();
        }
        if (this.f72240i == 53) {
            return true;
        }
        return (n() || l() || !f().endsWith("/")) ? false : true;
    }

    public int hashCode() {
        return f().hashCode();
    }

    public boolean i() {
        return this.f72248q;
    }

    public boolean j() {
        return this.f72240i == 75;
    }

    public boolean k() {
        return this.f72240i == 76;
    }

    public boolean l() {
        return this.f72240i == 103;
    }

    public boolean m() {
        return this.f72240i == 83;
    }

    public boolean n() {
        byte b11 = this.f72240i;
        return b11 == 120 || b11 == 88;
    }

    public void s(int i11) {
        if (i11 >= 0) {
            this.f72246o = i11;
            return;
        }
        throw new IllegalArgumentException("Major device number is out of range: " + i11);
    }

    public void t(int i11) {
        if (i11 >= 0) {
            this.f72247p = i11;
            return;
        }
        throw new IllegalArgumentException("Minor device number is out of range: " + i11);
    }

    public void u(long j11) {
        this.f72236e = j11;
    }

    public void v(String str) {
        this.f72245n = str;
    }

    public void w(String str) {
        this.f72241j = str;
    }

    public void x(long j11) {
        this.f72238g = j11 / 1000;
    }

    public void y(String str) {
        this.f72232a = o(str, this.f72233b);
    }

    public void z(long j11) {
        if (j11 >= 0) {
            this.f72237f = j11;
            return;
        }
        throw new IllegalArgumentException("Size is out of range: " + j11);
    }
}
