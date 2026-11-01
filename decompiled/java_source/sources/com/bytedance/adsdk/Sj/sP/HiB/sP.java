package com.bytedance.adsdk.Sj.sP.HiB;

import com.bytedance.adsdk.Sj.sP.EjP.TKC;
import com.bytedance.adsdk.Sj.sP.sP.Sj.Dq;
import com.bytedance.adsdk.Sj.sP.sP.Sj.EjP;
import com.bytedance.adsdk.Sj.sP.sP.Sj.Fmk;
import com.bytedance.adsdk.Sj.sP.sP.Sj.HiB;
import com.bytedance.adsdk.Sj.sP.sP.Sj.RiZ;
import com.bytedance.adsdk.Sj.sP.sP.Sj.TzV;
import com.bytedance.adsdk.Sj.sP.sP.Sj.Ym;
import com.bytedance.adsdk.Sj.sP.sP.Sj.aa;
import com.bytedance.adsdk.Sj.sP.sP.Sj.dNu;
import com.bytedance.adsdk.Sj.sP.sP.Sj.sef;
import com.bytedance.adsdk.Sj.sP.sP.Sj.uA;
import com.bytedance.adsdk.Sj.sP.sP.Sj.vS;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class sP {

    /* JADX INFO: renamed from: com.bytedance.adsdk.Sj.sP.HiB.sP$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Sj;

        static {
            int[] iArr = new int[TKC.values().length];
            Sj = iArr;
            try {
                iArr[TKC.MINUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[TKC.PLUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[TKC.DIVISION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                Sj[TKC.MULTI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                Sj[TKC.MOD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                Sj[TKC.EQ.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                Sj[TKC.NOT_EQ.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                Sj[TKC.GT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                Sj[TKC.LT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                Sj[TKC.GT_EQ.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                Sj[TKC.LT_EQ.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                Sj[TKC.DOUBLE_AMP.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                Sj[TKC.DOUBLE_BAR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    private static com.bytedance.adsdk.Sj.sP.sP.Sj Sj(com.bytedance.adsdk.Sj.sP.sP.Sj sj2, com.bytedance.adsdk.Sj.sP.sP.Sj sj3, com.bytedance.adsdk.Sj.sP.sP.Sj sj4) {
        dNu ym2;
        switch (AnonymousClass1.Sj[((TKC) sj3.Sj()).ordinal()]) {
            case 1:
                ym2 = new Ym();
                break;
            case 2:
                ym2 = new TzV();
                break;
            case 3:
                ym2 = new com.bytedance.adsdk.Sj.sP.sP.Sj.Sj();
                break;
            case 4:
                ym2 = new Fmk();
                break;
            case 5:
                ym2 = new aa();
                break;
            case 6:
                ym2 = new EjP();
                break;
            case 7:
                ym2 = new sef();
                break;
            case 8:
                ym2 = new vS();
                break;
            case 9:
                ym2 = new uA();
                break;
            case 10:
                ym2 = new HiB();
                break;
            case 11:
                ym2 = new Dq();
                break;
            case 12:
                ym2 = new com.bytedance.adsdk.Sj.sP.sP.Sj.sP();
                break;
            case 13:
                ym2 = new com.bytedance.adsdk.Sj.sP.sP.Sj.TKC();
                break;
            default:
                throw new UnsupportedOperationException(sj3.Sj().toString());
        }
        ym2.Sj(sj2);
        ym2.sP(sj4);
        return ym2;
    }

    public static com.bytedance.adsdk.Sj.sP.sP.Sj Sj(List<com.bytedance.adsdk.Sj.sP.sP.Sj> list, String str, int i11) {
        TKC(list, str, i11);
        Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> dequeSj = Sj(sP(list, str, i11));
        if (dequeSj.size() == 1) {
            return dequeSj.getFirst();
        }
        throw new IllegalStateException();
    }

    private static Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> Sj(Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque) {
        LinkedList linkedList = new LinkedList();
        for (com.bytedance.adsdk.Sj.sP.sP.Sj sj2 : deque) {
            if (linkedList.isEmpty() || ((com.bytedance.adsdk.Sj.sP.sP.Sj) linkedList.peekLast()).Sj() != TKC.COLON) {
                linkedList.addLast(sj2);
            } else {
                linkedList.pollLast();
                com.bytedance.adsdk.Sj.sP.sP.Sj sj3 = (com.bytedance.adsdk.Sj.sP.sP.Sj) linkedList.pollLast();
                if (((com.bytedance.adsdk.Sj.sP.sP.Sj) linkedList.pollLast()).Sj() != TKC.QUESTION) {
                    throw new IllegalStateException();
                }
                com.bytedance.adsdk.Sj.sP.sP.Sj sj4 = (com.bytedance.adsdk.Sj.sP.sP.Sj) linkedList.pollLast();
                RiZ riZ = new RiZ();
                riZ.Sj(sj4);
                riZ.sP(sj3);
                riZ.TKC(sj2);
                linkedList.addLast(riZ);
            }
        }
        return linkedList;
    }

    public static boolean Sj(Object obj) {
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof Boolean) || ((Boolean) obj).booleanValue()) {
            return !(obj instanceof Number) || ((Number) obj).floatValue() >= 0.0f;
        }
        return false;
    }

    private static void TKC(List<com.bytedance.adsdk.Sj.sP.sP.Sj> list, String str, int i11) {
        Iterator<com.bytedance.adsdk.Sj.sP.sP.Sj> it = list.iterator();
        while (it.hasNext()) {
            if (com.bytedance.adsdk.Sj.sP.EjP.EjP.Sj(it.next().Sj())) {
                throw new IllegalArgumentException(str.substring(0, i11));
            }
        }
    }

    private static Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> sP(List<com.bytedance.adsdk.Sj.sP.sP.Sj> list, String str, int i11) {
        LinkedList<com.bytedance.adsdk.Sj.sP.sP.Sj> linkedList = new LinkedList(list);
        int i12 = 5;
        while (i12 > 0) {
            LinkedList linkedList2 = new LinkedList();
            for (com.bytedance.adsdk.Sj.sP.sP.Sj sj2 : linkedList) {
                if (!linkedList2.isEmpty() && TKC.Sj(((com.bytedance.adsdk.Sj.sP.sP.Sj) linkedList2.peekLast()).Sj()) && ((TKC) ((com.bytedance.adsdk.Sj.sP.sP.Sj) linkedList2.peekLast()).Sj()).sP() == i12) {
                    com.bytedance.adsdk.Sj.sP.sP.Sj sj3 = (com.bytedance.adsdk.Sj.sP.sP.Sj) linkedList2.pollLast();
                    com.bytedance.adsdk.Sj.sP.sP.Sj sj4 = (com.bytedance.adsdk.Sj.sP.sP.Sj) linkedList2.pollLast();
                    if (TKC.Sj(sj4.Sj()) || TKC.Sj(sj2.Sj())) {
                        throw new IllegalArgumentException(str.substring(0, i11));
                    }
                    linkedList2.addLast(Sj(sj4, sj3, sj2));
                } else {
                    linkedList2.addLast(sj2);
                }
            }
            i12--;
            linkedList = linkedList2;
        }
        return linkedList;
    }
}
