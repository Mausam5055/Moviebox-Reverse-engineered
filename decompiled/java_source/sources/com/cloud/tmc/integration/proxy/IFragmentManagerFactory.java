package com.cloud.tmc.integration.proxy;

import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.integration.ui.fragment.IFragmentManager;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
public interface IFragmentManagerFactory extends Proxiable {
    @NonNull
    IFragmentManager createFragmentManager(FragmentActivity fragmentActivity);
}
