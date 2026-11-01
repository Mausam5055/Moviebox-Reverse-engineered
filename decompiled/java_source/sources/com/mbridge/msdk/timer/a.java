package com.mbridge.msdk.timer;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.l;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.i;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f38480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f38481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LinkedList<i> f38482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinkedList<i> f38483d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f38484e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f38485f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private e f38486g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.a f38487h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private l f38488i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private g f38489j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Handler f38490k;

    /* JADX INFO: renamed from: com.mbridge.msdk.timer.a$a, reason: collision with other inner class name */
    class HandlerC0553a extends Handler {
        HandlerC0553a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (a.this) {
                try {
                    int i11 = message.what;
                    if (i11 != 1) {
                        if (i11 == 2) {
                            a.this.c();
                        }
                    } else {
                        if (a.this.f38481b) {
                            return;
                        }
                        a aVar = a.this;
                        aVar.a(aVar.f38480a);
                        sendMessageDelayed(obtainMessage(1), a.this.f38480a);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    class b implements com.mbridge.msdk.reward.adapter.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.reward.adapter.c f38492a;

        b(com.mbridge.msdk.reward.adapter.c cVar) {
            this.f38492a = cVar;
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.f38490k.sendMessage(a.this.f38490k.obtainMessage(2));
            this.f38492a.a((com.mbridge.msdk.reward.adapter.a) null);
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.f38490k.sendMessage(a.this.f38490k.obtainMessage(2));
            this.f38492a.a((com.mbridge.msdk.reward.adapter.a) null);
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static a f38494a = new a(null);
    }

    private a() {
        this.f38481b = false;
        this.f38482c = new LinkedList<>();
        this.f38483d = new LinkedList<>();
        this.f38484e = 0;
        this.f38485f = 0;
        this.f38490k = new HandlerC0553a();
    }

    /* synthetic */ a(HandlerC0553a handlerC0553a) {
        this();
    }

    public static a a() {
        return c.f38494a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j11) {
        LinkedList<i> linkedList = this.f38482c;
        if (linkedList == null || linkedList.size() <= 0 || this.f38484e == 0 || this.f38482c.size() <= this.f38484e) {
            LinkedList<i> linkedList2 = this.f38483d;
            if (linkedList2 == null || linkedList2.size() <= 0 || this.f38485f == 0 || this.f38483d.size() == this.f38485f) {
                this.f38485f = 0;
                this.f38484e = 0;
                Handler handler = this.f38490k;
                handler.sendMessage(handler.obtainMessage(2));
            }
        }
    }

    private void a(String str, String str2, boolean z10) {
        try {
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            if (contextD == null) {
                return;
            }
            com.mbridge.msdk.reward.adapter.c cVar = new com.mbridge.msdk.reward.adapter.c(contextD, str, str2);
            cVar.d(z10);
            cVar.a(new b(cVar));
            com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar2.h(SameMD5.getMD5(t0.d()));
            cVar2.m(str2);
            if (z10) {
                cVar2.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO);
            } else {
                cVar2.a(94);
            }
            cVar2.g("0");
            cVar2.e("1");
            cVar.a(1, 8000, false, cVar2);
        } catch (Exception e11) {
            o0.b("LoopTimer", e11.getMessage(), e11);
        }
    }

    private boolean a(i iVar) {
        boolean z10 = false;
        if (iVar == null || TextUtils.isEmpty(iVar.b())) {
            return false;
        }
        String strB = iVar.b();
        try {
            if (this.f38486g != null) {
                com.mbridge.msdk.videocommon.setting.a aVar = this.f38487h;
                int iA = this.f38486g.a(strB, aVar != null ? aVar.e() : 0L);
                if (iA == -1) {
                    a(strB);
                } else if (iA != 1) {
                }
                try {
                    Handler handler = this.f38490k;
                    handler.sendMessage(handler.obtainMessage(2));
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    o0.b("LoopTimer", th.getMessage(), th);
                    return z10;
                }
            }
            return true;
        } catch (Throwable th3) {
            th = th3;
            z10 = true;
        }
    }

    private void b() {
        if (this.f38489j == null) {
            this.f38489j = g.a(com.mbridge.msdk.foundation.controller.c.m().d());
        }
        if (this.f38488i == null) {
            this.f38488i = l.a(this.f38489j);
        }
        List<i> listA = this.f38488i.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO);
        if (listA != null) {
            this.f38483d.addAll(listA);
            for (i iVar : listA) {
                a(iVar.a(), iVar.b());
            }
        }
        List<i> listA2 = this.f38488i.a(94);
        if (listA2 != null) {
            this.f38482c.addAll(listA2);
            for (i iVar2 : listA2) {
                b(iVar2.a(), iVar2.b());
            }
        }
        if (this.f38486g == null) {
            this.f38486g = e.a(this.f38489j);
        }
        if (this.f38487h == null) {
            this.f38487h = com.mbridge.msdk.videocommon.setting.b.b().c();
        }
    }

    private void b(String str) {
        l lVar = this.f38488i;
        if (lVar != null) {
            lVar.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            LinkedList<i> linkedList = this.f38482c;
            if (linkedList == null || linkedList.size() <= 0 || this.f38484e >= this.f38482c.size()) {
                LinkedList<i> linkedList2 = this.f38483d;
                if (linkedList2 != null && linkedList2.size() > 0 && this.f38485f < this.f38483d.size()) {
                    i iVar = this.f38483d.get(this.f38485f);
                    this.f38485f++;
                    if (a(iVar)) {
                        c(iVar.a(), iVar.b());
                    }
                }
            } else {
                i iVar2 = this.f38482c.get(this.f38484e);
                this.f38484e++;
                if (a(iVar2)) {
                    a(iVar2.a(), iVar2.b(), false);
                }
            }
        } catch (Throwable th2) {
            o0.b("LoopTimer", th2.getMessage(), th2);
        }
    }

    private void c(String str, String str2) {
        a(str, str2, true);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        LinkedList<i> linkedList = this.f38482c;
        if (linkedList == null || !linkedList.contains(str)) {
            LinkedList<i> linkedList2 = this.f38483d;
            if (linkedList2 != null && linkedList2.contains(str)) {
                this.f38483d.remove(str);
            }
        } else {
            this.f38482c.remove(str);
        }
        b(str);
    }

    public void a(String str, String str2) {
        if (this.f38483d.contains(str2)) {
            return;
        }
        this.f38483d.add(new i(str, str2, MBSupportMuteAdType.INTERSTITIAL_VIDEO));
        l lVar = this.f38488i;
        if (lVar != null) {
            lVar.a(str, str2, MBSupportMuteAdType.INTERSTITIAL_VIDEO);
        }
    }

    public void b(long j11) {
        b();
        this.f38480a = j11;
        this.f38481b = false;
        Handler handler = this.f38490k;
        handler.sendMessageDelayed(handler.obtainMessage(1), this.f38480a);
    }

    public void b(String str, String str2) {
        if (this.f38482c.contains(str2)) {
            return;
        }
        this.f38482c.add(new i(str, str2, 94));
        l lVar = this.f38488i;
        if (lVar != null) {
            lVar.a(str, str2, 94);
        }
    }
}
