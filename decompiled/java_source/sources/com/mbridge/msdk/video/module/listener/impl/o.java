package com.mbridge.msdk.video.module.listener.impl;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class o extends k {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f39485n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f39486o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f39487p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f39488q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f39489r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f39490s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected int f39491t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Map<Integer, String> f39492u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private MBridgeVideoView.u f39493v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f39494w;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39495a;

        a(Object obj) {
            this.f39495a = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f39495a;
            if (obj instanceof String) {
                o.this.b((String) obj);
            }
        }
    }

    public o(CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i11, boolean z10) {
        super(campaignEx, aVar, cVar, str, str2, aVar2, i11, z10);
        this.f39490s = false;
        this.f39491t = 0;
        this.f39494w = -1;
        if (this.f39460a) {
            this.f39492u = campaignEx.getAdvImpList();
        }
        this.f39491t = campaignEx.getVideoCompleteTime();
    }

    /* JADX WARN: Code duplicated, block: B:77:0x014d A[Catch: all -> 0x002c, TryCatch #0 {all -> 0x002c, blocks: (B:18:0x0024, B:21:0x002f, B:23:0x003e, B:25:0x0049, B:24:0x0046, B:26:0x005a, B:82:0x0167, B:27:0x0062, B:29:0x0075, B:31:0x0079, B:33:0x007f, B:35:0x0084, B:37:0x0088, B:40:0x0099, B:42:0x009d, B:43:0x00a1, B:45:0x00bd, B:46:0x00c6, B:48:0x00ca, B:53:0x00d2, B:54:0x00d6, B:55:0x00ee, B:58:0x00f4, B:60:0x00f8, B:62:0x0101, B:64:0x0105, B:66:0x0117, B:68:0x011b, B:69:0x012b, B:71:0x012f, B:72:0x0139, B:74:0x0143, B:76:0x0147, B:77:0x014d, B:79:0x0151, B:81:0x0155), top: B:86:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0151 A[Catch: all -> 0x002c, TryCatch #0 {all -> 0x002c, blocks: (B:18:0x0024, B:21:0x002f, B:23:0x003e, B:25:0x0049, B:24:0x0046, B:26:0x005a, B:82:0x0167, B:27:0x0062, B:29:0x0075, B:31:0x0079, B:33:0x007f, B:35:0x0084, B:37:0x0088, B:40:0x0099, B:42:0x009d, B:43:0x00a1, B:45:0x00bd, B:46:0x00c6, B:48:0x00ca, B:53:0x00d2, B:54:0x00d6, B:55:0x00ee, B:58:0x00f4, B:60:0x00f8, B:62:0x0101, B:64:0x0105, B:66:0x0117, B:68:0x011b, B:69:0x012b, B:71:0x012f, B:72:0x0139, B:74:0x0143, B:76:0x0147, B:77:0x014d, B:79:0x0151, B:81:0x0155), top: B:86:0x0004 }] */
    @Override // com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i11, Object obj) {
        int i12;
        CampaignEx campaignEx;
        try {
            if (i11 != 2) {
                int videoLength = 0;
                if (i11 != 20) {
                    if (i11 != 130) {
                        if (i11 == 6) {
                            if (this.f39460a && !this.f39487p) {
                                this.f39487p = true;
                                l();
                                com.mbridge.msdk.video.module.report.b.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b);
                            }
                        } else if (i11 != 7) {
                            if (i11 == 15) {
                                j();
                                h();
                                i();
                                if (q0.a().a("i_l_s_t_r_i", false) && !this.f39488q) {
                                    this.f39488q = true;
                                    MBridgeVideoView.u uVar = this.f39493v;
                                    if (uVar != null) {
                                        uVar.a();
                                    }
                                }
                                if (obj == null || !(obj instanceof MBridgeVideoView.v)) {
                                    i12 = 0;
                                } else {
                                    int i13 = ((MBridgeVideoView.v) obj).f39428a;
                                    videoLength = ((MBridgeVideoView.v) obj).f39429b;
                                    i12 = i13;
                                }
                                if (videoLength == 0 && (campaignEx = this.f39461b) != null) {
                                    videoLength = campaignEx.getVideoLength();
                                }
                                com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b, i12, videoLength, this.f39469j);
                                com.mbridge.msdk.video.module.report.b.a(this.f39461b, this.f39492u, this.f39466g, i12);
                                if (!this.f39489r) {
                                    this.f39489r = true;
                                    com.mbridge.msdk.video.module.report.b.a(this.f39461b, this.f39466g);
                                }
                                if (!this.f39490s) {
                                    int i14 = this.f39491t;
                                    if (i14 != 0) {
                                        videoLength = i14;
                                    }
                                    if (i12 >= videoLength) {
                                        this.f39490s = true;
                                        i11 = 17;
                                    }
                                }
                                o0.b("NotifyListener", "onPlayProgress:" + i12);
                                this.f39494w = i12;
                            } else if (i11 != 16) {
                                switch (i11) {
                                    case 11:
                                        a();
                                        l();
                                        break;
                                    case 12:
                                        a aVar = new a(obj);
                                        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                                            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
                                        } else {
                                            aVar.run();
                                        }
                                        l();
                                        c();
                                        b();
                                        e();
                                        a();
                                        break;
                                    case 13:
                                        c();
                                        b();
                                        break;
                                }
                            } else if (this.f39460a) {
                                this.f39487p = true;
                                l();
                                com.mbridge.msdk.video.module.report.b.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b);
                            }
                        } else if (this.f39460a && obj != null && (obj instanceof Integer)) {
                            int iIntValue = ((Integer) obj).intValue();
                            if (iIntValue == 2) {
                                if (!this.f39486o) {
                                    this.f39486o = true;
                                    com.mbridge.msdk.video.module.report.b.e(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b);
                                }
                            } else if (iIntValue == 1 && !this.f39485n) {
                                this.f39485n = true;
                                com.mbridge.msdk.video.module.report.b.f(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b);
                            }
                        }
                    } else if (obj instanceof Integer) {
                        this.f39491t = ((Integer) obj).intValue();
                    }
                } else if (q0.a().a("i_l_s_t_r_i", false) && (obj instanceof MBridgeVideoView.u)) {
                    this.f39493v = (MBridgeVideoView.u) obj;
                }
            } else if (this.f39460a) {
                this.f39487p = true;
                l();
                com.mbridge.msdk.video.module.report.b.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b);
            }
            this.f39468i.a(i11, obj);
        } catch (Throwable th2) {
            o0.b("NotifyListener", th2.getMessage(), th2);
        }
    }
}
