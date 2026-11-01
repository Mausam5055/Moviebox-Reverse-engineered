package com.transsion.transfer.androidasync.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.transsion.transfer.androidasync.AsyncServer;
import com.transsion.transfer.androidasync.http.filter.ChunkedInputFilter;

/* JADX INFO: loaded from: classes6.dex */
public class HttpUtil {

    static class EndEmitter extends com.transsion.transfer.androidasync.t {
        private EndEmitter() {
        }

        public static EndEmitter P(AsyncServer asyncServer, final Exception exc) {
            EndEmitter endEmitter = new EndEmitter();
            asyncServer.D(new Runnable() { // from class: com.transsion.transfer.androidasync.http.HttpUtil.EndEmitter.1
                @Override // java.lang.Runnable
                public void run() {
                    EndEmitter.this.M(exc);
                }
            });
            return endEmitter;
        }
    }

    public static long a(Headers headers) {
        String strC = headers.c(HttpHeaders.CONTENT_LENGTH);
        if (strC == null) {
            return -1L;
        }
        try {
            return Long.parseLong(strC);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static cv.a b(com.transsion.transfer.androidasync.p pVar, bv.a aVar, Headers headers) {
        String strC = headers.c(HttpHeaders.CONTENT_TYPE);
        if (strC == null) {
            return null;
        }
        String[] strArrSplit = strC.split(";");
        for (int i11 = 0; i11 < strArrSplit.length; i11++) {
            strArrSplit[i11] = strArrSplit[i11].trim();
        }
        for (String str : strArrSplit) {
            if ("application/x-www-form-urlencoded".equals(str)) {
                return new cv.h();
            }
            if ("application/json".equals(str)) {
                return new cv.b();
            }
            if (ShareConstant.SHARE_TYPE_TEXT.equals(str)) {
                return new cv.f();
            }
            if (str != null && str.startsWith("multipart/")) {
                return new cv.c(strC);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0079  */
    /* JADX WARN: Code duplicated, block: B:29:0x0083  */
    /* JADX WARN: Code duplicated, block: B:31:0x008f  */
    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    public static com.transsion.transfer.androidasync.p c(com.transsion.transfer.androidasync.p pVar, Protocol protocol, Headers headers, boolean z10) {
        long j11;
        com.transsion.transfer.androidasync.t chunkedInputFilter;
        com.transsion.transfer.androidasync.t dVar;
        try {
            String strC = headers.c(HttpHeaders.CONTENT_LENGTH);
            j11 = strC != null ? Long.parseLong(strC) : -1L;
        } catch (NumberFormatException unused) {
        }
        if (-1 == j11) {
            if ("chunked".equalsIgnoreCase(headers.c("Transfer-Encoding"))) {
                chunkedInputFilter = new ChunkedInputFilter();
                chunkedInputFilter.N(pVar);
            } else if (z10) {
                EndEmitter endEmitterP = EndEmitter.P(pVar.a(), null);
                endEmitterP.N(pVar);
                return endEmitterP;
            }
            if ("gzip".equals(headers.c(HttpHeaders.CONTENT_ENCODING))) {
                dVar = new ev.c();
                dVar.N(pVar);
            } else {
                if ("deflate".equals(headers.c(HttpHeaders.CONTENT_ENCODING))) {
                    return pVar;
                }
                dVar = new ev.d();
                dVar.N(pVar);
            }
            return dVar;
        }
        if (j11 < 0) {
            EndEmitter endEmitterP2 = EndEmitter.P(pVar.a(), new BodyDecoderException("not using chunked encoding, and no content-length found."));
            endEmitterP2.N(pVar);
            return endEmitterP2;
        }
        if (j11 == 0) {
            EndEmitter endEmitterP3 = EndEmitter.P(pVar.a(), null);
            endEmitterP3.N(pVar);
            return endEmitterP3;
        }
        chunkedInputFilter = new ev.b(j11);
        chunkedInputFilter.N(pVar);
        pVar = chunkedInputFilter;
        if ("gzip".equals(headers.c(HttpHeaders.CONTENT_ENCODING))) {
            dVar = new ev.c();
            dVar.N(pVar);
        } else {
            if ("deflate".equals(headers.c(HttpHeaders.CONTENT_ENCODING))) {
                return pVar;
            }
            dVar = new ev.d();
            dVar.N(pVar);
        }
        return dVar;
    }

    public static boolean d(Protocol protocol, Headers headers) {
        String strC = headers.c("Connection");
        if (strC == null) {
            return protocol == Protocol.HTTP_1_1;
        }
        return "keep-alive".equalsIgnoreCase(strC);
    }

    public static boolean e(String str, Headers headers) {
        String strC = headers.c("Connection");
        if (strC == null) {
            return Protocol.get(str) == Protocol.HTTP_1_1;
        }
        return "keep-alive".equalsIgnoreCase(strC);
    }
}
