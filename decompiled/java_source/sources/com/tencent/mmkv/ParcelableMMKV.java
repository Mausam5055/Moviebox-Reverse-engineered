package com.tencent.mmkv;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class ParcelableMMKV implements Parcelable {
    public static final Parcelable.Creator<ParcelableMMKV> CREATOR = new a();
    private int ashmemFD;
    private int ashmemMetaFD;
    private String cryptKey;
    private final String mmapID;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ParcelableMMKV createFromParcel(Parcel parcel) {
            String string = parcel.readString();
            Parcelable.Creator creator = ParcelFileDescriptor.CREATOR;
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) creator.createFromParcel(parcel);
            ParcelFileDescriptor parcelFileDescriptor2 = (ParcelFileDescriptor) creator.createFromParcel(parcel);
            String string2 = parcel.readString();
            if (parcelFileDescriptor == null || parcelFileDescriptor2 == null) {
                return null;
            }
            return new ParcelableMMKV(string, parcelFileDescriptor.detachFd(), parcelFileDescriptor2.detachFd(), string2, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ParcelableMMKV[] newArray(int i11) {
            return new ParcelableMMKV[i11];
        }
    }

    public ParcelableMMKV(@NonNull MMKV mmkv) {
        this.ashmemFD = -1;
        this.ashmemMetaFD = -1;
        this.cryptKey = null;
        this.mmapID = mmkv.mmapID();
        this.ashmemFD = mmkv.ashmemFD();
        this.ashmemMetaFD = mmkv.ashmemMetaFD();
        this.cryptKey = mmkv.cryptKey();
    }

    private ParcelableMMKV(String str, int i11, int i12, String str2) {
        this.mmapID = str;
        this.ashmemFD = i11;
        this.ashmemMetaFD = i12;
        this.cryptKey = str2;
    }

    /* synthetic */ ParcelableMMKV(String str, int i11, int i12, String str2, a aVar) {
        this(str, i11, i12, str2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 1;
    }

    @Nullable
    public MMKV toMMKV() {
        int i11;
        int i12 = this.ashmemFD;
        if (i12 < 0 || (i11 = this.ashmemMetaFD) < 0) {
            return null;
        }
        return MMKV.G(this.mmapID, i12, i11, this.cryptKey);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        try {
            parcel.writeString(this.mmapID);
            ParcelFileDescriptor parcelFileDescriptorFromFd = ParcelFileDescriptor.fromFd(this.ashmemFD);
            ParcelFileDescriptor parcelFileDescriptorFromFd2 = ParcelFileDescriptor.fromFd(this.ashmemMetaFD);
            int i12 = i11 | 1;
            parcelFileDescriptorFromFd.writeToParcel(parcel, i12);
            parcelFileDescriptorFromFd2.writeToParcel(parcel, i12);
            String str = this.cryptKey;
            if (str != null) {
                parcel.writeString(str);
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        }
    }
}
