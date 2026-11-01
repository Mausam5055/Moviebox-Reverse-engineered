package com.squareup.okhttp.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.squareup.okhttp.HttpUrl;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.ByteString;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f40430a = new byte[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f40431b = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f40432c = Charset.forName("UTF-8");

    static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f40433a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f40434b;

        a(String str, boolean z10) {
            this.f40433a = str;
            this.f40434b = z10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f40433a);
            thread.setDaemon(this.f40434b);
            return thread;
        }
    }

    public static void a(long j11, long j12, long j13) {
        if ((j12 | j13) < 0 || j12 > j11 || j11 - j12 < j13) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void b(Closeable closeable, Closeable closeable2) throws IOException {
        closeable.close();
        th = null;
        try {
            closeable2.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        if (th == null) {
            return;
        }
        if (th instanceof IOException) {
            throw ((IOException) th);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (!(th instanceof Error)) {
            throw new AssertionError(th);
        }
        throw ((Error) th);
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception unused) {
            }
        }
    }

    public static void d(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e11) {
                if (!o(e11)) {
                    throw e11;
                }
            } catch (RuntimeException e12) {
                throw e12;
            } catch (Exception unused) {
            }
        }
    }

    public static String[] e(String[] strArr, String str) {
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length] = str;
        return strArr2;
    }

    public static boolean f(String[] strArr, String str) {
        return Arrays.asList(strArr).contains(str);
    }

    public static boolean g(Source source, int i11, TimeUnit timeUnit) {
        try {
            return r(source, i11, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean h(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static String i(HttpUrl httpUrl) {
        if (httpUrl.port() == HttpUrl.defaultPort(httpUrl.scheme())) {
            return httpUrl.host();
        }
        return httpUrl.host() + ":" + httpUrl.port();
    }

    public static List j(List list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static List k(Object... objArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) objArr.clone()));
    }

    public static Map l(Map map) {
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    private static List m(Object[] objArr, Object[] objArr2) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            for (Object obj2 : objArr2) {
                if (obj.equals(obj2)) {
                    arrayList.add(obj2);
                    break;
                }
            }
        }
        return arrayList;
    }

    public static Object[] n(Class cls, Object[] objArr, Object[] objArr2) {
        List listM = m(objArr, objArr2);
        return listM.toArray((Object[]) Array.newInstance((Class<?>) cls, listM.size()));
    }

    public static boolean o(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static String p(String str) {
        try {
            return ByteString.of(MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"))).hex();
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e11) {
            throw new AssertionError(e11);
        }
    }

    public static ByteString q(ByteString byteString) {
        try {
            return ByteString.of(MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_1).digest(byteString.toByteArray()));
        } catch (NoSuchAlgorithmException e11) {
            throw new AssertionError(e11);
        }
    }

    public static boolean r(Source source, int i11, TimeUnit timeUnit) {
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = source.timeout().getHasDeadline() ? source.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        source.timeout().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i11)) + jNanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) != -1) {
                buffer.clear();
            }
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
                return true;
            }
            source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            return true;
        } catch (InterruptedIOException unused) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
                return false;
            }
            source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            return false;
        } catch (Throwable th2) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th2;
        }
    }

    public static ThreadFactory s(String str, boolean z10) {
        return new a(str, z10);
    }
}
