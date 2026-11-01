package com.transsion.gslb;

import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.transsion.core.utils.c;
import com.transsion.gslb.misc.AdvertisingIdClient;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import qk.a;

/* JADX INFO: loaded from: classes5.dex */
public class Worker implements Handler.Callback {
    public static final int MAX_RETRY_TIMES = 3;
    public static final int WHAT_ADD_DOMAIN = 101;
    public static final int WHAT_CHECK_EMPTY = 102;
    public static final int WHAT_INIT = 100;
    public static final int WHAT_QUIT = 110;
    public static final int WHAT_SYNC_DATA = 103;
    public static Worker sWorker;
    public DomainManager domainManager;
    public Handler mHandler;
    public HandlerThread handlerThread = null;
    public int netRetryTimes = 0;
    public final ReentrantLock threadLock = new ReentrantLock();

    public Worker() {
        init();
        this.mHandler.sendEmptyMessage(100);
    }

    private String getBackupId() {
        SharedPreferences sharedPreferences;
        String string = "";
        try {
            sharedPreferences = GslbSdk.getContext().getSharedPreferences("gslb", 0);
            try {
                string = sharedPreferences.getString("deviceID", "");
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            sharedPreferences = null;
        }
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String string2 = UUID.randomUUID().toString();
        if (sharedPreferences != null) {
            try {
                sharedPreferences.edit().putString("deviceID", string2).apply();
            } catch (Exception unused3) {
            }
        }
        return string2;
    }

    public static Worker getInstance() {
        if (sWorker == null) {
            synchronized (Worker.class) {
                try {
                    if (sWorker == null) {
                        sWorker = new Worker();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sWorker;
    }

    private void init() {
        try {
            if (this.threadLock.tryLock()) {
                if (this.handlerThread == null) {
                    HandlerThread handlerThread = new HandlerThread("GSLB Worker");
                    this.handlerThread = handlerThread;
                    handlerThread.setPriority(10);
                    this.handlerThread.start();
                    this.mHandler = new Handler(this.handlerThread.getLooper(), this);
                } else if (this.mHandler.hasMessages(110)) {
                    this.mHandler.removeMessages(110);
                }
            }
        } catch (Exception e11) {
            Utils.LOG.i(Log.getStackTraceString(e11));
        } finally {
            this.threadLock.unlock();
        }
    }

    private boolean netRequest(List<String> list) {
        String backupId = null;
        try {
            backupId = AdvertisingIdClient.getAdvertisingIdInfo(a.a()).getId();
            Utils.LOG.i("deviceGaid" + backupId);
        } catch (Exception e11) {
            Utils.LOG.i(Log.getStackTraceString(e11));
        }
        if (backupId == null || TextUtils.isEmpty(backupId)) {
            Utils.LOG.i("Unable to get the device's gaid");
            backupId = getBackupId();
            Utils.LOG.i("backup gaid" + backupId);
        }
        if (backupId.contains("00000000-0000-0000-0000-000000000000")) {
            Utils.LOG.i("gaid tracking is limited");
            backupId = getBackupId();
        }
        Utils.LOG.i("device id is" + backupId);
        String strA = c.a(backupId);
        if (!TextUtils.isEmpty(GslbSdk.getDeviceId())) {
            strA = GslbSdk.getDeviceId();
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appId", GslbSdk.getContext().getPackageName());
            jSONObject.put("key", strA);
            String lastGaid = this.domainManager.getLastGaid();
            if (TextUtils.isEmpty(lastGaid) || backupId.equals(lastGaid)) {
                jSONObject.put("oldKey", "");
            } else {
                jSONObject.put("oldKey", c.a(lastGaid));
            }
            JSONArray jSONArray = new JSONArray();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            String mcc = GslbSdk.getMcc();
            jSONObject.put("domains", jSONArray);
            if (TextUtils.isEmpty(mcc)) {
                mcc = Utils.getMcc();
            }
            jSONObject.put("mcc", notNull(mcc));
            jSONObject.put("locale", notNull(Locale.getDefault().getCountry()));
            jSONObject.put(TmcConstants.KEY_LANGUAGE, notNull(Locale.getDefault().getLanguage()));
            jSONObject.put("model", notNull(Build.MODEL));
            String string = jSONObject.toString();
            String strA2 = c.a(GslbSdk.getContext().getPackageName() + strA);
            try {
                Utils.LOG.g("param size" + string.getBytes().length);
            } catch (Exception unused) {
            }
            NetResponse<String> netResponseDoPost = Utils.doPost(string, strA2);
            if (netResponseDoPost == null) {
                Utils.LOG.i("net request return null");
            } else {
                if (netResponseDoPost.code == 0) {
                    try {
                        Utils.LOG.g("get data success, data is " + netResponseDoPost.data);
                        Utils.LOG.g("data size" + netResponseDoPost.data.getBytes().length);
                    } catch (Exception unused2) {
                    }
                    return this.domainManager.updateNetData(netResponseDoPost.data, backupId);
                }
                Utils.LOG.g("get data error " + netResponseDoPost.code);
            }
        } catch (JSONException unused3) {
        }
        return false;
    }

    private String notNull(String str) {
        return str == null ? "" : str;
    }

    public void addListeners(ListenerBean listenerBean) {
        init();
        Message messageObtainMessage = this.mHandler.obtainMessage(101);
        messageObtainMessage.obj = listenerBean;
        this.mHandler.sendMessage(messageObtainMessage);
    }

    public void checkEmpty() {
        if (this.mHandler.hasMessages(102)) {
            return;
        }
        this.mHandler.sendEmptyMessageDelayed(102, 1000L);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        int i11 = message.what;
        if (i11 != 110) {
            switch (i11) {
                case 100:
                    a.b(GslbSdk.getContext());
                    Utils.LOG.n("-->WHAT_INIT.");
                    try {
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                        GslbSdk.getContext().registerReceiver(new GslbBroadcastReceiver(), intentFilter);
                    } catch (Exception e11) {
                        Utils.LOG.g("regiseter gslb sdk error " + e11.toString());
                    }
                    Utils.LOG.n("GSLB SDK version is 1.0.3.2");
                    this.domainManager = DomainManager.getInstance();
                    break;
                case 101:
                    Utils.LOG.n("-->WHAT_ADD_DOMAIN.");
                    ListenerBean listenerBean = (ListenerBean) message.obj;
                    if (listenerBean.domains != null) {
                        this.netRetryTimes = 0;
                    }
                    this.domainManager.addListener(listenerBean);
                    checkEmpty();
                    if (this.mHandler.hasMessages(110)) {
                        this.mHandler.removeMessages(110);
                    }
                    break;
                case 102:
                    Utils.LOG.n("-->WHAT_CHECK_EMPTY.");
                    if (!Utils.isNetworkAvailable(GslbSdk.getContext())) {
                        this.domainManager.notifyNoNetwork();
                        this.mHandler.removeMessages(110);
                        this.mHandler.sendEmptyMessageDelayed(110, MBInterstitialActivity.WEB_LOAD_TIME);
                    } else {
                        List<String> blankDomains = this.domainManager.getBlankDomains();
                        if (blankDomains.size() <= 0) {
                            if (TextUtils.isEmpty(this.domainManager.getCountry()) && netRequest(this.domainManager.getAllDomains())) {
                                Utils.LOG.g("net request for country success");
                                this.domainManager.notifyListener();
                                this.mHandler.removeMessages(103);
                            }
                            this.mHandler.removeMessages(110);
                            this.mHandler.sendEmptyMessageDelayed(110, MBInterstitialActivity.WEB_LOAD_TIME);
                        } else {
                            Utils.LOG.n("getBlankDomains size > 0");
                            Utils.LOG.n("blankDomains.size()" + blankDomains.size());
                            if (!netRequest(this.domainManager.getAllDomains())) {
                                this.domainManager.notifyNoNetwork();
                                int i12 = this.netRetryTimes + 1;
                                this.netRetryTimes = i12;
                                if (i12 < 3) {
                                    checkEmpty();
                                } else {
                                    this.domainManager.notifyListener();
                                    this.mHandler.removeMessages(110);
                                    this.mHandler.sendEmptyMessageDelayed(110, MBInterstitialActivity.WEB_LOAD_TIME);
                                }
                            } else {
                                this.domainManager.notifyListener();
                                checkEmpty();
                            }
                        }
                    }
                    break;
                case 103:
                    Utils.LOG.n("-->WHAT_SYNC_DATA.");
                    if (Utils.isNetworkAvailable(GslbSdk.getContext())) {
                        List<String> allDomains = this.domainManager.getAllDomains();
                        if (allDomains.size() > 0) {
                            netRequest(allDomains);
                        }
                        this.mHandler.removeMessages(103);
                    }
                    this.mHandler.removeMessages(110);
                    this.mHandler.sendEmptyMessageDelayed(110, MBInterstitialActivity.WEB_LOAD_TIME);
                    break;
            }
        } else {
            Utils.LOG.n("-->WHAT_QUIT.");
            if (this.threadLock.tryLock()) {
                try {
                    HandlerThread handlerThread = this.handlerThread;
                    if (handlerThread != null) {
                        handlerThread.quit();
                        this.handlerThread = null;
                    }
                } finally {
                    this.threadLock.unlock();
                }
            }
        }
        return false;
    }

    public void retry() {
        init();
        checkEmpty();
        DomainManager.getInstance().checkSync();
    }

    public void syncData() {
        init();
        if (this.mHandler.hasMessages(103)) {
            return;
        }
        this.mHandler.sendEmptyMessageDelayed(103, 100L);
    }
}
