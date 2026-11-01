package com.mbridge.msdk.reward.controller;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class b extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f37158a;

    public b(a aVar) {
        super(Looper.getMainLooper());
        this.f37158a = aVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i11 = message.what;
        Object obj = message.obj;
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = this.f37158a.a(message);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListI = this.f37158a.i();
        List<CampaignEx> listH = this.f37158a.h();
        com.mbridge.msdk.reward.adapter.c cVarN = this.f37158a.n();
        boolean zS = this.f37158a.s();
        String strL = this.f37158a.l();
        String strP = this.f37158a.p();
        a.h hVarK = this.f37158a.k();
        InterVideoOutListener interVideoOutListenerO = this.f37158a.o();
        boolean zR = this.f37158a.r();
        MBridgeIds mBridgeIdsG = this.f37158a.g();
        boolean zT = this.f37158a.t();
        switch (i11) {
            case 8:
                if (copyOnWriteArrayListI != null && copyOnWriteArrayListI.size() > 0) {
                    boolean z10 = (listH == null || listH.size() <= 0) ? false : !TextUtils.isEmpty(listH.get(0).getCMPTEntryUrl());
                    int nscpt = copyOnWriteArrayListI.get(0).getNscpt();
                    if (cVarN != null && cVarN.a(copyOnWriteArrayListI, z10, nscpt)) {
                        if (hVarK != null && zS) {
                            hVarK.c(strL, strP, cVarA);
                            break;
                        }
                    } else if (hVarK != null && zS) {
                        com.mbridge.msdk.videocommon.a.a(strP);
                        com.mbridge.msdk.videocommon.a.a();
                        com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880010, "load timeout");
                        if (cVarA != null) {
                            cVarA.a(bVarA);
                        }
                        hVarK.a(bVarA, cVarA);
                        break;
                    }
                }
                break;
            case 9:
                if (interVideoOutListenerO != null && zS) {
                    if (zR) {
                        this.f37158a.a();
                    }
                    interVideoOutListenerO.onVideoLoadSuccess(mBridgeIdsG);
                    break;
                }
                break;
            case 16:
            case 18:
                if (interVideoOutListenerO != null && zS) {
                    String string = obj instanceof String ? obj.toString() : "";
                    if (cVarA != null && cVarA.p() != null) {
                        string = cVarA.p().g();
                    }
                    com.mbridge.msdk.videocommon.a.a(strP);
                    com.mbridge.msdk.videocommon.a.a();
                    if (zR) {
                        this.f37158a.a();
                    }
                    interVideoOutListenerO.onVideoLoadFail(mBridgeIdsG, string);
                    break;
                }
                break;
            case 17:
                if (interVideoOutListenerO != null && zS) {
                    if (zR) {
                        this.f37158a.a();
                    }
                    interVideoOutListenerO.onLoadSuccess(mBridgeIdsG);
                    break;
                }
                break;
            case 1001001:
                this.f37158a.a(false, d.b().a(0, zT ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94, strP, true, 1));
                break;
            case 1001002:
                if (cVarN != null) {
                    if (!cVarN.l()) {
                        if (!cVarN.g(false)) {
                            if (cVarN.g(true)) {
                                if (!cVarN.l()) {
                                    cVarN.h(true);
                                } else if (hVarK != null) {
                                    cVarN.f(true);
                                    CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListH = cVarN.h();
                                    if (copyOnWriteArrayListH != null && copyOnWriteArrayListH.size() == 0) {
                                        copyOnWriteArrayListH = cVarN.f();
                                    }
                                    this.f37158a.a(copyOnWriteArrayListH);
                                    com.mbridge.msdk.foundation.same.report.metrics.c cVarA2 = this.f37158a.a(copyOnWriteArrayListH, cVarA);
                                    if (cVarA2 != null) {
                                        cVarA2.b(copyOnWriteArrayListH);
                                    }
                                    hVarK.d(strL, strP, cVarA2);
                                }
                            }
                        } else if (!cVarN.l()) {
                            cVarN.h(false);
                            if (cVarN.g(true)) {
                                if (!cVarN.l()) {
                                    cVarN.h(true);
                                } else if (hVarK != null) {
                                    cVarN.f(true);
                                    CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListH2 = cVarN.h();
                                    if (copyOnWriteArrayListH2 != null && copyOnWriteArrayListH2.size() == 0) {
                                        copyOnWriteArrayListH2 = cVarN.f();
                                    }
                                    this.f37158a.a(copyOnWriteArrayListH2);
                                    com.mbridge.msdk.foundation.same.report.metrics.c cVarA3 = this.f37158a.a(copyOnWriteArrayListH2, cVarA);
                                    if (cVarA3 != null) {
                                        cVarA3.b(copyOnWriteArrayListH2);
                                    }
                                    hVarK.d(strL, strP, cVarA3);
                                }
                            }
                        } else if (hVarK != null) {
                            cVarN.f(false);
                            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListH3 = cVarN.h();
                            if (copyOnWriteArrayListH3 != null && copyOnWriteArrayListH3.size() == 0) {
                                copyOnWriteArrayListH3 = cVarN.f();
                            }
                            this.f37158a.a(copyOnWriteArrayListH3);
                            com.mbridge.msdk.foundation.same.report.metrics.c cVarA4 = this.f37158a.a(copyOnWriteArrayListH3, cVarA);
                            if (cVarA4 != null) {
                                cVarA4.b(copyOnWriteArrayListH3);
                            }
                            hVarK.d(strL, strP, cVarA4);
                        }
                    } else if (hVarK != null) {
                        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListH4 = cVarN.h();
                        if (copyOnWriteArrayListH4 != null && copyOnWriteArrayListH4.size() == 0) {
                            copyOnWriteArrayListH4 = cVarN.f();
                        }
                        this.f37158a.a(copyOnWriteArrayListH4);
                        com.mbridge.msdk.foundation.same.report.metrics.c cVarA5 = this.f37158a.a(copyOnWriteArrayListH4, cVarA);
                        if (cVarA5 != null) {
                            cVarA5.b(copyOnWriteArrayListH4);
                        }
                        hVarK.d(strL, strP, cVarA5);
                    }
                }
                break;
        }
    }
}
