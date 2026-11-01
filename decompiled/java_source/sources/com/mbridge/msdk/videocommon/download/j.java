package com.mbridge.msdk.videocommon.download;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AtomicBoolean f39920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicBoolean f39921b;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final j f39922a = new j();
    }

    private j() {
    }

    public static j a() {
        return b.f39922a;
    }

    public boolean a(int i11) {
        if (MBridgeConstans.DEBUG) {
            o0.c("RewardVideoRefactorManager", "isRewardVideoRefactor adType: " + i11 + ", key: REWARD_VIDEO_REFACTOR_FOR_CAMPAIGN_REQUEST");
        }
        if (i11 != 94 && i11 != 287) {
            return false;
        }
        AtomicBoolean atomicBoolean = this.f39921b;
        if (atomicBoolean != null) {
            return atomicBoolean.get();
        }
        try {
            this.f39921b = new AtomicBoolean(q0.a().a("r_v_r_f_c_r", false));
        } catch (Exception e11) {
            this.f39921b = new AtomicBoolean(false);
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoRefactorManager", "isRewardVideoRefactor error: " + e11.getMessage());
            }
        }
        return this.f39921b.get();
    }

    public boolean b(int i11) {
        if (MBridgeConstans.DEBUG) {
            o0.c("RewardVideoRefactorManager", "isRewardVideoRefactor adType: " + i11 + ", key: REWARD_VIDEO_REFACTOR_FOR_LOAD");
        }
        if (i11 != 94 && i11 != 287) {
            return false;
        }
        AtomicBoolean atomicBoolean = this.f39920a;
        if (atomicBoolean != null) {
            return atomicBoolean.get();
        }
        try {
            this.f39920a = new AtomicBoolean(q0.a().a("r_v_r_f_l", false));
        } catch (Exception e11) {
            this.f39920a = new AtomicBoolean(false);
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoRefactorManager", "isRewardVideoRefactor error: " + e11.getMessage());
            }
        }
        return this.f39920a.get();
    }
}
