package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes3.dex */
public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new a();
    public final byte[] commandBytes;
    public final long identifier;
    public final long ptsAdjustment;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PrivateCommand createFromParcel(Parcel parcel) {
            return new PrivateCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PrivateCommand[] newArray(int i11) {
            return new PrivateCommand[i11];
        }
    }

    private PrivateCommand(long j11, byte[] bArr, long j12) {
        this.ptsAdjustment = j12;
        this.identifier = j11;
        this.commandBytes = bArr;
    }

    private PrivateCommand(Parcel parcel) {
        this.ptsAdjustment = parcel.readLong();
        this.identifier = parcel.readLong();
        this.commandBytes = (byte[]) p0.j(parcel.createByteArray());
    }

    /* synthetic */ PrivateCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    static PrivateCommand parseFromSection(d0 d0Var, int i11, long j11) {
        long jF = d0Var.F();
        int i12 = i11 - 4;
        byte[] bArr = new byte[i12];
        d0Var.j(bArr, 0, i12);
        return new PrivateCommand(jF, bArr, j11);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeLong(this.ptsAdjustment);
        parcel.writeLong(this.identifier);
        parcel.writeByteArray(this.commandBytes);
    }
}
