package com.bytedance.sdk.openadsdk.core.sP;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes3.dex */
public abstract class HiB extends Sj {
    public HiB(@NonNull Context context, @NonNull sU sUVar, @NonNull String str, int i11) {
        super(context, sUVar, str, i11);
    }

    protected abstract void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<TKC.Sj> sparseArray, int i11, int i12, int i13, boolean z10);

    @Override // com.bytedance.sdk.openadsdk.core.sP.Sj, com.bytedance.sdk.openadsdk.core.sP.sP, com.bytedance.sdk.openadsdk.core.sP.TKC
    public void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<TKC.Sj> sparseArray, boolean z10) {
        if (Sj(view, z10)) {
            Sj(view, f11, f12, f13, f14, sparseArray, this.Yf, this.ley, this.LqL, z10);
        }
        super.Sj(view, f11, f12, f13, f14, sparseArray, z10);
    }
}
