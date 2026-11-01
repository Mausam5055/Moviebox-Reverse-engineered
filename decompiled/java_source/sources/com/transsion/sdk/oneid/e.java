package com.transsion.sdk.oneid;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.gslb.GslbSdk;
import com.transsion.sdk.oneid.data.AppIdInfo;
import com.transsion.sdk.oneid.data.GroupFpInfo;
import com.transsion.sdk.oneid.data.GroupHashInfo;
import com.transsion.sdk.oneid.data.IdChangeInfo;
import com.transsion.sdk.oneid.data.OdIdInfo;
import com.transsion.sdk.oneid.data.UniqueIdInfo;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import n00.g;
import n00.h;
import n00.i;
import n00.j;
import n00.l;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e implements Handler.Callback {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static volatile e f51922n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f51923a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GroupFpInfo f51925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private GroupHashInfo f51926d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f51929g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Context f51932j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private OdIdInfo f51933k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ConcurrentHashMap f51934l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HandlerThread f51924b = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f51927e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f51928f = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ReentrantLock f51931i = new ReentrantLock();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final AtomicBoolean f51935m = new AtomicBoolean(false);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f51930h = new CopyOnWriteArrayList();

    class a extends TypeToken<ConcurrentHashMap<Integer, AppIdInfo>> {
        a(e eVar) {
        }
    }

    class b extends TypeToken<ConcurrentHashMap<Integer, AppIdInfo>> {
        b(e eVar) {
        }
    }

    private e(Context context) {
        this.f51932j = context;
        j();
        Handler handler = this.f51923a;
        if (handler != null) {
            handler.sendEmptyMessage(200);
        }
    }

    public static e a(Context context) {
        if (f51922n == null) {
            synchronized (e.class) {
                try {
                    if (f51922n == null) {
                        f51922n = new e(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f51922n;
    }

    private void c(int i11, AppIdInfo appIdInfo) {
        if (com.transsion.sdk.oneid.b.q(this.f51932j)) {
            com.transsion.sdk.oneid.b.i("onOdidRequestRetry");
            appIdInfo.retryTimes++;
            long j11 = appIdInfo.retryRequestDelay;
            if (j11 == 0) {
                appIdInfo.retryRequestDelay = 3000L;
            } else {
                appIdInfo.retryRequestDelay = Math.min((j11 * 2) + 1000, 600000L);
            }
            Message messageObtain = Message.obtain(this.f51923a, 303);
            messageObtain.obj = appIdInfo;
            messageObtain.arg1 = i11;
            this.f51923a.sendMessageDelayed(messageObtain, appIdInfo.retryRequestDelay);
        }
    }

    private void d(Message message) {
        if (com.transsion.sdk.oneid.b.q(this.f51932j)) {
            long j11 = this.f51927e;
            if (j11 == 0) {
                this.f51927e = 3000L;
            } else {
                this.f51927e = Math.min((j11 * 2) + 1000, 600000L);
            }
            this.f51923a.sendMessageDelayed(message, this.f51927e);
        }
    }

    private void f(String str) {
        com.transsion.sdk.oneid.b.i("onFpPostComplete");
        this.f51928f = System.currentTimeMillis();
        try {
            n00.b bVarB = n00.b.b(this.f51932j);
            bVarB.c("last_post_time", Long.valueOf(this.f51928f / 1000).intValue());
            if (TextUtils.isEmpty(str)) {
                return;
            }
            bVarB.d("fp_hash", str);
        } catch (Exception e11) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
        }
    }

    private void g(String str, int i11, AppIdInfo appIdInfo) {
        com.transsion.sdk.oneid.b.i("onOdidRequestComplete appId : " + i11);
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.optInt("code", 0);
            String strOptString = jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE, "");
            long jOptLong = jSONObject.optLong(EventConstants.KEY_TIME, 0L);
            appIdInfo.odid = jSONObject.optString("odid", "");
            appIdInfo.retryTimes = 0;
            appIdInfo.retryRequestDelay = 0L;
            appIdInfo.lastRequestTime = System.currentTimeMillis();
            long j11 = jOptLong * 1000;
            appIdInfo.waitTime = j11;
            appIdInfo.msg = strOptString;
            n00.b bVarB = n00.b.b(this.f51932j);
            String json = new Gson().toJson(this.f51934l, new b(this).getType());
            com.transsion.sdk.oneid.b.i("appIdInfoListJson : " + json);
            bVarB.g("appid_info_list", json);
            Message messageObtain = Message.obtain(this.f51923a, 303);
            messageObtain.obj = appIdInfo;
            messageObtain.arg1 = i11;
            this.f51923a.sendMessageDelayed(messageObtain, j11);
        } catch (Exception e11) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
        }
    }

    private void j() {
        if (this.f51931i.tryLock()) {
            try {
                try {
                    Handler handler = this.f51923a;
                    if (handler == null || this.f51924b == null) {
                        HandlerThread handlerThread = new HandlerThread("OneID Worker", 10);
                        this.f51924b = handlerThread;
                        handlerThread.start();
                        this.f51923a = new Handler(this.f51924b.getLooper(), this);
                    } else if (handler.hasMessages(201)) {
                        this.f51923a.removeMessages(201);
                    }
                } catch (Exception e11) {
                    com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
                }
            } finally {
                this.f51931i.unlock();
            }
        }
    }

    private void k() {
        ConcurrentHashMap concurrentHashMap = this.f51934l;
        if (concurrentHashMap == null || concurrentHashMap.isEmpty()) {
            String strH = n00.b.b(this.f51932j).h("appid_info_list");
            if (!TextUtils.isEmpty(strH)) {
                com.transsion.sdk.oneid.b.i("AppId Records : " + strH);
                try {
                    this.f51934l = (ConcurrentHashMap) new Gson().fromJson(strH, new a(this).getType());
                } catch (Exception e11) {
                    com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
                }
            }
            if (this.f51934l == null) {
                this.f51934l = new ConcurrentHashMap();
            }
        }
    }

    public void b(int i11) {
        com.transsion.sdk.oneid.b.i("Check appId record : " + i11);
        HandlerThread handlerThread = this.f51924b;
        if (handlerThread == null || !handlerThread.isAlive()) {
            return;
        }
        Message messageObtain = Message.obtain(this.f51923a, Sdk$SDKError.Reason.AD_EXPIRED_VALUE);
        messageObtain.obj = Integer.valueOf(i11);
        if (this.f51935m.get()) {
            this.f51923a.sendMessage(messageObtain);
        } else {
            this.f51923a.sendMessageDelayed(messageObtain, ((long) OneID.f51908d) * 1000);
        }
    }

    public void e(IdChangeInfo idChangeInfo) {
        IdChangeInfo idChangeInfo2;
        com.transsion.sdk.oneid.b.i("onFpIdChanged type = " + idChangeInfo.id_type);
        List list = this.f51930h;
        if (list != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    idChangeInfo2 = null;
                    break;
                }
                idChangeInfo2 = (IdChangeInfo) it.next();
            } while (!idChangeInfo2.id_type.equals(idChangeInfo.id_type));
            if (idChangeInfo2 != null) {
                this.f51930h.remove(idChangeInfo2);
            }
            this.f51930h.add(idChangeInfo);
        }
    }

    public String h() {
        try {
            GroupFpInfo groupFpInfo = this.f51925c;
            return groupFpInfo != null ? groupFpInfo.vaid : "";
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        GroupFpInfo groupFpInfo;
        int i11;
        long j11;
        String strF;
        try {
            int i12 = message.what;
            if (i12 == 100) {
                com.transsion.sdk.oneid.b.i("-->WHAT_GET_PROP_RET");
                String string = message.getData().getString("oneid");
                if (!TextUtils.isEmpty(string) && !TextUtils.equals(string, NetworkUtil.NETWORK_TYPE_UNKNOWN) && (groupFpInfo = this.f51925c) != null) {
                    if (TextUtils.isEmpty(groupFpInfo.dids.tsid)) {
                        UniqueIdInfo uniqueIdInfo = this.f51925c.dids;
                        uniqueIdInfo.tsid = string;
                        this.f51926d.updateDidsHash(uniqueIdInfo);
                        this.f51933k.tsid = string;
                        n00.b bVarB = n00.b.b(this.f51932j);
                        int iIntValue = Long.valueOf(System.currentTimeMillis() / 1000).intValue();
                        try {
                            bVarB.d("oneid", string);
                            bVarB.c("oneid_time", iIntValue);
                        } catch (Exception e11) {
                            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
                        }
                    } else if (!TextUtils.equals(this.f51925c.dids.tsid, string)) {
                        e(new IdChangeInfo("tsid", this.f51925c.dids.tsid, string));
                        UniqueIdInfo uniqueIdInfo2 = this.f51925c.dids;
                        uniqueIdInfo2.tsid = string;
                        this.f51926d.updateDidsHash(uniqueIdInfo2);
                        this.f51933k.tsid = string;
                    }
                }
            } else if (i12 == 200) {
                com.transsion.sdk.oneid.b.o();
                if (TextUtils.isEmpty(n00.b.b(this.f51932j).h("one_id_first_launch")) && OneID.f51908d > 0) {
                    com.transsion.sdk.oneid.b.i("First launch delay " + OneID.f51908d + " sec init");
                    try {
                        Thread.sleep(((long) OneID.f51908d) * 1000);
                    } catch (InterruptedException unused) {
                    }
                    n00.b.b(this.f51932j).g("one_id_first_launch", String.valueOf(System.currentTimeMillis()));
                }
                com.transsion.sdk.oneid.b.i("-->WHAT_INIT 2.0.2.1");
                String string2 = this.f51932j.getResources().getString(R$string.oneid_process_name);
                if (TextUtils.isEmpty(string2)) {
                    string2 = this.f51932j.getPackageName();
                }
                if (!TextUtils.equals(string2, com.transsion.sdk.oneid.b.k(this.f51932j))) {
                    com.transsion.sdk.oneid.b.i("Only works in the main process");
                    this.f51923a.sendEmptyMessageDelayed(201, 1000L);
                    return false;
                }
                try {
                    if (this.f51929g == null) {
                        this.f51929g = new c();
                        this.f51932j.registerReceiver(this.f51929g, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"), null, this.f51923a);
                    }
                } catch (Exception e12) {
                    com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e12));
                }
                GslbSdk.init(this.f51932j, new String[]{"ire-oneid.shalltry.com", "oneid-dev-sg.shalltry.com"}, (GslbSdk.InitListener) null);
                GroupFpInfo groupFpInfo2 = new GroupFpInfo(this.f51932j, this);
                this.f51925c = groupFpInfo2;
                this.f51926d = new GroupHashInfo(groupFpInfo2);
                this.f51933k = new OdIdInfo(this.f51925c);
                com.transsion.sdk.oneid.b.i("--> new OdidInfo " + this.f51933k);
                if (this.f51928f == 0) {
                    this.f51928f = ((long) n00.b.b(this.f51932j).a("last_post_time")) * 1000;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j12 = this.f51928f;
                if (jCurrentTimeMillis >= j12 && jCurrentTimeMillis - j12 < 86400000) {
                    com.transsion.sdk.oneid.b.i("Post time not yet reached");
                } else if (!this.f51923a.hasMessages(300)) {
                    Handler handler = this.f51923a;
                    if (GslbSdk.isInitSuccess(l.d().c())) {
                        i11 = 300;
                        j11 = 3000;
                    } else {
                        i11 = 300;
                        j11 = 6000;
                    }
                    handler.sendEmptyMessageDelayed(i11, j11);
                }
                this.f51935m.set(true);
            } else if (i12 != 201) {
                switch (i12) {
                    case 300:
                        com.transsion.sdk.oneid.b.i("-->WHAT_POST_FP_HASH");
                        this.f51923a.removeMessages(300);
                        if (OneID.f51907c && com.transsion.sdk.oneid.b.p(this.f51932j)) {
                            if (!GslbSdk.isInitSuccess(l.d().c())) {
                                com.transsion.sdk.oneid.b.i("GslbSdk new domain is not ready");
                                d(Message.obtain(this.f51923a, 300));
                                return false;
                            }
                            try {
                                strF = n00.b.b(this.f51932j).f("fp_hash");
                            } catch (Exception unused2) {
                                strF = "";
                            }
                            String strG = com.transsion.sdk.oneid.b.g(this.f51926d.toString());
                            com.transsion.sdk.oneid.b.i(strF + " vs " + strG);
                            if (TextUtils.equals(strF, strG)) {
                                f(null);
                            } else {
                                Message.obtain(this.f51923a, Sdk$SDKError.Reason.MRAID_ERROR_VALUE, strG).sendToTarget();
                            }
                            break;
                        }
                        com.transsion.sdk.oneid.b.i("OneID disable or network unavailable");
                        this.f51927e = 0L;
                        this.f51923a.sendEmptyMessage(201);
                        return false;
                    case MRAID_ERROR_VALUE:
                        com.transsion.sdk.oneid.b.i("-->WHAT_POST_FP_DATA");
                        this.f51923a.removeMessages(Sdk$SDKError.Reason.MRAID_ERROR_VALUE);
                        if (OneID.f51907c && com.transsion.sdk.oneid.b.p(this.f51932j)) {
                            String str = (String) message.obj;
                            i iVarA = new g(this.f51925c).a();
                            com.transsion.sdk.oneid.b.i("code = " + iVarA.f70078a + " data = " + ((String) iVarA.f70079b));
                            int i13 = iVarA.f70078a;
                            if (i13 == 0) {
                                this.f51927e = 0L;
                                try {
                                    if (new JSONObject((String) iVarA.f70079b).optInt("code", 0) == 0) {
                                        if (this.f51930h.isEmpty()) {
                                            f(str);
                                        } else {
                                            Message.obtain(this.f51923a, Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE, str).sendToTarget();
                                        }
                                    }
                                } catch (Exception e13) {
                                    com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e13));
                                }
                            } else if (i13 != 4) {
                                d(Message.obtain(this.f51923a, Sdk$SDKError.Reason.MRAID_ERROR_VALUE, str));
                            }
                            break;
                        }
                        com.transsion.sdk.oneid.b.i("OneID disable or network unavailable");
                        this.f51927e = 0L;
                        this.f51923a.sendEmptyMessage(201);
                        return false;
                    case INVALID_IFA_STATUS_VALUE:
                        com.transsion.sdk.oneid.b.i("-->WHAT_POST_ID_CHANGE");
                        this.f51923a.removeMessages(Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE);
                        String str2 = (String) message.obj;
                        ArrayList arrayList = new ArrayList();
                        for (IdChangeInfo idChangeInfo : this.f51930h) {
                            if (!TextUtils.isEmpty(idChangeInfo.pre_id)) {
                                arrayList.add(idChangeInfo);
                            }
                        }
                        if (arrayList.size() > 0) {
                            try {
                                i iVarA2 = new h(arrayList).a();
                                com.transsion.sdk.oneid.b.i("code = " + iVarA2.f70078a + " data = " + ((String) iVarA2.f70079b));
                                int i14 = iVarA2.f70078a;
                                if (i14 == 0) {
                                    this.f51927e = 0L;
                                    try {
                                        if (new JSONObject((String) iVarA2.f70079b).optInt("code", 0) == 0) {
                                            com.transsion.sdk.oneid.b.h(this.f51932j, this.f51930h);
                                            this.f51930h.clear();
                                            f(str2);
                                        }
                                    } catch (Exception e14) {
                                        com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e14));
                                    }
                                } else if (i14 != 4) {
                                    d(Message.obtain(this.f51923a, Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE, str2));
                                }
                            } catch (Exception e15) {
                                com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e15));
                            }
                        } else {
                            if (this.f51930h.size() > 0) {
                                com.transsion.sdk.oneid.b.h(this.f51932j, this.f51930h);
                                this.f51930h.clear();
                            }
                            f(str2);
                        }
                        break;
                    case 303:
                        com.transsion.sdk.oneid.b.i("-->WHAT_REQUEST_ODID");
                        int i15 = message.arg1;
                        AppIdInfo appIdInfo = (AppIdInfo) message.obj;
                        this.f51923a.removeMessages(303, appIdInfo);
                        if (OneID.f51907c && com.transsion.sdk.oneid.b.p(this.f51932j)) {
                            OdIdInfo odIdInfo = this.f51933k;
                            if (odIdInfo != null) {
                                odIdInfo.appid = i15;
                                com.transsion.sdk.oneid.b.i("--> mOdidInfo set appID :" + this.f51933k.toString());
                                i iVarA3 = new j(this.f51933k).a();
                                com.transsion.sdk.oneid.b.i("code = " + iVarA3.f70078a + " data = " + ((String) iVarA3.f70079b));
                                int i16 = iVarA3.f70078a;
                                if (i16 == 0) {
                                    g((String) iVarA3.f70079b, i15, appIdInfo);
                                } else if (i16 == 3) {
                                    com.transsion.sdk.oneid.b.i("onOdidRequestGatewayError");
                                    Message messageObtain = Message.obtain(this.f51923a, 303);
                                    messageObtain.obj = appIdInfo;
                                    messageObtain.arg1 = i15;
                                    this.f51923a.sendMessageDelayed(messageObtain, 1000L);
                                } else if (i16 != 4) {
                                    c(i15, appIdInfo);
                                }
                            }
                            break;
                        }
                        com.transsion.sdk.oneid.b.i("OneID disable or network unavailable");
                        this.f51923a.sendEmptyMessage(201);
                        return false;
                    case AD_EXPIRED_VALUE:
                        Integer num = (Integer) message.obj;
                        int iIntValue2 = num.intValue();
                        this.f51923a.removeMessages(Sdk$SDKError.Reason.AD_EXPIRED_VALUE, num);
                        if (OneID.f51907c && com.transsion.sdk.oneid.b.p(this.f51932j)) {
                            k();
                            AppIdInfo appIdInfo2 = (AppIdInfo) this.f51934l.get(num);
                            if (appIdInfo2 == null) {
                                appIdInfo2 = new AppIdInfo();
                                this.f51934l.put(num, appIdInfo2);
                                OdIdInfo odIdInfo2 = this.f51933k;
                                if (odIdInfo2 != null) {
                                    odIdInfo2.appid = iIntValue2;
                                }
                            }
                            Message messageObtain2 = Message.obtain(this.f51923a, 303);
                            messageObtain2.arg1 = iIntValue2;
                            messageObtain2.obj = appIdInfo2;
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            long jMax = GslbSdk.isInitSuccess(l.d().c()) ? 3000L : 6000L;
                            long j13 = appIdInfo2.lastRequestTime;
                            if (jCurrentTimeMillis2 >= j13) {
                                long j14 = jCurrentTimeMillis2 - j13;
                                long j15 = appIdInfo2.waitTime;
                                if (j14 < j15) {
                                    jMax = Math.max((j13 + j15) - jCurrentTimeMillis2, jMax);
                                }
                            }
                            if (!this.f51923a.hasMessages(303, appIdInfo2)) {
                                this.f51923a.sendMessageDelayed(messageObtain2, jMax);
                                com.transsion.sdk.oneid.b.i("Appid : " + iIntValue2 + " delay " + jMax + " ms refresh odid ");
                            }
                            break;
                        }
                        com.transsion.sdk.oneid.b.i("OneID disable or network unavailable");
                        this.f51923a.sendEmptyMessage(201);
                        return false;
                }
            } else {
                com.transsion.sdk.oneid.b.i("-->WHAT_QUIT");
                if (this.f51931i.tryLock()) {
                    try {
                        HandlerThread handlerThread = this.f51924b;
                        if (handlerThread != null) {
                            handlerThread.quit();
                            this.f51924b = null;
                        }
                    } finally {
                        this.f51931i.unlock();
                    }
                }
            }
        } catch (Exception e16) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e16));
        }
        return false;
    }

    public String i(int i11) {
        AppIdInfo appIdInfo;
        String str;
        ConcurrentHashMap concurrentHashMap = this.f51934l;
        return (concurrentHashMap == null || (appIdInfo = (AppIdInfo) concurrentHashMap.get(Integer.valueOf(i11))) == null || (str = appIdInfo.odid) == null) ? "" : str;
    }

    public void l() {
        if (com.transsion.sdk.oneid.b.q(this.f51932j)) {
            com.transsion.sdk.oneid.b.i("retry");
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z10 = OneID.f51907c;
            if (z10) {
                long j11 = this.f51928f;
                if (jCurrentTimeMillis < j11 || jCurrentTimeMillis - j11 >= 86400000) {
                    if (this.f51931i.tryLock()) {
                        try {
                            if (this.f51924b == null) {
                                j();
                            }
                            this.f51931i.unlock();
                        } catch (Throwable th2) {
                            this.f51931i.unlock();
                            throw th2;
                        }
                    }
                    Handler handler = this.f51923a;
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                        this.f51923a.sendEmptyMessage(200);
                        return;
                    }
                    return;
                }
            }
            com.transsion.sdk.oneid.b.i(z10 ? "Post time not yet reached" : "OneID disable");
        }
    }
}
