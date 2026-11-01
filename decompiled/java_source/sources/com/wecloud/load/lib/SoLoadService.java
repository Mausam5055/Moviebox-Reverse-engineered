package com.wecloud.load.lib;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.gson.Gson;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.mmkv.MMKV;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.wecloud.load.lib.bean.SoLoadControlConfig;
import com.wecloud.load.lib.bean.SoZipInfo;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0099\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0006*\u0001X\u0018\u0000 \\2\u00020\u0001:\u0002=AB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ \u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0082@¢\u0006\u0004\b\u0012\u0010\u0013J)\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00142\b\u0010\u001e\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u001f\u0010 JI\u0010(\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000f2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00140$2\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140&H\u0002¢\u0006\u0004\b(\u0010)J'\u0010-\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020\u000fH\u0002¢\u0006\u0004\b-\u0010.J\u001f\u00101\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u0014H\u0002¢\u0006\u0004\b1\u00102J\u0019\u00106\u001a\u0002052\b\u00104\u001a\u0004\u0018\u000103H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u0007H\u0016¢\u0006\u0004\b8\u0010\u0003J\u000f\u00109\u001a\u00020\u0007H\u0016¢\u0006\u0004\b9\u0010\u0003J\r\u0010:\u001a\u00020\u0007¢\u0006\u0004\b:\u0010\u0003J\r\u0010;\u001a\u00020\u0007¢\u0006\u0004\b;\u0010\u0003R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010I\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010BR\u0018\u0010K\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010BR\u0014\u0010O\u001a\u00020L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\u001a\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00140P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010RR \u0010W\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000f0T8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010VR\u0014\u0010[\u001a\u00020X8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bY\u0010Z¨\u0006]"}, d2 = {"Lcom/wecloud/load/lib/SoLoadService;", "Landroid/app/Service;", "<init>", "()V", "Lcom/wecloud/load/lib/bean/SoLoadControlConfig;", "s", "()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;", "", "A", "Lcom/wecloud/load/lib/SoDownloadRequest;", "request", CampaignEx.JSON_KEY_AD_R, "(Lcom/wecloud/load/lib/SoDownloadRequest;)V", "Lcom/wecloud/load/lib/bean/SoZipInfo;", "soZipInfo", "", "zipIndex", "Lcom/wecloud/load/lib/SoLoadService$b;", "y", "(Lcom/wecloud/load/lib/bean/SoZipInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "methodName", "input", "soName", "", CampaignEx.JSON_KEY_AD_Q, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z", NotificationCompat.CATEGORY_STATUS, "w", "(Ljava/lang/String;I)V", NotificationCompat.CATEGORY_MESSAGE, "x", "(Ljava/lang/String;Ljava/lang/String;)V", "groupIndex", "successCount", "failCount", "", "successSoNames", "", "failSoNames", "v", "(IIILjava/util/List;Ljava/util/Map;)V", "totalGroups", "totalSuccess", "totalFail", "t", "(III)V", "errorCode", "errorMessage", TmcStartParams.KEY_URL_SHORT, "(ILjava/lang/String;)V", "Landroid/content/Intent;", "intent", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "onDestroy", "onCreate", "B", "z", "Lkotlinx/coroutines/n0;", "a", "Lkotlinx/coroutines/n0;", "serviceScope", "Lkotlinx/coroutines/t1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlinx/coroutines/t1;", "currentJob", "Lcom/wecloud/load/lib/h;", "c", "Lcom/wecloud/load/lib/h;", "callback", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "exitProcessCheckJob", "e", "exitMonitorJob", "", "f", "J", "MONITOR_INTERVAL_MS", "", "g", "Ljava/util/Set;", "loadedSoSet", "Ljava/util/concurrent/ConcurrentHashMap;", "h", "Ljava/util/concurrent/ConcurrentHashMap;", "downloadProgressMap", "com/wecloud/load/lib/SoLoadService$c", "i", "Lcom/wecloud/load/lib/SoLoadService$c;", "binder", "j", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SoLoadService extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private t1 currentJob;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private h callback;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private t1 exitProcessCheckJob;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private t1 exitMonitorJob;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final n0 serviceScope = o0.a(y0.b().plus(l2.b(null, 1, null)));

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final long MONITOR_INTERVAL_MS = 60000;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Set loadedSoSet = new LinkedHashSet();

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final ConcurrentHashMap downloadProgressMap = new ConcurrentHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final c binder = new c();

    /* JADX INFO: Access modifiers changed from: private */
    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f60828a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map f60829b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f60830c;

        public b(List successSoNames, Map failSoNames, boolean z10) {
            Intrinsics.h(successSoNames, "successSoNames");
            Intrinsics.h(failSoNames, "failSoNames");
            this.f60828a = successSoNames;
            this.f60829b = failSoNames;
            this.f60830c = z10;
        }

        public /* synthetic */ b(List list, Map map, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, map, (i11 & 4) != 0 ? false : z10);
        }

        public final int a() {
            return this.f60829b.size();
        }

        public final Map b() {
            return this.f60829b;
        }

        public final int c() {
            return this.f60828a.size();
        }

        public final List d() {
            return this.f60828a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f60828a, bVar.f60828a) && Intrinsics.c(this.f60829b, bVar.f60829b) && this.f60830c == bVar.f60830c;
        }

        public int hashCode() {
            return (((this.f60828a.hashCode() * 31) + this.f60829b.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f60830c);
        }

        public String toString() {
            return "GroupProcessResult(successSoNames=" + this.f60828a + ", failSoNames=" + this.f60829b + ", res=" + this.f60830c + ")";
        }
    }

    public static final class c extends i.a {
        c() {
        }

        @Override // com.wecloud.load.lib.i
        public int C(String str) {
            Integer num;
            if (str == null || StringsKt.q0(str) || (num = (Integer) SoLoadService.this.downloadProgressMap.get(str)) == null) {
                return 0;
            }
            return num.intValue();
        }

        @Override // com.wecloud.load.lib.i
        public void D(SoDownloadRequest soDownloadRequest, h hVar) {
            SoLoadService.this.callback = hVar;
            if (soDownloadRequest == null) {
                SoLoadService.this.u(1001, "请求参数为空");
            } else {
                SoLoadService.this.r(soDownloadRequest);
                SoLoadService.this.z();
            }
        }

        @Override // com.wecloud.load.lib.i
        public boolean K0(String str) {
            if (str == null || StringsKt.q0(str)) {
                return false;
            }
            return SoLoadService.this.loadedSoSet.contains(str);
        }
    }

    public static final class d implements NativeClass.Callback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f60833b;

        d(String str) {
            this.f60833b = str;
        }

        @Override // com.wecloud.load.lib.NativeClass.Callback
        public void onInitCallback(int i11) {
            SoLoadService.this.w(this.f60833b, i11);
        }

        @Override // com.wecloud.load.lib.NativeClass.Callback
        public void onResultCallback(String str) {
            SoLoadService.this.x(this.f60833b, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A() {
        t1 t1Var = this.exitProcessCheckJob;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.exitProcessCheckJob = kotlinx.coroutines.k.d(this.serviceScope, null, null, new SoLoadService$startExitProcessCheck$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final boolean q(String methodName, String input, String soName) {
        boolean z10 = false;
        try {
            try {
                d dVar = new d(soName);
                try {
                    switch (methodName.hashCode()) {
                        case 1237811777:
                            if (methodName.equals("group0Init")) {
                                NativeClass.f60811a.group0Init(input, dVar);
                                return true;
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("when else methodName  ");
                            sb2.append(methodName);
                            return false;
                        case 1238735298:
                            if (methodName.equals("group1Init")) {
                                NativeClass.f60811a.group1Init(input, dVar);
                                return true;
                            }
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("when else methodName  ");
                            sb3.append(methodName);
                            return false;
                        case 1239658819:
                            if (methodName.equals("group2Init")) {
                                NativeClass.f60811a.group2Init(input, dVar);
                                return true;
                            }
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("when else methodName  ");
                            sb4.append(methodName);
                            return false;
                        case 1240582340:
                            if (methodName.equals("group3Init")) {
                                NativeClass.f60811a.group3Init(input, dVar);
                                return true;
                            }
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("when else methodName  ");
                            sb5.append(methodName);
                            return false;
                        case 1241505861:
                            if (methodName.equals("group4Init")) {
                                NativeClass.f60811a.group4Init(input, dVar);
                                return true;
                            }
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("when else methodName  ");
                            sb6.append(methodName);
                            return false;
                        default:
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append("when else methodName  ");
                            sb7.append(methodName);
                            return false;
                    }
                } catch (UnsatisfiedLinkError e11) {
                    e = e11;
                    z10 = true;
                    Log.e("SoLoadService", "SO加载失败 (UnsatisfiedLinkError): " + e.getMessage(), e);
                    return z10;
                }
            } catch (Exception e12) {
                String message = e12.getMessage();
                StringBuilder sb8 = new StringBuilder();
                sb8.append("when callNativeInit e  ");
                sb8.append(message);
                return false;
            }
        } catch (UnsatisfiedLinkError e13) {
            e = e13;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(SoDownloadRequest request) {
        if (!request.isValid()) {
            u(1001, "请求数据无效");
            return;
        }
        List<SoZipInfo> soZipList = request.getSoZipList();
        if (soZipList.isEmpty()) {
            u(1001, "SO ZIP列表为空");
            return;
        }
        SoLoadControlConfig controlConfig = request.getControlConfig();
        if (controlConfig != null && controlConfig.getExitProcess()) {
            A();
        }
        t1 t1Var = this.currentJob;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.downloadProgressMap.clear();
        this.currentJob = kotlinx.coroutines.k.d(this.serviceScope, null, null, new SoLoadService$downloadAndLoadSoInternal$1(soZipList, this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SoLoadControlConfig s() {
        try {
            String strL = gz.b.f64036a.b().l("so_load_control_config", null);
            if (strL != null && !StringsKt.q0(strL)) {
                SoLoadControlConfig soLoadControlConfig = (SoLoadControlConfig) new Gson().fromJson(strL, SoLoadControlConfig.class);
                boolean exitProcess = soLoadControlConfig.getExitProcess();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("从 MMKV 读取配置成功: exitProcess=");
                sb2.append(exitProcess);
                return soLoadControlConfig;
            }
            return null;
        } catch (Exception e11) {
            Log.e("SoLoadService", "从 MMKV 读取配置失败: " + e11.getMessage(), e11);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(int totalGroups, int totalSuccess, int totalFail) {
        try {
            h hVar = this.callback;
            if (hVar != null) {
                hVar.n0(totalGroups, totalSuccess, totalFail);
            }
        } catch (RemoteException e11) {
            lg.a.C0828a.k(lg.a.f68839a, "SoLoadService", "回调异常: " + e11.getMessage(), e11, false, 8, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(int errorCode, String errorMessage) {
        try {
            h hVar = this.callback;
            if (hVar != null) {
                hVar.onError(errorCode, errorMessage);
            }
        } catch (RemoteException e11) {
            lg.a.C0828a.k(lg.a.f68839a, "SoLoadService", "回调异常: " + e11.getMessage(), e11, false, 8, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(int groupIndex, int successCount, int failCount, List successSoNames, Map failSoNames) {
        try {
            h hVar = this.callback;
            if (hVar != null) {
                hVar.q0(groupIndex, successCount, failCount, successSoNames, failSoNames);
            }
        } catch (RemoteException e11) {
            lg.a.C0828a.k(lg.a.f68839a, "SoLoadService", "回调异常: " + e11.getMessage(), e11, false, 8, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w(String soName, int status) {
        try {
            h hVar = this.callback;
            if (hVar != null) {
                hVar.e(soName, status);
            }
        } catch (RemoteException e11) {
            lg.a.C0828a.k(lg.a.f68839a, "SoLoadService", "回调异常: " + e11.getMessage(), e11, false, 8, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(String soName, String msg) {
        try {
            h hVar = this.callback;
            if (hVar != null) {
                if (msg == null) {
                    msg = "";
                }
                hVar.R(soName, msg);
            }
        } catch (RemoteException e11) {
            lg.a.C0828a.k(lg.a.f68839a, "SoLoadService", "回调异常: " + e11.getMessage(), e11, false, 8, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object y(SoZipInfo soZipInfo, int i11, Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new SoLoadService$processSoZip$2(soZipInfo, i11, this, null), continuation);
    }

    public final void B() {
        A();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        MMKV.C(getApplication());
        p.f60874a.b(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        p.f60874a.d();
        t1 t1Var = this.currentJob;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        t1 t1Var2 = this.exitProcessCheckJob;
        if (t1Var2 != null) {
            t1.a.b(t1Var2, null, 1, null);
        }
        o0.d(this.serviceScope, null, 1, null);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onDestroy ");
        sb2.append(this);
    }

    public final void z() {
        t1 t1Var = this.exitMonitorJob;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.exitMonitorJob = kotlinx.coroutines.k.d(this.serviceScope, null, null, new SoLoadService$scheduleCheckExit$1(this, null), 3, null);
        lg.a.C0828a.f(lg.a.f68839a, "SoLoadManagerExample", "已启动退出监控任务，每30分钟检查一次", false, 4, null);
    }
}
