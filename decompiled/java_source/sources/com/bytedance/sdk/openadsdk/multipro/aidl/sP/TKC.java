package com.bytedance.sdk.openadsdk.multipro.aidl.sP;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes3.dex */
public class TKC extends IFullScreenVideoAdInteractionListener.Stub {
    private com.bytedance.sdk.openadsdk.Sj.TKC.sP Sj;

    public TKC(com.bytedance.sdk.openadsdk.Sj.TKC.sP sPVar) {
        this.Sj = sPVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj() {
        this.Sj = null;
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdClose() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.sP.TKC.3
            @Override // java.lang.Runnable
            public void run() {
                if (TKC.this.Sj != null) {
                    TKC.this.Sj.sP();
                }
                TKC.this.Sj();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdShow() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.sP.TKC.1
            @Override // java.lang.Runnable
            public void run() {
                if (TKC.this.Sj != null) {
                    TKC.this.Sj.Sj();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdVideoBarClick() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.sP.TKC.2
            @Override // java.lang.Runnable
            public void run() {
                if (TKC.this.Sj != null) {
                    TKC.this.Sj.onAdClicked();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onDestroy() throws RemoteException {
    }
}
