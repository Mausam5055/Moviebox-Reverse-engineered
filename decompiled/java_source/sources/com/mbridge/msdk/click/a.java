package com.mbridge.msdk.click;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.MIMManager;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.out.BaseTrackingListener;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.LoadingActivity;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.scheme.applet.AppletModelManager;
import com.mbridge.msdk.scheme.applet.AppletSchemeCallBack;
import com.mbridge.msdk.scheme.applet.AppletsModel;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f34266n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static Map<String, Long> f34267o = new HashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static Set<String> f34268p = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f34269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f34270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.foundation.db.g f34271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f34272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.click.e f34273e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.mbridge.msdk.foundation.same.report.h f34275g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.mbridge.msdk.setting.g f34276h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f34277i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f34280l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private j f34281m;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private NativeListener.NativeTrackingListener f34274f = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f34278j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f34279k = true;

    /* JADX INFO: renamed from: com.mbridge.msdk.click.a$a, reason: collision with other inner class name */
    class C0473a implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f34282a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34283b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f34284c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34285d;

        C0473a(int i11, String str, int i12, CampaignEx campaignEx) {
            this.f34282a = i11;
            this.f34283b = str;
            this.f34284c = i12;
            this.f34285d = campaignEx;
        }

        @Override // com.mbridge.msdk.click.g
        public void a(Object obj) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", 2);
                eVar.a("net_ty", String.valueOf(this.f34282a));
                if (obj != null && (obj instanceof JumpLoaderResult)) {
                    JumpLoaderResult jumpLoaderResult = (JumpLoaderResult) obj;
                    String str = jumpLoaderResult.getStatusCode() + "";
                    eVar.a("status_code", str);
                    if (str.startsWith("2")) {
                        eVar.a("result", 1);
                    } else {
                        String exceptionMsg = jumpLoaderResult.getExceptionMsg();
                        if (TextUtils.isEmpty(exceptionMsg)) {
                            exceptionMsg = "UNKNOWN EXCEPTION and Status Code is : " + str;
                        }
                        eVar.a("failingURL", z0.d(this.f34283b));
                        eVar.a("reason", exceptionMsg);
                    }
                }
                String strB = a.b(this.f34284c);
                if (this.f34285d != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(strB, this.f34285d, eVar);
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.click.g
        public void a(Object obj, String str) {
            try {
                String strB = a.b(this.f34284c);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", 2);
                if (obj instanceof JumpLoaderResult) {
                    JumpLoaderResult jumpLoaderResult = (JumpLoaderResult) obj;
                    String exceptionMsg = jumpLoaderResult.getExceptionMsg();
                    if (!TextUtils.isEmpty(exceptionMsg)) {
                        str = exceptionMsg;
                    }
                    eVar.a("reason", str);
                    eVar.a("status_code", Integer.valueOf(jumpLoaderResult.getStatusCode()));
                }
                eVar.a("code", "");
                eVar.a("failingURL", z0.d(this.f34283b));
                eVar.a("net_ty", String.valueOf(this.f34282a));
                if (this.f34285d != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(strB, this.f34285d, eVar);
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.click.g
        public void b(Object obj) {
        }
    }

    class b implements g {
        b() {
        }

        @Override // com.mbridge.msdk.click.g
        public void a(Object obj) {
        }

        @Override // com.mbridge.msdk.click.g
        public void a(Object obj, String str) {
        }

        @Override // com.mbridge.msdk.click.g
        public void b(Object obj) {
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f34286a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f34287b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34288c;

        c(boolean z10, boolean z11, CampaignEx campaignEx) {
            this.f34286a = z10;
            this.f34287b = z11;
            this.f34288c = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f34286a && !a.f34266n && !a.this.f34280l && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER && !this.f34287b) {
                a.this.c(this.f34288c);
            }
            if (this.f34286a || a.this.f34274f == null || a.f34266n || a.this.f34280l || !MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                return;
            }
            a.this.f34274f.onShowLoading(this.f34288c);
        }
    }

    class d implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34290a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f34291b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Boolean f34292c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ List f34293d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f34294e;

        d(CampaignEx campaignEx, boolean z10, Boolean bool, List list, boolean z11) {
            this.f34290a = campaignEx;
            this.f34291b = z10;
            this.f34292c = bool;
            this.f34293d = list;
            this.f34294e = z11;
        }

        /* JADX WARN: Code duplicated, block: B:30:0x0097  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v16, types: [int] */
        /* JADX WARN: Type inference failed for: r1v25 */
        @Override // com.mbridge.msdk.click.g
        public void a(Object obj) {
            Throwable th2;
            JumpLoaderResult jumpLoaderResult;
            ?? StartsWith;
            Set<String> set = a.f34268p;
            if (set != null) {
                set.remove(this.f34290a.getId());
            }
            JumpLoaderResult jumpLoaderResult2 = null;
            if (obj != null) {
                try {
                    if (obj instanceof JumpLoaderResult) {
                        jumpLoaderResult = (JumpLoaderResult) obj;
                        try {
                            this.f34290a.setJumpResult(jumpLoaderResult);
                            a aVar = a.this;
                            aVar.a(this.f34290a, jumpLoaderResult, this.f34291b, aVar.f34278j, this.f34292c, (List<String>) this.f34293d);
                            if (jumpLoaderResult.isjumpDone()) {
                                com.mbridge.msdk.click.b.a(com.mbridge.msdk.foundation.db.d.a(a.this.f34271c), this.f34290a, a.this.f34269a);
                            }
                            a.this.a(this.f34294e, this.f34290a);
                        } catch (Throwable th3) {
                            th2 = th3;
                            o0.b("CommonClickControl", th2.getMessage());
                        }
                        jumpLoaderResult2 = jumpLoaderResult;
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    jumpLoaderResult = null;
                }
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", "1");
                if (jumpLoaderResult2 != null) {
                    eVar.a("status_code", Integer.valueOf(jumpLoaderResult2.getStatusCode()));
                }
                CampaignEx campaignEx = this.f34290a;
                if (campaignEx != null) {
                    String clickURL = campaignEx.getClickURL();
                    if (TextUtils.isEmpty(clickURL)) {
                        StartsWith = -1;
                    } else {
                        StartsWith = clickURL.startsWith("tcp");
                    }
                } else {
                    StartsWith = -1;
                }
                eVar.a("net_ty", Integer.valueOf((int) StartsWith));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000138", this.f34290a, eVar);
            } catch (Throwable th5) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", th5.getMessage());
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:29:0x0065  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v10, types: [int] */
        /* JADX WARN: Type inference failed for: r6v21 */
        /* JADX WARN: Type inference failed for: r6v9 */
        @Override // com.mbridge.msdk.click.g
        public void a(Object obj, String str) {
            ?? StartsWith;
            Set<String> set = a.f34268p;
            if (set != null) {
                set.remove(this.f34290a.getId());
            }
            JumpLoaderResult jumpLoaderResult = null;
            if (obj != null) {
                try {
                    if (obj instanceof JumpLoaderResult) {
                        JumpLoaderResult jumpLoaderResult2 = (JumpLoaderResult) obj;
                        try {
                            a.this.a((JumpLoaderResult) obj, this.f34290a, true);
                            jumpLoaderResult = jumpLoaderResult2;
                        } catch (Throwable th2) {
                            th = th2;
                            jumpLoaderResult = jumpLoaderResult2;
                            o0.b("CommonClickControl", th.getMessage());
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            if (a.this.f34274f != null) {
                a.this.f34274f.onRedirectionFailed(this.f34290a, str);
            }
            a.this.a(this.f34294e, this.f34290a);
            try {
                CampaignEx campaignEx = this.f34290a;
                if (campaignEx != null) {
                    String clickURL = campaignEx.getClickURL();
                    if (TextUtils.isEmpty(clickURL)) {
                        StartsWith = -1;
                    } else {
                        StartsWith = clickURL.startsWith("tcp");
                    }
                } else {
                    StartsWith = -1;
                }
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", "2");
                eVar.a("net_ty", Integer.valueOf((int) StartsWith));
                if (jumpLoaderResult != null) {
                    eVar.a("status_code", Integer.valueOf(jumpLoaderResult.getStatusCode()));
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000138", this.f34290a, eVar);
            } catch (Throwable th4) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", th4.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.click.g
        public void b(Object obj) {
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f34296a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Campaign f34297b;

        e(boolean z10, Campaign campaign) {
            this.f34296a = z10;
            this.f34297b = campaign;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f34296a && !a.f34266n && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                a.this.a();
            }
            if (a.this.f34274f == null || a.f34266n || !MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                return;
            }
            a.this.f34274f.onDismissLoading(this.f34297b);
        }
    }

    public a(Context context, String str) {
        this.f34271c = null;
        this.f34272d = null;
        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(str);
        this.f34276h = gVarD;
        if (gVarD == null) {
            this.f34276h = com.mbridge.msdk.setting.h.b().a();
        }
        this.f34277i = this.f34276h.J0();
        Context applicationContext = context.getApplicationContext();
        this.f34272d = applicationContext;
        this.f34269a = str;
        if (this.f34271c == null) {
            this.f34271c = com.mbridge.msdk.foundation.db.g.a(applicationContext);
        }
        this.f34275g = new com.mbridge.msdk.foundation.same.report.h(this.f34272d);
    }

    private AppletSchemeCallBack a(NativeListener.NativeTrackingListener nativeTrackingListener, CampaignEx campaignEx, AppletsModel appletsModel, a aVar) {
        return new h(nativeTrackingListener, campaignEx, appletsModel, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            Intent intent = new Intent();
            intent.setAction("ExitApp");
            this.f34272d.sendBroadcast(intent);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", "Exception", e11);
            }
        }
    }

    private static void a(int i11, CampaignEx campaignEx, int i12) {
        if (campaignEx != null) {
            try {
                String strB = b(i11);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("net_ty", Integer.valueOf(i12));
                eVar.a("result", 3);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(strB, campaignEx, eVar);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }
    }

    private void a(int i11, String str, CampaignEx campaignEx, NativeListener.NativeTrackingListener nativeTrackingListener, List<String> list) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (i11 == 2) {
                    s0.a(this.f34272d, str, campaignEx, nativeTrackingListener, list);
                } else {
                    s0.a(this.f34272d, str, nativeTrackingListener, campaignEx, list);
                }
            }
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", th2.getMessage(), th2);
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, boolean z10, boolean z11) {
        if (context == null) {
            return;
        }
        new com.mbridge.msdk.click.e(context.getApplicationContext()).a(str, campaignEx, null, str2, z10, z11, com.mbridge.msdk.click.retry.a.f34417l);
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, boolean z10, boolean z11, int i11) {
        int i12;
        if (context == null) {
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            i12 = -1;
        } else {
            i12 = str2.startsWith("tcp") ? 1 : 0;
        }
        a(i11, campaignEx, i12);
        new com.mbridge.msdk.click.e(context.getApplicationContext()).a(str, campaignEx, new C0473a(i12, str2, i11, campaignEx), str2, z10, z11, i11);
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String[] strArr, boolean z10, boolean z11) {
        if (context == null || campaignEx == null || TextUtils.isEmpty(str) || strArr == null) {
            return;
        }
        com.mbridge.msdk.click.e eVar = new com.mbridge.msdk.click.e(context.getApplicationContext());
        for (String str2 : strArr) {
            eVar.a(str, campaignEx, new b(), str2, z10, z11, com.mbridge.msdk.click.retry.a.f34417l);
        }
    }

    private void a(Context context, CampaignEx campaignEx, List<String> list) {
        if (context == null) {
            com.mbridge.msdk.foundation.same.report.j.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, 2, "context is null", this.f34269a);
            return;
        }
        boolean z10 = k0.D() == 1;
        boolean z11 = k0.D(context) == 1;
        if (!z10 || !z11) {
            com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 2, "integrated:" + z10 + "-hasWx:" + z11, this.f34269a);
            a(campaignEx, list);
            return;
        }
        String ghId = campaignEx.getGhId();
        String ghPath = campaignEx.getGhPath();
        String bindId = campaignEx.getBindId();
        String strI = com.mbridge.msdk.foundation.controller.c.m().i();
        if (TextUtils.isEmpty(ghId)) {
            a(campaignEx, list);
            com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 2, "ghid is empty", this.f34269a);
            return;
        }
        try {
            if (!TextUtils.isEmpty(strI)) {
                bindId = strI;
            }
            Object objD = k0.d(bindId);
            Class<?> cls = Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req");
            Object objNewInstance = cls.newInstance();
            cls.getField("userName").set(objNewInstance, ghId);
            cls.getField("path").set(objNewInstance, ghPath);
            cls.getField("miniprogramType").set(objNewInstance, cls.getField("MINIPTOGRAM_TYPE_RELEASE").get(null));
            Class.forName("com.tencent.mm.opensdk.openapi.IWXAPI").getMethod("sendReq", Class.forName("com.tencent.mm.opensdk.modelbase.BaseReq")).invoke(objD, objNewInstance);
            com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 1, "", this.f34269a);
        } catch (Throwable th2) {
            com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 2, th2.getMessage(), this.f34269a);
            a(campaignEx, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JumpLoaderResult jumpLoaderResult, CampaignEx campaignEx, boolean z10) {
        a(jumpLoaderResult, campaignEx, 1, z10);
    }

    private void a(CampaignEx campaignEx, int i11, int i12, List<String> list) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(i11));
            eVar.a("result", Integer.valueOf(i12));
            if (list != null) {
                eVar.a("click_path", list.toString());
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", campaignEx, eVar);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", e11.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:48:0x00f4 A[Catch: Exception -> 0x003c, TryCatch #0 {Exception -> 0x003c, blocks: (B:3:0x000a, B:6:0x000f, B:10:0x001a, B:12:0x0024, B:14:0x002a, B:18:0x003f, B:21:0x004d, B:23:0x0053, B:26:0x0067, B:28:0x006b, B:30:0x007d, B:33:0x0087, B:35:0x0091, B:37:0x009b, B:40:0x00ab, B:42:0x00b9, B:49:0x0103, B:52:0x0109, B:75:0x0178, B:77:0x0186, B:79:0x018e, B:83:0x0196, B:78:0x018b, B:44:0x00cb, B:46:0x00d5, B:48:0x00f4, B:56:0x0117, B:58:0x012e, B:61:0x0134, B:64:0x0140, B:66:0x0146, B:68:0x014a, B:70:0x0150, B:72:0x0162, B:74:0x0171, B:85:0x01a0, B:87:0x01a7), top: B:91:0x000a }] */
    public void a(CampaignEx campaignEx, JumpLoaderResult jumpLoaderResult, boolean z10, boolean z11, Boolean bool, List<String> list) {
        try {
            if (this.f34279k) {
                com.mbridge.msdk.click.b.a();
                boolean z12 = true;
                if (campaignEx == null || jumpLoaderResult == null) {
                    if (z10) {
                        a(jumpLoaderResult, campaignEx, true);
                        NativeListener.NativeTrackingListener nativeTrackingListener = this.f34274f;
                        if (nativeTrackingListener != null) {
                            nativeTrackingListener.onRedirectionFailed(null, null);
                            return;
                        }
                        return;
                    }
                    return;
                }
                int iB = b();
                int code = jumpLoaderResult.getCode();
                if (bool != null && !bool.booleanValue()) {
                    com.mbridge.msdk.click.b.a(jumpLoaderResult, this.f34272d, this.f34269a, campaignEx, Boolean.FALSE, this.f34274f, list);
                    return;
                }
                if (TextUtils.isEmpty(jumpLoaderResult.getUrl()) && z10) {
                    int linkType = campaignEx.getLinkType();
                    if (linkType == 2) {
                        a(campaignEx, jumpLoaderResult, z10, b(), list);
                        return;
                    }
                    if (linkType == 3) {
                        a(campaignEx, jumpLoaderResult, z10, list);
                        return;
                    }
                    s0.a(this.f34272d, campaignEx.getClickURL(), this.f34274f, campaignEx, list);
                    a(jumpLoaderResult, campaignEx, true);
                    NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f34274f;
                    if (nativeTrackingListener2 != null) {
                        nativeTrackingListener2.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                        return;
                    }
                    return;
                }
                if (code == 1) {
                    if (TextUtils.isEmpty(campaignEx.getPackageName()) || TextUtils.isEmpty(jumpLoaderResult.getUrl()) || !jumpLoaderResult.getUrl().contains(campaignEx.getPackageName()) || !z10) {
                        if (z10) {
                            if (TextUtils.isEmpty(campaignEx.getPackageName())) {
                                a(iB, jumpLoaderResult.getUrl(), campaignEx, this.f34274f, list);
                            } else {
                                if (!s0.a.a(this.f34272d, MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK + campaignEx.getPackageName(), this.f34274f)) {
                                    a(iB, jumpLoaderResult.getUrl(), campaignEx, this.f34274f, list);
                                }
                            }
                        }
                    } else if (!s0.a.a(this.f34272d, jumpLoaderResult.getUrl(), this.f34274f)) {
                        a(iB, jumpLoaderResult.getUrl(), campaignEx, this.f34274f, list);
                    }
                    NativeListener.NativeTrackingListener nativeTrackingListener3 = this.f34274f;
                    if (nativeTrackingListener3 != null && z10) {
                        nativeTrackingListener3.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                    }
                    z12 = true;
                } else if (code == 3) {
                    if (z10) {
                        com.mbridge.msdk.click.b.a(this.f34272d, campaignEx, this.f34269a, jumpLoaderResult, bool, this.f34274f, list);
                    }
                    NativeListener.NativeTrackingListener nativeTrackingListener4 = this.f34274f;
                    if (nativeTrackingListener4 != null && z10) {
                        nativeTrackingListener4.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                    }
                } else {
                    z12 = true;
                    if (z10) {
                        if (3 == campaignEx.getLinkType()) {
                            a(campaignEx, jumpLoaderResult, z10, list);
                            return;
                        } else {
                            if (2 == campaignEx.getLinkType()) {
                                a(campaignEx, jumpLoaderResult, z10, b(), list);
                                return;
                            }
                            s0.a(this.f34272d, jumpLoaderResult.getUrl(), this.f34274f, campaignEx, list);
                            NativeListener.NativeTrackingListener nativeTrackingListener5 = this.f34274f;
                            if (nativeTrackingListener5 != null) {
                                nativeTrackingListener5.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                            }
                        }
                    }
                }
                if (a(campaignEx.getLinkType(), jumpLoaderResult.getUrl())) {
                    a(jumpLoaderResult, campaignEx, false);
                } else {
                    a(jumpLoaderResult, campaignEx, z12);
                }
                NativeListener.NativeTrackingListener nativeTrackingListener6 = this.f34274f;
                if (nativeTrackingListener6 == null || z10 || !z11) {
                    return;
                }
                nativeTrackingListener6.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void a(CampaignEx campaignEx, List<String> list) {
        if (b() == 2) {
            s0.a(this.f34272d, campaignEx.getClickURL(), campaignEx, this.f34274f, list);
        } else {
            s0.a(this.f34272d, campaignEx.getClickURL(), this.f34274f, campaignEx, list);
        }
    }

    private void a(CampaignEx campaignEx, boolean z10, Boolean bool, List<String> list) {
        boolean z11;
        try {
            this.f34270b = System.currentTimeMillis();
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f34274f;
            if (nativeTrackingListener == null || z10) {
                z11 = true;
            } else {
                nativeTrackingListener.onStartRedirection(campaignEx, campaignEx.getClickURL());
                z11 = !this.f34274f.onInterceptDefaultLoadingDialog();
            }
            this.f34280l = false;
            boolean z12 = true;
            if (campaignEx.getJumpResult() != null) {
                if (!z10) {
                    a(campaignEx, campaignEx.getJumpResult(), true, this.f34278j, bool, list);
                }
                this.f34280l = true;
                this.f34278j = false;
                z12 = false;
            }
            if (!com.mbridge.msdk.foundation.db.d.a(this.f34271c).c(campaignEx.getId(), this.f34269a) || campaignEx.getJumpResult() == null) {
                com.mbridge.msdk.foundation.db.d dVarA = com.mbridge.msdk.foundation.db.d.a(this.f34271c);
                dVarA.a();
                JumpLoaderResult jumpLoaderResultB = dVarA.b(campaignEx.getId(), this.f34269a);
                if (jumpLoaderResultB == null || z10) {
                    if (campaignEx.getClick_mode().equals(PrepareException.ERROR_NO_URL) && !campaignEx.getPackageName().isEmpty() && campaignEx.getLinkType() == 2 && !z10) {
                        boolean zA = s0.a.a(this.f34272d, MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK + campaignEx.getPackageName(), this.f34274f);
                        if (list != null) {
                            list.add("google_play");
                        }
                        if (zA) {
                            a(campaignEx, 1, 1, list);
                        }
                        NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f34274f;
                        if (nativeTrackingListener2 != null && z12) {
                            nativeTrackingListener2.onDismissLoading(campaignEx);
                            this.f34274f.onFinishRedirection(campaignEx, null);
                        }
                        this.f34280l = true;
                        z12 = false;
                    }
                    if (z10) {
                        this.f34280l = true;
                        this.f34278j = false;
                        z12 = false;
                    }
                } else {
                    campaignEx.setJumpResult(jumpLoaderResultB);
                    if (z12) {
                        a(campaignEx, jumpLoaderResultB, z12, this.f34278j, bool, list);
                        this.f34280l = true;
                        this.f34278j = false;
                        z12 = false;
                    }
                }
                new Handler(Looper.getMainLooper()).post(new c(z11, z10, campaignEx));
                com.mbridge.msdk.click.e eVar = this.f34273e;
                if (eVar != null) {
                    eVar.a();
                }
                Set<String> set = f34268p;
                if (set != null && set.contains(campaignEx.getId())) {
                    NativeListener.NativeTrackingListener nativeTrackingListener3 = this.f34274f;
                    if (nativeTrackingListener3 != null) {
                        nativeTrackingListener3.onDismissLoading(campaignEx);
                        this.f34274f.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        return;
                    }
                    return;
                }
                Set<String> set2 = f34268p;
                if (set2 != null) {
                    set2.add(campaignEx.getId());
                }
                com.mbridge.msdk.click.e eVar2 = new com.mbridge.msdk.click.e(this.f34272d);
                this.f34273e = eVar2;
                eVar2.a(this.f34269a, campaignEx, new d(campaignEx, z12, bool, list, z11));
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10, Campaign campaign) {
        new Handler(Looper.getMainLooper()).post(new e(z10, campaign));
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0017 -> B:15:0x0018). Please report as a decompilation issue!!! */
    private boolean a(int i11, String str) {
        boolean z10;
        try {
            if (i11 == 2) {
                if (s0.a.b(str)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else if (TextUtils.isEmpty(str)) {
                z10 = false;
            } else {
                z10 = true;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return z10;
    }

    private boolean a(CampaignEx campaignEx, JumpLoaderResult jumpLoaderResult, boolean z10, int i11, List<String> list) {
        boolean z11 = true;
        boolean z12 = false;
        if (z10) {
            try {
                int i12 = Integer.parseInt(campaignEx.getLandingType());
                if (i12 == 1) {
                    s0.a(this.f34272d, jumpLoaderResult.getUrl(), this.f34274f, campaignEx, list);
                } else if (i12 == 2) {
                    s0.a(this.f34272d, jumpLoaderResult.getUrl(), campaignEx, this.f34274f, list);
                } else if (campaignEx.getPackageName() != null) {
                    if (s0.a.a(this.f34272d, MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK + campaignEx.getPackageName(), this.f34274f)) {
                        if (list != null) {
                            try {
                                list.add("google_play");
                            } catch (Throwable th2) {
                                th = th2;
                                if (MBridgeConstans.DEBUG) {
                                    o0.b("CommonClickControl", th.getMessage(), th);
                                }
                                return z11;
                            }
                        }
                        a(campaignEx, 1, 1, list);
                    } else {
                        a(i11, jumpLoaderResult.getUrl(), campaignEx, this.f34274f, list);
                    }
                } else {
                    a(i11, jumpLoaderResult.getUrl(), campaignEx, this.f34274f, list);
                }
                z12 = true;
            } catch (Throwable th3) {
                th = th3;
                z11 = false;
            }
        }
        if (z12) {
            a(jumpLoaderResult, campaignEx, true);
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f34274f;
            if (nativeTrackingListener == null) {
                return z12;
            }
            nativeTrackingListener.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
            return z12;
        }
        a(jumpLoaderResult, campaignEx, true);
        NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f34274f;
        if (nativeTrackingListener2 == null || !z10) {
            return z12;
        }
        nativeTrackingListener2.onRedirectionFailed(campaignEx, jumpLoaderResult.getUrl());
        return z12;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002b A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:4:0x0004, B:6:0x000a, B:9:0x001a, B:10:0x0026, B:12:0x002b, B:14:0x002f, B:15:0x0037, B:17:0x003d, B:18:0x0040, B:20:0x0044), top: B:26:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x002f A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:4:0x0004, B:6:0x000a, B:9:0x001a, B:10:0x0026, B:12:0x002b, B:14:0x002f, B:15:0x0037, B:17:0x003d, B:18:0x0040, B:20:0x0044), top: B:26:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x0037 A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:4:0x0004, B:6:0x000a, B:9:0x001a, B:10:0x0026, B:12:0x002b, B:14:0x002f, B:15:0x0037, B:17:0x003d, B:18:0x0040, B:20:0x0044), top: B:26:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003d A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:4:0x0004, B:6:0x000a, B:9:0x001a, B:10:0x0026, B:12:0x002b, B:14:0x002f, B:15:0x0037, B:17:0x003d, B:18:0x0040, B:20:0x0044), top: B:26:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0044 A[Catch: all -> 0x0018, TRY_LEAVE, TryCatch #0 {all -> 0x0018, blocks: (B:4:0x0004, B:6:0x000a, B:9:0x001a, B:10:0x0026, B:12:0x002b, B:14:0x002f, B:15:0x0037, B:17:0x003d, B:18:0x0040, B:20:0x0044), top: B:26:0x0004 }] */
    private boolean a(CampaignEx campaignEx, JumpLoaderResult jumpLoaderResult, boolean z10, List<String> list) {
        NativeListener.NativeTrackingListener nativeTrackingListener;
        NativeListener.NativeTrackingListener nativeTrackingListener2;
        boolean z11 = false;
        if (z10) {
            try {
                if (com.mbridge.msdk.util.b.a()) {
                    com.mbridge.msdk.click.b.a(this.f34272d, this.f34269a, campaignEx, campaignEx.getNoticeUrl(), com.mbridge.msdk.foundation.same.a.M);
                }
                s0.a(this.f34272d, campaignEx.getClickURL(), this.f34274f, campaignEx, list);
                z11 = true;
                a(jumpLoaderResult, campaignEx, true);
                if (z11) {
                    nativeTrackingListener2 = this.f34274f;
                    if (nativeTrackingListener2 != null) {
                        nativeTrackingListener2.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                    }
                } else {
                    if (com.mbridge.msdk.util.b.a()) {
                        a(jumpLoaderResult, campaignEx, true);
                    }
                    nativeTrackingListener = this.f34274f;
                    if (nativeTrackingListener != null) {
                        nativeTrackingListener.onRedirectionFailed(campaignEx, jumpLoaderResult.getUrl());
                    }
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", th2.getMessage(), th2);
                }
            }
        } else {
            a(jumpLoaderResult, campaignEx, true);
            if (z11) {
                nativeTrackingListener2 = this.f34274f;
                if (nativeTrackingListener2 != null) {
                    nativeTrackingListener2.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                }
            } else {
                if (com.mbridge.msdk.util.b.a()) {
                    a(jumpLoaderResult, campaignEx, true);
                }
                nativeTrackingListener = this.f34274f;
                if (nativeTrackingListener != null) {
                    nativeTrackingListener.onRedirectionFailed(campaignEx, jumpLoaderResult.getUrl());
                }
            }
        }
        return z11;
    }

    private int b() {
        try {
            com.mbridge.msdk.setting.g gVar = this.f34276h;
            if (gVar != null) {
                return gVar.V();
            }
            return 1;
        } catch (Exception e11) {
            e11.printStackTrace();
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i11) {
        if (i11 == 1) {
            return "2000136";
        }
        if (i11 == 2) {
            return "2000137";
        }
        if (i11 != 3) {
            return i11 != 4 ? "" : "2000138";
        }
        return "2000139";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(CampaignEx campaignEx) {
        try {
            Intent intent = new Intent(this.f34272d, (Class<?>) LoadingActivity.class);
            intent.setFlags(ASTNode.DEOP);
            intent.putExtra("icon_url", campaignEx.getIconUrl());
            this.f34272d.startActivity(intent);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", "Exception", e11);
            }
        }
    }

    public void a(JumpLoaderResult jumpLoaderResult, CampaignEx campaignEx, int i11, boolean z10) {
        if (campaignEx == null || jumpLoaderResult == null) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f34270b;
            com.mbridge.msdk.foundation.entity.e eVar = new com.mbridge.msdk.foundation.entity.e();
            int iS = k0.s(this.f34272d);
            eVar.e(iS);
            eVar.h(k0.a(this.f34272d, iS));
            eVar.i(campaignEx.getRequestId());
            eVar.j(campaignEx.getRequestIdNotice());
            eVar.a(i11);
            eVar.c(jCurrentTimeMillis + "");
            eVar.a(campaignEx.getId());
            eVar.f(jumpLoaderResult.getType());
            if (!TextUtils.isEmpty(jumpLoaderResult.getUrl())) {
                eVar.g(URLEncoder.encode(jumpLoaderResult.getUrl(), "utf-8"));
            }
            eVar.b((this.f34270b / 1000) + "");
            eVar.c(Integer.parseInt(campaignEx.getLandingType()));
            eVar.d(campaignEx.getLinkType());
            eVar.k(this.f34269a);
            eVar.f(jumpLoaderResult.getType());
            if (!TextUtils.isEmpty(jumpLoaderResult.getUrl())) {
                eVar.g(URLEncoder.encode(jumpLoaderResult.getUrl(), "utf-8"));
            }
            if (this.f34277i) {
                eVar.b(jumpLoaderResult.getStatusCode());
                if (!TextUtils.isEmpty(jumpLoaderResult.getHeader())) {
                    eVar.f(URLEncoder.encode(jumpLoaderResult.getHeader(), "utf-8"));
                }
                if (!TextUtils.isEmpty(jumpLoaderResult.getContent())) {
                    eVar.d(URLEncoder.encode(jumpLoaderResult.getContent(), "UTF-8"));
                }
                if (!TextUtils.isEmpty(jumpLoaderResult.getExceptionMsg())) {
                    eVar.e(URLEncoder.encode(jumpLoaderResult.getExceptionMsg(), "utf-8"));
                }
            }
            if (z10) {
                this.f34275g.a("click_jump_error", eVar, this.f34269a);
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(eVar);
            ArrayList<JSONObject> arrayListA = com.mbridge.msdk.foundation.entity.e.a(arrayList);
            if (arrayListA == null || arrayListA.isEmpty()) {
                return;
            }
            Iterator<JSONObject> it = arrayListA.iterator();
            while (it.hasNext()) {
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(it.next());
            }
        } catch (Throwable th2) {
            o0.b("CommonClickControl", th2.getMessage());
        }
    }

    public void a(j jVar) {
        this.f34281m = jVar;
    }

    public void a(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return;
        }
        try {
            if (b(campaignEx)) {
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000149", campaignEx);
                String noticeUrl = campaignEx.getNoticeUrl();
                com.mbridge.msdk.foundation.db.d dVarA = com.mbridge.msdk.foundation.db.d.a(this.f34271c);
                dVarA.a();
                JumpLoaderResult jumpLoaderResultB = dVarA.b(campaignEx.getId(), this.f34269a);
                if (jumpLoaderResultB != null) {
                    if (jumpLoaderResultB.getNoticeurl() != null) {
                        jumpLoaderResultB.setNoticeurl(null);
                    }
                    campaignEx.setJumpResult(jumpLoaderResultB);
                    com.mbridge.msdk.click.b.a(dVarA, campaignEx, this.f34269a);
                }
                ArrayList arrayList = new ArrayList();
                AppletsModel appletsModel = AppletModelManager.getInstance().get(campaignEx);
                if (t0.b(campaignEx)) {
                    MIMManager.b().a(campaignEx);
                    arrayList.add(CampaignEx.JSON_KEY_DEEP_LINK_URL);
                    if (com.mbridge.msdk.click.c.d(this.f34272d, campaignEx.getDeepLinkURL())) {
                        NativeListener.NativeTrackingListener nativeTrackingListener = this.f34274f;
                        if (nativeTrackingListener != null) {
                            nativeTrackingListener.onStartRedirection(campaignEx, campaignEx.getClickURL());
                        }
                        com.mbridge.msdk.click.b.a(this.f34272d, this.f34269a, campaignEx, noticeUrl + "&opdptype=1", -1);
                        com.mbridge.msdk.click.b.a(campaignEx);
                        NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f34274f;
                        if (nativeTrackingListener2 != null) {
                            nativeTrackingListener2.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        }
                        a(campaignEx, 3, 1, arrayList);
                        return;
                    }
                    noticeUrl = noticeUrl + "&opdptype=0";
                    MIMManager.b().b(campaignEx);
                }
                String str = noticeUrl;
                if (campaignEx.getLinkType() == 12) {
                    NativeListener.NativeTrackingListener nativeTrackingListener3 = this.f34274f;
                    if (nativeTrackingListener3 != null) {
                        nativeTrackingListener3.onStartRedirection(campaignEx, campaignEx.getClickURL());
                    }
                    com.mbridge.msdk.click.b.a(this.f34272d, this.f34269a, campaignEx, str, -1);
                    a(this.f34272d, campaignEx, arrayList);
                    NativeListener.NativeTrackingListener nativeTrackingListener4 = this.f34274f;
                    if (nativeTrackingListener4 != null) {
                        nativeTrackingListener4.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        return;
                    }
                    return;
                }
                if (appletsModel != null && appletsModel.isSupportWxScheme()) {
                    if (appletsModel.isRequestSuccess()) {
                        if (com.mbridge.msdk.click.c.d(this.f34272d, appletsModel.getDeepLink())) {
                            NativeListener.NativeTrackingListener nativeTrackingListener5 = this.f34274f;
                            if (nativeTrackingListener5 != null) {
                                nativeTrackingListener5.onStartRedirection(campaignEx, campaignEx.getClickURL());
                            }
                            if (this.f34272d != null) {
                                Intent intent = new Intent();
                                intent.setAction("mb_dp_close_broadcast_receiver");
                                try {
                                    this.f34272d.sendBroadcast(intent);
                                } catch (Exception e11) {
                                    if (MBridgeConstans.DEBUG) {
                                        o0.b("CommonClickControl", e11.getMessage());
                                    }
                                }
                            }
                            com.mbridge.msdk.click.b.a(this.f34272d, this.f34269a, campaignEx, str + "&opdptype=1", -1);
                            com.mbridge.msdk.click.b.a(campaignEx);
                            NativeListener.NativeTrackingListener nativeTrackingListener6 = this.f34274f;
                            if (nativeTrackingListener6 != null) {
                                nativeTrackingListener6.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                                return;
                            }
                            return;
                        }
                        str = str + "&opdptype=0";
                    } else {
                        if (appletsModel.isRequesting()) {
                            NativeListener.NativeTrackingListener nativeTrackingListener7 = this.f34274f;
                            if (nativeTrackingListener7 != null) {
                                nativeTrackingListener7.onStartRedirection(campaignEx, campaignEx.getClickURL());
                            }
                            appletsModel.setAppletSchemeCallBack(a(this.f34274f, campaignEx, appletsModel, this));
                            return;
                        }
                        if (appletsModel.can(1)) {
                            if (!appletsModel.isRequestTimesMaxPerDay()) {
                                NativeListener.NativeTrackingListener nativeTrackingListener8 = this.f34274f;
                                if (nativeTrackingListener8 != null) {
                                    nativeTrackingListener8.onStartRedirection(campaignEx, campaignEx.getClickURL());
                                }
                                appletsModel.requestWxAppletsScheme(1, a(this.f34274f, campaignEx, appletsModel, this));
                                return;
                            }
                            if (!TextUtils.isEmpty(appletsModel.getReBuildClickUrl())) {
                                campaignEx.setClickURL(appletsModel.getReBuildClickUrl());
                            }
                        }
                    }
                }
                if (com.mbridge.msdk.util.b.b()) {
                    com.mbridge.msdk.click.b.a(this.f34272d, this.f34269a, campaignEx, str, -1);
                }
                if (!campaignEx.getUserActivation() && com.mbridge.msdk.click.c.a(this.f34272d, campaignEx.getPackageName())) {
                    com.mbridge.msdk.click.c.b(this.f34272d, campaignEx.getPackageName());
                    if (com.mbridge.msdk.util.b.a()) {
                        com.mbridge.msdk.click.b.a(this.f34272d, this.f34269a, campaignEx, str, com.mbridge.msdk.foundation.same.a.N);
                    }
                    NativeListener.NativeTrackingListener nativeTrackingListener9 = this.f34274f;
                    if (nativeTrackingListener9 != null) {
                        nativeTrackingListener9.onStartRedirection(campaignEx, campaignEx.getClickURL());
                    }
                    if (com.mbridge.msdk.util.b.a()) {
                        a(campaignEx, true, Boolean.TRUE, (List<String>) arrayList);
                    } else {
                        a(campaignEx, true, (Boolean) null, (List<String>) arrayList);
                    }
                    NativeListener.NativeTrackingListener nativeTrackingListener10 = this.f34274f;
                    if (nativeTrackingListener10 != null) {
                        nativeTrackingListener10.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        s0.a(this.f34274f);
                        return;
                    }
                    return;
                }
                int linkType = campaignEx.getLinkType();
                int iB = b();
                if (com.mbridge.msdk.util.b.a() && linkType != 3) {
                    com.mbridge.msdk.click.b.a(this.f34272d, this.f34269a, campaignEx, str, -1);
                }
                boolean z10 = linkType == 8 || linkType == 9 || linkType == 4;
                String clickURL = campaignEx.getClickURL();
                if (!TextUtils.isEmpty(clickURL) && (clickURL.startsWith("market://") || clickURL.startsWith("https://play.google.com/"))) {
                    arrayList.add("google_play");
                    NativeListener.NativeTrackingListener nativeTrackingListener11 = this.f34274f;
                    if (nativeTrackingListener11 != null) {
                        nativeTrackingListener11.onStartRedirection(campaignEx, campaignEx.getClickURL());
                    }
                    if (s0.a.a(this.f34272d, campaignEx.getClickURL(), this.f34274f)) {
                        a(jumpLoaderResultB, campaignEx, false);
                        NativeListener.NativeTrackingListener nativeTrackingListener12 = this.f34274f;
                        if (nativeTrackingListener12 != null) {
                            nativeTrackingListener12.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        }
                        a(campaignEx, 1, 1, arrayList);
                        return;
                    }
                    a(iB, campaignEx.getClickURL(), campaignEx, this.f34274f, arrayList);
                    a(jumpLoaderResultB, campaignEx, false);
                    NativeListener.NativeTrackingListener nativeTrackingListener13 = this.f34274f;
                    if (nativeTrackingListener13 != null) {
                        nativeTrackingListener13.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        return;
                    }
                    return;
                }
                if (!z10) {
                    if (linkType == 2) {
                        if (com.mbridge.msdk.util.b.a()) {
                            a(campaignEx, false, Boolean.TRUE, (List<String>) arrayList);
                            return;
                        } else {
                            a(campaignEx, false, (Boolean) null, (List<String>) arrayList);
                            return;
                        }
                    }
                    if (linkType == 3) {
                        arrayList.add("apk");
                        if (!com.mbridge.msdk.util.b.a()) {
                            a(campaignEx, false, (Boolean) null, (List<String>) arrayList);
                            return;
                        } else {
                            a(campaignEx, false, Boolean.TRUE, (List<String>) arrayList);
                            a(campaignEx, 2, 1, arrayList);
                            return;
                        }
                    }
                    String clickURL2 = campaignEx.getClickURL();
                    NativeListener.NativeTrackingListener nativeTrackingListener14 = this.f34274f;
                    if (nativeTrackingListener14 != null) {
                        nativeTrackingListener14.onStartRedirection(campaignEx, clickURL2);
                    }
                    if (TextUtils.isEmpty(clickURL2)) {
                        NativeListener.NativeTrackingListener nativeTrackingListener15 = this.f34274f;
                        if (nativeTrackingListener15 != null) {
                            nativeTrackingListener15.onRedirectionFailed(campaignEx, clickURL2);
                        }
                        a(jumpLoaderResultB, campaignEx, true);
                        return;
                    }
                    NativeListener.NativeTrackingListener nativeTrackingListener16 = this.f34274f;
                    if (nativeTrackingListener16 != null) {
                        nativeTrackingListener16.onFinishRedirection(campaignEx, clickURL2);
                    }
                    s0.a(this.f34272d, clickURL2, this.f34274f, campaignEx, arrayList);
                    if (com.mbridge.msdk.util.b.a()) {
                        a(jumpLoaderResultB, campaignEx, false);
                        return;
                    } else {
                        a(jumpLoaderResultB, campaignEx, true);
                        return;
                    }
                }
                String clickURL3 = campaignEx.getClickURL();
                NativeListener.NativeTrackingListener nativeTrackingListener17 = this.f34274f;
                if (nativeTrackingListener17 != null) {
                    nativeTrackingListener17.onStartRedirection(campaignEx, clickURL3);
                }
                if (TextUtils.isEmpty(clickURL3)) {
                    NativeListener.NativeTrackingListener nativeTrackingListener18 = this.f34274f;
                    if (nativeTrackingListener18 != null) {
                        nativeTrackingListener18.onRedirectionFailed(campaignEx, clickURL3);
                    }
                    a(jumpLoaderResultB, campaignEx, true);
                    return;
                }
                if (linkType == 8) {
                    if (campaignEx.getAabEntity() == null || campaignEx.getAabEntity().getHlp() != 1) {
                        s0.a(this.f34272d, clickURL3, campaignEx, this.f34274f, arrayList);
                        NativeListener.NativeTrackingListener nativeTrackingListener19 = this.f34274f;
                        if (nativeTrackingListener19 != null) {
                            nativeTrackingListener19.onFinishRedirection(campaignEx, clickURL3);
                        }
                    } else {
                        BaseTrackingListener baseTrackingListener = this.f34274f;
                        if (baseTrackingListener == null && (baseTrackingListener = this.f34281m) != null) {
                            baseTrackingListener.onStartRedirection(campaignEx, clickURL3);
                        }
                        s0.a(this.f34272d, clickURL3, campaignEx, this, baseTrackingListener, arrayList);
                    }
                    a(jumpLoaderResultB, campaignEx, false);
                    return;
                }
                if (linkType == 9) {
                    s0.a(this.f34272d, clickURL3, this.f34274f, campaignEx, arrayList);
                    a(jumpLoaderResultB, campaignEx, false);
                    NativeListener.NativeTrackingListener nativeTrackingListener20 = this.f34274f;
                    if (nativeTrackingListener20 != null) {
                        nativeTrackingListener20.onFinishRedirection(campaignEx, clickURL3);
                        return;
                    }
                    return;
                }
                if (linkType == 4) {
                    if (iB == 2) {
                        s0.a(this.f34272d, clickURL3, campaignEx, this.f34274f, arrayList);
                    } else {
                        s0.a(this.f34272d, clickURL3, this.f34274f, campaignEx, arrayList);
                    }
                }
                NativeListener.NativeTrackingListener nativeTrackingListener21 = this.f34274f;
                if (nativeTrackingListener21 != null) {
                    nativeTrackingListener21.onFinishRedirection(campaignEx, clickURL3);
                }
                a(jumpLoaderResultB, campaignEx, false);
            }
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", th2.getMessage(), th2);
            }
        }
    }

    public void a(CampaignEx campaignEx, NativeListener.NativeAdListener nativeAdListener) {
        if (nativeAdListener != null && campaignEx != null) {
            nativeAdListener.onAdClick(campaignEx);
        }
        a(campaignEx);
    }

    public void a(Campaign campaign, String str) {
        try {
            if (!TextUtils.isEmpty(str) && campaign != null) {
                CampaignEx campaignEx = campaign instanceof CampaignEx ? (CampaignEx) campaign : null;
                if (!str.startsWith("market://") && !str.startsWith("https://play.google.com/")) {
                    com.mbridge.msdk.click.b.a(str, this.f34272d, this.f34269a, campaignEx, this.f34274f);
                    return;
                }
                if (s0.a.a(this.f34272d, str, this.f34274f) || campaignEx == null) {
                    return;
                }
                if (TextUtils.isEmpty(campaignEx.getPackageName())) {
                    if (b() == 2) {
                        s0.a(this.f34272d, campaignEx.getClickURL(), campaignEx, this.f34274f, new ArrayList());
                        return;
                    } else {
                        s0.a(this.f34272d, campaignEx.getClickURL(), this.f34274f, campaignEx, new ArrayList());
                        return;
                    }
                }
                s0.a.a(this.f34272d, MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK + campaignEx.getPackageName(), this.f34274f);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a(NativeListener.NativeTrackingListener nativeTrackingListener) {
        this.f34274f = nativeTrackingListener;
    }

    public void a(String str) {
        this.f34269a = str;
    }

    public void a(boolean z10) {
        this.f34279k = z10;
    }

    public boolean b(CampaignEx campaignEx) {
        Long l11;
        if (campaignEx == null) {
            return true;
        }
        try {
            if (2 != campaignEx.getLinkType() && 3 != campaignEx.getLinkType()) {
                return true;
            }
            String id2 = campaignEx.getId();
            Map<String, Long> map = f34267o;
            if (map == null) {
                return true;
            }
            if (map.containsKey(id2) && (l11 = f34267o.get(id2)) != null) {
                if (l11.longValue() > System.currentTimeMillis() || f34268p.contains(campaignEx.getId())) {
                    return false;
                }
            }
            f34267o.put(campaignEx.getId(), Long.valueOf(System.currentTimeMillis() + ((long) (campaignEx.getClickTimeOutInterval() * 1000))));
            return true;
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return true;
            }
            e11.printStackTrace();
            return true;
        }
    }

    public void c() {
        try {
            this.f34274f = null;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
