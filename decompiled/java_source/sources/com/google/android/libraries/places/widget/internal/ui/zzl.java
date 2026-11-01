package com.google.android.libraries.places.widget.internal.ui;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.core.content.b;
import com.google.android.libraries.places.internal.zzkd;

/* JADX INFO: loaded from: classes4.dex */
final class zzl implements View.OnFocusChangeListener {
    private zzl() {
        throw null;
    }

    /* synthetic */ zzl(zzk zzkVar) {
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z10) throws Throwable {
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) b.getSystemService(view.getContext(), InputMethodManager.class);
            if (inputMethodManager == null) {
                return;
            }
            if (z10) {
                inputMethodManager.showSoftInput(view, 1);
            } else {
                inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        } catch (Error e11) {
            e = e11;
            zzkd.zzb(e);
            throw e;
        } catch (RuntimeException e12) {
            e = e12;
            zzkd.zzb(e);
            throw e;
        }
    }
}
