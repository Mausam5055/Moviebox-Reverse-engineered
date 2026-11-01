package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewSource;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "StreetViewPanoramaOptionsCreator")
@SafeParcelable.Reserved({1})
public final class StreetViewPanoramaOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaOptions> CREATOR = new zzai();

    @SafeParcelable.Field(getter = "getPanoramaId", id = 3)
    private String panoId;

    @SafeParcelable.Field(getter = "getPosition", id = 4)
    private LatLng position;

    @SafeParcelable.Field(getter = "getUseViewLifecycleInFragmentForParcel", id = 10, type = "byte")
    private Boolean zzak;

    @SafeParcelable.Field(getter = "getZoomGesturesEnabledForParcel", id = 7, type = "byte")
    private Boolean zzap;

    @SafeParcelable.Field(getter = "getStreetViewPanoramaCamera", id = 2)
    private StreetViewPanoramaCamera zzbx;

    @SafeParcelable.Field(getter = "getRadius", id = 5)
    private Integer zzby;

    @SafeParcelable.Field(getter = "getUserNavigationEnabledForParcel", id = 6, type = "byte")
    private Boolean zzbz;

    @SafeParcelable.Field(getter = "getPanningGesturesEnabledForParcel", id = 8, type = "byte")
    private Boolean zzca;

    @SafeParcelable.Field(getter = "getStreetNamesEnabledForParcel", id = 9, type = "byte")
    private Boolean zzcb;

    @SafeParcelable.Field(getter = "getSource", id = 11)
    private StreetViewSource zzcc;

    public StreetViewPanoramaOptions() {
        Boolean bool = Boolean.TRUE;
        this.zzbz = bool;
        this.zzap = bool;
        this.zzca = bool;
        this.zzcb = bool;
        this.zzcc = StreetViewSource.DEFAULT;
    }

    @SafeParcelable.Constructor
    StreetViewPanoramaOptions(@SafeParcelable.Param(id = 2) StreetViewPanoramaCamera streetViewPanoramaCamera, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) LatLng latLng, @SafeParcelable.Param(id = 5) Integer num, @SafeParcelable.Param(id = 6) byte b11, @SafeParcelable.Param(id = 7) byte b12, @SafeParcelable.Param(id = 8) byte b13, @SafeParcelable.Param(id = 9) byte b14, @SafeParcelable.Param(id = 10) byte b15, @SafeParcelable.Param(id = 11) StreetViewSource streetViewSource) {
        Boolean bool = Boolean.TRUE;
        this.zzbz = bool;
        this.zzap = bool;
        this.zzca = bool;
        this.zzcb = bool;
        this.zzcc = StreetViewSource.DEFAULT;
        this.zzbx = streetViewPanoramaCamera;
        this.position = latLng;
        this.zzby = num;
        this.panoId = str;
        this.zzbz = com.google.android.gms.maps.internal.zza.zza(b11);
        this.zzap = com.google.android.gms.maps.internal.zza.zza(b12);
        this.zzca = com.google.android.gms.maps.internal.zza.zza(b13);
        this.zzcb = com.google.android.gms.maps.internal.zza.zza(b14);
        this.zzak = com.google.android.gms.maps.internal.zza.zza(b15);
        this.zzcc = streetViewSource;
    }

    public final Boolean getPanningGesturesEnabled() {
        return this.zzca;
    }

    public final String getPanoramaId() {
        return this.panoId;
    }

    public final LatLng getPosition() {
        return this.position;
    }

    public final Integer getRadius() {
        return this.zzby;
    }

    public final StreetViewSource getSource() {
        return this.zzcc;
    }

    public final Boolean getStreetNamesEnabled() {
        return this.zzcb;
    }

    public final StreetViewPanoramaCamera getStreetViewPanoramaCamera() {
        return this.zzbx;
    }

    public final Boolean getUseViewLifecycleInFragment() {
        return this.zzak;
    }

    public final Boolean getUserNavigationEnabled() {
        return this.zzbz;
    }

    public final Boolean getZoomGesturesEnabled() {
        return this.zzap;
    }

    public final StreetViewPanoramaOptions panningGesturesEnabled(boolean z10) {
        this.zzca = Boolean.valueOf(z10);
        return this;
    }

    public final StreetViewPanoramaOptions panoramaCamera(StreetViewPanoramaCamera streetViewPanoramaCamera) {
        this.zzbx = streetViewPanoramaCamera;
        return this;
    }

    public final StreetViewPanoramaOptions panoramaId(String str) {
        this.panoId = str;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng) {
        this.position = latLng;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng, StreetViewSource streetViewSource) {
        this.position = latLng;
        this.zzcc = streetViewSource;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng, Integer num) {
        this.position = latLng;
        this.zzby = num;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng, Integer num, StreetViewSource streetViewSource) {
        this.position = latLng;
        this.zzby = num;
        this.zzcc = streetViewSource;
        return this;
    }

    public final StreetViewPanoramaOptions streetNamesEnabled(boolean z10) {
        this.zzcb = Boolean.valueOf(z10);
        return this;
    }

    public final String toString() {
        return Objects.toStringHelper(this).add("PanoramaId", this.panoId).add("Position", this.position).add("Radius", this.zzby).add("Source", this.zzcc).add("StreetViewPanoramaCamera", this.zzbx).add("UserNavigationEnabled", this.zzbz).add("ZoomGesturesEnabled", this.zzap).add("PanningGesturesEnabled", this.zzca).add("StreetNamesEnabled", this.zzcb).add("UseViewLifecycleInFragment", this.zzak).toString();
    }

    public final StreetViewPanoramaOptions useViewLifecycleInFragment(boolean z10) {
        this.zzak = Boolean.valueOf(z10);
        return this;
    }

    public final StreetViewPanoramaOptions userNavigationEnabled(boolean z10) {
        this.zzbz = Boolean.valueOf(z10);
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getStreetViewPanoramaCamera(), i11, false);
        SafeParcelWriter.writeString(parcel, 3, getPanoramaId(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, getPosition(), i11, false);
        SafeParcelWriter.writeIntegerObject(parcel, 5, getRadius(), false);
        SafeParcelWriter.writeByte(parcel, 6, com.google.android.gms.maps.internal.zza.zza(this.zzbz));
        SafeParcelWriter.writeByte(parcel, 7, com.google.android.gms.maps.internal.zza.zza(this.zzap));
        SafeParcelWriter.writeByte(parcel, 8, com.google.android.gms.maps.internal.zza.zza(this.zzca));
        SafeParcelWriter.writeByte(parcel, 9, com.google.android.gms.maps.internal.zza.zza(this.zzcb));
        SafeParcelWriter.writeByte(parcel, 10, com.google.android.gms.maps.internal.zza.zza(this.zzak));
        SafeParcelWriter.writeParcelable(parcel, 11, getSource(), i11, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final StreetViewPanoramaOptions zoomGesturesEnabled(boolean z10) {
        this.zzap = Boolean.valueOf(z10);
        return this;
    }
}
