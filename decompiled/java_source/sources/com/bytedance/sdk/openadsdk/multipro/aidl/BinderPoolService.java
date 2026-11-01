package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.uA;
import com.bytedance.sdk.openadsdk.IBinderPool;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.multipro.aidl.Sj.EjP;
import com.bytedance.sdk.openadsdk.multipro.aidl.Sj.HiB;
import com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Jcg;
import com.bytedance.sdk.openadsdk.multipro.aidl.Sj.vS;

/* JADX INFO: loaded from: classes3.dex */
public class BinderPoolService extends Service {
    public static volatile boolean Sj;
    private static boolean TKC;
    private final Binder sP = new Sj();

    public static class Sj extends IBinderPool.Stub {
        @Override // com.bytedance.sdk.openadsdk.IBinderPool
        public IBinder queryBinder(int i11) throws RemoteException {
            if (i11 == 0) {
                return Jcg.Sj();
            }
            if (i11 == 1) {
                return HiB.Sj();
            }
            if (i11 == 4) {
                return com.bytedance.sdk.openadsdk.multipro.aidl.Sj.TKC.Sj();
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
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return this.sP;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        dNu.sP(getApplicationContext());
        Sj = true;
        if (!TKC) {
            uA.sP().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService.1
                @Override // java.lang.Runnable
                public void run() {
                    Fmk.gq().Sj(BinderPoolService.this.getApplicationContext());
                }
            });
        }
        TKC = true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }
}
