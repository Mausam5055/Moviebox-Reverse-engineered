package com.bytedance.sdk.openadsdk.multipro.aidl.Sj;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.IRewardAdInteractionListener;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class Jcg extends Sj {
    private static final Map<String, RemoteCallbackList<IRewardAdInteractionListener>> Sj = Collections.synchronizedMap(new HashMap());
    private static volatile Jcg sP;

    public static Jcg Sj() {
        if (sP == null) {
            synchronized (Jcg.class) {
                try {
                    if (sP == null) {
                        sP = new Jcg();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    private synchronized void Sj(String str, String str2, boolean z10, int i11, String str3, int i12, String str4) {
        try {
            Map<String, RemoteCallbackList<IRewardAdInteractionListener>> map = Sj;
            if (map != null) {
                RemoteCallbackList<IRewardAdInteractionListener> remoteCallbackListRemove = "recycleRes".equals(str2) ? map.remove(str) : map.get(str);
                if (remoteCallbackListRemove != null) {
                    int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
                    for (int i13 = 0; i13 < iBeginBroadcast; i13++) {
                        try {
                            IRewardAdInteractionListener iRewardAdInteractionListener = (IRewardAdInteractionListener) remoteCallbackListRemove.getBroadcastItem(i13);
                            if (iRewardAdInteractionListener != null) {
                                if ("onAdShow".equals(str2)) {
                                    iRewardAdInteractionListener.onAdShow();
                                } else if ("onAdClose".equals(str2)) {
                                    iRewardAdInteractionListener.onAdClose();
                                } else if ("onAdVideoBarClick".equals(str2)) {
                                    iRewardAdInteractionListener.onAdVideoBarClick();
                                } else if ("onRewardVerify".equals(str2)) {
                                    iRewardAdInteractionListener.onRewardVerify(z10, i11, str3, i12, str4);
                                } else if ("recycleRes".equals(str2)) {
                                    iRewardAdInteractionListener.onDestroy();
                                }
                            }
                        } catch (Throwable th2) {
                            sU.Sj("MultiProcess", "reward1 '" + str2 + "'  throws Exception :", th2);
                        }
                    }
                    remoteCallbackListRemove.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackListRemove.kill();
                    }
                }
            }
        } catch (Throwable th3) {
            sU.Sj("MultiProcess", "reward2 '" + str2 + "'  throws Exception :", th3);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj, com.bytedance.sdk.openadsdk.IListenerManager
    public void executeRewardVideoCallback(String str, String str2, boolean z10, int i11, String str3, int i12, String str4) throws RemoteException {
        Sj(str, str2, z10, i11, str3, i12, str4);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj, com.bytedance.sdk.openadsdk.IListenerManager
    public synchronized void registerRewardVideoListener(String str, IRewardAdInteractionListener iRewardAdInteractionListener) throws RemoteException {
        RemoteCallbackList<IRewardAdInteractionListener> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(iRewardAdInteractionListener);
        Sj.put(str, remoteCallbackList);
    }
}
