package com.cloud.tmc.miniapp.ipc.binderimpl;

import android.os.Bundle;
import com.cloud.tmc.miniapp.IIpcMiniPSChannel;
import com.cloud.tmc.miniapp.ipc.helper.OooO;
import com.cloud.tmc.miniapp.ipc.helper.OooO0OO;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0O0 extends IIpcMiniPSChannel.Stub {
    @Override // com.cloud.tmc.miniapp.IIpcMiniPSChannel
    public boolean miniAppAbility(String str, String str2, Bundle bundle) {
        com.cloud.tmc.miniapp.ipc.helper.OooO00o.OooO00o.OooO00o(str, str2, bundle);
        return true;
    }

    @Override // com.cloud.tmc.miniapp.IIpcMiniPSChannel
    public boolean miniAppDataSync(String str, String str2, Bundle bundle) {
        OooO0OO.OooO00o.OooO00o(str, str2, bundle);
        return true;
    }

    @Override // com.cloud.tmc.miniapp.IIpcMiniPSChannel
    public boolean miniAppExtra(String str, String str2, Bundle bundle) {
        return true;
    }

    @Override // com.cloud.tmc.miniapp.IIpcMiniPSChannel
    public boolean miniAppPerformance(String str, String str2, Bundle bundle) {
        OooO.OooO00o.OooO00o(str, str2, bundle);
        return true;
    }
}
