package com.google.android.libraries.places.internal;

import com.google.android.gms.tasks.Task;
import com.google.android.libraries.places.api.net.FetchPhotoRequest;
import com.google.android.libraries.places.api.net.FetchPlaceRequest;
import com.google.android.libraries.places.api.net.FetchResolvedPhotoUriRequest;
import com.google.android.libraries.places.api.net.FindAutocompletePredictionsRequest;
import com.google.android.libraries.places.api.net.FindCurrentPlaceRequest;
import com.google.android.libraries.places.api.net.SearchByTextRequest;
import com.google.android.libraries.places.api.net.SearchNearbyRequest;

/* JADX INFO: loaded from: classes4.dex */
public interface zzjr {
    void zza(FetchPhotoRequest fetchPhotoRequest, int i11);

    void zzb(Task task, long j11, long j12, int i11);

    void zzc(FetchResolvedPhotoUriRequest fetchResolvedPhotoUriRequest, int i11);

    void zzd(Task task, long j11, long j12, int i11);

    void zze(FindCurrentPlaceRequest findCurrentPlaceRequest, Task task, long j11, long j12, int i11);

    void zzf(Task task, long j11, long j12, int i11);

    void zzg(SearchByTextRequest searchByTextRequest, int i11);

    void zzh(SearchByTextRequest searchByTextRequest, Task task, long j11, long j12, int i11);

    void zzi(SearchNearbyRequest searchNearbyRequest, int i11);

    void zzj(SearchNearbyRequest searchNearbyRequest, Task task, long j11, long j12, int i11);

    void zzk(FetchPlaceRequest fetchPlaceRequest, int i11, int i12);

    void zzl(Task task, long j11, long j12, int i11, int i12);

    void zzm(FindAutocompletePredictionsRequest findAutocompletePredictionsRequest, int i11, int i12);

    void zzn(Task task, long j11, long j12, int i11, int i12);

    void zzo(FetchPlaceRequest fetchPlaceRequest, int i11, int i12);
}
