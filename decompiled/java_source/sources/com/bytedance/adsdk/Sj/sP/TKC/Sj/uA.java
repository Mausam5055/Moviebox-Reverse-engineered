package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import java.util.Deque;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class uA extends vS {
    @Override // com.bytedance.adsdk.Sj.sP.TKC.Sj.vS
    public int Sj(String str, int i11, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        com.bytedance.adsdk.Sj.sP.sP.Sj sjPollFirst;
        if (')' != Sj(i11, str)) {
            return sj2.Sj(str, i11, deque);
        }
        LinkedList<com.bytedance.adsdk.Sj.sP.sP.Sj> linkedList = new LinkedList();
        while (true) {
            sjPollFirst = deque.pollFirst();
            if (sjPollFirst == null || sjPollFirst.Sj() == com.bytedance.adsdk.Sj.sP.EjP.sP.METHOD || sjPollFirst.Sj() == com.bytedance.adsdk.Sj.sP.EjP.EjP.LEFT_PAREN) {
                break;
            }
            linkedList.addFirst(sjPollFirst);
        }
        if (sjPollFirst == null) {
            throw new IllegalArgumentException(str.substring(0, i11));
        }
        if (sjPollFirst.Sj() != com.bytedance.adsdk.Sj.sP.EjP.sP.METHOD) {
            deque.push(com.bytedance.adsdk.Sj.sP.HiB.sP.Sj(linkedList, str, i11));
            return i11 + 1;
        }
        com.bytedance.adsdk.Sj.sP.sP.Sj.TEQ teq = (com.bytedance.adsdk.Sj.sP.sP.Sj.TEQ) sjPollFirst;
        LinkedList linkedList2 = new LinkedList();
        LinkedList linkedList3 = new LinkedList();
        for (com.bytedance.adsdk.Sj.sP.sP.Sj sj3 : linkedList) {
            if (sj3.Sj() == com.bytedance.adsdk.Sj.sP.EjP.EjP.COMMA) {
                linkedList2.add(com.bytedance.adsdk.Sj.sP.HiB.sP.Sj(linkedList3, str, i11));
                linkedList3.clear();
            } else {
                linkedList3.addLast(sj3);
            }
        }
        if (!linkedList3.isEmpty()) {
            linkedList2.add(com.bytedance.adsdk.Sj.sP.HiB.sP.Sj(linkedList3, str, i11));
        }
        teq.Sj((com.bytedance.adsdk.Sj.sP.sP.Sj[]) linkedList2.toArray(new com.bytedance.adsdk.Sj.sP.sP.Sj[linkedList2.size()]));
        int i12 = i11 + 1;
        deque.push(teq);
        return i12;
    }
}
