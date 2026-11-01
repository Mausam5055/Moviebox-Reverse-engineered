package com.google.android.libraries.places.widget.internal.ui;

import androidx.activity.u;

/* JADX INFO: loaded from: classes4.dex */
final class zzf extends u {
    final /* synthetic */ AutocompleteImplFragment zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzf(AutocompleteImplFragment autocompleteImplFragment, boolean z10) {
        super(true);
        this.zza = autocompleteImplFragment;
    }

    @Override // androidx.activity.u
    public final void handleOnBackPressed() {
        this.zza.zze.zzj();
    }
}
