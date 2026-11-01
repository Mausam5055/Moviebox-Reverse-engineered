package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import com.bytedance.adsdk.Sj.sP.sP.Sj.uvD;
import java.util.Deque;

/* JADX INFO: loaded from: classes2.dex */
public class Dq extends vS {
    @Override // com.bytedance.adsdk.Sj.sP.TKC.Sj.vS
    public int Sj(String str, int i11, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        if (!com.bytedance.adsdk.Sj.sP.HiB.Sj.EjP(Sj(i11, str))) {
            return sj2.Sj(str, i11, deque);
        }
        int i12 = i11 + 1;
        String str2 = new String(new char[]{Sj(i11, str), Sj(i12, str)});
        if (com.bytedance.adsdk.Sj.sP.EjP.TKC.Sj(str2) != null) {
            deque.push(new uvD(com.bytedance.adsdk.Sj.sP.EjP.TKC.Sj(str2)));
            return i11 + 2;
        }
        String strValueOf = String.valueOf(Sj(i11, str));
        if (com.bytedance.adsdk.Sj.sP.EjP.TKC.Sj(strValueOf) != null) {
            deque.push(new uvD(com.bytedance.adsdk.Sj.sP.EjP.TKC.Sj(strValueOf)));
            return i12;
        }
        throw new IllegalArgumentException("Unrecognized:" + strValueOf + "examine:" + str.substring(0, i11));
    }
}
