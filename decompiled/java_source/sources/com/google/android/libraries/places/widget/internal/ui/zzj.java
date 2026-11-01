package com.google.android.libraries.places.widget.internal.ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.libraries.places.internal.zzkd;

/* JADX INFO: loaded from: classes4.dex */
final class zzj implements TextWatcher {
    final /* synthetic */ AutocompleteImplFragment zza;

    /* synthetic */ zzj(AutocompleteImplFragment autocompleteImplFragment, zzi zziVar) {
        this.zza = autocompleteImplFragment;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        try {
            this.zza.zze.zzm(editable.toString(), this.zza.zzg.getSelectionEnd());
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
    }
}
