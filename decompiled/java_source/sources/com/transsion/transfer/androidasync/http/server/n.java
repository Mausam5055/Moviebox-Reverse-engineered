package com.transsion.transfer.androidasync.http.server;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.transfer.androidasync.http.b0;
import com.transsion.transfer.androidasync.http.f0;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class n implements r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static Hashtable f55476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static Hashtable f55477d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayList f55478a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f55479b = new b();

    abstract class a extends com.transsion.transfer.androidasync.http.server.c {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        Matcher f55480o;

        a() {
        }
    }

    class b implements q, r {
        b() {
        }

        @Override // com.transsion.transfer.androidasync.http.server.r
        public d a(String str, String str2) {
            return n.this.a(str, str2);
        }

        @Override // com.transsion.transfer.androidasync.http.server.q
        public void b(com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
            d dVarA = a(bVar.B(), bVar.getPath());
            if (dVarA != null) {
                dVarA.f55489d.b(bVar, dVar);
            } else {
                dVar.c(TTAdConstant.DEEPLINK_FALLBACK_CODE);
                dVar.d();
            }
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f55483a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Pattern f55484b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        q f55485c;

        private c() {
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55486a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f55487b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Matcher f55488c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final q f55489d;

        private d(String str, String str2, Matcher matcher, q qVar, com.transsion.transfer.androidasync.http.server.a aVar) {
            this.f55486a = str;
            this.f55487b = str2;
            this.f55488c = matcher;
            this.f55489d = qVar;
        }
    }

    static {
        Hashtable hashtable = new Hashtable();
        f55476c = hashtable;
        hashtable.put("js", "application/javascript");
        f55476c.put("json", "application/json");
        f55476c.put("png", "image/png");
        f55476c.put("jpg", "image/jpeg");
        f55476c.put("jpeg", "image/jpeg");
        f55476c.put("html", "text/html");
        f55476c.put("css", "text/css");
        f55476c.put("mp4", MimeTypes.VIDEO_MP4);
        f55476c.put("mov", "video/quicktime");
        f55476c.put("wmv", "video/x-ms-wmv");
        f55476c.put("txt", ShareConstant.SHARE_TYPE_TEXT);
        f55477d = new Hashtable();
    }

    public static b0 e(String str, com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
        String strC = bVar.getHeaders().c("Connection");
        boolean z10 = false;
        if (strC != null) {
            for (String str2 : strC.split(",")) {
                if ("Upgrade".equalsIgnoreCase(str2.trim())) {
                    z10 = true;
                    break;
                }
            }
        }
        if ("websocket".equalsIgnoreCase(bVar.getHeaders().c("Upgrade")) && z10 && TextUtils.equals(str, bVar.getHeaders().c("Sec-WebSocket-Protocol"))) {
            return new f0(bVar, dVar);
        }
        return null;
    }

    public static String g(String str) {
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf == -1) {
            return null;
        }
        String str2 = (String) f55476c.get(str.substring(iLastIndexOf + 1));
        if (str2 != null) {
            return str2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(String str, AsyncHttpServer.a aVar, com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
        b0 b0VarE = e(str, bVar, dVar);
        if (b0VarE != null) {
            aVar.a(b0VarE, bVar);
        } else {
            dVar.c(TTAdConstant.DEEPLINK_FALLBACK_CODE);
            dVar.d();
        }
    }

    @Override // com.transsion.transfer.androidasync.http.server.r
    public d a(String str, String str2) {
        synchronized (this.f55478a) {
            try {
                for (c cVar : this.f55478a) {
                    if (TextUtils.equals(str, cVar.f55483a) || cVar.f55483a == null) {
                        Matcher matcher = cVar.f55484b.matcher(str2);
                        if (matcher.matches()) {
                            q qVar = cVar.f55485c;
                            if (qVar instanceof r) {
                                return ((r) cVar.f55485c).a(str, matcher.group(1));
                            }
                            return new d(str, str2, matcher, qVar, null);
                        }
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void c(String str, String str2, q qVar) {
        d(str, str2, qVar, null);
    }

    public void d(String str, String str2, q qVar, com.transsion.transfer.androidasync.http.server.a aVar) {
        c cVar = new c();
        cVar.f55484b = Pattern.compile("^" + str2);
        cVar.f55485c = qVar;
        cVar.f55483a = str;
        synchronized (this.f55478a) {
            this.f55478a.add(cVar);
        }
    }

    public void f(String str, q qVar) {
        c("GET", str, qVar);
    }

    public void i(String str, q qVar) {
        c("POST", str, qVar);
    }

    public void j(String str, final String str2, final AsyncHttpServer.a aVar) {
        f(str, new q() { // from class: com.transsion.transfer.androidasync.http.server.l
            @Override // com.transsion.transfer.androidasync.http.server.q
            public final void b(b bVar, d dVar) {
                n.h(str2, aVar, bVar, dVar);
            }
        });
    }
}
