package com.google.android.libraries.places.widget.internal.ui;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.libraries.places.internal.zzkd;

/* JADX INFO: loaded from: classes4.dex */
final class zzg extends RecyclerView.r {
    final /* synthetic */ AutocompleteImplFragment zza;

    zzg(AutocompleteImplFragment autocompleteImplFragment) {
        this.zza = autocompleteImplFragment;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public final void onScrollStateChanged(RecyclerView recyclerView, int i11) {
        if (i11 == 1) {
            try {
                this.zza.zze.zzg();
                this.zza.zzg.clearFocus();
            } catch (Error | RuntimeException e11) {
                zzkd.zzb(e11);
                throw e11;
            }
        }
    }
}
