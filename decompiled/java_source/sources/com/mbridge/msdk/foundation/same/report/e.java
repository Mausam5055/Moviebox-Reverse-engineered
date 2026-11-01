package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.BatchReportDao;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.w0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.tracker.p;
import com.mbridge.msdk.tracker.x;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Stack;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f35541l = "e";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static String f35542m = "roas";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static volatile e f35543n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AtomicInteger f35544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BatchReportDao f35545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f35546c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f35547d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f35548e = com.mbridge.msdk.foundation.same.net.utils.d.h().O;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile int f35549f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f35550g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Executor f35551h = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f35552i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Stack<Long> f35553j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.mbridge.msdk.tracker.m f35554k;

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i11 = message.what;
            if (i11 == 1) {
                Bundle data = message.getData();
                if (e.this.f35552i == null || e.this.f35545b == null || data == null) {
                    return;
                }
                e.this.f35552i.removeMessages(2);
                long jCurrentTimeMillis = System.currentTimeMillis();
                ArrayList<BatchReportMessage> batchReportMessages = e.this.f35545b.getBatchReportMessages(jCurrentTimeMillis, 2);
                e.this.b(batchReportMessages, jCurrentTimeMillis);
                e.this.f35544a.set(0);
                String str = e.f35541l;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("超时上报触发了，需要上报的数据： ");
                sb2.append(batchReportMessages != null ? batchReportMessages.size() : 0);
                o0.a(str, sb2.toString());
                return;
            }
            if (i11 == 2) {
                Bundle data2 = message.getData();
                if (e.this.f35552i == null || e.this.f35545b == null || data2 == null) {
                    return;
                }
                e.this.f35552i.removeMessages(1);
                long j11 = data2.getLong("last_report_time");
                ArrayList<BatchReportMessage> batchReportMessages2 = e.this.f35545b.getBatchReportMessages(j11, 2);
                e.this.b(batchReportMessages2, j11);
                String str2 = e.f35541l;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("队列上报触发了，需要上报的数据： ");
                sb3.append(batchReportMessages2 != null ? batchReportMessages2.size() : 0);
                o0.a(str2, sb3.toString());
                return;
            }
            if (i11 == 3) {
                Bundle data3 = message.getData();
                if (data3 != null) {
                    e.this.a((ArrayList<BatchReportMessage>) data3.getParcelableArrayList("report_message"), data3.getLong("last_report_time"));
                    return;
                }
                return;
            }
            if (i11 != 4) {
                return;
            }
            Bundle data4 = message.getData();
            if (e.this.f35552i == null || e.this.f35545b == null || data4 == null || !e.this.f35550g) {
                return;
            }
            e.this.f35552i.removeMessages(4);
            ArrayList<BatchReportMessage> batchReportMessages3 = e.this.f35545b.getBatchReportMessages(System.currentTimeMillis(), 2);
            if (batchReportMessages3 != null && batchReportMessages3.size() > 0) {
                for (int i12 = 0; i12 < batchReportMessages3.size(); i12++) {
                    BatchReportMessage batchReportMessage = batchReportMessages3.get(i12);
                    e.this.a(batchReportMessage.getReportMessage(), batchReportMessage.getTimestamp());
                }
            }
            String str3 = e.f35541l;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("切换上报lib，需要上报的数据： ");
            sb4.append(batchReportMessages3 != null ? batchReportMessages3.size() : 0);
            o0.a(str3, sb4.toString());
        }
    }

    class b extends com.mbridge.msdk.foundation.same.report.net.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f35556b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ArrayList f35557c;

        b(long j11, ArrayList arrayList) {
            this.f35556b = j11;
            this.f35557c = arrayList;
        }

        @Override // com.mbridge.msdk.foundation.same.report.net.b
        public void a(String str) {
            Stack stack;
            o0.a(e.f35541l, "批量上报失败： " + str);
            e.this.a(2, str);
            synchronized (e.this.f35553j) {
                try {
                    e.this.f35553j.add(Long.valueOf(this.f35556b));
                    if (e.this.f35545b != null) {
                        e.this.f35545b.updateMessagesReportState(this.f35557c);
                    }
                    if (e.this.f35553j.size() >= 5) {
                        o0.a(e.f35541l, "批量上报失败，上报失败的数据超过阈值");
                        try {
                            try {
                                e.this.f35553j.pop();
                                long jLongValue = ((Long) e.this.f35553j.pop()).longValue();
                                e.this.f35553j.clear();
                                if (e.this.f35545b != null) {
                                    e.this.f35545b.deleteBatchReportMessagesByTimestamp(jLongValue);
                                }
                                stack = e.this.f35553j;
                            } catch (Throwable th2) {
                                e.this.f35553j.clear();
                                throw th2;
                            }
                        } catch (Exception e11) {
                            o0.b(e.f35541l, e11.getMessage());
                            stack = e.this.f35553j;
                        }
                        stack.clear();
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }

        @Override // com.mbridge.msdk.foundation.same.report.net.b
        public void b(String str) {
            o0.a(e.f35541l, "批量上报成功");
            e.this.a(1, "");
            try {
                if (e.this.f35545b != null) {
                    e.this.f35545b.deleteBatchReportMessagesByTimestamp(this.f35556b);
                }
            } catch (Exception e11) {
                o0.b(e.f35541l, e11.getMessage());
            }
            synchronized (e.this.f35553j) {
                e.this.f35553j.clear();
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f35559a;

        c(String str) {
            this.f35559a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.f35545b == null) {
                return;
            }
            o0.a(e.f35541l, "接收到上报数据： " + this.f35559a);
            if (!e.this.f35550g) {
                if (e.this.f35549f != 1) {
                    e.this.c(this.f35559a);
                }
            } else {
                e.this.a(this.f35559a, 0L);
                if (((Integer) w0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "roas_use_event", 0)).intValue() == 0) {
                    w0.b(com.mbridge.msdk.foundation.controller.c.m().d(), "roas_use_event", 1);
                    e.this.f35552i.sendEmptyMessage(4);
                }
            }
        }
    }

    private e() {
        d();
    }

    private p a(int i11) {
        return i11 == 1 ? new p(new m((byte) 2), com.mbridge.msdk.foundation.same.net.utils.d.h().f35479l, com.mbridge.msdk.foundation.same.net.utils.d.h().f35483p) : new p(new com.mbridge.msdk.tracker.network.toolbox.h(), com.mbridge.msdk.foundation.same.net.utils.d.h().O, 0);
    }

    private JSONObject a(String str) {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        try {
            for (String str2 : str.split(UrlUtils.AND_MARK)) {
                String[] strArrSplit = str2.split(UrlUtils.EQUAL_MARK);
                if (strArrSplit.length == 2) {
                    jSONObject.put(strArrSplit[0], strArrSplit[1]);
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11, String str) {
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("state", Integer.valueOf(i11));
        if (i11 == 2) {
            eVar.a("reason", str);
        }
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a("m_ad_rev_s_s", eVar);
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_ad_rev_s_s", cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, long j11) {
        if (this.f35554k != null) {
            com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e("roas");
            eVar.a(true);
            if (j11 != 0) {
                eVar.c(j11);
            }
            eVar.a(1);
            try {
                eVar.a(a(str));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            this.f35554k.d(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ArrayList<BatchReportMessage> arrayList, long j11) {
        if (arrayList == null || arrayList.size() <= 0) {
            o0.a(f35541l, "需要上报的数据条数： 0");
            return;
        }
        o0.a(f35541l, "需要上报的数据条数： " + arrayList.size());
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (contextD == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.net.wrapper.e eVarA = j.a(contextD);
        eVarA.a("app_id", com.mbridge.msdk.foundation.controller.c.m().b());
        eVarA.a("m_sdk", "msdk");
        eVarA.a("lqswt", String.valueOf(1));
        eVarA.a("device_type", k0.E(contextD) ? "pad" : "phone");
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
            eVarA.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35503j, k0.u());
        }
        StringBuilder sb2 = new StringBuilder();
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            try {
                BatchReportMessage batchReportMessage = arrayList.get(i11);
                if (batchReportMessage != null) {
                    sb2.append(batchReportMessage.getReportMessage() + "&ts=" + batchReportMessage.getTimestamp());
                    if (i11 >= 0 && i11 < size - 1) {
                        sb2.append("\n");
                    }
                }
            } catch (Throwable th2) {
                o0.b(f35541l, th2.getMessage());
            }
        }
        try {
            String strEncode = URLEncoder.encode(sb2.toString(), "utf-8");
            eVarA.a("data", strEncode);
            o0.a(f35541l, "需要批量上报的数据： " + strEncode);
            com.mbridge.msdk.foundation.same.report.net.a aVar = new com.mbridge.msdk.foundation.same.report.net.a(com.mbridge.msdk.foundation.controller.c.m().d());
            a(0, "");
            aVar.post(0, this.f35548e, eVarA, new b(j11, arrayList), "roas", 60000L);
        } catch (Exception e11) {
            o0.b(f35541l, e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ArrayList<BatchReportMessage> arrayList, long j11) {
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        Message messageObtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("report_message", arrayList);
        bundle.putLong("last_report_time", j11);
        messageObtain.setData(bundle);
        messageObtain.what = 3;
        this.f35552i.sendMessage(messageObtain);
    }

    public static synchronized e c() {
        try {
            if (f35543n == null) {
                f35543n = new e();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f35543n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        this.f35545b.addReportMessage(str, 2);
        Handler handler = this.f35552i;
        if (handler != null && !handler.hasMessages(1)) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            this.f35552i.sendMessageDelayed(messageObtain, this.f35547d);
        }
        if (this.f35544a.incrementAndGet() < this.f35546c || this.f35552i == null) {
            return;
        }
        Message messageObtain2 = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putLong("last_report_time", System.currentTimeMillis());
        messageObtain2.setData(bundle);
        messageObtain2.what = 2;
        this.f35552i.sendMessage(messageObtain2);
        this.f35544a.set(0);
    }

    private void d() {
        com.mbridge.msdk.setting.a aVarJ;
        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD != null && (aVarJ = gVarD.j()) != null) {
            this.f35546c = aVarJ.a();
            this.f35547d = ((long) aVarJ.c()) * 1000;
            this.f35548e = com.mbridge.msdk.foundation.same.net.utils.d.h().O;
            this.f35549f = aVarJ.b();
            boolean z10 = aVarJ.d() == 1;
            this.f35550g = z10;
            if (z10 && this.f35549f != 1) {
                int iB = q0.a().b("bcp", NativeComponentConstants.KEY_COMPONENT_TYPE, q0.a().b("t_r_t", 1));
                if (iB != 0 && iB != 1) {
                    iB = 0;
                }
                this.f35554k = com.mbridge.msdk.tracker.m.a(f35542m, com.mbridge.msdk.foundation.controller.c.m().d(), new x.b().a(new d()).a(new n()).a(iB, a(iB)).a(q0.a().b("t_m_e_t", MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF)).b(q0.a().b("t_m_e_s", 50)).d(q0.a().b("t_m_r_c", 50)).c(q0.a().b("t_m_t", DefaultLoadControl.DEFAULT_MIN_BUFFER_MS)).e(q0.a().b("t_m_r_t_s", 1)).a());
                JSONObject jSONObjectB = com.mbridge.msdk.foundation.same.report.c.b();
                try {
                    jSONObjectB.put("device_type", k0.E(com.mbridge.msdk.foundation.controller.c.m().d()) ? "pad" : "phone");
                    if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
                        jSONObjectB.put(com.mbridge.msdk.foundation.same.net.wrapper.e.f35503j, k0.u());
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                this.f35554k.a(jSONObjectB);
                this.f35554k.h();
            }
        }
        o0.a(f35541l, "初始化批量上报： " + this.f35548e + " " + this.f35546c + " " + this.f35547d + " " + this.f35549f);
        this.f35544a = new AtomicInteger(0);
        this.f35553j = new Stack<>();
        this.f35545b = BatchReportDao.getInstance(com.mbridge.msdk.foundation.controller.c.m().d());
        HandlerThread handlerThread = new HandlerThread("mb_revenue_batch_report_thread");
        handlerThread.start();
        this.f35552i = new a(handlerThread.getLooper());
    }

    public void b() {
        Handler handler = this.f35552i;
        if (handler == null || handler.hasMessages(1) || this.f35549f == 1 || this.f35550g) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        this.f35552i.sendMessageDelayed(messageObtain, 5000L);
    }

    public synchronized void b(String str) {
        Executor executor;
        try {
            if (this.f35549f == 1) {
                return;
            }
            c cVar = new c(str);
            if (!com.mbridge.msdk.foundation.controller.d.a().e() || (executor = this.f35551h) == null) {
                cVar.run();
            } else {
                executor.execute(cVar);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
