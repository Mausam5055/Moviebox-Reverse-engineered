package com.mbridge.msdk.thrid.okhttp.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.x;
import com.mbridge.msdk.thrid.okhttp.z;
import com.mbridge.msdk.thrid.okio.f;
import com.mbridge.msdk.thrid.okio.s;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f37901a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z f37903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final x f37904d;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Method f37918r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Pattern f37919s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f37902b = new String[0];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final f f37905e = f.a("efbbbf");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final f f37906f = f.a("feff");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final f f37907g = f.a("fffe");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final f f37908h = f.a("0000ffff");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final f f37909i = f.a("ffff0000");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Charset f37910j = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Charset f37911k = Charset.forName("ISO-8859-1");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Charset f37912l = Charset.forName("UTF-16BE");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Charset f37913m = Charset.forName("UTF-16LE");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Charset f37914n = Charset.forName("UTF-32BE");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Charset f37915o = Charset.forName("UTF-32LE");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final TimeZone f37916p = TimeZone.getTimeZone("GMT");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final Comparator<String> f37917q = new a();

    static class a implements Comparator<String> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    }

    static class b implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f37920a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f37921b;

        b(String str, boolean z10) {
            this.f37920a = str;
            this.f37921b = z10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f37920a);
            thread.setDaemon(this.f37921b);
            return thread;
        }
    }

    static {
        byte[] bArr = new byte[0];
        f37901a = bArr;
        Method declaredMethod = null;
        f37903c = z.a(null, bArr);
        f37904d = x.a(null, bArr);
        try {
            declaredMethod = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
        }
        f37918r = declaredMethod;
        f37919s = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    public static int a(char c11) {
        if (c11 >= '0' && c11 <= '9') {
            return c11 - '0';
        }
        if (c11 >= 'a' && c11 <= 'f') {
            return c11 - 'W';
        }
        if (c11 < 'A' || c11 > 'F') {
            return -1;
        }
        return c11 - '7';
    }

    public static int a(String str, int i11, int i12, char c11) {
        while (i11 < i12) {
            if (str.charAt(i11) == c11) {
                return i11;
            }
            i11++;
        }
        return i12;
    }

    public static int a(String str, int i11, int i12, String str2) {
        while (i11 < i12) {
            if (str2.indexOf(str.charAt(i11)) != -1) {
                return i11;
            }
            i11++;
        }
        return i12;
    }

    public static int a(String str, long j11, TimeUnit timeUnit) {
        if (j11 < 0) {
            throw new IllegalArgumentException(str + " < 0");
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        long millis = timeUnit.toMillis(j11);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(str + " too large.");
        }
        if (millis != 0 || j11 <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(str + " too small.");
    }

    public static int a(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (comparator.compare(strArr[i11], str) == 0) {
                return i11;
            }
        }
        return -1;
    }

    public static AssertionError a(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException unused) {
        }
        return assertionError;
    }

    public static String a(q qVar, boolean z10) {
        String strG;
        if (qVar.g().contains(":")) {
            strG = "[" + qVar.g() + "]";
        } else {
            strG = qVar.g();
        }
        if (!z10 && qVar.j() == q.a(qVar.l())) {
            return strG;
        }
        return strG + ":" + qVar.j();
    }

    public static String a(String str) {
        if (!str.contains(":")) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty() || b(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress inetAddressA = (str.startsWith("[") && str.endsWith("]")) ? a(str, 1, str.length() - 1) : a(str, 0, str.length());
        if (inetAddressA == null) {
            return null;
        }
        byte[] address = inetAddressA.getAddress();
        if (address.length == 16) {
            return a(address);
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + "'");
    }

    public static String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    private static String a(byte[] bArr) {
        int i11 = -1;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i13 < bArr.length) {
            int i15 = i13;
            while (i15 < 16 && bArr[i15] == 0 && bArr[i15 + 1] == 0) {
                i15 += 2;
            }
            int i16 = i15 - i13;
            if (i16 > i14 && i16 >= 4) {
                i11 = i13;
                i14 = i16;
            }
            i13 = i15 + 2;
        }
        com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
        while (i12 < bArr.length) {
            if (i12 == i11) {
                cVar.writeByte(58);
                i12 += i14;
                if (i12 == 16) {
                    cVar.writeByte(58);
                }
            } else {
                if (i12 > 0) {
                    cVar.writeByte(58);
                }
                cVar.a(((bArr[i12] & 255) << 8) | (bArr[i12 + 1] & 255));
                i12 += 2;
            }
        }
        return cVar.p();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x004f  */
    /* JADX WARN: Code duplicated, block: B:34:0x005a A[LOOP:1: B:30:0x004d->B:34:0x005a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:59:0x0060 A[EDGE_INSN: B:59:0x0060->B:35:0x0060 BREAK  A[LOOP:1: B:30:0x004d->B:34:0x005a], SYNTHETIC] */
    private static InetAddress a(String str, int i11, int i12) {
        int i13;
        int i14;
        int iA;
        byte[] bArr = new byte[16];
        int i15 = 0;
        int i16 = -1;
        int i17 = -1;
        while (i11 < i12) {
            if (i15 == 16) {
                return null;
            }
            int i18 = i11 + 2;
            if (i18 <= i12 && str.regionMatches(i11, "::", 0, 2)) {
                if (i16 != -1) {
                    return null;
                }
                i15 += 2;
                i16 = i15;
                if (i18 == i12) {
                    break;
                }
                i17 = i18;
                i13 = 0;
                i11 = i17;
                while (i11 < i12) {
                    iA = a(str.charAt(i11));
                    if (iA == -1) {
                        break;
                        break;
                    }
                    i13 = (i13 << 4) + iA;
                    i11++;
                }
                i14 = i11 - i17;
                if (i14 != 0) {
                }
                return null;
            }
            if (i15 != 0) {
                if (!str.regionMatches(i11, ":", 0, 1)) {
                    if (!str.regionMatches(i11, ".", 0, 1) || !a(str, i17, i12, bArr, i15 - 2)) {
                        return null;
                    }
                    i15 += 2;
                    break;
                }
                i11++;
            }
            i17 = i11;
            i13 = 0;
            i11 = i17;
            while (i11 < i12) {
                iA = a(str.charAt(i11));
                if (iA == -1) {
                    break;
                }
                i13 = (i13 << 4) + iA;
                i11++;
            }
            i14 = i11 - i17;
            if (i14 != 0 || i14 > 4) {
                return null;
            }
            int i19 = i15 + 1;
            bArr[i15] = (byte) ((i13 >>> 8) & 255);
            i15 += 2;
            bArr[i19] = (byte) (i13 & 255);
        }
        if (i15 != 16) {
            if (i16 == -1) {
                return null;
            }
            int i20 = i15 - i16;
            System.arraycopy(bArr, i16, bArr, 16 - i20, i20);
            Arrays.fill(bArr, i16, (16 - i15) + i16, (byte) 0);
        }
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException unused) {
            throw new AssertionError();
        }
    }

    public static <T> List<T> a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static <K, V> Map<K, V> a(Map<K, V> map) {
        return map.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public static ThreadFactory a(String str, boolean z10) {
        return new b(str, z10);
    }

    public static X509TrustManager a() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e11) {
            throw a("No System TLS", (Exception) e11);
        }
    }

    public static void a(long j11, long j12, long j13) {
        if ((j12 | j13) < 0 || j12 > j11 || j11 - j12 < j13) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception unused) {
            }
        }
    }

    public static void a(Throwable th2, Throwable th3) {
        Method method = f37918r;
        if (method != null) {
            try {
                method.invoke(th2, th3);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }

    public static void a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e11) {
                if (!a(e11)) {
                    throw e11;
                }
            } catch (RuntimeException e12) {
                if (!"bio == null".equals(e12.getMessage())) {
                    throw e12;
                }
            } catch (Exception unused) {
            }
        }
    }

    public static boolean a(s sVar, int i11, TimeUnit timeUnit) {
        try {
            return b(sVar, i11, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private static boolean a(String str, int i11, int i12, byte[] bArr, int i13) {
        int i14 = i13;
        while (i11 < i12) {
            if (i14 == bArr.length) {
                return false;
            }
            if (i14 != i13) {
                if (str.charAt(i11) != '.') {
                    return false;
                }
                i11++;
            }
            int i15 = i11;
            int i16 = 0;
            while (i15 < i12) {
                char cCharAt = str.charAt(i15);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                if ((i16 == 0 && i11 != i15) || (i16 = ((i16 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i15++;
            }
            if (i15 - i11 == 0) {
                return false;
            }
            bArr[i14] = (byte) i16;
            i14++;
            i11 = i15;
        }
        return i14 == i13 + 4;
    }

    public static String[] a(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (comparator.compare(str, str2) == 0) {
                    arrayList.add(str);
                    break;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] a(String[] strArr, String str) {
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length] = str;
        return strArr2;
    }

    public static int b(String str, int i11, int i12) {
        while (i11 < i12) {
            char cCharAt = str.charAt(i11);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i11;
            }
            i11++;
        }
        return i12;
    }

    public static p b(List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
        p.a aVar = new p.a();
        for (com.mbridge.msdk.thrid.okhttp.internal.http2.c cVar : list) {
            com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(aVar, cVar.f38059a.h(), cVar.f38060b.h());
        }
        return aVar.a();
    }

    public static boolean b(s sVar, int i11, TimeUnit timeUnit) throws IOException {
        long jNanoTime = System.nanoTime();
        long jC = sVar.b().d() ? sVar.b().c() - jNanoTime : Long.MAX_VALUE;
        sVar.b().a(Math.min(jC, timeUnit.toNanos(i11)) + jNanoTime);
        try {
            com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
            while (sVar.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                cVar.k();
            }
            if (jC == Long.MAX_VALUE) {
                sVar.b().a();
                return true;
            }
            sVar.b().a(jNanoTime + jC);
            return true;
        } catch (InterruptedIOException unused) {
            if (jC == Long.MAX_VALUE) {
                sVar.b().a();
                return false;
            }
            sVar.b().a(jNanoTime + jC);
            return false;
        } catch (Throwable th2) {
            if (jC == Long.MAX_VALUE) {
                sVar.b().a();
            } else {
                sVar.b().a(jNanoTime + jC);
            }
            throw th2;
        }
    }

    private static boolean b(String str) {
        for (int i11 = 0; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt <= 31 || cCharAt >= 127 || " #%/:?@[\\]".indexOf(cCharAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static int c(String str) {
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt <= 31 || cCharAt >= 127) {
                return i11;
            }
        }
        return -1;
    }

    public static int c(String str, int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            char cCharAt = str.charAt(i13);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i13 + 1;
            }
        }
        return i11;
    }

    public static String d(String str, int i11, int i12) {
        int iB = b(str, i11, i12);
        return str.substring(iB, c(str, iB, i12));
    }

    public static boolean d(String str) {
        return f37919s.matcher(str).matches();
    }
}
