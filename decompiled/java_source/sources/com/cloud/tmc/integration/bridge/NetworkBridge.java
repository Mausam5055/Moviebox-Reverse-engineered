package com.cloud.tmc.integration.bridge;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.service.EnvironmentService;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.google.gson.JsonObject;
import java.lang.ref.WeakReference;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class NetworkBridge implements BridgeExtension {
    public static final String KEY_NETWORK_TYPE = "networkType";
    public static final String KEY_WEAK_NET = "weakNet";
    private NetworkReceiver networkStatusReceiver = null;

    public static class NetworkReceiver extends BroadcastReceiver {
        private static long ETHERNET_TIME = 0;
        private static int LAST_TYPE = -3;
        private static final int NETWORK_MOBILE = 1;
        private static final int NETWORK_NONE = -1;
        private static final int NETWORK_WIFI = 0;
        private static long NONE_TIME = 0;
        private static String TAG = "NetworkReceiver";
        private static long WIFI_TIME;
        private String lastNetworkType = "";
        private NetworkTaskModelList list;

        public NetworkReceiver(NetworkTaskModelList networkTaskModelList) {
            NetworkTaskModelList networkTaskModelList2 = new NetworkTaskModelList();
            this.list = networkTaskModelList2;
            networkTaskModelList2.addAll(networkTaskModelList);
        }

        private JsonObject buildResJson(String str, boolean z10) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty(NetworkBridge.KEY_NETWORK_TYPE, str);
            jsonObject.addProperty(NetworkBridge.KEY_WEAK_NET, Boolean.valueOf(z10));
            return jsonObject;
        }

        public static int getNetworkState(Context context) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                if (activeNetworkInfo.getType() == 1) {
                    return 0;
                }
                if (activeNetworkInfo.getType() == 0) {
                    return 1;
                }
            }
            return -1;
        }

        public void addAll(NetworkTaskModelList networkTaskModelList) {
            if (networkTaskModelList == null) {
                return;
            }
            if (this.list == null) {
                this.list = new NetworkTaskModelList();
            }
            this.list.addAll(networkTaskModelList);
        }

        public void clearNetworkChangeListenModel(App app) {
            if (this.list == null || app == null) {
                return;
            }
            long nodeId = app.getNodeId();
            Iterator<NetworkTaskModel> it = this.list.iterator();
            while (it.hasNext()) {
                if (nodeId == it.next().appNodeId) {
                    it.remove();
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis == WIFI_TIME || jCurrentTimeMillis == ETHERNET_TIME || jCurrentTimeMillis == NONE_TIME) {
                        return;
                    }
                    int networkState = getNetworkState(context);
                    if (networkState == 0 && LAST_TYPE != 0) {
                        WIFI_TIME = jCurrentTimeMillis;
                        LAST_TYPE = networkState;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("wifi：");
                        sb2.append(jCurrentTimeMillis);
                        this.lastNetworkType = NetworkUtil.NETWORK_TYPE_WIFI;
                        for (NetworkTaskModel networkTaskModel : this.list) {
                            BridgeCallback bridgeCallback = networkTaskModel.callback;
                            WeakReference<Page> weakReference = networkTaskModel.pageRef;
                            if (weakReference != null && weakReference.get() != null && !networkTaskModel.pageRef.get().isDestroyed() && bridgeCallback != null) {
                                bridgeCallback.sendSuccessResponse(buildResJson(NetworkUtil.NETWORK_TYPE_WIFI, false));
                            }
                        }
                        return;
                    }
                    if (networkState != 1) {
                        if (networkState != -1 || LAST_TYPE == -1) {
                            return;
                        }
                        NONE_TIME = jCurrentTimeMillis;
                        LAST_TYPE = networkState;
                        this.lastNetworkType = "none";
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("无网络：");
                        sb3.append(jCurrentTimeMillis);
                        for (NetworkTaskModel networkTaskModel2 : this.list) {
                            BridgeCallback bridgeCallback2 = networkTaskModel2.callback;
                            WeakReference<Page> weakReference2 = networkTaskModel2.pageRef;
                            if (weakReference2 != null && weakReference2.get() != null && !networkTaskModel2.pageRef.get().isDestroyed() && bridgeCallback2 != null) {
                                bridgeCallback2.sendSuccessResponse(buildResJson("none", true));
                            }
                        }
                        return;
                    }
                    ETHERNET_TIME = jCurrentTimeMillis;
                    LAST_TYPE = networkState;
                    String detailNetworkType = NetworkUtil.getDetailNetworkType(context);
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("数据网络：");
                    sb4.append(detailNetworkType);
                    sb4.append("：");
                    sb4.append(jCurrentTimeMillis);
                    if (this.lastNetworkType.equals(detailNetworkType)) {
                        return;
                    }
                    this.lastNetworkType = detailNetworkType;
                    boolean zEquals = NetworkUtil.NETWORK_TYPE_2G.equals(detailNetworkType);
                    for (NetworkTaskModel networkTaskModel3 : this.list) {
                        BridgeCallback bridgeCallback3 = networkTaskModel3.callback;
                        WeakReference<Page> weakReference3 = networkTaskModel3.pageRef;
                        if (weakReference3 != null && weakReference3.get() != null && !networkTaskModel3.pageRef.get().isDestroyed() && bridgeCallback3 != null) {
                            bridgeCallback3.sendSuccessResponse(buildResJson(detailNetworkType, zEquals));
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static class NetworkTaskModel {
        public long appNodeId;
        public BridgeCallback callback;
        public WeakReference<Page> pageRef;

        public NetworkTaskModel(Page page, BridgeCallback bridgeCallback) {
            this.appNodeId = page.getApp() == null ? 0L : page.getApp().getNodeId();
            this.pageRef = new WeakReference<>(page);
            this.callback = bridgeCallback;
        }
    }

    public static class NetworkTaskModelList extends ArrayList<NetworkTaskModel> {
    }

    private JsonObject buildResJson(String str, boolean z10) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(KEY_NETWORK_TYPE, str);
        jsonObject.addProperty(KEY_WEAK_NET, Boolean.valueOf(z10));
        return jsonObject;
    }

    private String getNetmask(short s11) {
        int i11 = (-1) << (32 - s11);
        int[] iArr = new int[4];
        for (int i12 = 0; i12 < 4; i12++) {
            iArr[3 - i12] = (i11 >> (i12 * 8)) & 255;
        }
        String str = "" + iArr[0];
        for (int i13 = 1; i13 < 4; i13++) {
            str = str + "." + iArr[i13];
        }
        return str;
    }

    private void sendCurrentNetworkResult(Page page, BridgeCallback bridgeCallback) {
        try {
            String detailNetworkType = !"fail".equals(NetworkUtil.getSimpleNetworkType(page.getPageContext().getActivity().getApplicationContext())) ? NetworkUtil.getDetailNetworkType(page.getPageContext().getActivity().getApplicationContext()) : "none";
            boolean z10 = "none".equals(detailNetworkType) || NetworkUtil.NETWORK_TYPE_2G.equals(detailNetworkType);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(buildResJson(detailNetworkType, z10));
            }
        } catch (Throwable th2) {
            TmcLogger.e(NetworkUtil.TAG, "sendCurrentNetworkResult failed: ", th2);
        }
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    public void clearNetworkChangeListenModel(App app) {
        NetworkReceiver networkReceiver = this.networkStatusReceiver;
        if (networkReceiver != null) {
            networkReceiver.clearNetworkChangeListenModel(app);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void getLocalIpAddress(@BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback) {
        String displayName;
        if (page == null || page.getPageContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        String hostAddress = "0.0.0.0";
        String netmask = "";
        try {
            if ("wifi".equals(NetworkUtil.getSimpleNetworkType(page.getPageContext().getActivity().getApplicationContext()))) {
                for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                    List<InterfaceAddress> interfaceAddresses = networkInterface.getInterfaceAddresses();
                    if (interfaceAddresses != null && interfaceAddresses.size() > 0 && (displayName = networkInterface.getDisplayName()) != null && displayName.startsWith("wlan0")) {
                        for (InterfaceAddress interfaceAddress : networkInterface.getInterfaceAddresses()) {
                            InetAddress address = interfaceAddress.getAddress();
                            if (address instanceof Inet4Address) {
                                hostAddress = address.getHostAddress();
                                netmask = getNetmask(interfaceAddress.getNetworkPrefixLength());
                                break;
                            }
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e("NetworkBridge", th2);
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("localip", hostAddress);
        jsonObject.addProperty("netmask", netmask);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(jsonObject);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void getNetworkType(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        try {
            if (app == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            AppContext appContext = app.getAppContext();
            if (appContext == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
            Context context = appContext.getContext();
            if (context == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                }
            } else {
                String simpleNetworkType = NetworkUtil.getSimpleNetworkType(context);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(KEY_NETWORK_TYPE, !"fail".equals(simpleNetworkType) ? NetworkUtil.getDetailNetworkType(context) : "none");
                if (bridgeCallback != null) {
                    bridgeCallback.sendSuccessResponse(jsonObject);
                }
            }
        } catch (Exception e11) {
            TmcLogger.e(NetworkUtil.TAG, e11.getMessage(), e11);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void offNetworkStatusChange(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback) {
        NetworkTaskModelList networkTaskModelList = (NetworkTaskModelList) app.getData(NetworkTaskModelList.class);
        if (networkTaskModelList == null) {
            return;
        }
        Iterator<NetworkTaskModel> it = networkTaskModelList.iterator();
        while (it.hasNext()) {
            if (it.next().pageRef.get() == page) {
                it.remove();
            }
        }
        bridgeCallback.sendSuccessResponse(new JsonObject());
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        EnvironmentService environmentService;
        Application applicationContext;
        if (this.networkStatusReceiver == null || (environmentService = (EnvironmentService) TmcProxy.get(EnvironmentService.class)) == null || (applicationContext = environmentService.getApplicationContext()) == null) {
            return;
        }
        applicationContext.unregisterReceiver(this.networkStatusReceiver);
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void onNetworkStatusChange(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback(isSticky = true) BridgeCallback bridgeCallback) {
        if (page == null || bridgeCallback == null) {
            return;
        }
        NetworkTaskModelList networkTaskModelList = (NetworkTaskModelList) app.getData(NetworkTaskModelList.class);
        if (networkTaskModelList == null) {
            networkTaskModelList = new NetworkTaskModelList();
            app.setData(NetworkTaskModelList.class, networkTaskModelList);
        }
        boolean z10 = false;
        for (NetworkTaskModel networkTaskModel : networkTaskModelList) {
            if (networkTaskModel.pageRef.get() == page && !page.isDestroyed()) {
                networkTaskModel.callback = bridgeCallback;
                z10 = true;
            }
        }
        if (z10) {
            this.networkStatusReceiver.addAll(networkTaskModelList);
            sendCurrentNetworkResult(page, bridgeCallback);
            return;
        }
        networkTaskModelList.add(new NetworkTaskModel(page, bridgeCallback));
        NetworkReceiver networkReceiver = this.networkStatusReceiver;
        if (networkReceiver != null) {
            networkReceiver.addAll(networkTaskModelList);
            sendCurrentNetworkResult(page, bridgeCallback);
            return;
        }
        this.networkStatusReceiver = new NetworkReceiver(networkTaskModelList);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        try {
            app.getAppContext().getContext().getApplicationContext().registerReceiver(this.networkStatusReceiver, intentFilter);
        } catch (Throwable th2) {
            TmcLogger.e(NetworkUtil.TAG, "registerReceiver failed: ", th2);
        }
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public void startPreConnect(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        try {
            ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).startPreConnect();
            bridgeCallback.sendSuccessResponse();
        } catch (Throwable th2) {
            TmcLogger.e("NetworkBridge", th2);
            bridgeCallback.sendFailResponse();
        }
    }
}
