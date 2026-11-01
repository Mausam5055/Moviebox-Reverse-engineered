package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import com.bytedance.adsdk.Sj.sP.sP.Sj.sU;
import java.util.Deque;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends vS {
    @Override // com.bytedance.adsdk.Sj.sP.TKC.Sj.vS
    public int Sj(String str, int i11, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        if ('\'' != Sj(i11, str)) {
            return sj2.Sj(str, i11, deque);
        }
        int i12 = i11 + 1;
        int length = str.length();
        int i13 = i12;
        while (i13 < length && Sj(i13, str) != '\'') {
            i13++;
        }
        if (Sj(i13, str) != '\'') {
            throw new com.bytedance.adsdk.Sj.Sj.Sj("String expression not surrounded by '", str.substring(i11));
        }
        deque.push(new sU(str.substring(i12, i13)));
        return i13 + 1;
    }
}
