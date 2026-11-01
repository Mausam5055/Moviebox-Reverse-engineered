package com.bytedance.sdk.openadsdk.EjP;

import com.transsion.push.PushConstants;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    public static final String Sj = com.bytedance.sdk.openadsdk.EjP.TKC.Sj.InterfaceC0237Sj.Sj;
    public static final String sP = com.bytedance.sdk.openadsdk.EjP.TKC.Sj.InterfaceC0237Sj.sP;
    public static final String TKC = com.bytedance.sdk.openadsdk.EjP.TKC.Sj.InterfaceC0237Sj.TKC;
    public static final String EjP = com.bytedance.sdk.openadsdk.EjP.TKC.Sj.InterfaceC0237Sj.EjP;
    public static final String HiB = com.bytedance.sdk.openadsdk.EjP.TKC.Sj.InterfaceC0237Sj.HiB;
    public static final String vS = com.bytedance.sdk.openadsdk.EjP.TKC.Sj.InterfaceC0237Sj.vS;
    public static final Set<String> Jcg = new HashSet(Arrays.asList("click", PushConstants.PUSH_SERVICE_TYPE_SHOW, "insight_log"));

    public static class Sj {
        public static String EjP = "saLandingPageLinks";
        public static String Sj = "openDetailPage";
        public static String TKC = "direct";
        public static String sP = "openAdLandPageLinks";
    }

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.EjP.sP$sP, reason: collision with other inner class name */
    public static class C0238sP {
        public static int Sj = 1;
        public static int TKC = 100;
        public static int sP = 2;
    }

    public static boolean Sj(String str) {
        return "embeded_ad".equals(str) || "banner_ad".equals(str) || "interaction".equals(str) || "slide_banner_ad".equals(str);
    }
}
