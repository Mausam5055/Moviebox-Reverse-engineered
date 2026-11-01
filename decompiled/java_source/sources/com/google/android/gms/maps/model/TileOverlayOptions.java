package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.maps.zzaf;
import com.google.android.gms.internal.maps.zzag;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "TileOverlayOptionsCreator")
@SafeParcelable.Reserved({1})
public final class TileOverlayOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TileOverlayOptions> CREATOR = new zzu();

    @SafeParcelable.Field(getter = "getZIndex", id = 4)
    private float zzcs;

    @SafeParcelable.Field(getter = "isVisible", id = 3)
    private boolean zzct;

    @SafeParcelable.Field(getter = "getTransparency", id = 6)
    private float zzda;

    @SafeParcelable.Field(getter = "getTileProviderDelegate", id = 2, type = "android.os.IBinder")
    private zzaf zzei;
    private TileProvider zzej;

    @SafeParcelable.Field(defaultValue = "true", getter = "getFadeIn", id = 5)
    private boolean zzek;

    public TileOverlayOptions() {
        this.zzct = true;
        this.zzek = true;
        this.zzda = 0.0f;
    }

    @SafeParcelable.Constructor
    TileOverlayOptions(@SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) boolean z10, @SafeParcelable.Param(id = 4) float f11, @SafeParcelable.Param(id = 5) boolean z11, @SafeParcelable.Param(id = 6) float f12) {
        this.zzct = true;
        this.zzek = true;
        this.zzda = 0.0f;
        zzaf zzafVarZzk = zzag.zzk(iBinder);
        this.zzei = zzafVarZzk;
        this.zzej = zzafVarZzk == null ? null : new zzs(this);
        this.zzct = z10;
        this.zzcs = f11;
        this.zzek = z11;
        this.zzda = f12;
    }

    public final TileOverlayOptions fadeIn(boolean z10) {
        this.zzek = z10;
        return this;
    }

    public final boolean getFadeIn() {
        return this.zzek;
    }

    public final TileProvider getTileProvider() {
        return this.zzej;
    }

    public final float getTransparency() {
        return this.zzda;
    }

    public final float getZIndex() {
        return this.zzcs;
    }

    public final boolean isVisible() {
        return this.zzct;
    }

    public final TileOverlayOptions tileProvider(TileProvider tileProvider) {
        this.zzej = tileProvider;
        this.zzei = tileProvider == null ? null : new zzt(this, tileProvider);
        return this;
    }

    public final TileOverlayOptions transparency(float f11) {
        Preconditions.checkArgument(f11 >= 0.0f && f11 <= 1.0f, "Transparency must be in the range [0..1]");
        this.zzda = f11;
        return this;
    }

    public final TileOverlayOptions visible(boolean z10) {
        this.zzct = z10;
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeIBinder(parcel, 2, this.zzei.asBinder(), false);
        SafeParcelWriter.writeBoolean(parcel, 3, isVisible());
        SafeParcelWriter.writeFloat(parcel, 4, getZIndex());
        SafeParcelWriter.writeBoolean(parcel, 5, getFadeIn());
        SafeParcelWriter.writeFloat(parcel, 6, getTransparency());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final TileOverlayOptions zIndex(float f11) {
        this.zzcs = f11;
        return this;
    }
}
