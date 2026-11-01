package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import com.bytedance.adsdk.Sj.sP.sP.Sj.zR;
import java.util.Deque;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends vS {
    private int Sj(String str, int i11, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque) {
        int i12;
        int i13 = 0;
        while (true) {
            i12 = i13 + i11;
            char cSj = Sj(i12, str);
            if (!com.bytedance.adsdk.Sj.sP.HiB.Sj.sP(cSj) && !com.bytedance.adsdk.Sj.sP.HiB.Sj.TKC(cSj) && '.' != cSj && '[' != cSj && ']' != cSj && '_' != cSj && '-' != cSj && '$' != cSj) {
                break;
            }
            i13++;
        }
        String strSubstring = str.substring(i11, i12);
        if (com.bytedance.adsdk.Sj.sP.EjP.Sj.Sj(strSubstring) != null) {
            deque.push(new com.bytedance.adsdk.Sj.sP.sP.Sj.Jcg(strSubstring));
        } else {
            deque.push(new zR(strSubstring));
        }
        return i12;
    }

    @Override // com.bytedance.adsdk.Sj.sP.TKC.Sj.vS
    public int Sj(String str, int i11, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        char cSj = Sj(i11, str);
        return (com.bytedance.adsdk.Sj.sP.HiB.Sj.sP(cSj) || cSj == '$') ? Sj(str, i11, deque) : sj2.Sj(str, i11, deque);
    }
}
