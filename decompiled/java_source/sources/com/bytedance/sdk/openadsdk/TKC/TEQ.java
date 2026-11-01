package com.bytedance.sdk.openadsdk.TKC;

import android.os.RemoteException;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.utils.JcM;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ {
    private String Fmk;
    private FilterWord TzV;
    private String Ym;
    private String Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private String f20947aa;
    private int dNu;
    private String sef;
    private int uvD;
    protected IListenerManager vS;
    public static FilterWord Sj = new FilterWord("", "");
    public static int sP = 1;
    public static int TKC = 2;
    public static int EjP = 3;
    public static int HiB = 4;
    private final Set<TKC> Jcg = new HashSet();
    private final Set<sP> Dq = new HashSet();
    private final Set<EjP> uA = new HashSet();
    private final Set<Sj> TEQ = new HashSet();

    public interface EjP {
        void Sj(String str);
    }

    public interface Sj {
        void Sj(List<FilterWord> list);
    }

    public interface TKC {
        void Sj(FilterWord filterWord);
    }

    public interface sP {
        void Sj(int i11);
    }

    private void HiB(final String str) {
        JcM.TKC(new com.bytedance.sdk.component.Dq.Dq("Reward_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.TKC.TEQ.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (TextUtils.isEmpty(TEQ.this.Fmk)) {
                        return;
                    }
                    TEQ.this.Sj(6).executeDisLikeClosedCallback(TEQ.this.Fmk, str);
                } catch (Throwable th2) {
                    sU.Sj("TTDislikeManager", "executeRewardVideoCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    public static void Sj(final int i11, final String str) {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            JcM.TKC(new com.bytedance.sdk.component.Dq.Dq("DislikeClosed_unregisterMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.TKC.TEQ.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.Sj Sj2 = com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj();
                    if (i11 == 6) {
                        try {
                            IListenerManager iListenerManagerAsInterface = IListenerManager.Stub.asInterface(Sj2.Sj(6));
                            if (iListenerManagerAsInterface != null) {
                                iListenerManagerAsInterface.unregisterDisLikeClosedListener(str);
                            }
                        } catch (RemoteException unused) {
                        }
                    }
                }
            }, 5);
        }
    }

    public static void Sj(final int i11, final String str, final com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj sj2) {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            JcM.TKC(new com.bytedance.sdk.component.Dq.Dq("DislikeClosed_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.TKC.TEQ.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.Sj Sj2 = com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj();
                    if (i11 != 6 || sj2 == null) {
                        return;
                    }
                    try {
                        com.bytedance.sdk.openadsdk.multipro.aidl.sP.sP sPVar = new com.bytedance.sdk.openadsdk.multipro.aidl.sP.sP(str, sj2);
                        IListenerManager iListenerManagerAsInterface = IListenerManager.Stub.asInterface(Sj2.Sj(6));
                        if (iListenerManagerAsInterface != null) {
                            iListenerManagerAsInterface.registerDisLikeClosedListener(str, sPVar);
                        }
                    } catch (RemoteException e11) {
                        sU.sP("TTDislikeManager", e11.getMessage());
                    }
                }
            }, 5);
        }
    }

    private void TEQ() {
        Iterator<TKC> it = this.Jcg.iterator();
        while (it.hasNext()) {
            it.next().Sj(this.TzV);
        }
    }

    public int Dq() {
        return this.uvD;
    }

    public void EjP() {
        if (!TKC() && !TextUtils.isEmpty(this.sef)) {
            this.TzV = new FilterWord("0:00", this.sef);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.TzV);
        if (!TextUtils.isEmpty(this.Ym)) {
            if (TextUtils.isEmpty(this.sef)) {
                com.bytedance.sdk.openadsdk.TKC.sP.Sj().Sj(this.Ym, arrayList, this.f20947aa);
            } else {
                com.bytedance.sdk.openadsdk.TKC.sP.Sj().Sj(this.Ym, arrayList, this.Zq, this.sef, this.f20947aa);
            }
        }
        if (!TextUtils.isEmpty(this.Fmk)) {
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                HiB("onItemClickClosed");
            } else {
                com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj sjHiB = com.bytedance.sdk.openadsdk.core.uA.sP().HiB(this.Fmk);
                if (sjHiB != null) {
                    sjHiB.Sj();
                    com.bytedance.sdk.openadsdk.core.uA.sP().vS(this.Fmk);
                }
            }
        }
        Iterator<sP> it = this.Dq.iterator();
        while (it.hasNext()) {
            it.next().Sj(sP);
        }
        Sj(Sj);
        TKC("");
    }

    public void EjP(String str) {
        this.Zq = str;
    }

    public void HiB() {
        Iterator<sP> it = this.Dq.iterator();
        while (it.hasNext()) {
            it.next().Sj(TKC);
        }
    }

    public String Jcg() {
        return this.sef;
    }

    protected IListenerManager Sj(int i11) {
        if (this.vS == null) {
            this.vS = IListenerManager.Stub.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj().Sj(i11));
        }
        return this.vS;
    }

    public void Sj() {
        this.Jcg.clear();
        this.Dq.clear();
        this.uA.clear();
        this.TEQ.clear();
    }

    public void Sj(int i11, int i12) {
        this.uvD = i11;
        this.dNu = i12;
    }

    public void Sj(FilterWord filterWord) {
        this.TzV = filterWord;
        TEQ();
    }

    public void Sj(EjP ejP) {
        this.uA.add(ejP);
    }

    public void Sj(Sj sj2) {
        this.TEQ.add(sj2);
    }

    public void Sj(TKC tkc) {
        this.Jcg.add(tkc);
    }

    public void Sj(sP sPVar) {
        this.Dq.add(sPVar);
    }

    public void Sj(String str) {
        this.Ym = str;
    }

    public void Sj(List<FilterWord> list) {
        Iterator<Sj> it = this.TEQ.iterator();
        while (it.hasNext()) {
            it.next().Sj(list);
        }
    }

    public void TKC(String str) {
        this.sef = str;
        Iterator<EjP> it = this.uA.iterator();
        while (it.hasNext()) {
            it.next().Sj(this.sef);
        }
    }

    public boolean TKC() {
        FilterWord filterWord = this.TzV;
        return (filterWord == null || filterWord.equals(Sj)) ? false : true;
    }

    public FilterWord sP() {
        return this.TzV;
    }

    public void sP(String str) {
        this.f20947aa = str;
    }

    public boolean uA() {
        return this.uvD < this.dNu;
    }

    public void vS() {
        Iterator<sP> it = this.Dq.iterator();
        while (it.hasNext()) {
            it.next().Sj(HiB);
        }
    }
}
