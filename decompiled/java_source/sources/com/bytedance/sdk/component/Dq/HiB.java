package com.bytedance.sdk.component.Dq;

/* JADX INFO: loaded from: classes2.dex */
public class HiB {
    private static TEQ Sj = new TEQ() { // from class: com.bytedance.sdk.component.Dq.HiB.1
        @Override // com.bytedance.sdk.component.Dq.TEQ
        public uA createThreadFactory(int i11, String str) {
            return new uA(i11, str);
        }
    };

    public static TEQ Sj() {
        return Sj;
    }

    public static void Sj(TEQ teq) {
        Sj = teq;
    }
}
