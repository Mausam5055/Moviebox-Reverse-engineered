package com.google.android.libraries.places.internal;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.android.volley.VolleyError;
import com.android.volley.g;
import com.android.volley.h;
import com.android.volley.i;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.OnTokenCanceledListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.libraries.places.api.net.PlacesStatusCodes;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfg {
    private final h zza;

    zzfg(h hVar) {
        this.zza = hVar;
    }

    static /* synthetic */ void zza(TaskCompletionSource taskCompletionSource, VolleyError volleyError) throws Throwable {
        ApiException apiExceptionZza;
        try {
            g gVar = volleyError.networkResponse;
            if (gVar != null) {
                int i11 = gVar.f19234a;
                if (i11 != 400) {
                    apiExceptionZza = i11 != 403 ? zzeu.zza(volleyError) : new ApiException(new Status(PlacesStatusCodes.REQUEST_DENIED, "The provided API key is invalid."));
                } else {
                    apiExceptionZza = new ApiException(new Status(PlacesStatusCodes.INVALID_REQUEST, "The provided parameters are invalid (did you include a max width or height?)."));
                }
            }
            taskCompletionSource.trySetException(apiExceptionZza);
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

    static /* synthetic */ void zzc(zzhs zzhsVar, TaskCompletionSource taskCompletionSource, Bitmap bitmap) {
        try {
            zzhsVar.zzb(bitmap);
            taskCompletionSource.trySetResult(zzhsVar.zza());
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    public final Task zzb(zzfi zzfiVar, final zzhs zzhsVar) {
        String strZzc = zzfiVar.zzc();
        Map mapZzd = zzfiVar.zzd();
        CancellationToken cancellationTokenZza = zzfiVar.zza();
        final TaskCompletionSource taskCompletionSource = cancellationTokenZza != null ? new TaskCompletionSource(cancellationTokenZza) : new TaskCompletionSource();
        final zzff zzffVar = new zzff(this, strZzc, new i.b() { // from class: com.google.android.libraries.places.internal.zzfc
            @Override // com.android.volley.i.b
            public final void onResponse(Object obj) {
                zzfg.zzc(zzhsVar, taskCompletionSource, (Bitmap) obj);
            }
        }, 0, 0, ImageView.ScaleType.CENTER, Bitmap.Config.ARGB_8888, new i.a() { // from class: com.google.android.libraries.places.internal.zzfd
            @Override // com.android.volley.i.a
            public final void onErrorResponse(VolleyError volleyError) throws Throwable {
                zzfg.zza(taskCompletionSource, volleyError);
            }
        }, mapZzd);
        if (cancellationTokenZza != null) {
            cancellationTokenZza.onCanceledRequested(new OnTokenCanceledListener() { // from class: com.google.android.libraries.places.internal.zzfe
                @Override // com.google.android.gms.tasks.OnTokenCanceledListener
                public final void onCanceled() {
                    zzffVar.cancel();
                }
            });
        }
        this.zza.a(zzffVar);
        return taskCompletionSource.getTask();
    }
}
