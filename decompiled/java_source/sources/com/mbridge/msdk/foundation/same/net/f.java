package com.mbridge.msdk.foundation.same.net;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile AtomicInteger f35432b = new AtomicInteger(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ThreadPoolExecutor f35433a;

    class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
            threadNewThread.setName("SocketThreadPool");
            return threadNewThread;
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f35435a;

        b(c cVar) {
            this.f35435a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35435a.a();
        }
    }

    public class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ByteBuffer f35437a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f35438b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f35439c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.net.b f35440d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private OutputStream f35441e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f35442f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Socket f35443g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f35444h;

        c(String str, int i11, String str2, boolean z10, com.mbridge.msdk.foundation.same.net.b bVar) {
            this.f35438b = str;
            this.f35442f = i11;
            this.f35444h = str2;
            this.f35439c = z10;
            this.f35440d = bVar;
        }

        private void a(String str) {
            if (this.f35440d != null) {
                if (TextUtils.isEmpty(str)) {
                    str = "Unknown exception";
                }
                this.f35440d.onError(new com.mbridge.msdk.foundation.same.net.exception.a(13, new com.mbridge.msdk.foundation.same.net.toolbox.a(TTAdConstant.DEEPLINK_FALLBACK_CODE, str.getBytes(), null)));
            }
        }

        public void a() {
            int length;
            try {
                Socket socket = new Socket(this.f35438b, this.f35442f);
                this.f35443g = socket;
                socket.setSoTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
                boolean z10 = this.f35438b.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f35477j) || this.f35438b.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f35479l);
                o0.b("SocketManager", "Socket connect : " + this.f35438b + " : " + this.f35442f + " isAnalytics : " + z10);
                this.f35441e = this.f35443g.getOutputStream();
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[8]);
                this.f35437a = byteBufferWrap;
                ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                byteBufferWrap.order(byteOrder);
                this.f35437a.put((byte) 2);
                if (TextUtils.isEmpty(this.f35444h)) {
                    this.f35437a.put((byte) 1);
                } else {
                    this.f35437a.put(this.f35439c ? (byte) 3 : (byte) 2);
                }
                this.f35437a.putShort((short) f.f35432b.getAndIncrement());
                if (TextUtils.isEmpty(this.f35444h)) {
                    this.f35437a.putInt(0);
                    this.f35441e.write(this.f35437a.array());
                    length = 0;
                } else {
                    byte[] bArrA = this.f35439c ? f.this.a(this.f35444h) : this.f35444h.getBytes();
                    length = bArrA.length;
                    this.f35437a.putInt(length);
                    this.f35441e.write(this.f35437a.array());
                    this.f35441e.write(bArrA);
                }
                this.f35441e.flush();
                o0.a("SocketManager", "Socket Request : header : " + Arrays.toString(this.f35437a.array()) + " length : " + length);
                InputStream inputStream = this.f35443g.getInputStream();
                byte[] bArr = new byte[8];
                inputStream.read(bArr, 0, 8);
                ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(bArr);
                this.f35437a = byteBufferWrap2;
                byteBufferWrap2.order(byteOrder);
                int i11 = this.f35437a.getInt(4);
                byte b11 = bArr[1];
                boolean z11 = b11 == 3;
                boolean z12 = b11 == 2;
                o0.b("SocketManager", "Socket Response : header : " + Arrays.toString(bArr) + " length : " + i11 + " isGzip : " + z11);
                byte[] bArr2 = new byte[i11];
                new DataInputStream(this.f35443g.getInputStream()).readFully(bArr2);
                if (!z11 && i11 > 2 && ((bArr2[0] << 8) | (bArr2[1] & 255)) == 8075) {
                    z11 = true;
                }
                com.mbridge.msdk.foundation.same.net.b bVar = this.f35440d;
                if (bVar == null) {
                    Socket socket2 = this.f35443g;
                    if (socket2 != null) {
                        try {
                            socket2.close();
                            this.f35437a = null;
                            this.f35441e.close();
                            return;
                        } catch (IOException e11) {
                            o0.b("SocketManager", e11.getMessage());
                            return;
                        }
                    }
                    return;
                }
                if (z12 && i11 == 0) {
                    bVar.onSuccess(e.a(null, new com.mbridge.msdk.foundation.same.net.toolbox.a(Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, null, null)));
                    Socket socket3 = this.f35443g;
                    if (socket3 != null) {
                        try {
                            socket3.close();
                            this.f35437a = null;
                            this.f35441e.close();
                            return;
                        } catch (IOException e12) {
                            o0.b("SocketManager", e12.getMessage());
                            return;
                        }
                    }
                    return;
                }
                if (i11 < 1) {
                    a("The response data less than 1");
                    Socket socket4 = this.f35443g;
                    if (socket4 != null) {
                        try {
                            socket4.close();
                            this.f35437a = null;
                            this.f35441e.close();
                            return;
                        } catch (IOException e13) {
                            o0.b("SocketManager", e13.getMessage());
                            return;
                        }
                    }
                    return;
                }
                if (z10) {
                    if (bArr2[0] == 1) {
                        bVar.onSuccess(e.a(null, new com.mbridge.msdk.foundation.same.net.toolbox.a(200, null, null)));
                    } else {
                        a("The server returns fail");
                    }
                    Socket socket5 = this.f35443g;
                    if (socket5 != null) {
                        try {
                            socket5.close();
                            this.f35437a = null;
                            this.f35441e.close();
                            return;
                        } catch (IOException e14) {
                            o0.b("SocketManager", e14.getMessage());
                            return;
                        }
                    }
                    return;
                }
                try {
                    String strA = z11 ? f.this.a(bArr2) : new String(bArr2);
                    JSONObject jSONObject = !TextUtils.isEmpty(strA) ? new JSONObject(strA) : null;
                    o0.b("SocketManager", "Socket Response length : " + i11 + " " + strA.length());
                    this.f35440d.onSuccess(e.a(jSONObject, new com.mbridge.msdk.foundation.same.net.toolbox.a(200, null, null)));
                } catch (Throwable th2) {
                    String message = th2.getMessage();
                    o0.b("SocketManager", th2.getMessage());
                    if (TextUtils.isEmpty(message)) {
                        message = "The JSON data is illegal";
                    }
                    a(message);
                }
                inputStream.close();
                Socket socket6 = this.f35443g;
                if (socket6 != null) {
                    try {
                        socket6.close();
                        this.f35437a = null;
                        this.f35441e.close();
                    } catch (IOException e15) {
                        o0.b("SocketManager", e15.getMessage());
                    }
                }
            } catch (Throwable th3) {
                try {
                    String message2 = th3.getMessage();
                    o0.a("SocketManager", "Socket exception: " + message2);
                    a(message2);
                } finally {
                    Socket socket7 = this.f35443g;
                    if (socket7 != null) {
                        try {
                            socket7.close();
                            this.f35437a = null;
                            this.f35441e.close();
                        } catch (IOException e16) {
                            o0.b("SocketManager", e16.getMessage());
                        }
                    }
                }
            }
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static f f35446a = new f(null);
    }

    private f() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 5L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
        this.f35433a = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    /* synthetic */ f(a aVar) {
        this();
    }

    public static f b() {
        return d.f35446a;
    }

    public String a(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i11 = gZIPInputStream.read(bArr2, 0, 1024);
            if (i11 <= 0) {
                gZIPInputStream.close();
                byteArrayInputStream.close();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toString();
            }
            byteArrayOutputStream.write(bArr2, 0, i11);
        }
    }

    public void a(String str, int i11, String str2, boolean z10, com.mbridge.msdk.foundation.same.net.b bVar) {
        this.f35433a.execute(new b(new c(str, i11, str2, z10, bVar)));
    }

    public byte[] a(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes());
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }
}
