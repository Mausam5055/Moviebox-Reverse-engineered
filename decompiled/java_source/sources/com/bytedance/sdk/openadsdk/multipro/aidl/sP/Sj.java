package com.bytedance.sdk.openadsdk.multipro.aidl.sP;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes3.dex */
public class Sj extends IAppOpenAdInteractionListener.Stub {
    private com.bytedance.sdk.openadsdk.Sj.EjP.sP Sj;

    public Sj(com.bytedance.sdk.openadsdk.Sj.EjP.sP sPVar) {
        this.Sj = sPVar;
    }

    private void Sj() {
        this.Sj = null;
    }

    @Override // com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener
    public void onAdClicked() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.sP.Sj.2
            @Override // java.lang.Runnable
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.onAdClicked();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener
    public void onAdShow() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.sP.Sj.1
            @Override // java.lang.Runnable
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.Sj();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener
    public void onAdSkip() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.sP.Sj.3
            @Override // java.lang.Runnable
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.sP();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener
    public void onAdTimeOver() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.sP.Sj.4
            @Override // java.lang.Runnable
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.TKC();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener
    public void onDestroy() throws RemoteException {
        Sj();
    }
}
