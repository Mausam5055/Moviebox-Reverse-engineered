package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class EventMessage implements Metadata.Entry {
    public static final String ID3_SCHEME_ID_AOM = "https://aomedia.org/emsg/ID3";
    private static final String ID3_SCHEME_ID_APPLE = "https://developer.apple.com/streaming/emsg-id3";
    public static final String SCTE35_SCHEME_ID = "urn:scte:scte35:2014:bin";
    public final long durationMs;
    private int hashCode;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public final long f25419id;
    public final byte[] messageData;
    public final String schemeIdUri;
    public final String value;
    private static final o1 ID3_FORMAT = new o1.b().e0(MimeTypes.APPLICATION_ID3).E();
    private static final o1 SCTE35_FORMAT = new o1.b().e0(MimeTypes.APPLICATION_SCTE35).E();
    public static final Parcelable.Creator<EventMessage> CREATOR = new a();

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public EventMessage createFromParcel(Parcel parcel) {
            return new EventMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public EventMessage[] newArray(int i11) {
            return new EventMessage[i11];
        }
    }

    EventMessage(Parcel parcel) {
        this.schemeIdUri = (String) p0.j(parcel.readString());
        this.value = (String) p0.j(parcel.readString());
        this.durationMs = parcel.readLong();
        this.f25419id = parcel.readLong();
        this.messageData = (byte[]) p0.j(parcel.createByteArray());
    }

    public EventMessage(String str, String str2, long j11, long j12, byte[] bArr) {
        this.schemeIdUri = str;
        this.value = str2;
        this.durationMs = j11;
        this.f25419id = j12;
        this.messageData = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || EventMessage.class != obj.getClass()) {
            return false;
        }
        EventMessage eventMessage = (EventMessage) obj;
        return this.durationMs == eventMessage.durationMs && this.f25419id == eventMessage.f25419id && p0.c(this.schemeIdUri, eventMessage.schemeIdUri) && p0.c(this.value, eventMessage.value) && Arrays.equals(this.messageData, eventMessage.messageData);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    @Nullable
    public byte[] getWrappedMetadataBytes() {
        if (getWrappedMetadataFormat() != null) {
            return this.messageData;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    @Nullable
    public o1 getWrappedMetadataFormat() {
        String str = this.schemeIdUri;
        str.hashCode();
        switch (str) {
            case "urn:scte:scte35:2014:bin":
                return SCTE35_FORMAT;
            case "https://aomedia.org/emsg/ID3":
            case "https://developer.apple.com/streaming/emsg-id3":
                return ID3_FORMAT;
            default:
                return null;
        }
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            String str = this.schemeIdUri;
            int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.value;
            int iHashCode2 = str2 != null ? str2.hashCode() : 0;
            long j11 = this.durationMs;
            int i11 = (((iHashCode + iHashCode2) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f25419id;
            this.hashCode = ((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + Arrays.hashCode(this.messageData);
        }
        return this.hashCode;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void populateMediaMetadata(a2.b bVar) {
        com.google.android.exoplayer2.metadata.a.c(this, bVar);
    }

    public String toString() {
        return "EMSG: scheme=" + this.schemeIdUri + ", id=" + this.f25419id + ", durationMs=" + this.durationMs + ", value=" + this.value;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(this.schemeIdUri);
        parcel.writeString(this.value);
        parcel.writeLong(this.durationMs);
        parcel.writeLong(this.f25419id);
        parcel.writeByteArray(this.messageData);
    }
}
