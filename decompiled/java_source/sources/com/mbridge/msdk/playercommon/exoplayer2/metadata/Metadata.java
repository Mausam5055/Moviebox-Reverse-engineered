package com.mbridge.msdk.playercommon.exoplayer2.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new Parcelable.Creator<Metadata>() { // from class: com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Metadata[] newArray(int i11) {
            return new Metadata[0];
        }
    };
    private final Entry[] entries;

    public interface Entry extends Parcelable {
    }

    Metadata(Parcel parcel) {
        this.entries = new Entry[parcel.readInt()];
        int i11 = 0;
        while (true) {
            Entry[] entryArr = this.entries;
            if (i11 >= entryArr.length) {
                return;
            }
            entryArr[i11] = (Entry) parcel.readParcelable(Entry.class.getClassLoader());
            i11++;
        }
    }

    public Metadata(List<? extends Entry> list) {
        if (list == null) {
            this.entries = new Entry[0];
            return;
        }
        Entry[] entryArr = new Entry[list.size()];
        this.entries = entryArr;
        list.toArray(entryArr);
    }

    public Metadata(Entry... entryArr) {
        this.entries = entryArr == null ? new Entry[0] : entryArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Metadata.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.entries, ((Metadata) obj).entries);
    }

    public Entry get(int i11) {
        return this.entries[i11];
    }

    public int hashCode() {
        return Arrays.hashCode(this.entries);
    }

    public int length() {
        return this.entries.length;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeInt(this.entries.length);
        for (Entry entry : this.entries) {
            parcel.writeParcelable(entry, 0);
        }
    }
}
