package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import java.util.Deque;

/* JADX INFO: loaded from: classes2.dex */
public abstract class vS {
    protected char Sj(int i11, String str) {
        if (i11 >= str.length()) {
            return (char) 26;
        }
        return str.charAt(i11);
    }

    public abstract int Sj(String str, int i11, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2);

    protected int sP(int i11, String str) {
        while (com.bytedance.adsdk.Sj.sP.HiB.Sj.Sj(Sj(i11, str))) {
            i11++;
        }
        return i11;
    }
}
