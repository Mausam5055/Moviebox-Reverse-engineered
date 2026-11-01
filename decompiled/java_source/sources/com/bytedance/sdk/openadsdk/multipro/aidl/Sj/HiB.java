package com.bytedance.sdk.openadsdk.multipro.aidl.Sj;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class HiB extends Sj {
    private static final Map<String, RemoteCallbackList<IFullScreenVideoAdInteractionListener>> Sj = Collections.synchronizedMap(new HashMap());
    private static volatile HiB sP;

    public static HiB Sj() {
        if (sP == null) {
            synchronized (HiB.class) {
                try {
                    if (sP == null) {
                        sP = new HiB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    private synchronized void Sj(String str, String str2) {
        try {
            Map<String, RemoteCallbackList<IFullScreenVideoAdInteractionListener>> map = Sj;
            if (map != null) {
                RemoteCallbackList<IFullScreenVideoAdInteractionListener> remoteCallbackListRemove = "recycleRes".equals(str2) ? map.remove(str) : map.get(str);
                if (remoteCallbackListRemove != null) {
                    int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
                    for (int i11 = 0; i11 < iBeginBroadcast; i11++) {
                        try {
                            IFullScreenVideoAdInteractionListener iFullScreenVideoAdInteractionListener = (IFullScreenVideoAdInteractionListener) remoteCallbackListRemove.getBroadcastItem(i11);
                            if (iFullScreenVideoAdInteractionListener != null) {
                                if ("onAdShow".equals(str2)) {
                                    iFullScreenVideoAdInteractionListener.onAdShow();
                                } else if ("onAdClose".equals(str2)) {
                                    iFullScreenVideoAdInteractionListener.onAdClose();
                                } else if ("onAdVideoBarClick".equals(str2)) {
                                    iFullScreenVideoAdInteractionListener.onAdVideoBarClick();
                                } else if ("recycleRes".equals(str2)) {
                                    iFullScreenVideoAdInteractionListener.onDestroy();
                                }
                            }
                        } catch (Throwable th2) {
                            sU.Sj("MultiProcess", "fullScreen2 method " + str2 + " throws Exception :", th2);
                        }
                    }
                    remoteCallbackListRemove.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackListRemove.kill();
                    }
                }
            }
        } catch (Throwable th3) {
            sU.Sj("MultiProcess", "fullScreen1 method " + str2 + " throws Exception :", th3);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj, com.bytedance.sdk.openadsdk.IListenerManager
    public void executeFullVideoCallback(String str, String str2) throws RemoteException {
        Sj(str, str2);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj, com.bytedance.sdk.openadsdk.IListenerManager
    public synchronized void registerFullVideoListener(String str, IFullScreenVideoAdInteractionListener iFullScreenVideoAdInteractionListener) throws RemoteException {
        RemoteCallbackList<IFullScreenVideoAdInteractionListener> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(iFullScreenVideoAdInteractionListener);
        Sj.put(str, remoteCallbackList);
    }
}
