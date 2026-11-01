package com.cloud.tmc.miniapp.defaultimpl;

import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.integration.proxy.IFragmentManagerFactory;
import com.cloud.tmc.integration.ui.fragment.IFragmentManager;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.ui.TmcFragmentManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class TmcFragmentManagerFactory implements IFragmentManagerFactory {
    @Override // com.cloud.tmc.integration.proxy.IFragmentManagerFactory
    public IFragmentManager createFragmentManager(FragmentActivity activity) {
        Intrinsics.h(activity, "activity");
        return new TmcFragmentManager(activity, R.id.main);
    }
}
