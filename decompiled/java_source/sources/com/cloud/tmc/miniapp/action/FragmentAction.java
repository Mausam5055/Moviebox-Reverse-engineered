package com.cloud.tmc.miniapp.action;

import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;

/* JADX INFO: loaded from: classes3.dex */
public interface FragmentAction {
    boolean exitPage(Page page, boolean z10, boolean z11);

    void pushPage(Page page, TmcFragment tmcFragment, boolean z10);

    void resetFragmentToTop(TmcFragment tmcFragment);
}
