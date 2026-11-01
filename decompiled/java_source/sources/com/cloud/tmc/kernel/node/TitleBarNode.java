package com.cloud.tmc.kernel.node;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
public interface TitleBarNode {

    @Retention(RetentionPolicy.SOURCE)
    public @interface HomeAction {
    }

    public interface HomeActionMode {
        public static final int ALL = 2;
        public static final int BACK = 1;
        public static final int HOME = 0;
    }

    public interface ThemeColorMode {
        public static final int BLACK = 1;
        public static final int WHITE = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ThemeMode {
    }

    void changeNavigationBarProgress(int i11, int i12, long j11);

    boolean getAddScreenVisibleStatus();

    void hideAddScreenButton();

    void hideHomeButton();

    void hideNavigationBarLoading();

    boolean isTransparent();

    void setCapsuleStyle(boolean z10);

    void setHomeAction(int i11, boolean z10);

    void setNavigationBarBackgroundColor(String str);

    void setNavigationBarIconStyle(boolean z10);

    void setNavigationBarTitle(String str);

    void setNavigationBarTitleColor(boolean z10);

    void setNavigationBarTitleVisible(boolean z10);

    void setNavigationBarTransparent(boolean z10);

    void setStatusBar(boolean z10);

    void setTitleBarVisible(boolean z10);

    void showAddScreenButton();

    void showHomeButton();

    void showNavigationBarLoading();
}
