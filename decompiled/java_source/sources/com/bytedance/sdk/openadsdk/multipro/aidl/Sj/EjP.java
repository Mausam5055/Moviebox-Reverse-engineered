package com.bytedance.sdk.openadsdk.multipro.aidl.Sj;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.IDislikeClosedListener;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class EjP extends Sj {
    public static ConcurrentHashMap<String, RemoteCallbackList<IDislikeClosedListener>> Sj = new ConcurrentHashMap<>();
    private static volatile EjP sP;

    public static EjP Sj() {
        if (sP == null) {
            synchronized (EjP.class) {
                try {
                    if (sP == null) {
                        sP = new EjP();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    private synchronized void Sj(String str, String str2) {
        RemoteCallbackList<IDislikeClosedListener> remoteCallbackList;
        try {
            ConcurrentHashMap<String, RemoteCallbackList<IDislikeClosedListener>> concurrentHashMap = Sj;
            if (concurrentHashMap != null && (remoteCallbackList = concurrentHashMap.get(str)) != null) {
                int iBeginBroadcast = remoteCallbackList.beginBroadcast();
                for (int i11 = 0; i11 < iBeginBroadcast; i11++) {
                    try {
                        IDislikeClosedListener iDislikeClosedListener = (IDislikeClosedListener) remoteCallbackList.getBroadcastItem(i11);
                        if (iDislikeClosedListener != null && "onItemClickClosed".equals(str2)) {
                            iDislikeClosedListener.onItemClickClosed();
                        }
                    } catch (Throwable th2) {
                        sU.Sj("MultiProcess", "dislike '" + str2 + "'  throws Exception :", th2);
                    }
                }
                remoteCallbackList.finishBroadcast();
            }
        } catch (Throwable th3) {
            sU.Sj("MultiProcess", "dislike '" + str2 + "'  throws Exception :", th3);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj, com.bytedance.sdk.openadsdk.IListenerManager
    public void executeDisLikeClosedCallback(String str, String str2) throws RemoteException {
        Sj(str, str2);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj, com.bytedance.sdk.openadsdk.IListenerManager
    public synchronized void registerDisLikeClosedListener(String str, IDislikeClosedListener iDislikeClosedListener) throws RemoteException {
        RemoteCallbackList<IDislikeClosedListener> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(iDislikeClosedListener);
        Sj.put(str, remoteCallbackList);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj, com.bytedance.sdk.openadsdk.IListenerManager
    public void unregisterDisLikeClosedListener(String str) throws RemoteException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Sj.remove(str);
    }
}
