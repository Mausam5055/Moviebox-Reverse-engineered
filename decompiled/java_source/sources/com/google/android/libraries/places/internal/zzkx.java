package com.google.android.libraries.places.internal;

import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkx {
    public static int zza(int i11, int i12, int i13) {
        return zzc(i11, i12, i13) ? i13 : i12;
    }

    public static void zzb(ImageView imageView, int i11) {
        Drawable drawable = imageView.getDrawable();
        int iRgb = Color.rgb(Color.red(i11), Color.green(i11), Color.blue(i11));
        Drawable drawableMutate = drawable.mutate();
        drawableMutate.setColorFilter(iRgb, PorterDuff.Mode.SRC_ATOP);
        drawableMutate.setAlpha(Color.alpha(i11));
    }

    public static boolean zzc(int i11, int i12, int i13) {
        double dZzf = zzf(i11);
        double dZze = zze(zzf(i12), dZzf);
        return dZze <= 3.0d && dZze <= zze(zzf(i13), dZzf);
    }

    private static double zzd(double d11) {
        return d11 <= 0.03928d ? d11 / 12.92d : Math.pow((d11 + 0.055d) / 1.055d, 2.4d);
    }

    private static double zze(double d11, double d12) {
        return Math.round(((Math.max(d11, d12) + 0.05d) / (Math.min(d11, d12) + 0.05d)) * 100.0d) / 100.0d;
    }

    private static double zzf(int i11) {
        return (zzd(((double) Color.red(i11)) / 255.0d) * 0.2126d) + (zzd(((double) Color.green(i11)) / 255.0d) * 0.7152d) + (zzd(((double) Color.blue(i11)) / 255.0d) * 0.0722d);
    }
}
