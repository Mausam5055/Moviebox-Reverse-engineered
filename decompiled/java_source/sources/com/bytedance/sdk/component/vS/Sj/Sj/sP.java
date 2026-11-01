package com.bytedance.sdk.component.vS.Sj.Sj;

import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.Dq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends Sj {
    private final EjP Sj;
    private final Queue<String> TKC;
    private final TKC sP;

    public sP() {
        ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        this.TKC = concurrentLinkedQueue;
        this.Sj = new vS(concurrentLinkedQueue);
        this.sP = new TKC();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.component.vS.Sj.Sj.EjP
    public synchronized List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> Sj(int i11, int i12, List<String> list) {
        List list2;
        try {
            List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj = this.Sj.Sj(i11, i12, list);
            if (listSj == null || listSj.size() == 0) {
                ArrayList<String> arrayList = new ArrayList(this.TKC);
                if (list != null && !list.isEmpty()) {
                    arrayList.addAll(list);
                }
                List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj2 = this.sP.Sj(i11, i12, arrayList);
                if (listSj2 != null && listSj2.size() != 0) {
                    HashMap map = new HashMap();
                    for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 : listSj2) {
                        map.put(sj2.TKC(), sj2);
                    }
                    arrayList.size();
                    if (arrayList.size() != 0) {
                        for (String str : arrayList) {
                            if (map.get(str) != null) {
                                map.remove(str);
                            }
                        }
                    }
                    listSj2.clear();
                    Iterator it = map.keySet().iterator();
                    while (it.hasNext()) {
                        listSj2.add(map.get((String) it.next()));
                    }
                }
                list2 = listSj2;
            } else {
                listSj.size();
                if (i11 == 1 || i11 == 2) {
                    list2 = listSj;
                    List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSP = this.sP.sP((com.bytedance.sdk.component.vS.Sj.EjP.Sj) listSj.get(0), listSj.size());
                    list2 = listSj;
                    if (listSP != null && listSP.size() != 0) {
                        list2 = listSj;
                        listSP.size();
                        HashMap map2 = new HashMap();
                        for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj3 : listSP) {
                            map2.put(sj3.TKC(), sj3);
                        }
                        ArrayList arrayList2 = new ArrayList(this.TKC);
                        for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj4 : listSP) {
                            Iterator it2 = arrayList2.iterator();
                            while (it2.hasNext()) {
                                if (TextUtils.equals(sj4.TKC(), (String) it2.next())) {
                                    map2.remove(sj4.TKC());
                                    break;
                                }
                            }
                        }
                        for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj5 : listSj) {
                            map2.put(sj5.TKC(), sj5);
                        }
                        listSj.clear();
                        Iterator it3 = map2.keySet().iterator();
                        while (it3.hasNext()) {
                            listSj.add(map2.get((String) it3.next()));
                        }
                        listSP.clear();
                        list2 = listSj;
                    }
                }
            }
            if (list2 != null && !list2.isEmpty()) {
                Iterator it4 = list2.iterator();
                while (it4.hasNext()) {
                    this.TKC.offer(((com.bytedance.sdk.component.vS.Sj.EjP.Sj) it4.next()).TKC());
                }
                return list2;
            }
            return new ArrayList();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.EjP
    public void Sj(int i11, long j11) {
        this.sP.Sj(i11, j11);
        this.Sj.Sj(i11, j11);
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.EjP
    public synchronized void Sj(int i11, List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
        try {
            Iterator<com.bytedance.sdk.component.vS.Sj.EjP.Sj> it = list.iterator();
            while (it.hasNext()) {
                this.TKC.remove(it.next().TKC());
            }
            EjP ejP = this.Sj;
            if (ejP != null) {
                ejP.Sj(i11, list);
            }
            TKC tkc = this.sP;
            if (tkc != null) {
                tkc.Sj(i11, list);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.EjP
    public synchronized void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2, int i11) {
        EjP ejP;
        if (i11 != 5) {
            try {
                if (Dq.Jcg().uvD().Sj(Dq.Jcg().vS()) && (ejP = this.Sj) != null && sj2 != null) {
                    ejP.Sj(sj2, i11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        TKC tkc = this.sP;
        if (tkc != null && sj2 != null) {
            tkc.Sj(sj2, i11);
        }
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.EjP
    public synchronized boolean Sj(int i11, boolean z10) {
        if (this.Sj.Sj(i11, z10)) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.fF(), 1);
            return true;
        }
        if ((i11 != 1 && i11 != 2) || !this.sP.Sj(i11, z10)) {
            return false;
        }
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.JcM(), 1);
        return true;
    }
}
