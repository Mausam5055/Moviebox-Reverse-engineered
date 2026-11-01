package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "PolygonOptionsCreator")
@SafeParcelable.Reserved({1})
public final class PolygonOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PolygonOptions> CREATOR = new zzk();

    @SafeParcelable.Field(getter = "getFillColor", id = 6)
    private int fillColor;

    @SafeParcelable.Field(getter = "getStrokeColor", id = 5)
    private int strokeColor;

    @SafeParcelable.Field(getter = "getStrokeWidth", id = 4)
    private float zzcr;

    @SafeParcelable.Field(getter = "getZIndex", id = 7)
    private float zzcs;

    @SafeParcelable.Field(getter = "isVisible", id = 8)
    private boolean zzct;

    @SafeParcelable.Field(getter = "isClickable", id = 10)
    private boolean zzcu;

    @Nullable
    @SafeParcelable.Field(getter = "getStrokePattern", id = 12)
    private List<PatternItem> zzcv;

    @SafeParcelable.Field(getter = "getPoints", id = 2)
    private final List<LatLng> zzdx;

    @SafeParcelable.Field(getter = "getHolesForParcel", id = 3, type = "java.util.List")
    private final List<List<LatLng>> zzdy;

    @SafeParcelable.Field(getter = "isGeodesic", id = 9)
    private boolean zzdz;

    @SafeParcelable.Field(getter = "getStrokeJointType", id = 11)
    private int zzea;

    public PolygonOptions() {
        this.zzcr = 10.0f;
        this.strokeColor = ViewCompat.MEASURED_STATE_MASK;
        this.fillColor = 0;
        this.zzcs = 0.0f;
        this.zzct = true;
        this.zzdz = false;
        this.zzcu = false;
        this.zzea = 0;
        this.zzcv = null;
        this.zzdx = new ArrayList();
        this.zzdy = new ArrayList();
    }

    @SafeParcelable.Constructor
    PolygonOptions(@SafeParcelable.Param(id = 2) List<LatLng> list, @SafeParcelable.Param(id = 3) List list2, @SafeParcelable.Param(id = 4) float f11, @SafeParcelable.Param(id = 5) int i11, @SafeParcelable.Param(id = 6) int i12, @SafeParcelable.Param(id = 7) float f12, @SafeParcelable.Param(id = 8) boolean z10, @SafeParcelable.Param(id = 9) boolean z11, @SafeParcelable.Param(id = 10) boolean z12, @SafeParcelable.Param(id = 11) int i13, @Nullable @SafeParcelable.Param(id = 12) List<PatternItem> list3) {
        this.zzdx = list;
        this.zzdy = list2;
        this.zzcr = f11;
        this.strokeColor = i11;
        this.fillColor = i12;
        this.zzcs = f12;
        this.zzct = z10;
        this.zzdz = z11;
        this.zzcu = z12;
        this.zzea = i13;
        this.zzcv = list3;
    }

    public final PolygonOptions add(LatLng latLng) {
        this.zzdx.add(latLng);
        return this;
    }

    public final PolygonOptions add(LatLng... latLngArr) {
        this.zzdx.addAll(Arrays.asList(latLngArr));
        return this;
    }

    public final PolygonOptions addAll(Iterable<LatLng> iterable) {
        Iterator<LatLng> it = iterable.iterator();
        while (it.hasNext()) {
            this.zzdx.add(it.next());
        }
        return this;
    }

    public final PolygonOptions addHole(Iterable<LatLng> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<LatLng> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        this.zzdy.add(arrayList);
        return this;
    }

    public final PolygonOptions clickable(boolean z10) {
        this.zzcu = z10;
        return this;
    }

    public final PolygonOptions fillColor(int i11) {
        this.fillColor = i11;
        return this;
    }

    public final PolygonOptions geodesic(boolean z10) {
        this.zzdz = z10;
        return this;
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    public final List<List<LatLng>> getHoles() {
        return this.zzdy;
    }

    public final List<LatLng> getPoints() {
        return this.zzdx;
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    public final int getStrokeJointType() {
        return this.zzea;
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

    public final boolean isGeodesic() {
        return this.zzdz;
    }

    public final boolean isVisible() {
        return this.zzct;
    }

    public final PolygonOptions strokeColor(int i11) {
        this.strokeColor = i11;
        return this;
    }

    public final PolygonOptions strokeJointType(int i11) {
        this.zzea = i11;
        return this;
    }

    public final PolygonOptions strokePattern(@Nullable List<PatternItem> list) {
        this.zzcv = list;
        return this;
    }

    public final PolygonOptions strokeWidth(float f11) {
        this.zzcr = f11;
        return this;
    }

    public final PolygonOptions visible(boolean z10) {
        this.zzct = z10;
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 2, getPoints(), false);
        SafeParcelWriter.writeList(parcel, 3, this.zzdy, false);
        SafeParcelWriter.writeFloat(parcel, 4, getStrokeWidth());
        SafeParcelWriter.writeInt(parcel, 5, getStrokeColor());
        SafeParcelWriter.writeInt(parcel, 6, getFillColor());
        SafeParcelWriter.writeFloat(parcel, 7, getZIndex());
        SafeParcelWriter.writeBoolean(parcel, 8, isVisible());
        SafeParcelWriter.writeBoolean(parcel, 9, isGeodesic());
        SafeParcelWriter.writeBoolean(parcel, 10, isClickable());
        SafeParcelWriter.writeInt(parcel, 11, getStrokeJointType());
        SafeParcelWriter.writeTypedList(parcel, 12, getStrokePattern(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final PolygonOptions zIndex(float f11) {
        this.zzcs = f11;
        return this;
    }
}
