package com.transsion.transfer.androidasync.http.server;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.transfer.androidasync.AsyncServer;
import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.HttpUtil;
import com.transsion.transfer.androidasync.http.Protocol;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public abstract class k implements d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private bv.e f55463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.transsion.transfer.androidasync.j f55464d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    c f55465e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.transsion.transfer.androidasync.s f55467g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    bv.j f55468h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f55469i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f55470j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    bv.a f55473m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Headers f55461a = new Headers();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f55462b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f55466f = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f55471k = 200;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f55472l = "HTTP/1.1";

    k(com.transsion.transfer.androidasync.j jVar, c cVar) {
        this.f55464d = jVar;
        this.f55465e = cVar;
        if (HttpUtil.d(Protocol.HTTP_1_1, cVar.getHeaders())) {
            this.f55461a.f("Connection", "Keep-Alive");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(final InputStream inputStream) {
        a0.e(inputStream, this.f55462b, this, new bv.a() { // from class: com.transsion.transfer.androidasync.http.server.j
            @Override // bv.a
            public final void g(Exception exc) {
                this.f55459a.z(inputStream, exc);
            }
        }, this.f55463c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        bv.j jVarI = i();
        if (jVarI != null) {
            jVarI.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(boolean z10, Exception exc) {
        if (exc != null) {
            D(exc);
            return;
        }
        if (z10) {
            ev.a aVar = new ev.a(this.f55464d);
            aVar.q(0);
            this.f55467g = aVar;
        } else {
            this.f55467g = this.f55464d;
        }
        this.f55467g.p(this.f55473m);
        this.f55473m = null;
        this.f55467g.o(this.f55468h);
        this.f55468h = null;
        if (this.f55469i) {
            d();
        } else {
            a().D(new Runnable() { // from class: com.transsion.transfer.androidasync.http.server.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f55455a.t();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(Exception exc) {
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(ByteBufferList byteBufferList, String str) {
        long jC = byteBufferList.C();
        this.f55462b = jC;
        this.f55461a.f(HttpHeaders.CONTENT_LENGTH, Long.toString(jC));
        if (str != null) {
            this.f55461a.f(HttpHeaders.CONTENT_TYPE, str);
        }
        a0.g(this, byteBufferList, new bv.a() { // from class: com.transsion.transfer.androidasync.http.server.h
            @Override // bv.a
            public final void g(Exception exc) {
                this.f55456a.v(exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(InputStream inputStream, Exception exc) {
        com.transsion.transfer.androidasync.util.d.a(inputStream);
        C();
    }

    protected void C() {
        this.f55470j = true;
    }

    protected void D(Exception exc) {
    }

    @Override // com.transsion.transfer.androidasync.http.server.d
    public String E() {
        return this.f55472l;
    }

    public void F(final String str, final ByteBufferList byteBufferList) {
        a().D(new Runnable() { // from class: com.transsion.transfer.androidasync.http.server.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f55452a.y(byteBufferList, str);
            }
        });
    }

    public void H(String str, String str2) {
        try {
            I(str, str2.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e11) {
            throw new AssertionError(e11);
        }
    }

    public void I(String str, byte[] bArr) {
        F(str, new ByteBufferList(bArr));
    }

    public void K(final InputStream inputStream, long j11) {
        long j12;
        long j13 = j11 - 1;
        String strC = this.f55465e.getHeaders().c("Range");
        if (strC != null) {
            String[] strArrSplit = strC.split(UrlUtils.EQUAL_MARK);
            if (strArrSplit.length != 2 || !"bytes".equals(strArrSplit[0])) {
                c(TTAdConstant.PACKAGE_NAME_CODE);
                d();
                return;
            }
            String[] strArrSplit2 = strArrSplit[1].split("-");
            try {
                if (strArrSplit2.length > 2) {
                    throw new MalformedRangeException();
                }
                long j14 = !TextUtils.isEmpty(strArrSplit2[0]) ? Long.parseLong(strArrSplit2[0]) : 0L;
                if (strArrSplit2.length == 2 && !TextUtils.isEmpty(strArrSplit2[1])) {
                    j13 = Long.parseLong(strArrSplit2[1]);
                }
                c(Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE);
                getHeaders().f("Content-Range", String.format(Locale.ENGLISH, "bytes %d-%d/%d", Long.valueOf(j14), Long.valueOf(j13), Long.valueOf(j11)));
                j12 = j14;
            } catch (Exception unused) {
                c(TTAdConstant.PACKAGE_NAME_CODE);
                d();
                return;
            }
        } else {
            j12 = 0;
        }
        try {
            if (j12 != inputStream.skip(j12)) {
                throw new StreamSkipException("skip failed to skip requested amount");
            }
            long j15 = (j13 - j12) + 1;
            this.f55462b = j15;
            this.f55461a.f(HttpHeaders.CONTENT_LENGTH, String.valueOf(j15));
            this.f55461a.f("Accept-Ranges", "bytes");
            if (this.f55465e.B().equals("HEAD")) {
                x();
                C();
            } else {
                if (this.f55462b != 0) {
                    a().D(new Runnable() { // from class: com.transsion.transfer.androidasync.http.server.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f55457a.B(inputStream);
                        }
                    });
                    return;
                }
                x();
                com.transsion.transfer.androidasync.util.d.a(inputStream);
                C();
            }
        } catch (Exception unused2) {
            c(500);
            d();
        }
    }

    @Override // com.transsion.transfer.androidasync.s
    public AsyncServer a() {
        return this.f55464d.a();
    }

    @Override // com.transsion.transfer.androidasync.http.server.d
    public int b() {
        return this.f55471k;
    }

    @Override // com.transsion.transfer.androidasync.http.server.d
    public d c(int i11) {
        this.f55471k = i11;
        return this;
    }

    @Override // com.transsion.transfer.androidasync.http.server.d, com.transsion.transfer.androidasync.s
    public void d() {
        if (this.f55469i) {
            return;
        }
        this.f55469i = true;
        boolean z10 = this.f55466f;
        if (z10 && this.f55467g == null) {
            return;
        }
        if (!z10) {
            this.f55461a.d("Transfer-Encoding");
        }
        com.transsion.transfer.androidasync.s sVar = this.f55467g;
        if (sVar instanceof ev.a) {
            sVar.d();
            return;
        }
        if (this.f55466f) {
            C();
        } else if (!this.f55465e.B().equalsIgnoreCase("HEAD")) {
            H("text/html", "");
        } else {
            x();
            C();
        }
    }

    @Override // bv.a
    public void g(Exception exc) {
        d();
    }

    @Override // com.transsion.transfer.androidasync.http.server.d
    public Headers getHeaders() {
        return this.f55461a;
    }

    @Override // com.transsion.transfer.androidasync.s
    public bv.j i() {
        com.transsion.transfer.androidasync.s sVar = this.f55467g;
        return sVar != null ? sVar.i() : this.f55468h;
    }

    @Override // com.transsion.transfer.androidasync.s
    public void l(ByteBufferList byteBufferList) {
        com.transsion.transfer.androidasync.s sVar;
        if (!this.f55466f) {
            s();
        }
        if (byteBufferList.C() == 0 || (sVar = this.f55467g) == null) {
            return;
        }
        sVar.l(byteBufferList);
    }

    @Override // com.transsion.transfer.androidasync.http.server.d
    public void n(File file, bv.e eVar) {
        try {
            this.f55463c = eVar;
            if (this.f55461a.c(HttpHeaders.CONTENT_TYPE) == null) {
                this.f55461a.f(HttpHeaders.CONTENT_TYPE, n.g(file.getAbsolutePath()));
            }
            K(new BufferedInputStream(new FileInputStream(file), RecorderConstants.RECORD_ENCODING_BITRATE_64000), file.length());
        } catch (FileNotFoundException unused) {
            c(TTAdConstant.DEEPLINK_FALLBACK_CODE);
            d();
        }
    }

    @Override // com.transsion.transfer.androidasync.s
    public void o(bv.j jVar) {
        com.transsion.transfer.androidasync.s sVar = this.f55467g;
        if (sVar != null) {
            sVar.o(jVar);
        } else {
            this.f55468h = jVar;
        }
    }

    @Override // com.transsion.transfer.androidasync.s
    public void p(bv.a aVar) {
        com.transsion.transfer.androidasync.s sVar = this.f55467g;
        if (sVar != null) {
            sVar.p(aVar);
        } else {
            this.f55473m = aVar;
        }
    }

    public b r() {
        return this.f55465e;
    }

    void s() {
        final boolean z10;
        if (this.f55466f) {
            return;
        }
        this.f55466f = true;
        String strC = this.f55461a.c("Transfer-Encoding");
        if ("".equals(strC)) {
            this.f55461a.e("Transfer-Encoding");
        }
        boolean z11 = ("Chunked".equalsIgnoreCase(strC) || strC == null) && !"close".equalsIgnoreCase(this.f55461a.c("Connection"));
        if (this.f55462b < 0) {
            String strC2 = this.f55461a.c(HttpHeaders.CONTENT_LENGTH);
            if (!TextUtils.isEmpty(strC2)) {
                this.f55462b = Long.valueOf(strC2).longValue();
            }
        }
        if (this.f55462b >= 0 || !z11) {
            z10 = false;
        } else {
            this.f55461a.f("Transfer-Encoding", "Chunked");
            z10 = true;
        }
        a0.h(this.f55464d, this.f55461a.g(String.format(Locale.ENGLISH, "%s %s %s", this.f55472l, Integer.valueOf(this.f55471k), AsyncHttpServer.l(this.f55471k))).getBytes(), new bv.a() { // from class: com.transsion.transfer.androidasync.http.server.e
            @Override // bv.a
            public final void g(Exception exc) {
                this.f55450a.u(z10, exc);
            }
        });
    }

    @Override // com.transsion.transfer.androidasync.http.server.d
    public void send(String str) {
        String strC = this.f55461a.c(HttpHeaders.CONTENT_TYPE);
        if (strC == null) {
            strC = "text/html; charset=utf-8";
        }
        H(strC, str);
    }

    public String toString() {
        return this.f55461a == null ? super.toString() : this.f55461a.g(String.format(Locale.ENGLISH, "%s %s %s", this.f55472l, Integer.valueOf(this.f55471k), AsyncHttpServer.l(this.f55471k)));
    }

    @Override // com.transsion.transfer.androidasync.http.server.d
    public void x() {
        s();
    }
}
