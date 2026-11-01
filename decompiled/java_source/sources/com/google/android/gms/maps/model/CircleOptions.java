package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "CircleOptionsCreator")
@SafeParcelable.Reserved({1})
public final class CircleOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CircleOptions> CREATOR = new zzc();

    @SafeParcelable.Field(getter = "getFillColor", id = 6)
    private int fillColor;

    @SafeParcelable.Field(getter = "getStrokeColor", id = 5)
    private int strokeColor;

    @SafeParcelable.Field(getter = "getCenter", id = 2)
    private LatLng zzcp;

    @SafeParcelable.Field(getter = "getRadius", id = 3)
    private double zzcq;

    @SafeParcelable.Field(getter = "getStrokeWidth", id = 4)
    private float zzcr;

    @SafeParcelable.Field(getter = "getZIndex", id = 7)
    private float zzcs;

    @SafeParcelable.Field(getter = "isVisible", id = 8)
    private boolean zzct;

    @SafeParcelable.Field(getter = "isClickable", id = 9)
    private boolean zzcu;

    @Nullable
    @SafeParcelable.Field(getter = "getStrokePattern", id = 10)
    private List<PatternItem> zzcv;

    public CircleOptions() {
        this.zzcp = null;
        this.zzcq = 0.0d;
        this.zzcr = 10.0f;
        this.strokeColor = ViewCompat.MEASURED_STATE_MASK;
        this.fillColor = 0;
        this.zzcs = 0.0f;
        this.zzct = true;
        this.zzcu = false;
        this.zzcv = null;
    }

    @SafeParcelable.Constructor
    CircleOptions(@SafeParcelable.Param(id = 2) LatLng latLng, @SafeParcelable.Param(id = 3) double d11, @SafeParcelable.Param(id = 4) float f11, @SafeParcelable.Param(id = 5) int i11, @SafeParcelable.Param(id = 6) int i12, @SafeParcelable.Param(id = 7) float f12, @SafeParcelable.Param(id = 8) boolean z10, @SafeParcelable.Param(id = 9) boolean z11, @Nullable @SafeParcelable.Param(id = 10) List<PatternItem> list) {
        this.zzcp = latLng;
        this.zzcq = d11;
        this.zzcr = f11;
        this.strokeColor = i11;
        this.fillColor = i12;
        this.zzcs = f12;
        this.zzct = z10;
        this.zzcu = z11;
        this.zzcv = list;
    }

    public final CircleOptions center(LatLng latLng) {
        this.zzcp = latLng;
        return this;
    }

    public final CircleOptions clickable(boolean z10) {
        this.zzcu = z10;
        return this;
    }

    public final CircleOptions fillColor(int i11) {
        this.fillColor = i11;
        return this;
    }

    public final LatLng getCenter() {
        return this.zzcp;
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    public final double getRadius() {
        return this.zzcq;
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    @Nullable
    public final List<PatternItem> getStrokePattern() {
        return this.zzcv;
    }

    public final float getStrokeWidth() {
        return this.zzcr;
    }

    public final float getZIndex() {
        return this.zzcs;
    }

    public final boolean isClickable() {
        return this.zzcu;
    }

    public final boolean isVisible() {
        return this.zzct;
    }

    public final CircleOptions radius(double d11) {
        this.zzcq = d11;
        return this;
    }

    public final CircleOptions strokeColor(int i11) {
        this.strokeColor = i11;
        return this;
    }

    public final CircleOptions strokePattern(@Nullable List<PatternItem> list) {
        this.zzcv = list;
        return this;
    }

    public final CircleOptions strokeWidth(float f11) {
        this.zzcr = f11;
        return this;
    }

    public final CircleOptions visible(boolean z10) {
        this.zzct = z10;
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getCenter(), i11, false);
        SafeParcelWriter.writeDouble(parcel, 3, getRadius());
        SafeParcelWriter.writeFloat(parcel, 4, getStrokeWidth());
        SafeParcelWriter.writeInt(parcel, 5, getStrokeColor());
        SafeParcelWriter.writeInt(parcel, 6, getFillColor());
        SafeParcelWriter.writeFloat(parcel, 7, getZIndex());
        SafeParcelWriter.writeBoolean(parcel, 8, isVisible());
        SafeParcelWriter.writeBoolean(parcel, 9, isClickable());
        SafeParcelWriter.writeTypedList(parcel, 10, getStrokePattern(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final CircleOptions zIndex(float f11) {
        this.zzcs = f11;
        return this;
    }
}
