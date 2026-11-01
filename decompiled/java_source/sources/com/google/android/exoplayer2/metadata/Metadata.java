package com.google.android.exoplayer2.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new a();
    private final Entry[] entries;

    public interface Entry extends Parcelable {
        @Nullable
        byte[] getWrappedMetadataBytes();

        @Nullable
        o1 getWrappedMetadataFormat();

        void populateMediaMetadata(a2.b bVar);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Metadata[] newArray(int i11) {
            return new Metadata[i11];
        }
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
        this.entries = (Entry[]) list.toArray(new Entry[0]);
    }

    public Metadata(Entry... entryArr) {
        this.entries = entryArr;
    }

    public Metadata copyWithAppendedEntries(Entry... entryArr) {
        return entryArr.length == 0 ? this : new Metadata((Entry[]) p0.F0(this.entries, entryArr));
    }

    public Metadata copyWithAppendedEntriesFrom(@Nullable Metadata metadata) {
        return metadata == null ? this : copyWithAppendedEntries(metadata.entries);
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

    public String toString() {
        return "entries=" + Arrays.toString(this.entries);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeInt(this.entries.length);
        for (Entry entry : this.entries) {
            parcel.writeParcelable(entry, 0);
        }
    }
}
