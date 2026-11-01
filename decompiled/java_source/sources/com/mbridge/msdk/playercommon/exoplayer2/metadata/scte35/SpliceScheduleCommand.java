package com.mbridge.msdk.playercommon.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new Parcelable.Creator<SpliceScheduleCommand>() { // from class: com.mbridge.msdk.playercommon.exoplayer2.metadata.scte35.SpliceScheduleCommand.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceScheduleCommand[] newArray(int i11) {
            return new SpliceScheduleCommand[i11];
        }
    };
    public final List<Event> events;

    public static final class ComponentSplice {
        public final int componentTag;
        public final long utcSpliceTime;

        private ComponentSplice(int i11, long j11) {
            this.componentTag = i11;
            this.utcSpliceTime = j11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ComponentSplice createFromParcel(Parcel parcel) {
            return new ComponentSplice(parcel.readInt(), parcel.readLong());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.componentTag);
            parcel.writeLong(this.utcSpliceTime);
        }
    }

    public static final class Event {
        public final boolean autoReturn;
        public final int availNum;
        public final int availsExpected;
        public final long breakDurationUs;
        public final List<ComponentSplice> componentSpliceList;
        public final boolean outOfNetworkIndicator;
        public final boolean programSpliceFlag;
        public final boolean spliceEventCancelIndicator;
        public final long spliceEventId;
        public final int uniqueProgramId;
        public final long utcSpliceTime;

        private Event(long j11, boolean z10, boolean z11, boolean z12, List<ComponentSplice> list, long j12, boolean z13, long j13, int i11, int i12, int i13) {
            this.spliceEventId = j11;
            this.spliceEventCancelIndicator = z10;
            this.outOfNetworkIndicator = z11;
            this.programSpliceFlag = z12;
            this.componentSpliceList = Collections.unmodifiableList(list);
            this.utcSpliceTime = j12;
            this.autoReturn = z13;
            this.breakDurationUs = j13;
            this.uniqueProgramId = i11;
            this.availNum = i12;
            this.availsExpected = i13;
        }

        private Event(Parcel parcel) {
            this.spliceEventId = parcel.readLong();
            this.spliceEventCancelIndicator = parcel.readByte() == 1;
            this.outOfNetworkIndicator = parcel.readByte() == 1;
            this.programSpliceFlag = parcel.readByte() == 1;
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            for (int i12 = 0; i12 < i11; i12++) {
                arrayList.add(ComponentSplice.createFromParcel(parcel));
            }
            this.componentSpliceList = Collections.unmodifiableList(arrayList);
            this.utcSpliceTime = parcel.readLong();
            this.autoReturn = parcel.readByte() == 1;
            this.breakDurationUs = parcel.readLong();
            this.uniqueProgramId = parcel.readInt();
            this.availNum = parcel.readInt();
            this.availsExpected = parcel.readInt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Event createFromParcel(Parcel parcel) {
            return new Event(parcel);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Event parseFromSection(ParsableByteArray parsableByteArray) {
            ArrayList arrayList;
            boolean z10;
            long j11;
            boolean z11;
            long j12;
            int i11;
            int i12;
            int unsignedByte;
            boolean z12;
            boolean z13;
            long unsignedInt;
            long unsignedInt2 = parsableByteArray.readUnsignedInt();
            boolean z14 = (parsableByteArray.readUnsignedByte() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z14) {
                arrayList = arrayList2;
                z10 = false;
                j11 = C.TIME_UNSET;
                z11 = false;
                j12 = C.TIME_UNSET;
                i11 = 0;
                i12 = 0;
                unsignedByte = 0;
                z12 = false;
            } else {
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                boolean z15 = (unsignedByte2 & 128) != 0;
                boolean z16 = (unsignedByte2 & 64) != 0;
                boolean z17 = (unsignedByte2 & 32) != 0;
                long unsignedInt3 = z16 ? parsableByteArray.readUnsignedInt() : C.TIME_UNSET;
                if (!z16) {
                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                    ArrayList arrayList3 = new ArrayList(unsignedByte3);
                    for (int i13 = 0; i13 < unsignedByte3; i13++) {
                        arrayList3.add(new ComponentSplice(parsableByteArray.readUnsignedByte(), parsableByteArray.readUnsignedInt()));
                    }
                    arrayList2 = arrayList3;
                }
                if (z17) {
                    long unsignedByte4 = parsableByteArray.readUnsignedByte();
                    boolean z18 = (128 & unsignedByte4) != 0;
                    unsignedInt = ((((unsignedByte4 & 1) << 32) | parsableByteArray.readUnsignedInt()) * 1000) / 90;
                    z13 = z18;
                } else {
                    z13 = false;
                    unsignedInt = C.TIME_UNSET;
                }
                int unsignedShort = parsableByteArray.readUnsignedShort();
                int unsignedByte5 = parsableByteArray.readUnsignedByte();
                z12 = z16;
                unsignedByte = parsableByteArray.readUnsignedByte();
                j12 = unsignedInt;
                arrayList = arrayList2;
                long j13 = unsignedInt3;
                i11 = unsignedShort;
                i12 = unsignedByte5;
                j11 = j13;
                boolean z19 = z15;
                z11 = z13;
                z10 = z19;
            }
            return new Event(unsignedInt2, z14, z10, z12, arrayList, j11, z11, j12, i11, i12, unsignedByte);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void writeToParcel(Parcel parcel) {
            parcel.writeLong(this.spliceEventId);
            parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
            int size = this.componentSpliceList.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                this.componentSpliceList.get(i11).writeToParcel(parcel);
            }
            parcel.writeLong(this.utcSpliceTime);
            parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.breakDurationUs);
            parcel.writeInt(this.uniqueProgramId);
            parcel.writeInt(this.availNum);
            parcel.writeInt(this.availsExpected);
        }
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int i11 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add(Event.createFromParcel(parcel));
        }
        this.events = Collections.unmodifiableList(arrayList);
    }

    private SpliceScheduleCommand(List<Event> list) {
        this.events = Collections.unmodifiableList(list);
    }

    static SpliceScheduleCommand parseFromSection(ParsableByteArray parsableByteArray) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        ArrayList arrayList = new ArrayList(unsignedByte);
        for (int i11 = 0; i11 < unsignedByte; i11++) {
            arrayList.add(Event.parseFromSection(parsableByteArray));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        int size = this.events.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            this.events.get(i12).writeToParcel(parcel);
        }
    }
}
