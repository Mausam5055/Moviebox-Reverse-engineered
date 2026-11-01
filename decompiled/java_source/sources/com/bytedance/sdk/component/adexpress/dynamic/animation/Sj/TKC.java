package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class TKC {
    private static volatile TKC Sj;

    private TKC() {
    }

    public static TKC Sj() {
        if (Sj == null) {
            synchronized (TKC.class) {
                try {
                    if (Sj == null) {
                        Sj = new TKC();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public EjP Sj(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        if (sj2 == null) {
            return null;
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).setClipChildren(false);
        }
        if (view.getParent().getParent() != null) {
            ((ViewGroup) view.getParent().getParent()).setClipChildren(false);
        }
        if ("scale".equals(sj2.uA())) {
            return new Ym(view, sj2);
        }
        if ("translate".equals(sj2.uA())) {
            return new Zq(view, sj2);
        }
        if ("ripple".equals(sj2.uA())) {
            return new Dq(view, sj2);
        }
        if ("marquee".equals(sj2.uA())) {
            return new Jcg(view, sj2);
        }
        if ("waggle".equals(sj2.uA())) {
            return new uvD(view, sj2);
        }
        if ("shine".equals(sj2.uA())) {
            return new aa(view, sj2);
        }
        if ("swing".equals(sj2.uA())) {
            return new sef(view, sj2);
        }
        if ("fade".equals(sj2.uA())) {
            return new Sj(view, sj2);
        }
        if ("rubIn".equals(sj2.uA())) {
            return new TEQ(view, sj2);
        }
        if ("rotate".equals(sj2.uA())) {
            return new uA(view, sj2);
        }
        if ("cutIn".equals(sj2.uA())) {
            return new vS(view, sj2);
        }
        if ("stretch".equals(sj2.uA())) {
            return new Fmk(view, sj2);
        }
        if ("bounce".equals(sj2.uA())) {
            return new HiB(view, sj2);
        }
        return null;
    }
}
