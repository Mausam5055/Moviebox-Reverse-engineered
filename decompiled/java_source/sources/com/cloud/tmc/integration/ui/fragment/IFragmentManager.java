package com.cloud.tmc.integration.ui.fragment;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import com.cloud.tmc.integration.structure.Page;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public interface IFragmentManager {
    boolean attachFragment(TmcFragment tmcFragment, boolean z10);

    void checkInvalidPage();

    @NonNull
    TmcFragment createFragment(Page page);

    boolean detachFragment(TmcFragment tmcFragment, boolean z10);

    boolean exitPage(Page page, boolean z10, boolean z11);

    boolean exitTabCachePage(@Nullable Page page, boolean z10);

    @Nullable
    TmcFragment findFragmentForPage(Page page);

    @Nullable
    TmcFragment findFragmentPreForPage(Page page);

    @Nullable
    TmcFragment findHeaderFragment();

    @Nullable
    TmcFragment findTabFragmentByPath(String str);

    int getFragmentSize();

    Set<TmcFragment> getFragments();

    @Nullable
    FragmentManager getInnerManager();

    TmcFragment getReadyFragment();

    boolean isRootFragment(@Nullable Page page);

    void moveTabPageToCache(List<Page> list);

    boolean onBackPressed();

    void pushPage(@NonNull Page page, TmcFragment tmcFragment, int i11, boolean z10, boolean z11);

    void pushPage(@NonNull Page page, TmcFragment tmcFragment, boolean z10, boolean z11);

    void release();

    boolean removeFragment(TmcFragment tmcFragment, boolean z10);

    void resetFragmentToTop(TmcFragment tmcFragment);

    void switchTab(Page page, TmcFragment tmcFragment);
}
