package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import com.bytedance.adsdk.Sj.sP.sP.Sj.Zq;
import java.util.Deque;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg extends vS {
    private boolean Sj(String str, int i11, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque) {
        if ('-' != Sj(i11, str)) {
            return com.bytedance.adsdk.Sj.sP.HiB.Sj.TKC(Sj(i11, str));
        }
        if (deque.peek() != null && !com.bytedance.adsdk.Sj.sP.EjP.TKC.Sj(deque.peek().Sj())) {
            return false;
        }
        if (com.bytedance.adsdk.Sj.sP.HiB.Sj.TKC(Sj(i11 + 1, str))) {
            return true;
        }
        throw new IllegalArgumentException("Unrecognized - symbol, not a negative number or operator, problem range:" + str.substring(0, i11));
    }

    @Override // com.bytedance.adsdk.Sj.sP.TKC.Sj.vS
    public int Sj(String str, int i11, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        char cSj;
        if (!Sj(str, i11, deque)) {
            return sj2.Sj(str, i11, deque);
        }
        int i12 = Sj(i11, str) == '-' ? i11 + 1 : i11;
        boolean z10 = false;
        while (true) {
            cSj = Sj(i12, str);
            if (!com.bytedance.adsdk.Sj.sP.HiB.Sj.TKC(cSj) && (z10 || cSj != '.')) {
                break;
            }
            i12++;
            if (cSj == '.') {
                z10 = true;
            }
        }
        if (cSj != '.') {
            deque.push(new Zq(str.substring(i11, i12)));
            return i12;
        }
        throw new IllegalArgumentException("Illegal negative number format, problem interval:" + str.substring(i11, i12));
    }
}
