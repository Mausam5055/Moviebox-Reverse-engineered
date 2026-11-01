package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
@SafeParcelable.Class(creator = "CredentialPickerConfigCreator")
@Deprecated
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new zbb();

    @SafeParcelable.Field(id = 1000)
    final int zba;

    @SafeParcelable.Field(getter = "shouldShowAddAccountButton", id = 1)
    private final boolean zbb;

    @SafeParcelable.Field(getter = "shouldShowCancelButton", id = 2)
    private final boolean zbc;

    @SafeParcelable.Field(getter = "getPromptInternalId", id = 4)
    private final int zbd;

    public static class Builder {
        private boolean zba = false;
        private boolean zbb = true;
        private int zbc = 1;

        @NonNull
        public CredentialPickerConfig build() {
            return new CredentialPickerConfig(2, this.zba, this.zbb, false, this.zbc);
        }

        @NonNull
        @Deprecated
        public Builder setForNewAccount(boolean z10) {
            this.zbc = true == z10 ? 3 : 1;
            return this;
        }

        @NonNull
        public Builder setPrompt(int i11) {
            this.zbc = i11;
            return this;
        }

        @NonNull
        public Builder setShowAddAccountButton(boolean z10) {
            this.zba = z10;
            return this;
        }

        @NonNull
        public Builder setShowCancelButton(boolean z10) {
            this.zbb = z10;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Prompt {
        public static final int CONTINUE = 1;
        public static final int SIGN_IN = 2;
        public static final int SIGN_UP = 3;
    }

    @SafeParcelable.Constructor
    CredentialPickerConfig(@SafeParcelable.Param(id = 1000) int i11, @SafeParcelable.Param(id = 1) boolean z10, @SafeParcelable.Param(id = 2) boolean z11, @SafeParcelable.Param(id = 3) boolean z12, @SafeParcelable.Param(id = 4) int i12) {
        this.zba = i11;
        this.zbb = z10;
        this.zbc = z11;
        if (i11 < 2) {
            this.zbd = true == z12 ? 3 : 1;
        } else {
            this.zbd = i12;
        }
    }

    @Deprecated
    public boolean isForNewAccount() {
        return this.zbd == 3;
    }

    public boolean shouldShowAddAccountButton() {
        return this.zbb;
    }

    public boolean shouldShowCancelButton() {
        return this.zbc;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, shouldShowAddAccountButton());
        SafeParcelWriter.writeBoolean(parcel, 2, shouldShowCancelButton());
        SafeParcelWriter.writeBoolean(parcel, 3, isForNewAccount());
        SafeParcelWriter.writeInt(parcel, 4, this.zbd);
        SafeParcelWriter.writeInt(parcel, 1000, this.zba);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
