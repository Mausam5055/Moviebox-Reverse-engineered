package com.mbridge.msdk.videocommon;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0572a> f39856a = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0572a> f39857b = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0572a> f39858c = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0572a> f39859d = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0572a> f39860e = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0572a> f39861f = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0572a> f39862g = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0572a> f39863h = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0572a> f39864i = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0572a> f39865j = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: com.mbridge.msdk.videocommon.a$a, reason: collision with other inner class name */
    public static class C0572a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WindVaneWebView f39866a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f39867b;

        public String a() {
            WindVaneWebView windVaneWebView = this.f39866a;
            return windVaneWebView != null ? (String) windVaneWebView.getTag() : "";
        }

        public void a(WindVaneWebView windVaneWebView) {
            this.f39866a = windVaneWebView;
        }

        public void a(String str) {
            WindVaneWebView windVaneWebView = this.f39866a;
            if (windVaneWebView != null) {
                windVaneWebView.setTag(str);
            }
        }

        public void a(boolean z10) {
            this.f39867b = z10;
        }

        public WindVaneWebView b() {
            return this.f39866a;
        }

        public boolean c() {
            return this.f39867b;
        }
    }

    public static C0572a a(int i11, CampaignEx campaignEx) {
        if (campaignEx == null) {
            return null;
        }
        try {
            String requestIdNotice = campaignEx.getRequestIdNotice();
            if (i11 == 288) {
                requestIdNotice = campaignEx.getKeyIaUrl();
            }
            if (i11 != 94) {
                if (i11 != 287) {
                    if (i11 != 288) {
                        ConcurrentHashMap<String, C0572a> concurrentHashMap = f39856a;
                        if (concurrentHashMap != null && concurrentHashMap.size() > 0) {
                            return f39856a.get(requestIdNotice);
                        }
                    } else {
                        ConcurrentHashMap<String, C0572a> concurrentHashMap2 = f39859d;
                        if (concurrentHashMap2 != null && concurrentHashMap2.size() > 0) {
                            return f39859d.get(requestIdNotice);
                        }
                    }
                } else if (campaignEx.isBidCampaign()) {
                    ConcurrentHashMap<String, C0572a> concurrentHashMap3 = f39858c;
                    if (concurrentHashMap3 != null && concurrentHashMap3.size() > 0) {
                        return f39858c.get(requestIdNotice);
                    }
                } else {
                    ConcurrentHashMap<String, C0572a> concurrentHashMap4 = f39861f;
                    if (concurrentHashMap4 != null && concurrentHashMap4.size() > 0) {
                        return f39861f.get(requestIdNotice);
                    }
                }
            } else if (campaignEx.isBidCampaign()) {
                ConcurrentHashMap<String, C0572a> concurrentHashMap5 = f39857b;
                if (concurrentHashMap5 != null && concurrentHashMap5.size() > 0) {
                    return f39857b.get(requestIdNotice);
                }
            } else {
                ConcurrentHashMap<String, C0572a> concurrentHashMap6 = f39860e;
                if (concurrentHashMap6 != null && concurrentHashMap6.size() > 0) {
                    return f39860e.get(requestIdNotice);
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
        return null;
    }

    public static void a() {
        f39864i.clear();
        f39865j.clear();
    }

    public static void a(int i11, String str, C0572a c0572a) {
        try {
            if (i11 == 94) {
                if (f39857b == null) {
                    f39857b = new ConcurrentHashMap<>();
                }
                f39857b.put(str, c0572a);
            } else {
                if (i11 != 287) {
                    return;
                }
                if (f39858c == null) {
                    f39858c = new ConcurrentHashMap<>();
                }
                f39858c.put(str, c0572a);
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            f39862g.clear();
        } else {
            for (String str2 : f39862g.keySet()) {
                if (!TextUtils.isEmpty(str2) && str2.startsWith(str)) {
                    f39862g.remove(str2);
                }
            }
        }
        f39863h.clear();
    }

    public static void a(String str, C0572a c0572a, boolean z10, boolean z11) {
        if (z10) {
            if (z11) {
                f39863h.put(str, c0572a);
                return;
            } else {
                f39862g.put(str, c0572a);
                return;
            }
        }
        if (z11) {
            f39865j.put(str, c0572a);
        } else {
            f39864i.put(str, c0572a);
        }
    }

    public static C0572a b(String str) {
        if (f39862g.containsKey(str)) {
            return f39862g.get(str);
        }
        if (f39863h.containsKey(str)) {
            return f39863h.get(str);
        }
        if (f39864i.containsKey(str)) {
            return f39864i.get(str);
        }
        if (f39865j.containsKey(str)) {
            return f39865j.get(str);
        }
        return null;
    }

    public static void b(int i11, CampaignEx campaignEx) {
        if (campaignEx == null) {
            return;
        }
        try {
            String requestIdNotice = campaignEx.getRequestIdNotice();
            if (i11 == 288) {
                requestIdNotice = campaignEx.getKeyIaUrl();
            }
            if (i11 == 94) {
                if (campaignEx.isBidCampaign()) {
                    ConcurrentHashMap<String, C0572a> concurrentHashMap = f39857b;
                    if (concurrentHashMap != null) {
                        concurrentHashMap.remove(requestIdNotice);
                        return;
                    }
                    return;
                }
                ConcurrentHashMap<String, C0572a> concurrentHashMap2 = f39860e;
                if (concurrentHashMap2 != null) {
                    concurrentHashMap2.remove(requestIdNotice);
                    return;
                }
                return;
            }
            if (i11 != 287) {
                if (i11 != 288) {
                    ConcurrentHashMap<String, C0572a> concurrentHashMap3 = f39856a;
                    if (concurrentHashMap3 != null) {
                        concurrentHashMap3.remove(requestIdNotice);
                        return;
                    }
                    return;
                }
                ConcurrentHashMap<String, C0572a> concurrentHashMap4 = f39859d;
                if (concurrentHashMap4 != null) {
                    concurrentHashMap4.remove(requestIdNotice);
                    return;
                }
                return;
            }
            if (campaignEx.isBidCampaign()) {
                ConcurrentHashMap<String, C0572a> concurrentHashMap5 = f39858c;
                if (concurrentHashMap5 != null) {
                    concurrentHashMap5.remove(requestIdNotice);
                    return;
                }
                return;
            }
            ConcurrentHashMap<String, C0572a> concurrentHashMap6 = f39861f;
            if (concurrentHashMap6 != null) {
                concurrentHashMap6.remove(requestIdNotice);
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public static void b(int i11, String str, C0572a c0572a) {
        try {
            if (i11 == 94) {
                if (f39860e == null) {
                    f39860e = new ConcurrentHashMap<>();
                }
                f39860e.put(str, c0572a);
            } else if (i11 == 287) {
                if (f39861f == null) {
                    f39861f = new ConcurrentHashMap<>();
                }
                f39861f.put(str, c0572a);
            } else if (i11 != 288) {
                if (f39856a == null) {
                    f39856a = new ConcurrentHashMap<>();
                }
                f39856a.put(str, c0572a);
            } else {
                if (f39859d == null) {
                    f39859d = new ConcurrentHashMap<>();
                }
                f39859d.put(str, c0572a);
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public static void c(String str) {
        for (Map.Entry<String, C0572a> entry : f39862g.entrySet()) {
            if (entry.getKey().contains(str)) {
                f39862g.remove(entry.getKey());
            }
        }
    }

    public static void d(String str) {
        for (Map.Entry<String, C0572a> entry : f39863h.entrySet()) {
            if (entry.getKey().contains(str)) {
                f39863h.remove(entry.getKey());
            }
        }
    }

    public static void e(String str) {
        if (f39862g.containsKey(str)) {
            f39862g.remove(str);
        }
        if (f39864i.containsKey(str)) {
            f39864i.remove(str);
        }
        if (f39863h.containsKey(str)) {
            f39863h.remove(str);
        }
        if (f39865j.containsKey(str)) {
            f39865j.remove(str);
        }
    }
}
