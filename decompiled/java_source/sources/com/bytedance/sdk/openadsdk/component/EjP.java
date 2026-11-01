package com.bytedance.sdk.openadsdk.component;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.LqL;
import com.bytedance.sdk.openadsdk.utils.ib;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends PAGAppOpenAd {
    private boolean Dq;
    private com.bytedance.sdk.openadsdk.Sj.EjP.sP EjP;
    private final boolean Jcg;
    private final Context Sj;
    private final AdSlot TKC;
    private final sU sP;
    private boolean uA;
    private final AtomicBoolean HiB = new AtomicBoolean(false);
    private final String vS = ib.Sj();

    public EjP(Context context, @NonNull sU sUVar, boolean z10, AdSlot adSlot) {
        this.Sj = context;
        this.sP = sUVar;
        this.Jcg = z10;
        this.TKC = adSlot;
    }

    private void Sj() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            JcM.TKC(new Dq("AppOpenAd_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.EjP.1
                @Override // java.lang.Runnable
                public void run() {
                    IListenerManager iListenerManagerAsInterface;
                    com.bytedance.sdk.openadsdk.multipro.aidl.Sj Sj = com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj();
                    if (EjP.this.EjP == null || (iListenerManagerAsInterface = IListenerManager.Stub.asInterface(Sj.Sj(7))) == null) {
                        return;
                    }
                    try {
                        iListenerManagerAsInterface.registerAppOpenAdListener(EjP.this.vS, new com.bytedance.sdk.openadsdk.multipro.aidl.sP.Sj(EjP.this.EjP));
                        EjP.this.EjP = null;
                    } catch (RemoteException e11) {
                        com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdImpl", e11.getMessage());
                    }
                }
            }, 5);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Object getExtraInfo(String str) {
        sU sUVar = this.sP;
        if (sUVar == null || sUVar.QZ() == null) {
            return null;
        }
        try {
            return this.sP.QZ().get(str);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdImpl", th2.getMessage());
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        sU sUVar = this.sP;
        if (sUVar != null) {
            return sUVar.QZ();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d11, String str, String str2) {
        if (this.uA) {
            return;
        }
        LqL.Sj(this.sP, d11, str, str2);
        this.uA = true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd
    public void setAdInteractionCallback(PAGAppOpenAdInteractionCallback pAGAppOpenAdInteractionCallback) {
        this.EjP = new HiB(pAGAppOpenAdInteractionCallback);
        Sj();
    }

    @Override // com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd
    public void setAdInteractionListener(PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener) {
        this.EjP = new HiB(pAGAppOpenAdInteractionListener);
        Sj();
    }

    @Override // com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd
    public void show(Activity activity) {
        int rotation;
        if (activity != null && activity.isFinishing()) {
            activity = null;
        }
        if (this.HiB.getAndSet(true)) {
            return;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("Cannot be called in a child thread ---- TTAppOpenAdImpl.showAppOpenAd");
        }
        IPMiBroadcastReceiver.Sj(this.Sj, this.sP);
        Context contextSj = activity != null ? activity : this.Sj;
        if (contextSj == null) {
            contextSj = dNu.Sj();
        }
        try {
            rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        } catch (Exception unused) {
            rotation = 0;
        }
        Intent intent = new Intent(contextSj, (Class<?>) TTAppOpenAdActivity.class);
        intent.putExtra("orientation_angle", rotation);
        intent.putExtra("ad_source", this.Jcg ? 1 : 2);
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, this.sP.SP().toString());
            intent.putExtra(TTAdConstant.MULTI_PROCESS_META_MD5, this.vS);
        } else {
            kF.Sj().vS();
            kF.Sj().Sj(this.sP);
            kF.Sj().Sj(this.EjP);
            this.EjP = null;
        }
        intent.putExtra("start_show_time", SystemClock.elapsedRealtime());
        com.bytedance.sdk.component.utils.sP.Sj(contextSj, intent, new com.bytedance.sdk.component.utils.sP.InterfaceC0229sP() { // from class: com.bytedance.sdk.openadsdk.component.EjP.2
            @Override // com.bytedance.sdk.component.utils.sP.InterfaceC0229sP
            public void Sj() {
            }

            @Override // com.bytedance.sdk.component.utils.sP.InterfaceC0229sP
            public void Sj(Throwable th2) {
            }
        });
        sef.sP().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.EjP.3
            @Override // java.lang.Runnable
            public void run() {
                if (EjP.this.TKC != null) {
                    try {
                        if (Fmk.gq().uP(EjP.this.TKC.getCodeId()) != 1 || sU.vS(EjP.this.sP) || EjP.this.sP.ODI()) {
                            return;
                        }
                        vS vSVarSj = vS.Sj(EjP.this.Sj);
                        vSVarSj.Jcg(Integer.parseInt(EjP.this.TKC.getCodeId()));
                        vSVarSj.Sj(EjP.this.TKC);
                    } catch (Throwable unused2) {
                    }
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d11) {
        if (this.Dq) {
            return;
        }
        LqL.Sj(this.sP, d11);
        this.Dq = true;
    }
}
