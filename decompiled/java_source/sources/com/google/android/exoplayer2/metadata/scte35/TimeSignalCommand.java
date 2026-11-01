package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.l0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes3.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new a();
    public final long playbackPositionUs;
    public final long ptsTime;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public TimeSignalCommand[] newArray(int i11) {
            return new TimeSignalCommand[i11];
        }
    }

    private TimeSignalCommand(long j11, long j12) {
        this.ptsTime = j11;
        this.playbackPositionUs = j12;
    }

    /* synthetic */ TimeSignalCommand(long j11, long j12, a aVar) {
        this(j11, j12);
    }

    static TimeSignalCommand parseFromSection(d0 d0Var, long j11, l0 l0Var) {
        long spliceTime = parseSpliceTime(d0Var, j11);
        return new TimeSignalCommand(spliceTime, l0Var.b(spliceTime));
    }

    static long parseSpliceTime(d0 d0Var, long j11) {
        long jD = d0Var.D();
        return (128 & jD) != 0 ? 8589934591L & ((((jD & 1) << 32) | d0Var.F()) + j11) : C.TIME_UNSET;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeLong(this.ptsTime);
        parcel.writeLong(this.playbackPositionUs);
    }
}
