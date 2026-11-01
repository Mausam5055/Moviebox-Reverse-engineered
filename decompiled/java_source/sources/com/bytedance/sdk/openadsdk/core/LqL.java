package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.embedapplog.PangleEncryptManager;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.api.bidding.PAGBiddingRequest;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.pgl.ssdk.ces.out.PglSSConfig;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import w5.b;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class LqL implements wE {
    private static final Map<Integer, String> HiB = new HashMap<Integer, String>(12) { // from class: com.bytedance.sdk.openadsdk.core.LqL.1
        {
            put(1, "abtest");
            put(2, "user_data");
            put(3, UrlKt.KEY_MINI_GAID);
            put(4, "apk-sign");
            put(5, "app_set_id_scope");
            put(6, "app_set_id");
            put(7, "installed_source");
            put(8, "app_running_time");
            put(9, "vendor");
            put(10, "model");
            put(11, "user_agent_device");
            put(12, "user_agent_webview");
            put(13, "sys_compiling_time");
            put(14, "sec_did");
            put(15, "url");
            put(16, "X-Argus");
            put(17, "X-Ladon");
            put(18, "X-Khronos");
            put(19, "X-Gorgon");
            put(20, "pangle_m");
            put(21, "screen_height");
            put(22, "screen_width");
            put(23, "rom_version");
            put(24, "carrier_name");
            put(25, "os_version");
            put(26, "conn_type");
            put(27, "boot");
            put(28, "feature_data");
            put(29, "t_ver");
            put(30, CampaignEx.JSON_KEY_AAB);
            put(31, "w_ver");
            put(32, "is_fold");
            put(33, "abi");
        }
    };
    boolean Sj = false;
    boolean sP = false;
    String TKC = "com.union_test.internationad";
    String EjP = "8025677";
    private int vS = 0;

    public static void Dq() {
        try {
            com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.core.LqL.4
                @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj2.sP("bidding_token");
                    return sj2;
                }
            });
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAdManagerImpl", th2.getMessage());
        }
    }

    public static void Jcg() {
        try {
            com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.core.LqL.3
                @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj2.sP("bidding_token");
                    return sj2;
                }
            });
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAdManagerImpl", th2.getMessage());
        }
    }

    private JSONObject Sj(JSONObject jSONObject, boolean z10) {
        JSONObject jSONObjectSj;
        if (z10) {
            jSONObjectSj = PangleEncryptManager.encryptType4(jSONObject, new dx(PangleEncryptConstant.CryptDataScene.BIDDING_TOKEN));
            zR.Sj(jSONObjectSj);
        } else {
            jSONObjectSj = com.bytedance.sdk.component.utils.Sj.Sj(jSONObject);
        }
        return jSONObjectSj != null ? jSONObjectSj : new JSONObject();
    }

    private JSONObject sP(PAGBiddingRequest pAGBiddingRequest) {
        try {
            PAGBannerSize bannerSize = pAGBiddingRequest.getBannerSize();
            if (bannerSize != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("width", bannerSize.getWidth());
                if (bannerSize.getType() == 3) {
                    jSONObject.put("height", bannerSize.getMaxHeight());
                } else {
                    jSONObject.put("height", bannerSize.getHeight());
                }
                jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, bannerSize.getType());
                return jSONObject;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private boolean uA() {
        return "TX".equals(com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().FPG()) || TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().FPG());
    }

    public static void vS() {
        try {
            com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.core.LqL.2
                @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj2.sP("bidding_token");
                    return sj2;
                }
            });
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAdManagerImpl", th2.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    public int EjP() {
        return this.vS;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    /* JADX INFO: renamed from: EjP, reason: merged with bridge method [inline-methods] */
    public LqL Sj(String str) {
        uA.sP().Sj(str);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    public wE EjP(int i11) {
        uA.sP().TKC(i11);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    public int HiB() {
        return uA.sP().Ym();
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    /* JADX INFO: renamed from: HiB, reason: merged with bridge method [inline-methods] */
    public LqL sP(String str) {
        uA.sP().TKC(str);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    public wE HiB(int i11) {
        uA.sP().HiB(i11);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    public wE Sj() {
        com.bytedance.sdk.component.utils.Zq.Sj("PangleSDK-7114");
        b.c("PangleSDK-7114");
        com.bytedance.sdk.component.utils.sU.Sj("PangleSDK-7114");
        com.bytedance.sdk.component.utils.Zq.sP();
        com.bytedance.sdk.component.Jcg.Sj.Sj();
        b.a();
        com.bytedance.sdk.component.utils.sU.Sj();
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    public wE Sj(int i11) {
        uA.sP().vS(i11);
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005c A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0060 A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:30:0x00b3 A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c1 A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00f1 A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00f7 A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0103 A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0125 A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:45:0x012f A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:47:0x013c A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:50:0x021a A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:52:0x023a  */
    /* JADX WARN: Code duplicated, block: B:69:0x02a3 A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:72:0x02ac A[Catch: all -> 0x02c3, TryCatch #0 {all -> 0x02c3, blocks: (B:3:0x000c, B:5:0x0019, B:7:0x001f, B:9:0x0025, B:11:0x0033, B:18:0x004e, B:20:0x0052, B:22:0x005c, B:24:0x0060, B:27:0x0084, B:28:0x0098, B:30:0x00b3, B:34:0x00d2, B:33:0x00c1, B:35:0x00d9, B:37:0x00f1, B:41:0x0108, B:43:0x0125, B:45:0x012f, B:47:0x013c, B:48:0x0145, B:50:0x021a, B:51:0x022a, B:54:0x023d, B:56:0x0248, B:57:0x025a, B:59:0x0267, B:62:0x0274, B:64:0x027a, B:66:0x0287, B:67:0x029d, B:69:0x02a3, B:70:0x02a6, B:72:0x02ac, B:73:0x02b8, B:38:0x00f7, B:40:0x0103, B:14:0x003e, B:16:0x0044), top: B:77:0x000c }] */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
    
        if (com.bytedance.sdk.openadsdk.core.dNu.EjP().LD(r6) == false) goto L18;
     */
    @Override // com.bytedance.sdk.openadsdk.core.wE
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String Sj(PAGBiddingRequest pAGBiddingRequest) {
        JSONObject jSONObject;
        boolean z10;
        String strUA;
        String strRiZ;
        String strSP;
        String strSP2;
        Object objOWa;
        int size;
        JSONObject jSONObjectSj;
        com.bytedance.sdk.openadsdk.core.settings.vS vSVarEjP;
        AdSlot adSlotBuild;
        try {
            Mts.TEQ("getBiddingToken");
            com.bytedance.sdk.openadsdk.core.uA.TKC.Sj();
            vS();
            String adxId = (pAGBiddingRequest == null || pAGBiddingRequest.getAdxId() == null) ? "" : pAGBiddingRequest.getAdxId();
            if (!TextUtils.equals(adxId, uA.sP().wE())) {
                if (uA()) {
                }
                if (uA.sP().aa()) {
                    Dq();
                    return "";
                }
                jSONObject = new JSONObject();
                z10 = false;
                jSONObject.put("is_init", sef.HiB() ? 1 : 0);
                strUA = dNu.EjP().uA();
                strRiZ = dNu.EjP().RiZ();
                if (strUA != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("version", strUA);
                    jSONObject2.put("param", strRiZ);
                    jSONObject.put("abtest", jSONObject2);
                }
                jSONObject.put(TmcConstants.KEY_LANGUAGE, aa.sP());
                jSONObject.put(Constants.AD_FRAMEWORK_VERSION, BuildConfig.VERSION_NAME);
                jSONObject.put("package_name", Mts.HiB());
                if (pAGBiddingRequest != null) {
                    if (TextUtils.isEmpty(pAGBiddingRequest.getSlotId())) {
                        adSlotBuild = null;
                    } else {
                        adSlotBuild = new AdSlot.Builder().setCodeId(pAGBiddingRequest.getSlotId()).build();
                    }
                    jSONObject.put("user_data", sU.Sj(adSlotBuild));
                }
                jSONObject.put("ts", System.currentTimeMillis() / 1000);
                strSP = com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6, "");
                if (strSP.isEmpty()) {
                    strSP2 = com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("ttopenadsdk", "key_ipv4", "");
                    if (!strSP2.isEmpty()) {
                        jSONObject.put("ipv4", strSP2);
                    }
                } else {
                    jSONObject.put("ipv6", strSP);
                }
                jSONObject.put("adx_id", adxId);
                objOWa = dNu.EjP().oWa();
                jSONObject.put("target_region", objOWa);
                if (jSONObject.toString().getBytes().length <= 2680) {
                    vSVarEjP = dNu.EjP();
                    if (vSVarEjP.LqL(UrlKt.KEY_MINI_GAID)) {
                        jSONObject.put(UrlKt.KEY_MINI_GAID, com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().sP());
                    }
                    if (pAGBiddingRequest != null) {
                        jSONObject.put("banner", sP(pAGBiddingRequest));
                    }
                    jSONObject.put("app_reg", vSVarEjP.zwV() ? 1 : 0);
                    Context contextSj = dNu.Sj();
                    jSONObject.put("apk-sign", com.bytedance.sdk.openadsdk.common.sP.Jcg());
                    jSONObject.put("app_set_id_scope", com.bytedance.sdk.openadsdk.core.settings.EjP.sP());
                    jSONObject.put("app_set_id", com.bytedance.sdk.openadsdk.core.settings.EjP.TKC());
                    jSONObject.put("installed_source", com.bytedance.sdk.openadsdk.core.settings.EjP.EjP());
                    jSONObject.put("app_running_time", (System.currentTimeMillis() - sef.Sj()) / 1000);
                    jSONObject.put("rewardedfull_link", com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().eI() ? 1 : 0);
                    jSONObject.put("js_render_ver", com.bytedance.sdk.openadsdk.core.Dq.aa.sP());
                    jSONObject.put("js_render_v3_ver", com.bytedance.sdk.openadsdk.core.Dq.aa.TKC());
                    jSONObject.put("gp_v_name", DeviceUtils.HiB(contextSj));
                    jSONObject.put("gp_v_code", DeviceUtils.vS(contextSj));
                    jSONObject.put("vendor", Build.MANUFACTURER);
                    jSONObject.put("model", Build.MODEL);
                    jSONObject.put("user_agent_device", Mts.sP());
                    jSONObject.put("user_agent_webview", Mts.TKC());
                    jSONObject.put("sys_compiling_time", aa.sP(contextSj));
                    jSONObject.put("screen_height", FPG.HiB(contextSj));
                    jSONObject.put("screen_width", FPG.TKC(contextSj));
                    jSONObject.put("rom_version", com.bytedance.sdk.openadsdk.utils.uP.Sj());
                    jSONObject.put("carrier_name", com.bytedance.sdk.openadsdk.utils.ley.Sj());
                    jSONObject.put("os_version", Build.VERSION.RELEASE);
                    jSONObject.put("conn_type", Mts.aa(contextSj));
                    if (vSVarEjP.LqL("boot")) {
                        jSONObject.put("boot", String.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
                    }
                    Mts.Sj(jSONObject);
                    com.bytedance.sdk.openadsdk.core.uA.TKC.Sj(jSONObject);
                    com.bytedance.sdk.openadsdk.utils.Jcg.Sj(jSONObject, contextSj);
                    size = HiB.size();
                } else {
                    size = 2;
                }
                while (size > 0) {
                    jSONObject.remove(HiB.get(Integer.valueOf(size)));
                    size--;
                }
                com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj(jSONObject);
                if (com.bytedance.sdk.openadsdk.core.settings.Fmk.TX()) {
                    z10 = true;
                }
                jSONObjectSj = Sj(jSONObject, z10);
                while (size > 0) {
                    jSONObject.remove(HiB.get(Integer.valueOf(size)));
                    jSONObjectSj = Sj(jSONObject, z10);
                    size--;
                }
                if (jSONObjectSj.length() > 0) {
                    jSONObjectSj.put("target_region", objOWa);
                }
                if (com.bytedance.sdk.component.utils.Zq.EjP()) {
                    jSONObjectSj.toString();
                    int length = jSONObjectSj.toString().getBytes().length;
                }
                jSONObjectSj.toString();
                Jcg();
                return jSONObjectSj.toString();
            }
            if (!dNu.EjP().Xqg()) {
                Dq();
                return "";
            }
            if (uA.sP().aa()) {
                Dq();
                return "";
            }
            jSONObject = new JSONObject();
            z10 = false;
            jSONObject.put("is_init", sef.HiB() ? 1 : 0);
            strUA = dNu.EjP().uA();
            strRiZ = dNu.EjP().RiZ();
            if (strUA != null && strRiZ != null) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("version", strUA);
                jSONObject3.put("param", strRiZ);
                jSONObject.put("abtest", jSONObject3);
            }
            jSONObject.put(TmcConstants.KEY_LANGUAGE, aa.sP());
            jSONObject.put(Constants.AD_FRAMEWORK_VERSION, BuildConfig.VERSION_NAME);
            jSONObject.put("package_name", Mts.HiB());
            if (pAGBiddingRequest != null) {
                if (TextUtils.isEmpty(pAGBiddingRequest.getSlotId())) {
                    adSlotBuild = null;
                } else {
                    adSlotBuild = new AdSlot.Builder().setCodeId(pAGBiddingRequest.getSlotId()).build();
                }
                jSONObject.put("user_data", sU.Sj(adSlotBuild));
            }
            jSONObject.put("ts", System.currentTimeMillis() / 1000);
            strSP = com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6, "");
            if (strSP.isEmpty()) {
                jSONObject.put("ipv6", strSP);
            } else {
                strSP2 = com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("ttopenadsdk", "key_ipv4", "");
                if (!strSP2.isEmpty()) {
                    jSONObject.put("ipv4", strSP2);
                }
            }
            jSONObject.put("adx_id", adxId);
            objOWa = dNu.EjP().oWa();
            jSONObject.put("target_region", objOWa);
            if (jSONObject.toString().getBytes().length <= 2680) {
                vSVarEjP = dNu.EjP();
                if (vSVarEjP.LqL(UrlKt.KEY_MINI_GAID)) {
                    jSONObject.put(UrlKt.KEY_MINI_GAID, com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().sP());
                }
                if (pAGBiddingRequest != null) {
                    jSONObject.put("banner", sP(pAGBiddingRequest));
                }
                jSONObject.put("app_reg", vSVarEjP.zwV() ? 1 : 0);
                Context contextSj2 = dNu.Sj();
                jSONObject.put("apk-sign", com.bytedance.sdk.openadsdk.common.sP.Jcg());
                jSONObject.put("app_set_id_scope", com.bytedance.sdk.openadsdk.core.settings.EjP.sP());
                jSONObject.put("app_set_id", com.bytedance.sdk.openadsdk.core.settings.EjP.TKC());
                jSONObject.put("installed_source", com.bytedance.sdk.openadsdk.core.settings.EjP.EjP());
                jSONObject.put("app_running_time", (System.currentTimeMillis() - sef.Sj()) / 1000);
                jSONObject.put("rewardedfull_link", com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().eI() ? 1 : 0);
                jSONObject.put("js_render_ver", com.bytedance.sdk.openadsdk.core.Dq.aa.sP());
                jSONObject.put("js_render_v3_ver", com.bytedance.sdk.openadsdk.core.Dq.aa.TKC());
                jSONObject.put("gp_v_name", DeviceUtils.HiB(contextSj2));
                jSONObject.put("gp_v_code", DeviceUtils.vS(contextSj2));
                jSONObject.put("vendor", Build.MANUFACTURER);
                jSONObject.put("model", Build.MODEL);
                jSONObject.put("user_agent_device", Mts.sP());
                jSONObject.put("user_agent_webview", Mts.TKC());
                jSONObject.put("sys_compiling_time", aa.sP(contextSj2));
                jSONObject.put("screen_height", FPG.HiB(contextSj2));
                jSONObject.put("screen_width", FPG.TKC(contextSj2));
                jSONObject.put("rom_version", com.bytedance.sdk.openadsdk.utils.uP.Sj());
                jSONObject.put("carrier_name", com.bytedance.sdk.openadsdk.utils.ley.Sj());
                jSONObject.put("os_version", Build.VERSION.RELEASE);
                jSONObject.put("conn_type", Mts.aa(contextSj2));
                if (vSVarEjP.LqL("boot")) {
                    jSONObject.put("boot", String.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
                }
                Mts.Sj(jSONObject);
                com.bytedance.sdk.openadsdk.core.uA.TKC.Sj(jSONObject);
                com.bytedance.sdk.openadsdk.utils.Jcg.Sj(jSONObject, contextSj2);
                size = HiB.size();
            } else {
                size = 2;
            }
            while (size > 0 && jSONObject.toString().getBytes().length > 2680) {
                jSONObject.remove(HiB.get(Integer.valueOf(size)));
                size--;
            }
            com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj(jSONObject);
            if (com.bytedance.sdk.openadsdk.core.settings.Fmk.TX() && com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().Sj(PangleEncryptConstant.CryptDataScene.BIDDING_TOKEN)) {
                z10 = true;
            }
            jSONObjectSj = Sj(jSONObject, z10);
            while (size > 0 && jSONObjectSj.toString().getBytes().length > 4096) {
                jSONObject.remove(HiB.get(Integer.valueOf(size)));
                jSONObjectSj = Sj(jSONObject, z10);
                size--;
            }
            if (jSONObjectSj.length() > 0) {
                jSONObjectSj.put("target_region", objOWa);
            }
            if (com.bytedance.sdk.component.utils.Zq.EjP()) {
                jSONObjectSj.toString();
                int length2 = jSONObjectSj.toString().getBytes().length;
            }
            jSONObjectSj.toString();
            Jcg();
            return jSONObjectSj.toString();
        } catch (Throwable unused) {
            Dq();
            return "";
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    public boolean Sj(String str, int i11, String str2, String str3, String str4) {
        if (!this.TKC.equals(dNu.Sj().getPackageName()) || !this.EjP.equals(uA.sP().EjP()) || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Method methodSj = com.bytedance.sdk.component.utils.ley.Sj("com.bytedance.sdk.openadsdk.TTC3Proxy", "verityPlayable", String.class, Integer.TYPE, String.class, String.class, String.class);
            if (methodSj != null) {
                methodSj.invoke(null, str, Integer.valueOf(i11), str2, str3, str4);
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    public wE TKC(int i11) {
        this.vS = i11;
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    public wE TKC(String str) {
        uA.sP().Dq(str);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    public String TKC() {
        return BuildConfig.VERSION_NAME;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    public int sP() {
        return uA.sP().TEQ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.wE
    public wE sP(int i11) {
        uA.sP().EjP(i11);
        return this;
    }
}
