package com.google.android.libraries.places.widget.internal.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.libraries.places.internal.zzkd;

/* JADX INFO: loaded from: classes4.dex */
final class zzn extends AnimatorListenerAdapter {
    final /* synthetic */ View zza;
    final /* synthetic */ RecyclerView.b0 zzb;
    final /* synthetic */ ViewPropertyAnimator zzc;
    final /* synthetic */ zzo zzd;

    zzn(zzo zzoVar, View view, RecyclerView.b0 b0Var, ViewPropertyAnimator viewPropertyAnimator) {
        this.zza = view;
        this.zzb = b0Var;
        this.zzc = viewPropertyAnimator;
        this.zzd = zzoVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        try {
            zzo.zzf(this.zza);
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        try {
            this.zzc.setListener(null);
            this.zzd.dispatchAddFinished(this.zzb);
            this.zzd.zzc.remove(this.zzb);
            this.zzd.zze();
            this.zzc.setStartDelay(0L);
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        try {
            this.zza.setAlpha(0.0f);
            this.zzd.dispatchAddStarting(this.zzb);
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }
}
