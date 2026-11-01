package com.mbridge.msdk.click;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.s0;
import java.net.URI;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes5.dex */
public class p extends f implements com.mbridge.msdk.foundation.same.task.a.InterfaceC0492a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f34388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JumpLoaderResult f34389c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f34391e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f34392f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.task.b f34393g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.mbridge.msdk.click.entity.a f34394h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f34390d = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f34395i = new Handler(Looper.getMainLooper());

    class a implements k {
        a() {
        }

        @Override // com.mbridge.msdk.click.k
        public void a(JumpLoaderResult jumpLoaderResult) {
            p.this.f34389c = jumpLoaderResult;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (p.this.f34388b != null) {
                if (p.this.f34389c.isSuccess()) {
                    p.this.f34388b.a(p.this.f34389c);
                } else {
                    p.this.f34388b.a(p.this.f34389c, p.this.f34389c.getMsg());
                }
            }
        }
    }

    private class c extends com.mbridge.msdk.foundation.same.task.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f34399b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f34400c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f34401d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f34402e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CampaignEx f34403f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f34404g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f34405h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f34406i;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Semaphore f34398a = new Semaphore(0);

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private o.f f34407j = new a();

        class a implements o.f {
            a() {
            }

            private void a() {
                synchronized (p.this) {
                    p.this.f34389c.setSuccess(true);
                    c.this.a();
                }
            }

            @Override // com.mbridge.msdk.click.o.f
            public void a(int i11, String str, String str2, String str3) {
                if (!TextUtils.isEmpty(str2)) {
                    p.this.f34389c.setExceptionMsg(str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    p.this.f34389c.setContent(str3);
                }
                c.this.d(str);
                a();
            }

            @Override // com.mbridge.msdk.click.o.f
            public void a(String str, boolean z10, String str2) {
                c.this.d(str);
                p.this.f34389c.setContent(str2);
                a();
            }

            @Override // com.mbridge.msdk.click.o.f
            public boolean a(String str) {
                boolean zD = c.this.d(str);
                if (zD) {
                    a();
                }
                return zD;
            }

            @Override // com.mbridge.msdk.click.o.f
            public boolean b(String str) {
                return false;
            }

            @Override // com.mbridge.msdk.click.o.f
            public boolean c(String str) {
                boolean zD = c.this.d(str);
                if (zD) {
                    a();
                }
                return zD;
            }
        }

        public c(Context context, String str, String str2, String str3, CampaignEx campaignEx, boolean z10, boolean z11, int i11) {
            this.f34399b = context;
            this.f34400c = str;
            this.f34401d = str2;
            this.f34402e = str3;
            this.f34403f = campaignEx;
            this.f34404g = z10;
            this.f34405h = z11;
            this.f34406i = i11;
        }

        private JumpLoaderResult a(String str, boolean z10, boolean z11, CampaignEx campaignEx, int i11) {
            String scheme;
            String str2;
            String strA = str;
            String host = "";
            if (p.this.f34391e) {
                String strA2 = com.mbridge.msdk.setting.b.a(this.f34399b, strA);
                if (!TextUtils.isEmpty(strA2)) {
                    strA = strA + strA2;
                }
            }
            if (com.mbridge.msdk.util.b.a()) {
                strA = q.a(this.f34403f, strA);
            }
            String str3 = strA;
            JumpLoaderResult jumpLoaderResult = new JumpLoaderResult();
            i iVar = new i();
            try {
                if (b(str3)) {
                    str2 = "";
                } else {
                    URI uriCreate = URI.create(str3);
                    scheme = uriCreate.getScheme();
                    try {
                        host = uriCreate.getHost();
                    } catch (Exception e11) {
                        e = e11;
                        e.printStackTrace();
                    }
                    str2 = host;
                    host = scheme;
                }
            } catch (Exception e12) {
                e = e12;
                scheme = "";
            }
            String strA3 = str3;
            String scheme2 = host;
            String host2 = str2;
            for (int i12 = 0; i12 < 10; i12++) {
                if (!p.this.f34390d) {
                    return null;
                }
                p.this.f34394h = iVar.a(strA3, z10, z11, campaignEx);
                if (p.this.f34394h == null) {
                    jumpLoaderResult.setUrl(strA3);
                    jumpLoaderResult.setSuccess(false);
                    jumpLoaderResult.setMsg("request url is invalided");
                    break;
                }
                if (!TextUtils.isEmpty(p.this.f34394h.f34318h)) {
                    jumpLoaderResult.setUrl(strA3);
                    jumpLoaderResult.setExceptionMsg(p.this.f34394h.f34318h);
                    jumpLoaderResult.setType(1);
                    jumpLoaderResult.setHeader(p.this.f34394h.a());
                    jumpLoaderResult.setSuccess(false);
                    if (i12 != 0) {
                        break;
                    }
                    com.mbridge.msdk.click.retry.a.b().a(strA3, p.this.f34394h.f34318h, campaignEx, this.f34402e, z10, z11, i11);
                    break;
                }
                jumpLoaderResult.setSuccess(true);
                if (!b(p.this.f34394h.f34316f)) {
                    if (!a(p.this.f34394h.f34316f)) {
                        jumpLoaderResult.setjumpDone(false);
                        jumpLoaderResult.setUrl(strA3);
                        if (i12 != 0) {
                            break;
                        }
                        com.mbridge.msdk.click.retry.a.b().a(strA3, "error code:" + p.this.f34394h.f34316f, campaignEx, this.f34402e, z10, z11, i11);
                        break;
                    }
                    jumpLoaderResult.setjumpDone(true);
                    jumpLoaderResult.setUrl(strA3);
                    jumpLoaderResult.setContent(p.this.f34394h.f34317g);
                    break;
                }
                jumpLoaderResult.setIs302Jump(true);
                if (TextUtils.isEmpty(p.this.f34394h.f34311a)) {
                    jumpLoaderResult.setjumpDone(true);
                    jumpLoaderResult.setUrl(strA3);
                    break;
                }
                strA3 = p.this.f34394h.f34311a;
                if (b(strA3)) {
                    if (!c(strA3) || TextUtils.isEmpty(scheme2) || TextUtils.isEmpty(host2)) {
                        jumpLoaderResult.setjumpDone(true);
                        jumpLoaderResult.setUrl(strA3);
                        break;
                    }
                    strA3 = scheme2 + "://" + host2 + strA3;
                    host2 = null;
                    scheme2 = null;
                } else if (!b(strA3)) {
                    try {
                        URI uriCreate2 = URI.create(strA3);
                        scheme2 = uriCreate2.getScheme();
                        host2 = uriCreate2.getHost();
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                }
                if (a(strA3)) {
                    jumpLoaderResult.setjumpDone(true);
                    jumpLoaderResult.setUrl(strA3);
                    break;
                }
                if (p.this.f34391e) {
                    String strA4 = com.mbridge.msdk.setting.b.a(this.f34399b, strA3);
                    if (!TextUtils.isEmpty(strA4)) {
                        strA3 = strA3 + strA4;
                    }
                }
                if (com.mbridge.msdk.util.b.a()) {
                    strA3 = q.a(this.f34403f, strA3);
                }
            }
            return jumpLoaderResult;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.f34398a.release();
        }

        private boolean a(int i11) {
            return i11 == 200;
        }

        private boolean a(String str) {
            return s0.a.b(str);
        }

        private boolean b(int i11) {
            return i11 == 301 || i11 == 302 || i11 == 307;
        }

        private boolean b(String str) {
            return !URLUtil.isNetworkUrl(str);
        }

        private boolean c(String str) {
            return str.startsWith("/");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean d(String str) {
            return q.a(str, this.f34403f, p.this.f34389c);
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void cancelTask() {
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void pauseTask(boolean z10) {
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void runTask() {
            if (p.this.f34388b != null) {
                p.this.f34388b.b(null);
            }
            p.this.f34389c = new JumpLoaderResult();
            p.this.f34389c.setUrl(this.f34400c);
            p.this.f34389c = a(this.f34400c, this.f34404g, this.f34405h, this.f34403f, this.f34406i);
            if (!TextUtils.isEmpty(p.this.f34389c.getExceptionMsg())) {
                p.this.f34389c.setSuccess(true);
            }
            if (p.this.f34390d && p.this.f34389c.isSuccess()) {
                if (p.this.f34394h != null) {
                    p.this.f34389c.setStatusCode(p.this.f34394h.f34316f);
                }
                q.a(this.f34403f, p.this.f34389c, p.this.f34394h, this.f34401d, this.f34402e, this.f34399b, this.f34407j, this.f34398a);
            }
        }
    }

    public p(Context context) {
        this.f34392f = context;
        this.f34393g = new com.mbridge.msdk.foundation.same.task.b(context, 2);
    }

    @Override // com.mbridge.msdk.foundation.same.task.a.InterfaceC0492a
    public void a(com.mbridge.msdk.foundation.same.task.a.b bVar) {
        if (bVar == com.mbridge.msdk.foundation.same.task.a.b.FINISH && this.f34390d) {
            this.f34395i.post(new b());
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void a(String str, g gVar, boolean z10, String str2, String str3, CampaignEx campaignEx, boolean z11, boolean z12, int i11) {
        com.mbridge.msdk.foundation.same.task.a cVar;
        this.f34388b = gVar;
        this.f34391e = z10;
        com.mbridge.msdk.click.entity.b bVar = new com.mbridge.msdk.click.entity.b();
        bVar.a(this.f34392f);
        bVar.c(str);
        bVar.b(z10);
        bVar.a(str2);
        bVar.b(str3);
        bVar.a(campaignEx);
        bVar.a(z11);
        bVar.c(z12);
        bVar.a(i11);
        if (str.startsWith("tcp")) {
            l lVar = new l(bVar);
            lVar.a(this.f34388b);
            lVar.a(new a());
            cVar = lVar;
        } else {
            cVar = new c(this.f34392f, str, str2, str3, campaignEx, z11, z12, i11);
        }
        this.f34393g.b(cVar, this);
    }
}
