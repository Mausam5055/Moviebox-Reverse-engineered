package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.b;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "StatusCreator")
public final class Status extends AbstractSafeParcelable implements Result, ReflectedParcelable {

    @SafeParcelable.Field(getter = "getStatusCode", id = 1)
    private final int zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getStatusMessage", id = 2)
    private final String zzc;

    @Nullable
    @SafeParcelable.Field(getter = "getPendingIntent", id = 3)
    private final PendingIntent zzd;

    @Nullable
    @SafeParcelable.Field(getter = "getConnectionResult", id = 4)
    private final ConnectionResult zze;

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public static final Status RESULT_SUCCESS_CACHE = new Status(-1);

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public static final Status RESULT_SUCCESS = new Status(0);

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public static final Status RESULT_INTERRUPTED = new Status(14);

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public static final Status RESULT_INTERNAL_ERROR = new Status(8);

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public static final Status RESULT_TIMEOUT = new Status(15);

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public static final Status RESULT_CANCELED = new Status(16);

    @NonNull
    @ShowFirstParty
    public static final Status zza = new Status(17);

    @NonNull
    @KeepForSdk
    public static final Status RESULT_DEAD_CLIENT = new Status(18);

    @NonNull
    public static final Parcelable.Creator<Status> CREATOR = new zzb();

    public Status(int i11) {
        this(i11, (String) null);
    }

    public Status(int i11, @Nullable String str) {
        this(i11, str, (PendingIntent) null);
    }

    public Status(int i11, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        this(i11, str, pendingIntent, null);
    }

    @SafeParcelable.Constructor
    Status(@SafeParcelable.Param(id = 1) int i11, @Nullable @SafeParcelable.Param(id = 2) String str, @Nullable @SafeParcelable.Param(id = 3) PendingIntent pendingIntent, @Nullable @SafeParcelable.Param(id = 4) ConnectionResult connectionResult) {
        this.zzb = i11;
        this.zzc = str;
        this.zzd = pendingIntent;
        this.zze = connectionResult;
    }

    public Status(@NonNull ConnectionResult connectionResult, @NonNull String str) {
        this(connectionResult, str, 17);
    }

    @KeepForSdk
    @Deprecated
    public Status(@NonNull ConnectionResult connectionResult, @NonNull String str, int i11) {
        this(i11, str, connectionResult.getResolution(), connectionResult);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.zzb == status.zzb && Objects.equal(this.zzc, status.zzc) && Objects.equal(this.zzd, status.zzd) && Objects.equal(this.zze, status.zze);
    }

    @Nullable
    public ConnectionResult getConnectionResult() {
        return this.zze;
    }

    @Nullable
    public PendingIntent getResolution() {
        return this.zzd;
    }

    @Override // com.google.android.gms.common.api.Result
    @NonNull
    public Status getStatus() {
        return this;
    }

    @ResultIgnorabilityUnspecified
    public int getStatusCode() {
        return this.zzb;
    }

    @Nullable
    public String getStatusMessage() {
        return this.zzc;
    }

    public boolean hasResolution() {
        return this.zzd != null;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zzb), this.zzc, this.zzd, this.zze);
    }

    public boolean isCanceled() {
        return this.zzb == 16;
    }

    public boolean isInterrupted() {
        return this.zzb == 14;
    }

    public boolean isSuccess() {
        return this.zzb <= 0;
    }

    public void startResolutionForResult(@NonNull Activity activity, int i11) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            PendingIntent pendingIntent = this.zzd;
            Preconditions.checkNotNull(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i11, null, 0, 0, 0);
        }
    }

    public void startResolutionForResult(@NonNull b bVar) {
        if (hasResolution()) {
            PendingIntent pendingIntent = this.zzd;
            Preconditions.checkNotNull(pendingIntent);
            bVar.a(new IntentSenderRequest.a(pendingIntent.getIntentSender()).a());
        }
    }

    @NonNull
    public String toString() {
        Objects.ToStringHelper stringHelper = Objects.toStringHelper(this);
        stringHelper.add("statusCode", zza());
        stringHelper.add("resolution", this.zzd);
        return stringHelper.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getStatusCode());
        SafeParcelWriter.writeString(parcel, 2, getStatusMessage(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzd, i11, false);
        SafeParcelWriter.writeParcelable(parcel, 4, getConnectionResult(), i11, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @NonNull
    public final String zza() {
        String str = this.zzc;
        return str != null ? str : CommonStatusCodes.getStatusCodeString(this.zzb);
    }
}
