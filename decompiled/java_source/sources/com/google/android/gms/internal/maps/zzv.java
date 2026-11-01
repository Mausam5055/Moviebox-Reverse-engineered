package com.google.android.gms.internal.maps;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.model.LatLng;

/* JADX INFO: loaded from: classes4.dex */
public final class zzv extends zza implements zzt {
    zzv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IMarkerDelegate");
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final float getAlpha() throws RemoteException {
        Parcel parcelZza = zza(26, zza());
        float f11 = parcelZza.readFloat();
        parcelZza.recycle();
        return f11;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final String getId() throws RemoteException {
        Parcel parcelZza = zza(2, zza());
        String string = parcelZza.readString();
        parcelZza.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final LatLng getPosition() throws RemoteException {
        Parcel parcelZza = zza(4, zza());
        LatLng latLng = (LatLng) zzc.zza(parcelZza, LatLng.CREATOR);
        parcelZza.recycle();
        return latLng;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final float getRotation() throws RemoteException {
        Parcel parcelZza = zza(23, zza());
        float f11 = parcelZza.readFloat();
        parcelZza.recycle();
        return f11;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final String getSnippet() throws RemoteException {
        Parcel parcelZza = zza(8, zza());
        String string = parcelZza.readString();
        parcelZza.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final String getTitle() throws RemoteException {
        Parcel parcelZza = zza(6, zza());
        String string = parcelZza.readString();
        parcelZza.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final float getZIndex() throws RemoteException {
        Parcel parcelZza = zza(28, zza());
        float f11 = parcelZza.readFloat();
        parcelZza.recycle();
        return f11;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void hideInfoWindow() throws RemoteException {
        zzb(12, zza());
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final boolean isDraggable() throws RemoteException {
        Parcel parcelZza = zza(10, zza());
        boolean zZza = zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final boolean isFlat() throws RemoteException {
        Parcel parcelZza = zza(21, zza());
        boolean zZza = zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final boolean isInfoWindowShown() throws RemoteException {
        Parcel parcelZza = zza(13, zza());
        boolean zZza = zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final boolean isVisible() throws RemoteException {
        Parcel parcelZza = zza(15, zza());
        boolean zZza = zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void remove() throws RemoteException {
        zzb(1, zza());
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void setAlpha(float f11) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeFloat(f11);
        zzb(25, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void setAnchor(float f11, float f12) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeFloat(f11);
        parcelZza.writeFloat(f12);
        zzb(19, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void setDraggable(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.writeBoolean(parcelZza, z10);
        zzb(9, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void setFlat(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.writeBoolean(parcelZza, z10);
        zzb(20, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void setInfoWindowAnchor(float f11, float f12) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeFloat(f11);
        parcelZza.writeFloat(f12);
        zzb(24, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void setPosition(LatLng latLng) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zza(parcelZza, latLng);
        zzb(3, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void setRotation(float f11) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeFloat(f11);
        zzb(22, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void setSnippet(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzb(7, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void setTitle(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzb(5, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void setVisible(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.writeBoolean(parcelZza, z10);
        zzb(14, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void setZIndex(float f11) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeFloat(f11);
        zzb(27, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void showInfoWindow() throws RemoteException {
        zzb(11, zza());
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zza(parcelZza, iObjectWrapper);
        zzb(29, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zza(parcelZza, iObjectWrapper);
        zzb(18, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final int zzj() throws RemoteException {
        Parcel parcelZza = zza(17, zza());
        int i11 = parcelZza.readInt();
        parcelZza.recycle();
        return i11;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final boolean zzj(zzt zztVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zza(parcelZza, zztVar);
        Parcel parcelZza2 = zza(16, parcelZza);
        boolean zZza = zzc.zza(parcelZza2);
        parcelZza2.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.maps.zzt
    public final IObjectWrapper zzk() throws RemoteException {
        Parcel parcelZza = zza(30, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZza.readStrongBinder());
        parcelZza.recycle();
        return iObjectWrapperAsInterface;
    }
}
