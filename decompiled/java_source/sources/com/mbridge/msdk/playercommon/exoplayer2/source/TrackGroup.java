package com.mbridge.msdk.playercommon.exoplayer2.source;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class TrackGroup implements Parcelable {
    public static final Parcelable.Creator<TrackGroup> CREATOR = new Parcelable.Creator<TrackGroup>() { // from class: com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroup.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrackGroup createFromParcel(Parcel parcel) {
            return new TrackGroup(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrackGroup[] newArray(int i11) {
            return new TrackGroup[i11];
        }
    };
    private final Format[] formats;
    private int hashCode;
    public final int length;

    TrackGroup(Parcel parcel) {
        int i11 = parcel.readInt();
        this.length = i11;
        this.formats = new Format[i11];
        for (int i12 = 0; i12 < this.length; i12++) {
            this.formats[i12] = (Format) parcel.readParcelable(Format.class.getClassLoader());
        }
    }

    public TrackGroup(Format... formatArr) {
        Assertions.checkState(formatArr.length > 0);
        this.formats = formatArr;
        this.length = formatArr.length;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackGroup.class != obj.getClass()) {
            return false;
        }
        TrackGroup trackGroup = (TrackGroup) obj;
        return this.length == trackGroup.length && Arrays.equals(this.formats, trackGroup.formats);
    }

    public Format getFormat(int i11) {
        return this.formats[i11];
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = Arrays.hashCode(this.formats) + 527;
        }
        return this.hashCode;
    }

    public int indexOf(Format format) {
        int i11 = 0;
        while (true) {
            Format[] formatArr = this.formats;
            if (i11 >= formatArr.length) {
                return -1;
            }
            if (format == formatArr[i11]) {
                return i11;
            }
            i11++;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeInt(this.length);
        for (int i12 = 0; i12 < this.length; i12++) {
            parcel.writeParcelable(this.formats[i12], 0);
        }
    }
}
