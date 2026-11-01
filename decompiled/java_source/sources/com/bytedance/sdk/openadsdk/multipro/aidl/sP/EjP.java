package com.bytedance.sdk.openadsdk.multipro.aidl.sP;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IRewardAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes3.dex */
public class EjP extends IRewardAdInteractionListener.Stub {
    private com.bytedance.sdk.openadsdk.Sj.HiB.Sj Sj;

    public EjP(com.bytedance.sdk.openadsdk.Sj.HiB.Sj sj2) {
        this.Sj = sj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj() {
        this.Sj = null;
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdClose() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.sP.EjP.3
            @Override // java.lang.Runnable
            public void run() {
                if (EjP.this.Sj != null) {
                    EjP.this.Sj.sP();
                }
                EjP.this.Sj();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdShow() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.sP.EjP.1
            @Override // java.lang.Runnable
            public void run() {
                if (EjP.this.Sj != null) {
                    EjP.this.Sj.Sj();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdVideoBarClick() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.sP.EjP.2
            @Override // java.lang.Runnable
            public void run() {
                if (EjP.this.Sj != null) {
                    EjP.this.Sj.onAdClicked();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onDestroy() throws RemoteException {
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onRewardVerify(final boolean z10, final int i11, final String str, final int i12, final String str2) throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.sP.EjP.4
            @Override // java.lang.Runnable
            public void run() {
                if (EjP.this.Sj != null) {
                    EjP.this.Sj.Sj(z10, i11, str, i12, str2);
                }
            }
        });
    }
}
