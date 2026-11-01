package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.d0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new a();
    public final List<c> events;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public SpliceScheduleCommand[] newArray(int i11) {
            return new SpliceScheduleCommand[i11];
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f25444a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f25445b;

        private b(int i11, long j11) {
            this.f25444a = i11;
            this.f25445b = j11;
        }

        /* synthetic */ b(int i11, long j11, a aVar) {
            this(i11, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(Parcel parcel) {
            parcel.writeInt(this.f25444a);
            parcel.writeLong(this.f25445b);
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f25446a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f25447b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f25448c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f25449d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f25450e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List f25451f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final boolean f25452g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f25453h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f25454i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f25455j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f25456k;

        private c(long j11, boolean z10, boolean z11, boolean z12, List list, long j12, boolean z13, long j13, int i11, int i12, int i13) {
            this.f25446a = j11;
            this.f25447b = z10;
            this.f25448c = z11;
            this.f25449d = z12;
            this.f25451f = Collections.unmodifiableList(list);
            this.f25450e = j12;
            this.f25452g = z13;
            this.f25453h = j13;
            this.f25454i = i11;
            this.f25455j = i12;
            this.f25456k = i13;
        }

        private c(Parcel parcel) {
            this.f25446a = parcel.readLong();
            this.f25447b = parcel.readByte() == 1;
            this.f25448c = parcel.readByte() == 1;
            this.f25449d = parcel.readByte() == 1;
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            for (int i12 = 0; i12 < i11; i12++) {
                arrayList.add(b.c(parcel));
            }
            this.f25451f = Collections.unmodifiableList(arrayList);
            this.f25450e = parcel.readLong();
            this.f25452g = parcel.readByte() == 1;
            this.f25453h = parcel.readLong();
            this.f25454i = parcel.readInt();
            this.f25455j = parcel.readInt();
            this.f25456k = parcel.readInt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c d(Parcel parcel) {
            return new c(parcel);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c e(d0 d0Var) {
            ArrayList arrayList;
            boolean z10;
            long j11;
            boolean z11;
            long j12;
            int i11;
            int i12;
            int iD;
            boolean z12;
            boolean z13;
            long jF;
            long jF2 = d0Var.F();
            boolean z14 = (d0Var.D() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z14) {
                arrayList = arrayList2;
                z10 = false;
                j11 = C.TIME_UNSET;
                z11 = false;
                j12 = C.TIME_UNSET;
                i11 = 0;
                i12 = 0;
                iD = 0;
                z12 = false;
            } else {
                int iD2 = d0Var.D();
                boolean z15 = (iD2 & 128) != 0;
                boolean z16 = (iD2 & 64) != 0;
                boolean z17 = (iD2 & 32) != 0;
                long jF3 = z16 ? d0Var.F() : C.TIME_UNSET;
                if (!z16) {
                    int iD3 = d0Var.D();
                    ArrayList arrayList3 = new ArrayList(iD3);
                    for (int i13 = 0; i13 < iD3; i13++) {
                        arrayList3.add(new b(d0Var.D(), d0Var.F(), null));
                    }
                    arrayList2 = arrayList3;
                }
                if (z17) {
                    long jD = d0Var.D();
                    boolean z18 = (128 & jD) != 0;
                    jF = ((((jD & 1) << 32) | d0Var.F()) * 1000) / 90;
                    z13 = z18;
                } else {
                    z13 = false;
                    jF = C.TIME_UNSET;
                }
                int iJ = d0Var.J();
                int iD4 = d0Var.D();
                z12 = z16;
                iD = d0Var.D();
                j12 = jF;
                arrayList = arrayList2;
                long j13 = jF3;
                i11 = iJ;
                i12 = iD4;
                j11 = j13;
                boolean z19 = z15;
                z11 = z13;
                z10 = z19;
            }
            return new c(jF2, z14, z10, z12, arrayList, j11, z11, j12, i11, i12, iD);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(Parcel parcel) {
            parcel.writeLong(this.f25446a);
            parcel.writeByte(this.f25447b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f25448c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f25449d ? (byte) 1 : (byte) 0);
            int size = this.f25451f.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                ((b) this.f25451f.get(i11)).d(parcel);
            }
            parcel.writeLong(this.f25450e);
            parcel.writeByte(this.f25452g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f25453h);
            parcel.writeInt(this.f25454i);
            parcel.writeInt(this.f25455j);
            parcel.writeInt(this.f25456k);
        }
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int i11 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add(c.d(parcel));
        }
        this.events = Collections.unmodifiableList(arrayList);
    }

    /* synthetic */ SpliceScheduleCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    private SpliceScheduleCommand(List<c> list) {
        this.events = Collections.unmodifiableList(list);
    }

    static SpliceScheduleCommand parseFromSection(d0 d0Var) {
        int iD = d0Var.D();
        ArrayList arrayList = new ArrayList(iD);
        for (int i11 = 0; i11 < iD; i11++) {
            arrayList.add(c.e(d0Var));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        int size = this.events.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            this.events.get(i12).f(parcel);
        }
    }
}
