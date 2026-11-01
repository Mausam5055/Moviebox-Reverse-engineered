package com.vungle.ads.internal.task;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class e implements f {
    @Override // com.vungle.ads.internal.task.f
    public int makeAndroidThreadPriority(c jobInfo) {
        Intrinsics.h(jobInfo, "jobInfo");
        return Math.min(19, Math.abs(Math.min(0, jobInfo.getPriority() - 2)) + 10);
    }
}
