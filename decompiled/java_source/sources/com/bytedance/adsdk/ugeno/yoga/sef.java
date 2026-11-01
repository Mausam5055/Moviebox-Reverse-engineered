package com.bytedance.adsdk.ugeno.yoga;

/* JADX INFO: loaded from: classes2.dex */
public class sef extends YogaNodeJNIBase {
    public void aa() {
        long j11 = this.Sj;
        if (j11 != 0) {
            this.Sj = 0L;
            YogaNative.jni_YGNodeDeallocateJNI(j11);
        }
    }

    protected void finalize() throws Throwable {
        try {
            aa();
        } finally {
            super.finalize();
        }
    }
}
