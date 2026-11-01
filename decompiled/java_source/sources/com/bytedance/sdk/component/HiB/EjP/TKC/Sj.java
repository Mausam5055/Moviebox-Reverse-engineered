package com.bytedance.sdk.component.HiB.EjP.TKC;

import com.bytedance.sdk.component.HiB.RiZ;
import com.bytedance.sdk.component.HiB.Ym;
import com.bytedance.sdk.component.HiB.uvD;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Sj<T> {
    private TKC Sj;
    private RiZ sP;

    public Sj(TKC tkc, RiZ riZ) {
        this.Sj = tkc;
        this.sP = riZ;
    }

    public void Sj(int i11, String str, Throwable th2) {
        try {
            RiZ riZ = this.sP;
            if (riZ != null) {
                riZ.Sj("failed", this.Sj);
            }
            String strSU = this.Sj.sU();
            Map<String, List<TKC>> mapJcg = this.Sj.dNu().Jcg();
            List<TKC> list = mapJcg.get(strSU);
            if (list == null) {
                uvD uvdDq = this.Sj.Dq();
                if (uvdDq != null) {
                    uvdDq.Sj(i11, str, th2);
                }
            } else {
                synchronized (list) {
                    try {
                        Iterator<TKC> it = list.iterator();
                        while (it.hasNext()) {
                            uvD uvdDq2 = it.next().Dq();
                            if (uvdDq2 != null) {
                                uvdDq2.toString();
                                uvdDq2.Sj(i11, str, th2);
                            }
                        }
                        list.clear();
                        mapJcg.remove(strSU);
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
            RiZ riZ2 = this.sP;
            if (riZ2 != null) {
                riZ2.sP("failed", this.Sj);
            }
        } catch (Throwable unused) {
        }
    }

    public void Sj(Ym<T> ym2) {
        try {
            RiZ riZ = this.sP;
            if (riZ != null) {
                riZ.Sj(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, this.Sj);
            }
            String strSU = this.Sj.sU();
            Map<String, List<TKC>> mapJcg = this.Sj.dNu().Jcg();
            List<TKC> list = mapJcg.get(strSU);
            if (list == null) {
                uvD uvdDq = this.Sj.Dq();
                if (uvdDq != null) {
                    uvdDq.toString();
                    this.Sj.TEQ();
                    uvdDq.Sj(ym2);
                }
            } else {
                synchronized (list) {
                    try {
                        list.size();
                        for (TKC tkc : list) {
                            uvD uvdDq2 = tkc.Dq();
                            if (uvdDq2 != null) {
                                uvdDq2.toString();
                                tkc.TEQ();
                                uvdDq2.Sj(ym2);
                            }
                        }
                        list.clear();
                        mapJcg.remove(strSU);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            RiZ riZ2 = this.sP;
            if (riZ2 != null) {
                riZ2.sP(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, this.Sj);
            }
        } catch (Throwable unused) {
        }
    }
}
