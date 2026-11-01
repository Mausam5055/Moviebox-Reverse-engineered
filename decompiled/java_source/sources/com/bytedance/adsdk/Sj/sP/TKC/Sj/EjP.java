package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import com.bytedance.adsdk.Sj.sP.sP.Sj.dx;
import java.util.Deque;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends vS {
    @Override // com.bytedance.adsdk.Sj.sP.TKC.Sj.vS
    public int Sj(String str, int i11, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        if ('(' != Sj(i11, str)) {
            return sj2.Sj(str, i11, deque);
        }
        deque.push(new dx(com.bytedance.adsdk.Sj.sP.EjP.EjP.LEFT_PAREN));
        return i11 + 1;
    }
}
