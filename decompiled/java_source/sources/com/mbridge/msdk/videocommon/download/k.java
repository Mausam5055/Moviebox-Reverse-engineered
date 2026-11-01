package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.utils.Utils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f39923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> f39924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f39925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f39926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f39927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f39928f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final CopyOnWriteArrayList<CampaignEx> f39929g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ConcurrentHashMap<String, com.mbridge.msdk.videocommon.download.a> f39930h;

    private static final class a implements com.mbridge.msdk.videocommon.listener.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f39931a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> f39932b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.mbridge.msdk.videocommon.listener.a f39933c;

        public a(String str, ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> concurrentHashMap, com.mbridge.msdk.videocommon.listener.a aVar) {
            this.f39931a = str;
            this.f39932b = concurrentHashMap;
            this.f39933c = aVar;
        }

        private void b(String str) {
            com.mbridge.msdk.videocommon.listener.a aVar = this.f39933c;
            if (aVar != null) {
                try {
                    aVar.a(str);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoRefactorManager", this.f39931a + " videoDownloadListener onDownLoadDone error: " + e11.getMessage());
                    }
                }
            }
            ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> concurrentHashMap = this.f39932b;
            if (concurrentHashMap != null) {
                Iterator<com.mbridge.msdk.videocommon.listener.a> it = concurrentHashMap.values().iterator();
                while (it.hasNext()) {
                    try {
                        it.next().a(str);
                    } catch (Exception e12) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardVideoRefactorManager", this.f39931a + " videoDownloadListener onDownLoadDone error: " + e12.getMessage());
                        }
                    }
                }
            }
        }

        private void b(String str, String str2) {
            com.mbridge.msdk.videocommon.listener.a aVar = this.f39933c;
            if (aVar != null) {
                try {
                    aVar.a(str, str2);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoRefactorManager", this.f39931a + " videoDownloadListener onDownLoadFailed error: " + e11.getMessage());
                    }
                }
            }
            ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> concurrentHashMap = this.f39932b;
            if (concurrentHashMap != null) {
                Iterator<com.mbridge.msdk.videocommon.listener.a> it = concurrentHashMap.values().iterator();
                while (it.hasNext()) {
                    try {
                        it.next().a(str, str2);
                    } catch (Exception e12) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardVideoRefactorManager", this.f39931a + " videoDownloadListener onDownLoadFailed error: " + e12.getMessage());
                        }
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            b(str);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            b(str, str2);
        }
    }

    public k(CampaignEx campaignEx, String str, int i11) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.f39929g = copyOnWriteArrayList;
        this.f39930h = new ConcurrentHashMap<>();
        this.f39925c = com.mbridge.msdk.foundation.controller.c.m().d();
        this.f39926d = str;
        this.f39928f = i11;
        if (campaignEx != null) {
            copyOnWriteArrayList.add(campaignEx);
        }
    }

    public k(List<CampaignEx> list, String str, int i11) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.f39929g = copyOnWriteArrayList;
        this.f39930h = new ConcurrentHashMap<>();
        this.f39925c = com.mbridge.msdk.foundation.controller.c.m().d();
        this.f39926d = str;
        this.f39928f = i11;
        if (list != null) {
            copyOnWriteArrayList.addAll(list);
        }
    }

    private com.mbridge.msdk.videocommon.download.a a(CampaignEx campaignEx) {
        com.mbridge.msdk.videocommon.download.a aVar = null;
        try {
            com.mbridge.msdk.videocommon.download.a aVar2 = new com.mbridge.msdk.videocommon.download.a(this.f39925c, campaignEx, h(), f());
            try {
                aVar2.e(campaignEx);
                aVar2.a(b());
                aVar2.d(c(campaignEx));
                aVar2.b(c());
                aVar2.e(d(campaignEx));
                aVar2.a((c) null);
                aVar2.a(new a(h(), this.f39924b, this.f39923a));
                return aVar2;
            } catch (Exception e11) {
                e = e11;
                aVar = aVar2;
                if (MBridgeConstans.DEBUG) {
                    o0.a("RewardVideoRefactorManager", h() + " createAndStartCampaignDownloadTask error " + e.getMessage());
                }
                return aVar;
            }
        } catch (Exception e12) {
            e = e12;
        }
    }

    private com.mbridge.msdk.videocommon.download.a a(CampaignEx campaignEx, String str, com.mbridge.msdk.videocommon.download.a aVar) {
        if (aVar != null) {
            return aVar;
        }
        com.mbridge.msdk.videocommon.download.a aVarA = a(campaignEx);
        aVarA.x();
        this.f39930h.put(str, aVarA);
        return aVarA;
    }

    private String a(int i11) {
        if (i11 == 0) {
            return "DOWNLOAD_READY";
        }
        if (i11 == 1) {
            return "DOWNLOAD_RUN";
        }
        if (i11 == 2) {
            return "DOWNLOAD_PAUSE";
        }
        if (i11 != 4) {
            return i11 != 5 ? "Unknown" : "DOWNLOAD_DONE";
        }
        return "DOWNLOAD_STOP";
    }

    private void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() == 0) {
            o0.a("RewardVideoRefactorManager", h() + " load campaignExes is null");
            return;
        }
        for (CampaignEx campaignEx : copyOnWriteArrayList) {
            if (campaignEx != null) {
                f(campaignEx);
            }
        }
    }

    private void a(boolean z10, List<com.mbridge.msdk.videocommon.download.a> list, int i11, CampaignEx campaignEx) {
        try {
            String str = campaignEx.getRequestId() + campaignEx.getId() + campaignEx.getVideoUrlEncode();
            a(z10, list, campaignEx, a(campaignEx, str, this.f39930h.get(str)), i11);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoRefactorManager", h() + " isReady error", e11);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0072  */
    /* JADX WARN: Code duplicated, block: B:46:0x0080  */
    /* JADX WARN: Code duplicated, block: B:49:0x009e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:54:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:75:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x0080, please report this as an issue */
    private void a(boolean z10, List<com.mbridge.msdk.videocommon.download.a> list, CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar, int i11) {
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        ArrayList<Integer> rsIgnoreCheckRule;
        if (list == null || campaignEx == null || aVar == null) {
            return;
        }
        try {
            int loadTimeoutState = campaignEx.getLoadTimeoutState();
            z11 = aVar.r() || a(campaignEx, aVar, c(campaignEx), z10, f());
            try {
                aVar.e(z11);
                z12 = aVar.p() || a(b(campaignEx), campaignEx, aVar);
                if (loadTimeoutState == 0 && z12) {
                    try {
                        aVar.c(true);
                        if (aVar.s()) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        if (loadTimeoutState == 0) {
                            aVar.f(true);
                        }
                    } catch (Exception e11) {
                        e = e11;
                        z13 = false;
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardVideoRefactorManager", h() + " checkResourceReadyState error", e);
                        }
                        if (aVar.n()) {
                            z14 = true;
                        } else {
                            z14 = true;
                        }
                        aVar.a(z14);
                        if (z14) {
                            list.add(aVar);
                        }
                        if (MBridgeConstans.DEBUG) {
                            rsIgnoreCheckRule = campaignEx.getRsIgnoreCheckRule();
                            if (rsIgnoreCheckRule == null) {
                                rsIgnoreCheckRule = new ArrayList<>();
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(h());
                            sb2.append("  campaign name = ");
                            sb2.append(campaignEx.getAppName());
                            sb2.append("\n\t\tcampaign id = ");
                            sb2.append(campaignEx.getId());
                            sb2.append("\n\t\trequest id = ");
                            sb2.append(campaignEx.getRequestId());
                            sb2.append("\n\t\tadType = ");
                            sb2.append(b());
                            sb2.append("\n\t\tunitID = ");
                            sb2.append(h());
                            sb2.append("\n\t\tisReady = ");
                            sb2.append(z14);
                            sb2.append("\n\t\tisDynamicView = ");
                            sb2.append(campaignEx.isDynamicView());
                            sb2.append("\n\t\tisTPL = ");
                            sb2.append(!TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()));
                            sb2.append("\n\t\tcurrentSuccessSize = ");
                            sb2.append(list.size());
                            sb2.append("\n\t\tisReadyCheckSize = ");
                            sb2.append(i11);
                            sb2.append("\n\t\ttotalCampaignSize = ");
                            sb2.append(this.f39929g.size());
                            sb2.append("\n\t\tlinkType = ");
                            sb2.append(campaignEx.getLinkType());
                            sb2.append("\n\t\tloadTimeoutState = ");
                            sb2.append(campaignEx.getLoadTimeoutState());
                            sb2.append("\n\t\tisVideoReady = ");
                            sb2.append(z11);
                            sb2.append("\n\t\t\tisIgnore = ");
                            sb2.append(rsIgnoreCheckRule.contains(0));
                            sb2.append("\n\t\t\treadyRate == ");
                            sb2.append(c(campaignEx));
                            sb2.append("\n\t\t\tCDRate = ");
                            sb2.append(c());
                            sb2.append("\n\t\t\tdlnet = ");
                            sb2.append(f());
                            sb2.append("\n\t\t\tctn = ");
                            sb2.append(d(campaignEx));
                            sb2.append("\n\t\t\tdownloadState = ");
                            sb2.append(a(aVar.j()));
                            sb2.append("\n\t\tisTemplateReady = ");
                            sb2.append(z13);
                            sb2.append("\n\t\t\tisIgnore = ");
                            sb2.append(rsIgnoreCheckRule.contains(1));
                            sb2.append("\n\t\tisEndCardReady = ");
                            sb2.append(z12);
                            sb2.append("\n\t\t\tisIgnore = ");
                            sb2.append(rsIgnoreCheckRule.contains(2));
                            sb2.append("\n\t\t\tisOnlyPlayable = ");
                            sb2.append(g(campaignEx));
                            sb2.append("\n\t\t\tisPlayableEndCard(dynamicView) = ");
                            sb2.append(t0.l(campaignEx.getendcard_url()));
                            o0.b("RewardVideoRefactorManager", sb2.toString());
                        }
                    }
                } else {
                    if (aVar.s() || b(campaignEx, e(campaignEx), aVar)) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    if (loadTimeoutState == 0 && z13) {
                        try {
                            aVar.f(true);
                        } catch (Exception e12) {
                            e = e12;
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoRefactorManager", h() + " checkResourceReadyState error", e);
                            }
                        }
                    }
                }
            } catch (Exception e13) {
                e = e13;
                z12 = false;
                z13 = z12;
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoRefactorManager", h() + " checkResourceReadyState error", e);
                }
                if (aVar.n()) {
                    z14 = true;
                } else {
                    z14 = true;
                }
                aVar.a(z14);
                if (z14) {
                    list.add(aVar);
                }
                if (MBridgeConstans.DEBUG) {
                    rsIgnoreCheckRule = campaignEx.getRsIgnoreCheckRule();
                    if (rsIgnoreCheckRule == null) {
                        rsIgnoreCheckRule = new ArrayList<>();
                    }
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(h());
                    sb3.append("  campaign name = ");
                    sb3.append(campaignEx.getAppName());
                    sb3.append("\n\t\tcampaign id = ");
                    sb3.append(campaignEx.getId());
                    sb3.append("\n\t\trequest id = ");
                    sb3.append(campaignEx.getRequestId());
                    sb3.append("\n\t\tadType = ");
                    sb3.append(b());
                    sb3.append("\n\t\tunitID = ");
                    sb3.append(h());
                    sb3.append("\n\t\tisReady = ");
                    sb3.append(z14);
                    sb3.append("\n\t\tisDynamicView = ");
                    sb3.append(campaignEx.isDynamicView());
                    sb3.append("\n\t\tisTPL = ");
                    sb3.append(!TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()));
                    sb3.append("\n\t\tcurrentSuccessSize = ");
                    sb3.append(list.size());
                    sb3.append("\n\t\tisReadyCheckSize = ");
                    sb3.append(i11);
                    sb3.append("\n\t\ttotalCampaignSize = ");
                    sb3.append(this.f39929g.size());
                    sb3.append("\n\t\tlinkType = ");
                    sb3.append(campaignEx.getLinkType());
                    sb3.append("\n\t\tloadTimeoutState = ");
                    sb3.append(campaignEx.getLoadTimeoutState());
                    sb3.append("\n\t\tisVideoReady = ");
                    sb3.append(z11);
                    sb3.append("\n\t\t\tisIgnore = ");
                    sb3.append(rsIgnoreCheckRule.contains(0));
                    sb3.append("\n\t\t\treadyRate == ");
                    sb3.append(c(campaignEx));
                    sb3.append("\n\t\t\tCDRate = ");
                    sb3.append(c());
                    sb3.append("\n\t\t\tdlnet = ");
                    sb3.append(f());
                    sb3.append("\n\t\t\tctn = ");
                    sb3.append(d(campaignEx));
                    sb3.append("\n\t\t\tdownloadState = ");
                    sb3.append(a(aVar.j()));
                    sb3.append("\n\t\tisTemplateReady = ");
                    sb3.append(z13);
                    sb3.append("\n\t\t\tisIgnore = ");
                    sb3.append(rsIgnoreCheckRule.contains(1));
                    sb3.append("\n\t\tisEndCardReady = ");
                    sb3.append(z12);
                    sb3.append("\n\t\t\tisIgnore = ");
                    sb3.append(rsIgnoreCheckRule.contains(2));
                    sb3.append("\n\t\t\tisOnlyPlayable = ");
                    sb3.append(g(campaignEx));
                    sb3.append("\n\t\t\tisPlayableEndCard(dynamicView) = ");
                    sb3.append(t0.l(campaignEx.getendcard_url()));
                    o0.b("RewardVideoRefactorManager", sb3.toString());
                }
            }
        } catch (Exception e14) {
            e = e14;
            z11 = false;
            z12 = false;
        }
        if (aVar.n() || (z11 && z12 && z13)) {
            z14 = true;
        } else {
            z14 = false;
        }
        aVar.a(z14);
        if (z14) {
            list.add(aVar);
        }
        if (MBridgeConstans.DEBUG) {
            rsIgnoreCheckRule = campaignEx.getRsIgnoreCheckRule();
            if (rsIgnoreCheckRule == null) {
                rsIgnoreCheckRule = new ArrayList<>();
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append(h());
            sb4.append("  campaign name = ");
            sb4.append(campaignEx.getAppName());
            sb4.append("\n\t\tcampaign id = ");
            sb4.append(campaignEx.getId());
            sb4.append("\n\t\trequest id = ");
            sb4.append(campaignEx.getRequestId());
            sb4.append("\n\t\tadType = ");
            sb4.append(b());
            sb4.append("\n\t\tunitID = ");
            sb4.append(h());
            sb4.append("\n\t\tisReady = ");
            sb4.append(z14);
            sb4.append("\n\t\tisDynamicView = ");
            sb4.append(campaignEx.isDynamicView());
            sb4.append("\n\t\tisTPL = ");
            sb4.append(!TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()));
            sb4.append("\n\t\tcurrentSuccessSize = ");
            sb4.append(list.size());
            sb4.append("\n\t\tisReadyCheckSize = ");
            sb4.append(i11);
            sb4.append("\n\t\ttotalCampaignSize = ");
            sb4.append(this.f39929g.size());
            sb4.append("\n\t\tlinkType = ");
            sb4.append(campaignEx.getLinkType());
            sb4.append("\n\t\tloadTimeoutState = ");
            sb4.append(campaignEx.getLoadTimeoutState());
            sb4.append("\n\t\tisVideoReady = ");
            sb4.append(z11);
            sb4.append("\n\t\t\tisIgnore = ");
            sb4.append(rsIgnoreCheckRule.contains(0));
            sb4.append("\n\t\t\treadyRate == ");
            sb4.append(c(campaignEx));
            sb4.append("\n\t\t\tCDRate = ");
            sb4.append(c());
            sb4.append("\n\t\t\tdlnet = ");
            sb4.append(f());
            sb4.append("\n\t\t\tctn = ");
            sb4.append(d(campaignEx));
            sb4.append("\n\t\t\tdownloadState = ");
            sb4.append(a(aVar.j()));
            sb4.append("\n\t\tisTemplateReady = ");
            sb4.append(z13);
            sb4.append("\n\t\t\tisIgnore = ");
            sb4.append(rsIgnoreCheckRule.contains(1));
            sb4.append("\n\t\tisEndCardReady = ");
            sb4.append(z12);
            sb4.append("\n\t\t\tisIgnore = ");
            sb4.append(rsIgnoreCheckRule.contains(2));
            sb4.append("\n\t\t\tisOnlyPlayable = ");
            sb4.append(g(campaignEx));
            sb4.append("\n\t\t\tisPlayableEndCard(dynamicView) = ");
            sb4.append(t0.l(campaignEx.getendcard_url()));
            o0.b("RewardVideoRefactorManager", sb4.toString());
        }
    }

    private boolean a(CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar, int i11, boolean z10, int i12) {
        if (aVar == null || campaignEx == null) {
            return false;
        }
        if (aVar.r() || g(campaignEx) || TextUtils.isEmpty(aVar.d()) || i12 == 3) {
            return true;
        }
        if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(0)) {
            return true;
        }
        if (campaignEx.getIsTimeoutCheckVideoStatus() == 1 && campaignEx.getVideoCheckType() == 1) {
            return true;
        }
        long jH = aVar.h();
        long jE = aVar.e();
        if (z10 && campaignEx.getVideoCheckType() == 1) {
            if (i11 == 0) {
                return true;
            }
            if ((jE != 0 || jH != 0) && jH >= ((long) (i11 / 100)) * jE) {
                campaignEx.setIsTimeoutCheckVideoStatus(1);
                return true;
            }
        }
        return a(aVar, i11);
    }

    private boolean a(com.mbridge.msdk.videocommon.download.a aVar, int i11) {
        if (aVar == null || TextUtils.isEmpty(aVar.d())) {
            return true;
        }
        if (i11 == 0) {
            return (aVar.c() == null || TextUtils.isEmpty(aVar.c().getVideoUrlEncode())) ? false : true;
        }
        return Utils.getDownloadRate(aVar.e(), aVar.h()) >= i11;
    }

    private boolean a(String str, CampaignEx campaignEx) {
        if (campaignEx == null) {
            return false;
        }
        if (campaignEx.isMraid() || TextUtils.isEmpty(str)) {
            return true;
        }
        if (campaignEx.getLoadTimeoutState() == 1 && !g(campaignEx)) {
            return true;
        }
        if ((campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(2)) && !y0.b(g.a(str))) {
            return y0.b(g.b(str));
        }
        return true;
    }

    private boolean a(String str, CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar) {
        if (campaignEx != null && aVar != null) {
            try {
                if (aVar.p()) {
                    o0.a("RewardVideoRefactorManager", h() + " checkEndCardZipOrSourceDownLoad endCard download success");
                    return true;
                }
                if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                    return true;
                }
                if ((campaignEx.isDynamicView() && !t0.l(str)) || y0.a(str) || a(str, campaignEx)) {
                    return true;
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    o0.a("RewardVideoRefactorManager", h() + " checkEndCardDownload error " + th2.getMessage());
                }
            }
        }
        return false;
    }

    private com.mbridge.msdk.videocommon.setting.c b(String str) {
        try {
            if (this.f39927e == null) {
                this.f39927e = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), str, b() == 287);
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.a("RewardVideoRefactorManager", h() + " getRewardUnitSetting error " + e11.getMessage());
            }
        }
        return this.f39927e;
    }

    private String b(CampaignEx campaignEx) {
        return campaignEx == null ? "" : campaignEx.getendcard_url();
    }

    private boolean b(CampaignEx campaignEx, String str, com.mbridge.msdk.videocommon.download.a aVar) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        if ((aVar == null || !aVar.s()) && !campaignEx.isDynamicView()) {
            return ((campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(1)) && campaignEx.getLoadTimeoutState() == 0 && g.a(str) == null) ? false : true;
        }
        return true;
    }

    private int c() {
        com.mbridge.msdk.videocommon.setting.c cVarB = b(h());
        if (cVarB == null) {
            return 0;
        }
        try {
            return cVarB.g();
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return 0;
            }
            o0.a("RewardVideoRefactorManager", h() + " getCDRate error " + e11.getMessage());
            return 0;
        }
    }

    private int c(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return -1;
        }
        return campaignEx.getReady_rate() != -1 ? campaignEx.getReady_rate() : g();
    }

    private int d(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return 1;
        }
        try {
            return campaignEx.getVideoCtnType();
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return 1;
            }
            o0.a("RewardVideoRefactorManager", h() + " getVideoCtnType error " + e11.getMessage());
            return 1;
        }
    }

    private String e(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return "";
        }
        try {
            CampaignEx.c rewardTemplateMode = campaignEx.getRewardTemplateMode();
            if (rewardTemplateMode != null) {
                return rewardTemplateMode.e();
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoRefactorManager", h() + " getVideoTemplateUrl error", e11);
            }
        }
        return "";
    }

    private int f() {
        if (TextUtils.isEmpty(h())) {
            return 1;
        }
        try {
            com.mbridge.msdk.videocommon.setting.c cVarB = b(h());
            if (cVarB != null) {
                return cVarB.l();
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.a("RewardVideoRefactorManager", h() + " getDlnet error " + e11.getMessage());
            }
        }
        return 1;
    }

    private void f(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return;
        }
        try {
            String str = campaignEx.getRequestId() + campaignEx.getId() + campaignEx.getVideoUrlEncode();
            if (this.f39930h.containsKey(str)) {
                return;
            }
            a(campaignEx, str, (com.mbridge.msdk.videocommon.download.a) null);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoRefactorManager", h() + " handlerCampaignLoadEvent error", e11);
            }
        }
    }

    private int g() {
        try {
            return b(this.f39926d).w();
        } catch (Throwable th2) {
            if (!MBridgeConstans.DEBUG) {
                return 100;
            }
            o0.a("RewardVideoRefactorManager", h() + " getRewardReadyRate error:" + th2.getMessage());
            return 100;
        }
    }

    private boolean g(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return false;
        }
        try {
            return campaignEx.getPlayable_ads_without_video() == 2;
        } catch (Throwable th2) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            o0.a("RewardVideoRefactorManager", h() + " isPlayerAbleAds error:" + th2.getMessage());
            return false;
        }
    }

    public com.mbridge.msdk.videocommon.download.a a(String str) {
        if (!TextUtils.isEmpty(str) && this.f39930h.containsKey(str)) {
            return this.f39930h.get(str);
        }
        return null;
    }

    public List<com.mbridge.msdk.videocommon.download.a> a(List<CampaignEx> list, boolean z10) {
        ArrayList arrayList = new ArrayList();
        if (list == null || list.size() == 0) {
            o0.a("RewardVideoRefactorManager", h() + " isReady campaignExes is null");
            return arrayList;
        }
        int size = list.size();
        for (CampaignEx campaignEx : list) {
            if (campaignEx != null) {
                a(z10, arrayList, size, campaignEx);
            }
        }
        return arrayList;
    }

    public void a() {
    }

    public void a(com.mbridge.msdk.videocommon.listener.a aVar) {
        this.f39923a = aVar;
    }

    public void a(String str, com.mbridge.msdk.videocommon.listener.a aVar) {
        if (this.f39924b == null) {
            this.f39924b = new ConcurrentHashMap<>();
        }
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f39924b.put(str, aVar);
    }

    public void a(List<CampaignEx> list) {
        if (list != null) {
            try {
                this.f39929g.addAll(list);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoRefactorManager", h() + " update error", e11);
                }
            }
        }
    }

    public int b() {
        return this.f39928f;
    }

    public void c(String str) {
        com.mbridge.msdk.videocommon.download.a aVarRemove;
        CampaignEx campaignExC;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (!this.f39930h.containsKey(str) || (aVarRemove = this.f39930h.remove(str)) == null || (campaignExC = aVarRemove.c()) == null) {
                return;
            }
            this.f39929g.remove(campaignExC);
            if (MBridgeConstans.DEBUG) {
                o0.a("RewardVideoRefactorManager", h() + " removeCampaignDownloadTask campaign name: " + campaignExC.getAppName());
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoRefactorManager", h() + " removeCampaignDownloadTask error:" + e11.getMessage());
            }
        }
    }

    public com.mbridge.msdk.videocommon.download.a d() {
        try {
            return i();
        } catch (Throwable th2) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            o0.b("RewardVideoRefactorManager", h() + " getCampaignDownLoadTask error:" + th2.getMessage());
            return null;
        }
    }

    public CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> e() {
        try {
            CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            copyOnWriteArrayList.add(this.f39930h);
            return copyOnWriteArrayList;
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            o0.b("RewardVideoRefactorManager", h() + " getCampaignDownLoadTaskList error:" + e11.getMessage());
            return null;
        }
    }

    public String h() {
        return this.f39926d;
    }

    public void h(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                this.f39929g.add(campaignEx);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoRefactorManager", h() + " update error", e11);
                }
            }
        }
    }

    public com.mbridge.msdk.videocommon.download.a i() {
        List<com.mbridge.msdk.videocommon.download.a> listA;
        if (this.f39929g.size() == 0) {
            o0.a("RewardVideoRefactorManager", h() + " isReady campaignExes is null");
            return null;
        }
        try {
            listA = a((List<CampaignEx>) this.f39929g, false);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoRefactorManager", h() + " isReady error", e11);
            }
            listA = null;
        }
        if (listA == null || listA.size() <= 0) {
            return null;
        }
        return listA.get(0);
    }

    public void j() {
        a(this.f39929g);
    }

    public void k() {
    }
}
