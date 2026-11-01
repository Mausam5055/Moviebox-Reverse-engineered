package com.google.android.gms.location;

import android.app.PendingIntent;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public interface ActivityRecognitionClient extends HasApiKey<Api.ApiOptions.NoOptions> {
    @NonNull
    Task<Void> removeActivityTransitionUpdates(@NonNull PendingIntent pendingIntent);

    @NonNull
    Task<Void> removeActivityUpdates(@NonNull PendingIntent pendingIntent);

    @NonNull
    Task<Void> removeSleepSegmentUpdates(@NonNull PendingIntent pendingIntent);

    @NonNull
    Task<Void> requestActivityTransitionUpdates(@NonNull ActivityTransitionRequest activityTransitionRequest, @NonNull PendingIntent pendingIntent);

    @NonNull
    Task<Void> requestActivityUpdates(long j11, @NonNull PendingIntent pendingIntent);

    @NonNull
    Task<Void> requestSleepSegmentUpdates(@NonNull PendingIntent pendingIntent, @NonNull SleepSegmentRequest sleepSegmentRequest);
}
