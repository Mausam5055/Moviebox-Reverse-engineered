package com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TKC {
    private final Context Sj;
    protected final List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> sP = new ArrayList();
    private boolean TKC = false;
    private final Runnable EjP = new Runnable() { // from class: com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.TKC.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (TKC.this) {
                if (TKC.this.sP.isEmpty()) {
                    TKC.this.TKC = false;
                    return;
                }
                try {
                    ArrayList arrayList = new ArrayList(TKC.this.sP);
                    TKC.this.sP.clear();
                    TKC.this.TKC = false;
                    TKC.this.EjP(arrayList);
                } catch (OutOfMemoryError unused) {
                }
            }
        }
    };

    public TKC(Context context) {
        this.Sj = context;
    }

    private void Sj() {
        if (this.TKC) {
            return;
        }
        com.bytedance.sdk.component.vS.Sj.Jcg.Sj.Sj().postDelayed(this.EjP, com.bytedance.sdk.component.vS.Sj.Jcg.Sj.sP());
        this.TKC = true;
    }

    public void EjP(List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), sP(), list);
    }

    public Context HiB() {
        return this.Sj;
    }

    public synchronized void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2) {
        if (sj2.Jcg() != null && !TextUtils.isEmpty(sj2.TKC())) {
            this.sP.add(sj2);
            Sj();
        }
    }

    protected void TKC(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            Iterator<com.bytedance.sdk.component.vS.Sj.EjP.Sj> it = this.sP.iterator();
            while (it.hasNext()) {
                com.bytedance.sdk.component.vS.Sj.EjP.Sj next = it.next();
                if (next != null) {
                    String strTKC = next.TKC();
                    if (!TextUtils.isEmpty(strTKC) && list.contains(strTKC)) {
                        it.remove();
                    }
                }
            }
        } catch (Throwable th2) {
            sP();
            th2.getMessage();
        }
    }

    public abstract String sP();
}
