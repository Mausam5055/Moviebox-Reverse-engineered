package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile b f39902f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f39903a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConcurrentHashMap<String, l> f39904b = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ConcurrentHashMap<String, CopyOnWriteArrayList<Map<String, a>>> f39905c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> f39906d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ConcurrentHashMap<String, CopyOnWriteArrayList<a>> f39907e;

    private b() {
    }

    private void a(l lVar, String str) {
        try {
            com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), str);
            if (cVarC == null) {
                return;
            }
            if (cVarC.l() == 2) {
                lVar.e();
            } else {
                lVar.d();
            }
        } catch (Exception e11) {
            o0.b("DownLoadManager", e11.getMessage());
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), str);
                if (lVarE == null) {
                    lVarE = com.mbridge.msdk.setting.l.j(str);
                }
                if (lVarE.q() == 2) {
                    lVar.e();
                } else {
                    lVar.d();
                }
            } catch (Exception e12) {
                o0.b("DownLoadManager", e12.getMessage());
            }
        }
    }

    private void a(String str, CopyOnWriteArrayList<Map<String, a>> copyOnWriteArrayList, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2, CopyOnWriteArrayList<a> copyOnWriteArrayList3) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> concurrentHashMap;
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList4;
        if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
            CampaignEx campaignEx = copyOnWriteArrayList2.get(0);
            if (campaignEx.getSecondRequestIndex() == 1 && (concurrentHashMap = this.f39906d) != null && (copyOnWriteArrayList4 = concurrentHashMap.get(str)) != null && copyOnWriteArrayList4.size() > 0 && copyOnWriteArrayList4.get(0).getLocalRequestId().equals(campaignEx.getLocalRequestId())) {
                return;
            }
        }
        ConcurrentHashMap<String, CopyOnWriteArrayList<Map<String, a>>> concurrentHashMap2 = this.f39905c;
        if (concurrentHashMap2 == null) {
            this.f39905c = new ConcurrentHashMap<>();
        } else {
            concurrentHashMap2.remove(str);
        }
        ConcurrentHashMap<String, CopyOnWriteArrayList<a>> concurrentHashMap3 = this.f39907e;
        if (concurrentHashMap3 == null) {
            this.f39907e = new ConcurrentHashMap<>();
        } else {
            concurrentHashMap3.remove(str);
        }
        ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> concurrentHashMap4 = this.f39906d;
        if (concurrentHashMap4 == null) {
            this.f39906d = new ConcurrentHashMap<>();
        } else {
            concurrentHashMap4.remove(str);
        }
        this.f39905c.put(str, copyOnWriteArrayList);
        this.f39906d.put(str, copyOnWriteArrayList2);
        this.f39907e.put(str, copyOnWriteArrayList3);
    }

    public static b getInstance() {
        if (f39902f == null) {
            synchronized (b.class) {
                try {
                    if (f39902f == null) {
                        f39902f = new b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f39902f;
    }

    public a a(int i11, String str, boolean z10) {
        l lVarC = c(str);
        if (lVarC != null) {
            return lVarC.a(i11, z10);
        }
        return null;
    }

    public a a(String str, String str2) {
        l lVarC = c(str);
        if (lVarC != null) {
            return lVarC.a(str2);
        }
        return null;
    }

    public CopyOnWriteArrayList<a> a(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<a>> concurrentHashMap = this.f39907e;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.f39907e.get(str);
    }

    public void a() {
        ConcurrentHashMap<String, l> concurrentHashMap = this.f39904b;
        if (concurrentHashMap != null) {
            for (Map.Entry<String, l> entry : concurrentHashMap.entrySet()) {
                a(entry.getValue(), entry.getKey());
            }
        }
    }

    public void a(boolean z10) {
        if (!z10) {
            this.f39903a = false;
        } else if (this.f39903a) {
            return;
        }
        ConcurrentHashMap<String, l> concurrentHashMap = this.f39904b;
        if (concurrentHashMap != null) {
            Iterator<Map.Entry<String, l>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().d();
            }
        }
    }

    public boolean a(int i11, String str, List<CampaignEx> list) {
        l lVarC = c(str);
        if (lVarC == null) {
            lVarC = createUnitCache(com.mbridge.msdk.foundation.controller.c.m().d(), str, (CopyOnWriteArrayList<CampaignEx>) list, i11, (com.mbridge.msdk.videocommon.listener.a) null);
        }
        if (lVarC != null) {
            return lVarC.a(list, str);
        }
        return false;
    }

    public boolean a(int i11, String str, boolean z10, int i12, boolean z11, int i13, List<CampaignEx> list) {
        return a(i11, str, z10, i12, z11, i13, list, false, null);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00ce  */
    public boolean a(int i11, String str, boolean z10, int i12, boolean z11, int i13, List<CampaignEx> list, boolean z12, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        l lVarC;
        boolean z13;
        CampaignEx campaignEx;
        boolean z14 = false;
        if (list != null) {
            try {
                if (list.size() != 0 && (lVarC = c(str)) != null) {
                    List<a> listA = lVarC.a(str, i11, z10, list, z12, eVar);
                    if (listA != null && listA.size() != 0) {
                        if (z11) {
                            if (list.size() <= 0 || (campaignEx = list.get(0)) == null || campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(0)) {
                                z13 = false;
                            } else {
                                o0.c("DownLoadManager", "Is not check video download status with TPL");
                                z13 = true;
                            }
                            try {
                                if (i13 == 0) {
                                    ArrayList arrayList = new ArrayList();
                                    for (a aVar : listA) {
                                        for (CampaignEx campaignEx2 : list) {
                                            if (aVar != null && aVar.c() != null && campaignEx2 != null && campaignEx2.getId().equals(aVar.c().getId()) && campaignEx2.getRequestId().equals(aVar.c().getRequestId())) {
                                                arrayList.add(aVar);
                                            }
                                        }
                                    }
                                    if (arrayList.size() > 0) {
                                        z14 = true;
                                    } else {
                                        z14 = z13;
                                    }
                                } else {
                                    ArrayList arrayList2 = new ArrayList();
                                    for (a aVar2 : listA) {
                                        for (CampaignEx campaignEx3 : list) {
                                            if (aVar2 != null && aVar2.c() != null && campaignEx3 != null && campaignEx3.getId().equals(aVar2.c().getId()) && campaignEx3.getRequestId().equals(aVar2.c().getRequestId())) {
                                                arrayList2.add(aVar2);
                                            }
                                        }
                                    }
                                    if (arrayList2.size() >= i12) {
                                        z14 = true;
                                    }
                                }
                            } catch (Exception e11) {
                                e = e11;
                                z14 = z13;
                                if (MBridgeConstans.DEBUG) {
                                    e.printStackTrace();
                                }
                            }
                        } else {
                            ArrayList arrayList3 = new ArrayList();
                            for (a aVar3 : listA) {
                                for (CampaignEx campaignEx4 : list) {
                                    if (aVar3 != null && aVar3.c() != null && campaignEx4 != null && campaignEx4.getId().equals(aVar3.c().getId()) && campaignEx4.getRequestId().equals(aVar3.c().getRequestId())) {
                                        arrayList3.add(aVar3);
                                    }
                                }
                            }
                            if (arrayList3.size() > 0) {
                                z14 = true;
                            }
                        }
                    }
                    if (z14) {
                        if (this.f39905c == null) {
                            this.f39905c = new ConcurrentHashMap<>();
                        }
                        if (this.f39907e == null) {
                            this.f39907e = new ConcurrentHashMap<>();
                        }
                        if (this.f39906d == null) {
                            this.f39906d = new ConcurrentHashMap<>();
                        }
                        if (listA != null && listA.size() > 0) {
                            CopyOnWriteArrayList<Map<String, a>> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
                            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
                            CopyOnWriteArrayList<a> copyOnWriteArrayList3 = new CopyOnWriteArrayList<>();
                            for (a aVar4 : listA) {
                                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                                CampaignEx campaignExC = aVar4.c();
                                concurrentHashMap.put(campaignExC.getId() + campaignExC.getVideoUrlEncode() + campaignExC.getBidToken(), aVar4);
                                copyOnWriteArrayList.add(concurrentHashMap);
                                copyOnWriteArrayList2.add(campaignExC);
                                copyOnWriteArrayList3.add(aVar4);
                            }
                            a(str, copyOnWriteArrayList, copyOnWriteArrayList2, copyOnWriteArrayList3);
                        }
                    }
                }
            } catch (Exception e12) {
                e = e12;
            }
        }
        return z14;
    }

    public int b(String str, String str2) {
        CopyOnWriteArrayList<Map<String, a>> copyOnWriteArrayListC;
        a value;
        CampaignEx campaignExC;
        ConcurrentHashMap<String, l> concurrentHashMap = this.f39904b;
        if (concurrentHashMap != null) {
            Iterator<Map.Entry<String, l>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                l value2 = it.next().getValue();
                if (value2 != null && (copyOnWriteArrayListC = value2.c()) != null) {
                    int size = copyOnWriteArrayListC.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        Map<String, a> map = copyOnWriteArrayListC.get(i11);
                        if (map != null) {
                            Iterator<Map.Entry<String, a>> it2 = map.entrySet().iterator();
                            if (it2.hasNext() && (value = it2.next().getValue()) != null && (campaignExC = value.c()) != null) {
                                String videoUrlEncode = campaignExC.getVideoUrlEncode();
                                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(videoUrlEncode) && str2.equals(videoUrlEncode)) {
                                    return value.j();
                                }
                            }
                        }
                    }
                }
            }
        }
        return 0;
    }

    public CopyOnWriteArrayList<CampaignEx> b(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> concurrentHashMap = this.f39906d;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.f39906d.get(str);
    }

    public void b(boolean z10) {
        this.f39903a = z10;
        ConcurrentHashMap<String, l> concurrentHashMap = this.f39904b;
        if (concurrentHashMap != null) {
            Iterator<Map.Entry<String, l>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                l value = it.next().getValue();
                if (value != null) {
                    value.e();
                }
            }
        }
    }

    public boolean b(int i11, String str, boolean z10) {
        try {
            l lVarC = c(str);
            return (lVarC == null || lVarC.b(i11, z10) == null) ? false : true;
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            e11.printStackTrace();
            return false;
        }
    }

    public l c(String str) {
        ConcurrentHashMap<String, l> concurrentHashMap = this.f39904b;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.f39904b.get(str);
    }

    public void c(String str, String str2) {
        l lVarC = c(str);
        if (lVarC != null) {
            try {
                lVarC.b(str2);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("DownLoadManager", e11.getMessage());
                }
            }
        }
    }

    public l createUnitCache(Context context, String str, CampaignEx campaignEx, int i11, com.mbridge.msdk.videocommon.listener.a aVar) {
        l lVar;
        if (TextUtils.isEmpty(str) || campaignEx == null) {
            return null;
        }
        if (this.f39904b.containsKey(str)) {
            lVar = this.f39904b.get(str);
            if (lVar == null) {
                lVar = new l(context, campaignEx, str, i11);
                this.f39904b.put(str, lVar);
            }
            if (i11 == 94 || i11 == 287) {
                lVar.a(campaignEx.getRequestId() + "_" + campaignEx.getSecondRequestIndex(), aVar);
            } else {
                lVar.a(aVar);
            }
            lVar.f(campaignEx);
        } else {
            lVar = new l(context, campaignEx, str, i11);
            if (i11 == 94 || i11 == 287) {
                lVar.a(campaignEx.getRequestId() + "_" + campaignEx.getSecondRequestIndex(), aVar);
            } else {
                lVar.a(aVar);
            }
            this.f39904b.put(str, lVar);
        }
        return lVar;
    }

    public l createUnitCache(Context context, String str, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, int i11, com.mbridge.msdk.videocommon.listener.a aVar) {
        l lVar;
        if (TextUtils.isEmpty(str) || copyOnWriteArrayList == null || copyOnWriteArrayList.size() == 0) {
            return null;
        }
        if (this.f39904b.containsKey(str)) {
            lVar = this.f39904b.get(str);
            if (lVar == null) {
                lVar = new l(context, copyOnWriteArrayList, str, i11);
                this.f39904b.put(str, lVar);
            }
            if (i11 == 94 || i11 == 287) {
                lVar.a(copyOnWriteArrayList.get(0).getRequestId() + "_" + copyOnWriteArrayList.get(0).getSecondRequestIndex(), aVar);
            } else {
                lVar.a(aVar);
            }
            lVar.b(copyOnWriteArrayList);
        } else {
            lVar = new l(context, copyOnWriteArrayList, str, i11);
            if (i11 == 94 || i11 == 287) {
                lVar.a(copyOnWriteArrayList.get(0).getRequestId() + "_" + copyOnWriteArrayList.get(0).getSecondRequestIndex(), aVar);
            } else {
                lVar.a(aVar);
            }
            this.f39904b.put(str, lVar);
        }
        return lVar;
    }

    public void load(String str) {
        l lVarC = c(str);
        if (lVarC != null) {
            lVarC.d();
        }
    }
}
