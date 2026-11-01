package com.cloud.tmc.miniapp.widget.pulldownrefresh.api;

import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes3.dex */
public interface OooOO0O extends com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0o {
    int OooO00o(@NonNull OooOOO oooOOO, boolean z10);

    void OooO00o(float f11, int i11, int i12);

    void OooO00o(@NonNull OooOOO0 oooOOO0, int i11, int i12);

    void OooO00o(@NonNull OooOOO oooOOO, int i11, int i12);

    void OooO00o(boolean z10, float f11, int i11, int i12, int i13);

    boolean OooO00o();

    void OooO0O0(@NonNull OooOOO oooOOO, int i11, int i12);

    @NonNull
    com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0 getSpinnerStyle();

    @NonNull
    View getView();

    void setPrimaryColors(int... iArr);
}
