package com.cloud.tmc.integration.structure.ui;

import android.view.View;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.structure.Page;

/* JADX INFO: loaded from: classes3.dex */
public interface TitleBar {
    void attachPage(Page page);

    boolean getAddScreenVisibility();

    View getContent();

    Integer getHomeAction();

    boolean isTransparent();

    void setAddScreenVisibility(boolean z10);

    void setHomeAction(int i11, boolean z10);

    void setHomeVisibility(boolean z10);

    void setOnAddScreenClickListener(View.OnClickListener onClickListener);

    void setOnBackClickListener(View.OnClickListener onClickListener);

    void setOnHomeClickListener(View.OnClickListener onClickListener);

    void setThemeMode(int i11);

    void setTitle(@Nullable String str);

    void setTitleBarVisible(boolean z10);

    void setTitleColor(boolean z10);

    void setTitleVisible(boolean z10);

    void setTransparent(boolean z10);
}
