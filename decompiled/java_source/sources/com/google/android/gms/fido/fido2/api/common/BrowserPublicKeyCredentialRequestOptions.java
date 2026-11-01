package com.google.android.gms.fido.fido2.api.common;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;

/* JADX INFO: loaded from: classes3.dex */
@SafeParcelable.Class(creator = "BrowserPublicKeyCredentialRequestOptionsCreator")
@SafeParcelable.Reserved({1})
public class BrowserPublicKeyCredentialRequestOptions extends BrowserRequestOptions {

    @NonNull
    public static final Parcelable.Creator<BrowserPublicKeyCredentialRequestOptions> CREATOR = new zzo();

    @NonNull
    @SafeParcelable.Field(getter = "getPublicKeyCredentialRequestOptions", id = 2)
    private final PublicKeyCredentialRequestOptions zza;

    @NonNull
    @SafeParcelable.Field(getter = "getOrigin", id = 3)
    private final Uri zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getClientDataHash", id = 4)
    private final byte[] zzc;

    public static final class Builder {
        private PublicKeyCredentialRequestOptions zza;
        private Uri zzb;
        private byte[] zzc;

        @NonNull
        public BrowserPublicKeyCredentialRequestOptions build() {
            return new BrowserPublicKeyCredentialRequestOptions(this.zza, this.zzb, this.zzc);
        }

        @NonNull
        public Builder setClientDataHash(@NonNull byte[] bArr) {
            BrowserPublicKeyCredentialRequestOptions.zzb(bArr);
            this.zzc = bArr;
            return this;
        }

        @NonNull
        public Builder setOrigin(@NonNull Uri uri) {
            BrowserPublicKeyCredentialRequestOptions.zza(uri);
            this.zzb = uri;
            return this;
        }

        @NonNull
        public Builder setPublicKeyCredentialRequestOptions(@NonNull PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions) {
            this.zza = (PublicKeyCredentialRequestOptions) Preconditions.checkNotNull(publicKeyCredentialRequestOptions);
            return this;
        }
    }

    @SafeParcelable.Constructor
    BrowserPublicKeyCredentialRequestOptions(@NonNull @SafeParcelable.Param(id = 2) PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions, @NonNull @SafeParcelable.Param(id = 3) Uri uri, @Nullable @SafeParcelable.Param(id = 4) byte[] bArr) {
        this.zza = (PublicKeyCredentialRequestOptions) Preconditions.checkNotNull(publicKeyCredentialRequestOptions);
        zzc(uri);
        this.zzb = uri;
        zzd(bArr);
        this.zzc = bArr;
    }

    @NonNull
    public static BrowserPublicKeyCredentialRequestOptions deserializeFromBytes(@NonNull byte[] bArr) {
        return (BrowserPublicKeyCredentialRequestOptions) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    static /* bridge */ /* synthetic */ Uri zza(Uri uri) {
        zzc(uri);
        return uri;
    }

    static /* bridge */ /* synthetic */ byte[] zzb(byte[] bArr) {
        zzd(bArr);
        return bArr;
    }

    private static Uri zzc(Uri uri) {
        Preconditions.checkNotNull(uri);
        Preconditions.checkArgument(uri.getScheme() != null, "origin scheme must be non-empty");
        Preconditions.checkArgument(uri.getAuthority() != null, "origin authority must be non-empty");
        return uri;
    }

    private static byte[] zzd(byte[] bArr) {
        boolean z10 = true;
        if (bArr != null && bArr.length != 32) {
            z10 = false;
        }
        Preconditions.checkArgument(z10, "clientDataHash must be 32 bytes long");
        return bArr;
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof BrowserPublicKeyCredentialRequestOptions)) {
            return false;
        }
        BrowserPublicKeyCredentialRequestOptions browserPublicKeyCredentialRequestOptions = (BrowserPublicKeyCredentialRequestOptions) obj;
        return Objects.equal(this.zza, browserPublicKeyCredentialRequestOptions.zza) && Objects.equal(this.zzb, browserPublicKeyCredentialRequestOptions.zzb);
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    @Nullable
    public AuthenticationExtensions getAuthenticationExtensions() {
        return this.zza.getAuthenticationExtensions();
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    @NonNull
    public byte[] getChallenge() {
        return this.zza.getChallenge();
    }

    @Override // com.google.android.gms.fido.fido2.api.common.BrowserRequestOptions
    @Nullable
    public byte[] getClientDataHash() {
        return this.zzc;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.BrowserRequestOptions
    @NonNull
    public Uri getOrigin() {
        return this.zzb;
    }

    @NonNull
    public PublicKeyCredentialRequestOptions getPublicKeyCredentialRequestOptions() {
        return this.zza;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    @Nullable
    public Integer getRequestId() {
        return this.zza.getRequestId();
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    @Nullable
    public Double getTimeoutSeconds() {
        return this.zza.getTimeoutSeconds();
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    @Nullable
    public TokenBinding getTokenBinding() {
        return this.zza.getTokenBinding();
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb);
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    @NonNull
    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getPublicKeyCredentialRequestOptions(), i11, false);
        SafeParcelWriter.writeParcelable(parcel, 3, getOrigin(), i11, false);
        SafeParcelWriter.writeByteArray(parcel, 4, getClientDataHash(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
