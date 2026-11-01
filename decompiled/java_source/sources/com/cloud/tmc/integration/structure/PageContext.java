package com.cloud.tmc.integration.structure;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.structure.ui.ErrorView;
import com.cloud.tmc.integration.structure.ui.LoadingView;
import com.cloud.tmc.integration.structure.ui.PageContainer;
import com.cloud.tmc.integration.structure.ui.TabBar;
import com.cloud.tmc.integration.structure.ui.TitleBar;

/* JADX INFO: loaded from: classes3.dex */
public interface PageContext {
    void destroy();

    @Nullable
    Activity getActivity();

    @Nullable
    ViewGroup getContentView();

    ErrorView getErrorView();

    LoadingView getLoadingView();

    @Nullable
    PageContainer getPageContainer();

    @Nullable
    ProgressBar getProgressBar();

    @Nullable
    TabBar getTabBar();

    @Nullable
    TitleBar getTitleBar();

    void refreshApp();
}
