package com.bytedance.sdk.component.Jcg.TKC;

/* JADX INFO: loaded from: classes2.dex */
public class TKC {
    private Sj Sj;
    private sP sP;

    public enum Sj {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    /* JADX INFO: renamed from: com.bytedance.sdk.component.Jcg.TKC.TKC$TKC, reason: collision with other inner class name */
    private static class C0215TKC {
        private static final TKC Sj = new TKC();
    }

    public interface sP {
    }

    private TKC() {
        this.Sj = Sj.OFF;
        this.sP = new com.bytedance.sdk.component.Jcg.TKC.sP();
    }

    public static void Sj(Sj sj2) {
        synchronized (TKC.class) {
            C0215TKC.Sj.Sj = sj2;
        }
    }
}
