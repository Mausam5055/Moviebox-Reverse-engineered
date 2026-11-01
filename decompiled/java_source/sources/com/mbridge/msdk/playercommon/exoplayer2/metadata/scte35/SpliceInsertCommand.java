package com.mbridge.msdk.playercommon.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.TimestampAdjuster;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new Parcelable.Creator<SpliceInsertCommand>() { // from class: com.mbridge.msdk.playercommon.exoplayer2.metadata.scte35.SpliceInsertCommand.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand[] newArray(int i11) {
            return new SpliceInsertCommand[i11];
        }
    };
    public final boolean autoReturn;
    public final int availNum;
    public final int availsExpected;
    public final long breakDurationUs;
    public final List<ComponentSplice> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    public static final class ComponentSplice {
        public final long componentSplicePlaybackPositionUs;
        public final long componentSplicePts;
        public final int componentTag;

        private ComponentSplice(int i11, long j11, long j12) {
            this.componentTag = i11;
            this.componentSplicePts = j11;
            this.componentSplicePlaybackPositionUs = j12;
        }

        public static ComponentSplice createFromParcel(Parcel parcel) {
            return new ComponentSplice(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.componentTag);
            parcel.writeLong(this.componentSplicePts);
            parcel.writeLong(this.componentSplicePlaybackPositionUs);
        }
    }

    private SpliceInsertCommand(long j11, boolean z10, boolean z11, boolean z12, boolean z13, long j12, long j13, List<ComponentSplice> list, boolean z14, long j14, int i11, int i12, int i13) {
        this.spliceEventId = j11;
        this.spliceEventCancelIndicator = z10;
        this.outOfNetworkIndicator = z11;
        this.programSpliceFlag = z12;
        this.spliceImmediateFlag = z13;
        this.programSplicePts = j12;
        this.programSplicePlaybackPositionUs = j13;
        this.componentSpliceList = Collections.unmodifiableList(list);
        this.autoReturn = z14;
        this.breakDurationUs = j14;
        this.uniqueProgramId = i11;
        this.availNum = i12;
        this.availsExpected = i13;
    }

    private SpliceInsertCommand(Parcel parcel) {
        this.spliceEventId = parcel.readLong();
        this.spliceEventCancelIndicator = parcel.readByte() == 1;
        this.outOfNetworkIndicator = parcel.readByte() == 1;
        this.programSpliceFlag = parcel.readByte() == 1;
        this.spliceImmediateFlag = parcel.readByte() == 1;
        this.programSplicePts = parcel.readLong();
        this.programSplicePlaybackPositionUs = parcel.readLong();
        int i11 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add(ComponentSplice.createFromParcel(parcel));
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.autoReturn = parcel.readByte() == 1;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }

    static SpliceInsertCommand parseFromSection(ParsableByteArray parsableByteArray, long j11, TimestampAdjuster timestampAdjuster) {
        List list;
        boolean z10;
        boolean z11;
        long j12;
        boolean z12;
        long j13;
        int unsignedShort;
        int unsignedByte;
        int unsignedByte2;
        boolean z13;
        boolean z14;
        long unsignedInt;
        long unsignedInt2 = parsableByteArray.readUnsignedInt();
        boolean z15 = (parsableByteArray.readUnsignedByte() & 128) != 0;
        List listEmptyList = Collections.emptyList();
        if (z15) {
            list = listEmptyList;
            z10 = false;
            z11 = false;
            j12 = C.TIME_UNSET;
            z12 = false;
            j13 = C.TIME_UNSET;
            unsignedShort = 0;
            unsignedByte = 0;
            unsignedByte2 = 0;
            z13 = false;
        } else {
            int unsignedByte3 = parsableByteArray.readUnsignedByte();
            boolean z16 = (unsignedByte3 & 128) != 0;
            boolean z17 = (unsignedByte3 & 64) != 0;
            boolean z18 = (unsignedByte3 & 32) != 0;
            boolean z19 = (unsignedByte3 & 16) != 0;
            long spliceTime = (!z17 || z19) ? C.TIME_UNSET : TimeSignalCommand.parseSpliceTime(parsableByteArray, j11);
            if (!z17) {
                int unsignedByte4 = parsableByteArray.readUnsignedByte();
                ArrayList arrayList = new ArrayList(unsignedByte4);
                for (int i11 = 0; i11 < unsignedByte4; i11++) {
                    int unsignedByte5 = parsableByteArray.readUnsignedByte();
                    long spliceTime2 = !z19 ? TimeSignalCommand.parseSpliceTime(parsableByteArray, j11) : C.TIME_UNSET;
                    arrayList.add(new ComponentSplice(unsignedByte5, spliceTime2, timestampAdjuster.adjustTsTimestamp(spliceTime2)));
                }
                listEmptyList = arrayList;
            }
            if (z18) {
                long unsignedByte6 = parsableByteArray.readUnsignedByte();
                boolean z20 = (128 & unsignedByte6) != 0;
                unsignedInt = ((((unsignedByte6 & 1) << 32) | parsableByteArray.readUnsignedInt()) * 1000) / 90;
                z14 = z20;
            } else {
                z14 = false;
                unsignedInt = C.TIME_UNSET;
            }
            unsignedShort = parsableByteArray.readUnsignedShort();
            z13 = z17;
            unsignedByte = parsableByteArray.readUnsignedByte();
            unsignedByte2 = parsableByteArray.readUnsignedByte();
            list = listEmptyList;
            long j14 = spliceTime;
            z12 = z14;
            j13 = unsignedInt;
            z11 = z19;
            z10 = z16;
            j12 = j14;
        }
        return new SpliceInsertCommand(unsignedInt2, z15, z10, z13, z11, j12, timestampAdjuster.adjustTsTimestamp(j12), list, z12, j13, unsignedShort, unsignedByte, unsignedByte2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeLong(this.spliceEventId);
        parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.spliceImmediateFlag ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.programSplicePts);
        parcel.writeLong(this.programSplicePlaybackPositionUs);
        int size = this.componentSpliceList.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            this.componentSpliceList.get(i12).writeToParcel(parcel);
        }
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }
}
