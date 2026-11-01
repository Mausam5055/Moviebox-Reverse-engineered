package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.identity.zzek;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "GeofencingRequestCreator")
@SafeParcelable.Reserved({3, 1000})
public class GeofencingRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new zzp();
    public static final int INITIAL_TRIGGER_DWELL = 4;
    public static final int INITIAL_TRIGGER_ENTER = 1;
    public static final int INITIAL_TRIGGER_EXIT = 2;

    @SafeParcelable.Field(getter = "getParcelableGeofences", id = 1)
    private final List zza;

    @InitialTrigger
    @SafeParcelable.Field(getter = "getInitialTrigger", id = 2)
    private final int zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getAttributionTag", id = 4)
    private final String zzc;

    public static final class Builder {
        private final List zza = new ArrayList();

        @InitialTrigger
        private int zzb = 5;

        @NonNull
        public Builder addGeofence(@NonNull Geofence geofence) {
            Preconditions.checkArgument(geofence instanceof zzek, "Geofence must be created using Geofence.Builder.");
            this.zza.add((zzek) geofence);
            return this;
        }

        @NonNull
        public Builder addGeofences(@NonNull List<? extends Geofence> list) {
            Iterator<? extends Geofence> it = list.iterator();
            while (it.hasNext()) {
                addGeofence(it.next());
            }
            return this;
        }

        @NonNull
        public GeofencingRequest build() {
            Preconditions.checkArgument(!this.zza.isEmpty(), "No geofence has been added to this request.");
            return new GeofencingRequest(new ArrayList(this.zza), this.zzb, null);
        }

        @NonNull
        public Builder setInitialTrigger(@InitialTrigger int i11) {
            this.zzb = i11 & 7;
            return this;
        }
    }

    public @interface InitialTrigger {
    }

    @SafeParcelable.Constructor
    GeofencingRequest(@SafeParcelable.Param(id = 1) List list, @SafeParcelable.Param(id = 2) @InitialTrigger int i11, @Nullable @SafeParcelable.Param(id = 4) String str) {
        this.zza = list;
        this.zzb = i11;
        this.zzc = str;
    }

    @NonNull
    public List<Geofence> getGeofences() {
        return new ArrayList(this.zza);
    }

    @InitialTrigger
    public int getInitialTrigger() {
        return this.zzb;
    }

    @NonNull
    public String toString() {
        String strValueOf = String.valueOf(this.zza);
        int length = strValueOf.length();
        int i11 = this.zzb;
        StringBuilder sb2 = new StringBuilder(length + 45 + String.valueOf(i11).length() + 1);
        sb2.append("GeofencingRequest[geofences=");
        sb2.append(strValueOf);
        sb2.append(", initialTrigger=");
        sb2.append(i11);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        List list = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, list, false);
        SafeParcelWriter.writeInt(parcel, 2, getInitialTrigger());
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
