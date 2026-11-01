package com.hisavana.common.interfacz;

import android.app.Activity;

/* JADX INFO: loaded from: classes4.dex */
public interface IadInterstitial {
    boolean canShow();

    boolean isLoaded();

    void onResume();

    void show(Activity activity, String str, String str2);
}
