package com.bytedance.sdk.openadsdk.multipro.aidl.Sj;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.ICommonPermissionListener;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class TKC extends Sj {
    private static final HashMap<String, RemoteCallbackList<ICommonPermissionListener>> Sj = new HashMap<>();
    private static volatile TKC sP;

    public static TKC Sj() {
        if (sP == null) {
            synchronized (TKC.class) {
                try {
                    if (sP == null) {
                        sP = new TKC();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj, com.bytedance.sdk.openadsdk.IListenerManager
    public void broadcastPermissionListener(String str, String str2) throws RemoteException {
        RemoteCallbackList<ICommonPermissionListener> remoteCallbackListRemove = Sj.remove(str);
        if (remoteCallbackListRemove == null) {
            return;
        }
        int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
        for (int i11 = 0; i11 < iBeginBroadcast; i11++) {
            ICommonPermissionListener iCommonPermissionListener = (ICommonPermissionListener) remoteCallbackListRemove.getBroadcastItem(i11);
            if (iCommonPermissionListener != null) {
                if (str2 == null) {
                    iCommonPermissionListener.onGranted();
                } else {
                    iCommonPermissionListener.onDenied(str2);
                }
            }
        }
        remoteCallbackListRemove.finishBroadcast();
        remoteCallbackListRemove.kill();
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj, com.bytedance.sdk.openadsdk.IListenerManager
    public void registerPermissionListener(String str, ICommonPermissionListener iCommonPermissionListener) throws RemoteException {
        if (iCommonPermissionListener == null) {
            return;
        }
        RemoteCallbackList<ICommonPermissionListener> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(iCommonPermissionListener);
        Sj.put(str, remoteCallbackList);
    }
}
