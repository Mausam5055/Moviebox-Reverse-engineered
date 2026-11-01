package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.view.View;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Mts;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements Mts {
    List<EjP> Sj = new ArrayList();

    public sP(View view, List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj> list) {
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj> it = list.iterator();
        while (it.hasNext()) {
            EjP ejPSj = TKC.Sj().Sj(view, it.next());
            if (ejPSj != null) {
                this.Sj.add(ejPSj);
            }
        }
    }

    public void Sj() {
        Iterator<EjP> it = this.Sj.iterator();
        while (it.hasNext()) {
            try {
                it.next().TKC();
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Mts
    public void sP() {
        Iterator<EjP> it = this.Sj.iterator();
        while (it.hasNext()) {
            try {
                it.next().sP();
            } catch (Exception unused) {
            }
        }
    }
}
