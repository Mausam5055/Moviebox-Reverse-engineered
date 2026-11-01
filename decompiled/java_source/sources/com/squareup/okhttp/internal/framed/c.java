package com.squareup.okhttp.internal.framed;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.integration.cronet.BufferQueue;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.transsion.mpush.core.config.MsgShowStatus;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.squareup.okhttp.internal.framed.b[] f40373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f40374b;

    static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final BufferedSource f40376b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f40377c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f40378d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        com.squareup.okhttp.internal.framed.b[] f40379e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f40380f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f40375a = new ArrayList();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f40381g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f40382h = 0;

        a(int i11, Source source) {
            com.squareup.okhttp.internal.framed.b[] bVarArr = new com.squareup.okhttp.internal.framed.b[8];
            this.f40379e = bVarArr;
            this.f40380f = bVarArr.length - 1;
            this.f40377c = i11;
            this.f40378d = i11;
            this.f40376b = Okio.buffer(source);
        }

        private void a() {
            int i11 = this.f40378d;
            int i12 = this.f40382h;
            if (i11 < i12) {
                if (i11 == 0) {
                    b();
                } else {
                    d(i12 - i11);
                }
            }
        }

        private void b() {
            this.f40375a.clear();
            Arrays.fill(this.f40379e, (Object) null);
            this.f40380f = this.f40379e.length - 1;
            this.f40381g = 0;
            this.f40382h = 0;
        }

        private int c(int i11) {
            return this.f40380f + 1 + i11;
        }

        private int d(int i11) {
            int i12;
            int i13 = 0;
            if (i11 > 0) {
                int length = this.f40379e.length;
                while (true) {
                    length--;
                    i12 = this.f40380f;
                    if (length < i12 || i11 <= 0) {
                        break;
                    }
                    int i14 = this.f40379e[length].f40372c;
                    i11 -= i14;
                    this.f40382h -= i14;
                    this.f40381g--;
                    i13++;
                }
                com.squareup.okhttp.internal.framed.b[] bVarArr = this.f40379e;
                System.arraycopy(bVarArr, i12 + 1, bVarArr, i12 + 1 + i13, this.f40381g);
                this.f40380f += i13;
            }
            return i13;
        }

        private ByteString f(int i11) {
            return i(i11) ? c.f40373a[i11].f40370a : this.f40379e[c(i11 - c.f40373a.length)].f40370a;
        }

        private void h(int i11, com.squareup.okhttp.internal.framed.b bVar) {
            this.f40375a.add(bVar);
            int i12 = bVar.f40372c;
            if (i11 != -1) {
                i12 -= this.f40379e[c(i11)].f40372c;
            }
            int i13 = this.f40378d;
            if (i12 > i13) {
                b();
                return;
            }
            int iD = d((this.f40382h + i12) - i13);
            if (i11 == -1) {
                int i14 = this.f40381g + 1;
                com.squareup.okhttp.internal.framed.b[] bVarArr = this.f40379e;
                if (i14 > bVarArr.length) {
                    com.squareup.okhttp.internal.framed.b[] bVarArr2 = new com.squareup.okhttp.internal.framed.b[bVarArr.length * 2];
                    System.arraycopy(bVarArr, 0, bVarArr2, bVarArr.length, bVarArr.length);
                    this.f40380f = this.f40379e.length - 1;
                    this.f40379e = bVarArr2;
                }
                int i15 = this.f40380f;
                this.f40380f = i15 - 1;
                this.f40379e[i15] = bVar;
                this.f40381g++;
            } else {
                this.f40379e[i11 + c(i11) + iD] = bVar;
            }
            this.f40382h += i12;
        }

        private boolean i(int i11) {
            return i11 >= 0 && i11 <= c.f40373a.length - 1;
        }

        private int j() {
            return this.f40376b.readByte() & 255;
        }

        private void m(int i11) throws IOException {
            if (i(i11)) {
                this.f40375a.add(c.f40373a[i11]);
                return;
            }
            int iC = c(i11 - c.f40373a.length);
            if (iC >= 0) {
                com.squareup.okhttp.internal.framed.b[] bVarArr = this.f40379e;
                if (iC <= bVarArr.length - 1) {
                    this.f40375a.add(bVarArr[iC]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i11 + 1));
        }

        private void o(int i11) {
            h(-1, new com.squareup.okhttp.internal.framed.b(f(i11), k()));
        }

        private void p() {
            h(-1, new com.squareup.okhttp.internal.framed.b(c.d(k()), k()));
        }

        private void q(int i11) {
            this.f40375a.add(new com.squareup.okhttp.internal.framed.b(f(i11), k()));
        }

        private void r() throws IOException {
            this.f40375a.add(new com.squareup.okhttp.internal.framed.b(c.d(k()), k()));
        }

        public List e() {
            ArrayList arrayList = new ArrayList(this.f40375a);
            this.f40375a.clear();
            return arrayList;
        }

        void g(int i11) {
            this.f40377c = i11;
            this.f40378d = i11;
            a();
        }

        ByteString k() {
            int iJ = j();
            boolean z10 = (iJ & 128) == 128;
            int iN = n(iJ, 127);
            return z10 ? ByteString.of(e.d().c(this.f40376b.readByteArray(iN))) : this.f40376b.readByteString(iN);
        }

        void l() throws IOException {
            while (!this.f40376b.exhausted()) {
                byte b11 = this.f40376b.readByte();
                int i11 = b11 & 255;
                if (i11 == 128) {
                    throw new IOException("index == 0");
                }
                if ((b11 & 128) == 128) {
                    m(n(i11, 127) - 1);
                } else if (i11 == 64) {
                    p();
                } else if ((b11 & 64) == 64) {
                    o(n(i11, 63) - 1);
                } else if ((b11 & 32) == 32) {
                    int iN = n(i11, 31);
                    this.f40378d = iN;
                    if (iN < 0 || iN > this.f40377c) {
                        throw new IOException("Invalid dynamic table size update " + this.f40378d);
                    }
                    a();
                } else if (i11 == 16 || i11 == 0) {
                    r();
                } else {
                    q(n(i11, 15) - 1);
                }
            }
        }

        int n(int i11, int i12) {
            int i13 = i11 & i12;
            if (i13 < i12) {
                return i13;
            }
            int i14 = 0;
            while (true) {
                int iJ = j();
                if ((iJ & 128) == 0) {
                    return i12 + (iJ << i14);
                }
                i12 += (iJ & 127) << i14;
                i14 += 7;
            }
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Buffer f40383a;

        b(Buffer buffer) {
            this.f40383a = buffer;
        }

        void a(ByteString byteString) {
            c(byteString.size(), 127, 0);
            this.f40383a.write(byteString);
        }

        void b(List list) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                ByteString asciiLowercase = ((com.squareup.okhttp.internal.framed.b) list.get(i11)).f40370a.toAsciiLowercase();
                Integer num = (Integer) c.f40374b.get(asciiLowercase);
                if (num != null) {
                    c(num.intValue() + 1, 15, 0);
                    a(((com.squareup.okhttp.internal.framed.b) list.get(i11)).f40371b);
                } else {
                    this.f40383a.writeByte(0);
                    a(asciiLowercase);
                    a(((com.squareup.okhttp.internal.framed.b) list.get(i11)).f40371b);
                }
            }
        }

        void c(int i11, int i12, int i13) {
            if (i11 < i12) {
                this.f40383a.writeByte(i11 | i13);
                return;
            }
            this.f40383a.writeByte(i13 | i12);
            int i14 = i11 - i12;
            while (i14 >= 128) {
                this.f40383a.writeByte(128 | (i14 & 127));
                i14 >>>= 7;
            }
            this.f40383a.writeByte(i14);
        }
    }

    static {
        com.squareup.okhttp.internal.framed.b bVar = new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f40367h, "");
        ByteString byteString = com.squareup.okhttp.internal.framed.b.f40364e;
        com.squareup.okhttp.internal.framed.b bVar2 = new com.squareup.okhttp.internal.framed.b(byteString, "GET");
        com.squareup.okhttp.internal.framed.b bVar3 = new com.squareup.okhttp.internal.framed.b(byteString, "POST");
        ByteString byteString2 = com.squareup.okhttp.internal.framed.b.f40365f;
        com.squareup.okhttp.internal.framed.b bVar4 = new com.squareup.okhttp.internal.framed.b(byteString2, "/");
        com.squareup.okhttp.internal.framed.b bVar5 = new com.squareup.okhttp.internal.framed.b(byteString2, "/index.html");
        ByteString byteString3 = com.squareup.okhttp.internal.framed.b.f40366g;
        com.squareup.okhttp.internal.framed.b bVar6 = new com.squareup.okhttp.internal.framed.b(byteString3, "http");
        com.squareup.okhttp.internal.framed.b bVar7 = new com.squareup.okhttp.internal.framed.b(byteString3, "https");
        ByteString byteString4 = com.squareup.okhttp.internal.framed.b.f40363d;
        f40373a = new com.squareup.okhttp.internal.framed.b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, new com.squareup.okhttp.internal.framed.b(byteString4, MsgShowStatus.STATUS_OK), new com.squareup.okhttp.internal.framed.b(byteString4, "204"), new com.squareup.okhttp.internal.framed.b(byteString4, "206"), new com.squareup.okhttp.internal.framed.b(byteString4, "304"), new com.squareup.okhttp.internal.framed.b(byteString4, "400"), new com.squareup.okhttp.internal.framed.b(byteString4, "404"), new com.squareup.okhttp.internal.framed.b(byteString4, "500"), new com.squareup.okhttp.internal.framed.b("accept-charset", ""), new com.squareup.okhttp.internal.framed.b("accept-encoding", "gzip, deflate"), new com.squareup.okhttp.internal.framed.b("accept-language", ""), new com.squareup.okhttp.internal.framed.b("accept-ranges", ""), new com.squareup.okhttp.internal.framed.b("accept", ""), new com.squareup.okhttp.internal.framed.b("access-control-allow-origin", ""), new com.squareup.okhttp.internal.framed.b("age", ""), new com.squareup.okhttp.internal.framed.b("allow", ""), new com.squareup.okhttp.internal.framed.b("authorization", ""), new com.squareup.okhttp.internal.framed.b("cache-control", ""), new com.squareup.okhttp.internal.framed.b("content-disposition", ""), new com.squareup.okhttp.internal.framed.b(BufferQueue.CONTENT_ENCODING, ""), new com.squareup.okhttp.internal.framed.b("content-language", ""), new com.squareup.okhttp.internal.framed.b(BufferQueue.CONTENT_LENGTH, ""), new com.squareup.okhttp.internal.framed.b("content-location", ""), new com.squareup.okhttp.internal.framed.b("content-range", ""), new com.squareup.okhttp.internal.framed.b("content-type", ""), new com.squareup.okhttp.internal.framed.b("cookie", ""), new com.squareup.okhttp.internal.framed.b("date", ""), new com.squareup.okhttp.internal.framed.b(DownloadModel.ETAG, ""), new com.squareup.okhttp.internal.framed.b("expect", ""), new com.squareup.okhttp.internal.framed.b("expires", ""), new com.squareup.okhttp.internal.framed.b("from", ""), new com.squareup.okhttp.internal.framed.b("host", ""), new com.squareup.okhttp.internal.framed.b("if-match", ""), new com.squareup.okhttp.internal.framed.b("if-modified-since", ""), new com.squareup.okhttp.internal.framed.b("if-none-match", ""), new com.squareup.okhttp.internal.framed.b("if-range", ""), new com.squareup.okhttp.internal.framed.b("if-unmodified-since", ""), new com.squareup.okhttp.internal.framed.b("last-modified", ""), new com.squareup.okhttp.internal.framed.b("link", ""), new com.squareup.okhttp.internal.framed.b(RequestParameters.SUBRESOURCE_LOCATION, ""), new com.squareup.okhttp.internal.framed.b("max-forwards", ""), new com.squareup.okhttp.internal.framed.b("proxy-authenticate", ""), new com.squareup.okhttp.internal.framed.b("proxy-authorization", ""), new com.squareup.okhttp.internal.framed.b("range", ""), new com.squareup.okhttp.internal.framed.b(RequestParameters.SUBRESOURCE_REFERER, ""), new com.squareup.okhttp.internal.framed.b(ToolBar.REFRESH, ""), new com.squareup.okhttp.internal.framed.b("retry-after", ""), new com.squareup.okhttp.internal.framed.b(TmcConstants.CHANNEL_REQUEST_SERVER, ""), new com.squareup.okhttp.internal.framed.b("set-cookie", ""), new com.squareup.okhttp.internal.framed.b("strict-transport-security", ""), new com.squareup.okhttp.internal.framed.b("transfer-encoding", ""), new com.squareup.okhttp.internal.framed.b("user-agent", ""), new com.squareup.okhttp.internal.framed.b("vary", ""), new com.squareup.okhttp.internal.framed.b("via", ""), new com.squareup.okhttp.internal.framed.b("www-authenticate", "")};
        f40374b = e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ByteString d(ByteString byteString) throws IOException {
        int size = byteString.size();
        for (int i11 = 0; i11 < size; i11++) {
            byte b11 = byteString.getByte(i11);
            if (b11 >= 65 && b11 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }

    private static Map e() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f40373a.length);
        int i11 = 0;
        while (true) {
            com.squareup.okhttp.internal.framed.b[] bVarArr = f40373a;
            if (i11 >= bVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(bVarArr[i11].f40370a)) {
                linkedHashMap.put(bVarArr[i11].f40370a, Integer.valueOf(i11));
            }
            i11++;
        }
    }
}
