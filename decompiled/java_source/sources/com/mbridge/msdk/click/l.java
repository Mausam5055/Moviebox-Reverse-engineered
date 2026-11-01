package com.mbridge.msdk.click;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import java.net.URI;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes5.dex */
public class l extends com.mbridge.msdk.foundation.same.task.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f34340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f34342d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f34343e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CampaignEx f34344f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f34345g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f34346h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f34347i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f34348j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.mbridge.msdk.click.entity.a f34349k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private JumpLoaderResult f34350l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private g f34351m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private k f34352n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Semaphore f34339a = new Semaphore(0);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final o.f f34353o = new a();

    class a implements o.f {
        a() {
        }

        private void a() {
            synchronized (this) {
                try {
                    l.this.f34350l.setSuccess(true);
                    if (l.this.f34352n != null) {
                        l.this.f34352n.a(l.this.f34350l);
                    }
                    l.this.a();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.mbridge.msdk.click.o.f
        public void a(int i11, String str, String str2, String str3) {
            if (!TextUtils.isEmpty(str2)) {
                l.this.f34350l.setExceptionMsg(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                l.this.f34350l.setContent(str3);
            }
            l.this.b(str);
            a();
        }

        @Override // com.mbridge.msdk.click.o.f
        public void a(String str, boolean z10, String str2) {
            l.this.b(str);
            l.this.f34350l.setContent(str2);
            a();
        }

        @Override // com.mbridge.msdk.click.o.f
        public boolean a(String str) {
            boolean zB = l.this.b(str);
            if (zB) {
                a();
            }
            return zB;
        }

        @Override // com.mbridge.msdk.click.o.f
        public boolean b(String str) {
            return false;
        }

        @Override // com.mbridge.msdk.click.o.f
        public boolean c(String str) {
            boolean zB = l.this.b(str);
            if (zB) {
                a();
            }
            return zB;
        }
    }

    public l(com.mbridge.msdk.click.entity.b bVar) {
        this.f34340b = bVar.c();
        this.f34341c = bVar.e();
        this.f34342d = bVar.b();
        this.f34343e = bVar.d();
        this.f34344f = bVar.a();
        this.f34345g = bVar.g();
        this.f34346h = bVar.i();
        this.f34347i = bVar.f();
        this.f34348j = bVar.h();
    }

    private String a(String str) {
        if (this.f34348j) {
            String strA = com.mbridge.msdk.setting.b.a(this.f34340b, str);
            if (!TextUtils.isEmpty(strA)) {
                str = str + strA;
            }
        }
        return com.mbridge.msdk.util.b.a() ? m.a(this.f34344f, str) : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f34339a.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        return m.a(str, this.f34344f, this.f34350l);
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0163 A[LOOP:0: B:15:0x003e->B:65:0x0163, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:81:0x015c A[SYNTHETIC] */
    private JumpLoaderResult c(String str) {
        String scheme;
        String str2;
        int i11;
        String strA = a(str);
        JumpLoaderResult jumpLoaderResult = new JumpLoaderResult();
        n nVar = new n();
        i iVar = new i();
        String host = "";
        try {
            if (URLUtil.isNetworkUrl(strA)) {
                URI uriCreate = URI.create(strA);
                scheme = uriCreate.getScheme();
                try {
                    host = uriCreate.getHost();
                } catch (Exception e11) {
                    e = e11;
                    o0.b("SocketRequestTask", e.getMessage());
                }
                str2 = host;
                host = scheme;
            } else {
                str2 = "";
            }
        } catch (Exception e12) {
            e = e12;
            scheme = "";
        }
        String strA2 = strA;
        for (int i12 = 0; i12 < 10; i12++) {
            if (this.mState != com.mbridge.msdk.foundation.same.task.a.b.RUNNING) {
                return null;
            }
            if (strA2.startsWith("tcp")) {
                this.f34349k = nVar.a(strA2, this.f34344f, this.f34345g, this.f34346h);
                i11 = 3;
            } else {
                this.f34349k = iVar.a(strA2, this.f34345g, this.f34346h, this.f34344f);
                i11 = 1;
            }
            com.mbridge.msdk.click.entity.a aVar = this.f34349k;
            if (aVar == null) {
                jumpLoaderResult.setUrl(strA2);
                jumpLoaderResult.setSuccess(false);
                break;
            }
            if (!TextUtils.isEmpty(aVar.f34318h)) {
                jumpLoaderResult.setUrl(strA2);
                jumpLoaderResult.setExceptionMsg(this.f34349k.f34318h);
                jumpLoaderResult.setType(i11);
                jumpLoaderResult.setHeader(this.f34349k.a());
                jumpLoaderResult.setSuccess(false);
                if (i12 != 0) {
                    break;
                }
                com.mbridge.msdk.click.retry.a.b().a(strA2, this.f34349k.f34318h, this.f34344f, this.f34343e, this.f34345g, this.f34346h, this.f34347i);
                break;
            }
            int i13 = this.f34349k.f34316f;
            if (i13 == 200) {
                jumpLoaderResult.setjumpDone(true);
                jumpLoaderResult.setUrl(strA2);
                jumpLoaderResult.setSuccess(true);
                String str3 = this.f34349k.f34317g;
                jumpLoaderResult.setContent(str3 != null ? str3 : null);
                break;
            }
            if (i13 != 301 && i13 != 302 && i13 != 307) {
                jumpLoaderResult.setjumpDone(false);
                jumpLoaderResult.setUrl(strA2);
                if (i12 != 0) {
                    break;
                }
                com.mbridge.msdk.click.retry.a.b().a(strA2, this.f34349k.f34318h, this.f34344f, this.f34343e, this.f34345g, this.f34346h, this.f34347i);
                break;
            }
            jumpLoaderResult.setSuccess(true);
            jumpLoaderResult.setIs302Jump(true);
            if (TextUtils.isEmpty(this.f34349k.f34311a)) {
                jumpLoaderResult.setjumpDone(true);
                jumpLoaderResult.setUrl(strA2);
                break;
            }
            String str4 = this.f34349k.f34311a;
            if (str4.startsWith("http")) {
                if (s0.a.b(str4)) {
                    jumpLoaderResult.setjumpDone(true);
                    jumpLoaderResult.setUrl(str4);
                    break;
                }
                strA2 = a(str4);
            } else {
                if (!str4.startsWith("/") || TextUtils.isEmpty(host) || TextUtils.isEmpty(str2)) {
                    jumpLoaderResult.setjumpDone(true);
                    jumpLoaderResult.setUrl(str4);
                    break;
                }
                str4 = host + "://" + str2 + str4;
                host = null;
                str2 = null;
                if (s0.a.b(str4)) {
                    jumpLoaderResult.setjumpDone(true);
                    jumpLoaderResult.setUrl(str4);
                    break;
                }
                strA2 = a(str4);
            }
        }
        return jumpLoaderResult;
    }

    public void a(g gVar) {
        this.f34351m = gVar;
    }

    public void a(k kVar) {
        this.f34352n = kVar;
    }

    @Override // com.mbridge.msdk.foundation.same.task.a
    public void cancelTask() {
    }

    @Override // com.mbridge.msdk.foundation.same.task.a
    public void pauseTask(boolean z10) {
    }

    @Override // com.mbridge.msdk.foundation.same.task.a
    public void runTask() {
        JumpLoaderResult jumpLoaderResult;
        g gVar = this.f34351m;
        if (gVar != null) {
            gVar.b(null);
        }
        JumpLoaderResult jumpLoaderResult2 = new JumpLoaderResult();
        this.f34350l = jumpLoaderResult2;
        jumpLoaderResult2.setUrl(this.f34341c);
        JumpLoaderResult jumpLoaderResultC = c(this.f34341c);
        this.f34350l = jumpLoaderResultC;
        if (jumpLoaderResultC != null && !TextUtils.isEmpty(jumpLoaderResultC.getExceptionMsg())) {
            this.f34350l.setSuccess(true);
        }
        if (this.mState != com.mbridge.msdk.foundation.same.task.a.b.RUNNING) {
            k kVar = this.f34352n;
            if (kVar != null) {
                kVar.a(this.f34350l);
                return;
            }
            return;
        }
        JumpLoaderResult jumpLoaderResult3 = this.f34350l;
        if (jumpLoaderResult3 != null && !jumpLoaderResult3.isSuccess()) {
            k kVar2 = this.f34352n;
            if (kVar2 != null) {
                kVar2.a(this.f34350l);
                return;
            }
            return;
        }
        com.mbridge.msdk.click.entity.a aVar = this.f34349k;
        if (aVar != null && (jumpLoaderResult = this.f34350l) != null) {
            jumpLoaderResult.setStatusCode(aVar.f34316f);
        }
        m.a(this.f34344f, this.f34350l, this.f34349k, this.f34342d, this.f34343e, this.f34340b, this.f34353o, this.f34352n, this.f34339a);
    }
}
