package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.integration.cronet.BufferQueue;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.mbridge.msdk.thrid.okio.s;
import com.transsion.mpush.core.config.MsgShowStatus;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c[] f38062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Map<com.mbridge.msdk.thrid.okio.f, Integer> f38063b;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<c> f38064a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.e f38065b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f38066c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f38067d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        c[] f38068e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f38069f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f38070g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f38071h;

        a(int i11, int i12, s sVar) {
            this.f38064a = new ArrayList();
            this.f38068e = new c[8];
            this.f38069f = 7;
            this.f38070g = 0;
            this.f38071h = 0;
            this.f38066c = i11;
            this.f38067d = i12;
            this.f38065b = com.mbridge.msdk.thrid.okio.l.a(sVar);
        }

        a(int i11, s sVar) {
            this(i11, i11, sVar);
        }

        private int a(int i11) {
            return this.f38069f + 1 + i11;
        }

        private void a() {
            int i11 = this.f38067d;
            int i12 = this.f38071h;
            if (i11 < i12) {
                if (i11 == 0) {
                    b();
                } else {
                    b(i12 - i11);
                }
            }
        }

        private void a(int i11, c cVar) {
            this.f38064a.add(cVar);
            int i12 = cVar.f38061c;
            if (i11 != -1) {
                i12 -= this.f38068e[a(i11)].f38061c;
            }
            int i13 = this.f38067d;
            if (i12 > i13) {
                b();
                return;
            }
            int iB = b((this.f38071h + i12) - i13);
            if (i11 == -1) {
                int i14 = this.f38070g + 1;
                c[] cVarArr = this.f38068e;
                if (i14 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f38069f = this.f38068e.length - 1;
                    this.f38068e = cVarArr2;
                }
                int i15 = this.f38069f;
                this.f38069f = i15 - 1;
                this.f38068e[i15] = cVar;
                this.f38070g++;
            } else {
                this.f38068e[i11 + a(i11) + iB] = cVar;
            }
            this.f38071h += i12;
        }

        private int b(int i11) {
            int i12;
            int i13 = 0;
            if (i11 > 0) {
                int length = this.f38068e.length;
                while (true) {
                    length--;
                    i12 = this.f38069f;
                    if (length < i12 || i11 <= 0) {
                        break;
                    }
                    int i14 = this.f38068e[length].f38061c;
                    i11 -= i14;
                    this.f38071h -= i14;
                    this.f38070g--;
                    i13++;
                }
                c[] cVarArr = this.f38068e;
                int i15 = i12 + 1;
                System.arraycopy(cVarArr, i15, cVarArr, i15 + i13, this.f38070g);
                this.f38069f += i13;
            }
            return i13;
        }

        private void b() {
            Arrays.fill(this.f38068e, (Object) null);
            this.f38069f = this.f38068e.length - 1;
            this.f38070g = 0;
            this.f38071h = 0;
        }

        private com.mbridge.msdk.thrid.okio.f c(int i11) throws IOException {
            if (d(i11)) {
                return d.f38062a[i11].f38059a;
            }
            int iA = a(i11 - d.f38062a.length);
            if (iA >= 0) {
                c[] cVarArr = this.f38068e;
                if (iA < cVarArr.length) {
                    return cVarArr[iA].f38059a;
                }
            }
            throw new IOException("Header index too large " + (i11 + 1));
        }

        private int d() throws IOException {
            return this.f38065b.readByte() & 255;
        }

        private boolean d(int i11) {
            return i11 >= 0 && i11 <= d.f38062a.length - 1;
        }

        private void e(int i11) throws IOException {
            if (d(i11)) {
                this.f38064a.add(d.f38062a[i11]);
                return;
            }
            int iA = a(i11 - d.f38062a.length);
            if (iA >= 0) {
                c[] cVarArr = this.f38068e;
                if (iA < cVarArr.length) {
                    this.f38064a.add(cVarArr[iA]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i11 + 1));
        }

        private void f(int i11) throws IOException {
            a(-1, new c(c(i11), e()));
        }

        private void g() throws IOException {
            a(-1, new c(d.a(e()), e()));
        }

        private void g(int i11) throws IOException {
            this.f38064a.add(new c(c(i11), e()));
        }

        private void h() throws IOException {
            this.f38064a.add(new c(d.a(e()), e()));
        }

        int a(int i11, int i12) throws IOException {
            int i13 = i11 & i12;
            if (i13 < i12) {
                return i13;
            }
            int i14 = 0;
            while (true) {
                int iD = d();
                if ((iD & 128) == 0) {
                    return i12 + (iD << i14);
                }
                i12 += (iD & 127) << i14;
                i14 += 7;
            }
        }

        public List<c> c() {
            ArrayList arrayList = new ArrayList(this.f38064a);
            this.f38064a.clear();
            return arrayList;
        }

        com.mbridge.msdk.thrid.okio.f e() throws IOException {
            int iD = d();
            boolean z10 = (iD & 128) == 128;
            int iA = a(iD, 127);
            return z10 ? com.mbridge.msdk.thrid.okio.f.a(k.b().a(this.f38065b.c(iA))) : this.f38065b.b(iA);
        }

        void f() throws IOException {
            while (!this.f38065b.f()) {
                byte b11 = this.f38065b.readByte();
                int i11 = b11 & 255;
                if (i11 == 128) {
                    throw new IOException("index == 0");
                }
                if ((b11 & 128) == 128) {
                    e(a(i11, 127) - 1);
                } else if (i11 == 64) {
                    g();
                } else if ((b11 & 64) == 64) {
                    f(a(i11, 63) - 1);
                } else if ((b11 & 32) == 32) {
                    int iA = a(i11, 31);
                    this.f38067d = iA;
                    if (iA < 0 || iA > this.f38066c) {
                        throw new IOException("Invalid dynamic table size update " + this.f38067d);
                    }
                    a();
                } else if (i11 == 16 || i11 == 0) {
                    h();
                } else {
                    g(a(i11, 15) - 1);
                }
            }
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.c f38072a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f38073b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f38074c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f38075d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f38076e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f38077f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        c[] f38078g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f38079h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f38080i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f38081j;

        b(int i11, boolean z10, com.mbridge.msdk.thrid.okio.c cVar) {
            this.f38074c = Integer.MAX_VALUE;
            this.f38078g = new c[8];
            this.f38079h = 7;
            this.f38080i = 0;
            this.f38081j = 0;
            this.f38076e = i11;
            this.f38077f = i11;
            this.f38073b = z10;
            this.f38072a = cVar;
        }

        b(com.mbridge.msdk.thrid.okio.c cVar) {
            this(4096, true, cVar);
        }

        private int a(int i11) {
            int i12;
            int i13 = 0;
            if (i11 > 0) {
                int length = this.f38078g.length;
                while (true) {
                    length--;
                    i12 = this.f38079h;
                    if (length < i12 || i11 <= 0) {
                        break;
                    }
                    int i14 = this.f38078g[length].f38061c;
                    i11 -= i14;
                    this.f38081j -= i14;
                    this.f38080i--;
                    i13++;
                }
                c[] cVarArr = this.f38078g;
                int i15 = i12 + 1;
                System.arraycopy(cVarArr, i15, cVarArr, i15 + i13, this.f38080i);
                c[] cVarArr2 = this.f38078g;
                int i16 = this.f38079h + 1;
                Arrays.fill(cVarArr2, i16, i16 + i13, (Object) null);
                this.f38079h += i13;
            }
            return i13;
        }

        private void a() {
            int i11 = this.f38077f;
            int i12 = this.f38081j;
            if (i11 < i12) {
                if (i11 == 0) {
                    b();
                } else {
                    a(i12 - i11);
                }
            }
        }

        private void a(c cVar) {
            int i11 = cVar.f38061c;
            int i12 = this.f38077f;
            if (i11 > i12) {
                b();
                return;
            }
            a((this.f38081j + i11) - i12);
            int i13 = this.f38080i + 1;
            c[] cVarArr = this.f38078g;
            if (i13 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f38079h = this.f38078g.length - 1;
                this.f38078g = cVarArr2;
            }
            int i14 = this.f38079h;
            this.f38079h = i14 - 1;
            this.f38078g[i14] = cVar;
            this.f38080i++;
            this.f38081j += i11;
        }

        private void b() {
            Arrays.fill(this.f38078g, (Object) null);
            this.f38079h = this.f38078g.length - 1;
            this.f38080i = 0;
            this.f38081j = 0;
        }

        void a(int i11, int i12, int i13) {
            if (i11 < i12) {
                this.f38072a.writeByte(i11 | i13);
                return;
            }
            this.f38072a.writeByte(i13 | i12);
            int i14 = i11 - i12;
            while (i14 >= 128) {
                this.f38072a.writeByte(128 | (i14 & 127));
                i14 >>>= 7;
            }
            this.f38072a.writeByte(i14);
        }

        void a(com.mbridge.msdk.thrid.okio.f fVar) throws IOException {
            if (!this.f38073b || k.b().a(fVar) >= fVar.e()) {
                a(fVar.e(), 127, 0);
                this.f38072a.a(fVar);
                return;
            }
            com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
            k.b().a(fVar, cVar);
            com.mbridge.msdk.thrid.okio.f fVarO = cVar.o();
            a(fVarO.e(), 127, 128);
            this.f38072a.a(fVarO);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0069  */
        void a(List<c> list) throws IOException {
            int length;
            int length2;
            if (this.f38075d) {
                int i11 = this.f38074c;
                if (i11 < this.f38077f) {
                    a(i11, 31, 32);
                }
                this.f38075d = false;
                this.f38074c = Integer.MAX_VALUE;
                a(this.f38077f, 31, 32);
            }
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                c cVar = list.get(i12);
                com.mbridge.msdk.thrid.okio.f fVarF = cVar.f38059a.f();
                com.mbridge.msdk.thrid.okio.f fVar = cVar.f38060b;
                Integer num = d.f38063b.get(fVarF);
                if (num != null) {
                    int iIntValue = num.intValue();
                    length2 = iIntValue + 1;
                    if (length2 <= 1 || length2 >= 8) {
                        length = length2;
                        length2 = -1;
                    } else {
                        c[] cVarArr = d.f38062a;
                        if (com.mbridge.msdk.thrid.okhttp.internal.c.a(cVarArr[iIntValue].f38060b, fVar)) {
                            length = length2;
                        } else if (com.mbridge.msdk.thrid.okhttp.internal.c.a(cVarArr[length2].f38060b, fVar)) {
                            length2 = iIntValue + 2;
                            length = length2;
                        } else {
                            length = length2;
                            length2 = -1;
                        }
                    }
                } else {
                    length = -1;
                    length2 = -1;
                }
                if (length2 == -1) {
                    int length3 = this.f38078g.length;
                    for (int i13 = this.f38079h + 1; i13 < length3; i13++) {
                        if (com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f38078g[i13].f38059a, fVarF)) {
                            if (com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f38078g[i13].f38060b, fVar)) {
                                length2 = (i13 - this.f38079h) + d.f38062a.length;
                                break;
                            } else if (length == -1) {
                                length = (i13 - this.f38079h) + d.f38062a.length;
                            }
                        }
                    }
                }
                if (length2 != -1) {
                    a(length2, 127, 128);
                } else if (length == -1) {
                    this.f38072a.writeByte(64);
                    a(fVarF);
                    a(fVar);
                    a(cVar);
                } else if (!fVarF.b(c.f38053d) || c.f38058i.equals(fVarF)) {
                    a(length, 63, 64);
                    a(fVar);
                    a(cVar);
                } else {
                    a(length, 15, 0);
                    a(fVar);
                }
            }
        }

        void b(int i11) {
            this.f38076e = i11;
            int iMin = Math.min(i11, 16384);
            int i12 = this.f38077f;
            if (i12 == iMin) {
                return;
            }
            if (iMin < i12) {
                this.f38074c = Math.min(this.f38074c, iMin);
            }
            this.f38075d = true;
            this.f38077f = iMin;
            a();
        }
    }

    static {
        c cVar = new c(c.f38058i, "");
        com.mbridge.msdk.thrid.okio.f fVar = c.f38055f;
        c cVar2 = new c(fVar, "GET");
        c cVar3 = new c(fVar, "POST");
        com.mbridge.msdk.thrid.okio.f fVar2 = c.f38056g;
        c cVar4 = new c(fVar2, "/");
        c cVar5 = new c(fVar2, "/index.html");
        com.mbridge.msdk.thrid.okio.f fVar3 = c.f38057h;
        c cVar6 = new c(fVar3, "http");
        c cVar7 = new c(fVar3, "https");
        com.mbridge.msdk.thrid.okio.f fVar4 = c.f38054e;
        f38062a = new c[]{cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, new c(fVar4, MsgShowStatus.STATUS_OK), new c(fVar4, "204"), new c(fVar4, "206"), new c(fVar4, "304"), new c(fVar4, "400"), new c(fVar4, "404"), new c(fVar4, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c(BufferQueue.CONTENT_ENCODING, ""), new c("content-language", ""), new c(BufferQueue.CONTENT_LENGTH, ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c(DownloadModel.ETAG, ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c(RequestParameters.SUBRESOURCE_LOCATION, ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c(RequestParameters.SUBRESOURCE_REFERER, ""), new c(ToolBar.REFRESH, ""), new c("retry-after", ""), new c(TmcConstants.CHANNEL_REQUEST_SERVER, ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};
        f38063b = a();
    }

    static com.mbridge.msdk.thrid.okio.f a(com.mbridge.msdk.thrid.okio.f fVar) throws IOException {
        int iE = fVar.e();
        for (int i11 = 0; i11 < iE; i11++) {
            byte bA = fVar.a(i11);
            if (bA >= 65 && bA <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + fVar.h());
            }
        }
        return fVar;
    }

    private static Map<com.mbridge.msdk.thrid.okio.f, Integer> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f38062a.length);
        int i11 = 0;
        while (true) {
            c[] cVarArr = f38062a;
            if (i11 >= cVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(cVarArr[i11].f38059a)) {
                linkedHashMap.put(cVarArr[i11].f38059a, Integer.valueOf(i11));
            }
            i11++;
        }
    }
}
