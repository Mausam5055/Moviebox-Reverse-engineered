package com.mbridge.msdk.click.retry;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.f;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f34410e = "mtg_retry_report=1";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f34411f = 10000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f34412g = 3;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f34413h = 50;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f34414i = 600000;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static int f34415j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static int f34416k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f34417l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f34418m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f34419n = 2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f34420o = 3;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f34421p = 4;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f34422q = 5;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ConcurrentHashMap<String, com.mbridge.msdk.click.retry.b> f34423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.mbridge.msdk.click.retry.c f34424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BroadcastReceiver f34425c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f34426d;

    /* JADX INFO: renamed from: com.mbridge.msdk.click.retry.a$a, reason: collision with other inner class name */
    class C0474a extends BroadcastReceiver {
        C0474a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                a.this.f34426d.sendEmptyMessage(2);
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static a f34428a = new a(null);
    }

    private static class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            int i11 = message.what;
            if (i11 != 1) {
                if (i11 != 2) {
                    return;
                }
                a.b().c();
            } else {
                Object obj = message.obj;
                if (obj instanceof String) {
                    a.b().a((String) obj, com.mbridge.msdk.click.retry.b.f34429k);
                }
            }
        }
    }

    private a() {
        this.f34423a = new ConcurrentHashMap<>();
        this.f34424b = new com.mbridge.msdk.click.retry.c(f34413h);
        this.f34426d = new c(Looper.getMainLooper());
        g gVarB = h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        f34412g = gVarB.d0();
        f34411f = gVarB.f0() * 1000;
        f34414i = gVarB.g0() * 1000;
        f34415j = gVarB.c0();
        f34416k = gVarB.e0();
        a();
    }

    /* synthetic */ a(C0474a c0474a) {
        this();
    }

    private void a() {
        try {
            if (this.f34425c == null) {
                this.f34425c = new C0474a();
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                if (contextD != null) {
                    contextD.registerReceiver(this.f34425c, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private static void a(Context context, String str, String str2, String str3, String str4, int i11) {
        f.a().a(context, str, str2, str3, str4, i11);
    }

    private void a(com.mbridge.msdk.click.retry.b bVar) {
        String str;
        String requestIdNotice;
        try {
            CampaignEx campaignExA = bVar.a();
            if (campaignExA != null) {
                String requestId = campaignExA.getRequestId();
                requestIdNotice = campaignExA.getRequestIdNotice();
                str = requestId;
            } else {
                str = "";
                requestIdNotice = str;
            }
            a(com.mbridge.msdk.foundation.controller.c.m().d(), bVar.b().toString(), bVar.g(), str, requestIdNotice, bVar.h());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void a(String str) {
        Message messageObtainMessage = this.f34426d.obtainMessage();
        messageObtainMessage.what = 1;
        messageObtainMessage.obj = str;
        this.f34426d.sendMessageDelayed(messageObtainMessage, f34411f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i11) {
        String str2;
        com.mbridge.msdk.click.retry.c cVar = this.f34424b;
        if (cVar != null) {
            com.mbridge.msdk.click.retry.b bVarA = cVar.a(str);
            this.f34424b.b(str);
            if (bVarA == null) {
                com.mbridge.msdk.click.retry.b bVar = this.f34423a.get(str);
                if (bVar == null || System.currentTimeMillis() > bVar.c() + ((long) f34414i) || bVar.e() >= f34412g || i11 == com.mbridge.msdk.click.retry.b.f34430l) {
                    return;
                }
                a(str);
                return;
            }
            if (System.currentTimeMillis() > bVarA.c() + ((long) f34414i)) {
                if (i11 != com.mbridge.msdk.click.retry.b.f34430l) {
                    a(bVarA);
                    return;
                }
                return;
            }
            bVarA.a(i11);
            this.f34423a.put(str, bVarA);
            if (z0.c(str) == 0) {
                str2 = str + UrlUtils.QUESTION_MARK + f34410e;
            } else {
                str2 = str + UrlUtils.AND_MARK + f34410e;
            }
            com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), bVarA.a(), bVarA.f(), str2, bVarA.i(), bVarA.j(), bVarA.h());
        }
    }

    private void a(String str, com.mbridge.msdk.click.retry.b bVar) {
        if (this.f34424b == null) {
            this.f34424b = new com.mbridge.msdk.click.retry.c(f34413h);
        }
        this.f34424b.a(str, bVar);
    }

    private boolean a(int i11) {
        return i11 == f34421p || i11 == f34420o;
    }

    public static a b() {
        return b.f34428a;
    }

    private boolean b(int i11) {
        return i11 == f34418m || i11 == f34419n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        com.mbridge.msdk.click.retry.c cVar = this.f34424b;
        if (cVar != null) {
            Iterator<String> it = cVar.a().iterator();
            while (it.hasNext()) {
                a(it.next(), com.mbridge.msdk.click.retry.b.f34430l);
            }
        }
    }

    private boolean c(int i11) {
        return a(i11) || b(i11) || i11 == f34422q;
    }

    public void a(String str, String str2, CampaignEx campaignEx, String str3, boolean z10, boolean z11, int i11) {
        if (!c(i11) || TextUtils.isEmpty(str)) {
            return;
        }
        String strReplace = str.replace(UrlUtils.QUESTION_MARK + f34410e, "").replace(UrlUtils.AND_MARK + f34410e, "");
        if (this.f34423a == null) {
            this.f34423a = new ConcurrentHashMap<>();
        }
        com.mbridge.msdk.click.retry.b bVarRemove = this.f34423a.remove(strReplace);
        if (bVarRemove == null) {
            bVarRemove = new com.mbridge.msdk.click.retry.b(str, str2);
            bVarRemove.b(i11);
            bVarRemove.a(z10);
            bVarRemove.b(z11);
            bVarRemove.a(campaignEx);
            bVarRemove.b(str3);
        } else if (bVarRemove.d() != com.mbridge.msdk.click.retry.b.f34430l) {
            bVarRemove.a(str2);
        }
        if ((!a(i11) || f34415j == 0) && ((!b(i11) || f34416k == 0) && i11 != f34422q)) {
            a(bVarRemove);
            return;
        }
        if (System.currentTimeMillis() >= bVarRemove.c() + ((long) f34414i)) {
            if (bVarRemove.d() == com.mbridge.msdk.click.retry.b.f34429k) {
                a(bVarRemove);
                return;
            }
            return;
        }
        a(strReplace, bVarRemove);
        if (bVarRemove.d() == com.mbridge.msdk.click.retry.b.f34429k) {
            if (bVarRemove.e() <= f34412g) {
                a(strReplace);
            } else {
                a(bVarRemove);
            }
        }
    }
}
