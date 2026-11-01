package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.IBinderPool;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.multipro.aidl.Sj.EjP;
import com.bytedance.sdk.openadsdk.multipro.aidl.Sj.HiB;
import com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Jcg;
import com.bytedance.sdk.openadsdk.multipro.aidl.Sj.vS;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private static final Sj sP = new Sj();
    private IBinderPool Sj;
    private sP TKC;
    private long EjP = 0;
    private final ServiceConnection HiB = new ServiceConnection() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.Sj.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
            JcM.Sj(new Dq("onServiceConnected") { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.Sj.2.1
                @Override // java.lang.Runnable
                public void run() {
                    Sj.this.Sj = IBinderPool.Stub.asInterface(iBinder);
                    try {
                        Sj.this.Sj.asBinder().linkToDeath(Sj.this.vS, 0);
                    } catch (RemoteException e11) {
                        sU.Sj("TTAD.BinderPool", "onServiceConnected throws :", e11);
                    }
                    System.currentTimeMillis();
                    long unused = Sj.this.EjP;
                    if (Sj.this.TKC != null) {
                        Sj.this.TKC.onServiceConnected();
                    }
                }
            }, 5);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };
    private final IBinder.DeathRecipient vS = new IBinder.DeathRecipient() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.Sj.3
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            JcM.Sj(new Dq("binderDied") { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.Sj.3.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Sj.this.Sj.asBinder().isBinderAlive()) {
                            Sj.this.Sj.asBinder().unlinkToDeath(Sj.this.vS, 0);
                        }
                    } catch (Exception e11) {
                        sU.sP("TTAD.BinderPool", e11.getMessage());
                    }
                    Sj.this.Sj = null;
                    Sj.this.EjP();
                }
            }, 5);
        }
    };

    private Sj() {
        EjP();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void EjP() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            TKC();
        }
    }

    public static Sj Sj() {
        return sP;
    }

    public IBinder Sj(int i11) {
        try {
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                try {
                    IBinderPool iBinderPool = this.Sj;
                    if (iBinderPool != null) {
                        return iBinderPool.queryBinder(i11);
                    }
                    return null;
                } catch (RemoteException e11) {
                    sU.sP("TTAD.BinderPool", e11.getMessage());
                    Mts.Dq("queryBinder error");
                    return null;
                }
            }
            if (i11 == 0) {
                return Jcg.Sj();
            }
            if (i11 == 1) {
                return HiB.Sj();
            }
            if (i11 == 5) {
                return vS.sP();
            }
            if (i11 == 6) {
                return EjP.Sj();
            }
            if (i11 != 7) {
                return null;
            }
            return com.bytedance.sdk.openadsdk.multipro.aidl.Sj.sP.Sj();
        } catch (Throwable unused) {
            return null;
        }
    }

    public void Sj(sP sPVar) {
        this.TKC = sPVar;
        if (this.Sj != null) {
            JcM.Sj(new Dq("onServiceConnected2") { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.Sj.1
                @Override // java.lang.Runnable
                public void run() {
                    if (Sj.this.TKC != null) {
                        Sj.this.TKC.onServiceConnected();
                    }
                }
            }, 5);
        }
    }

    public void TKC() {
        try {
            Context contextSj = dNu.Sj();
            contextSj.bindService(new Intent(contextSj, (Class<?>) BinderPoolService.class), this.HiB, 1);
            this.EjP = System.currentTimeMillis();
        } catch (Throwable unused) {
        }
    }

    public void sP() {
        try {
            Context contextSj = dNu.Sj();
            contextSj.startService(new Intent(contextSj, (Class<?>) BinderPoolService.class));
        } catch (Exception unused) {
        }
    }
}
