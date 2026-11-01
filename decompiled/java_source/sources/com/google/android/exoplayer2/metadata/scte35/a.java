package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.d;
import com.google.android.exoplayer2.metadata.g;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.l0;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d0 f25457a = new d0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c0 f25458b = new c0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private l0 f25459c;

    @Override // com.google.android.exoplayer2.metadata.g
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        Metadata.Entry spliceNullCommand;
        l0 l0Var = this.f25459c;
        if (l0Var == null || dVar.f25418i != l0Var.e()) {
            l0 l0Var2 = new l0(dVar.f24845e);
            this.f25459c = l0Var2;
            l0Var2.a(dVar.f24845e - dVar.f25418i);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        this.f25457a.N(bArrArray, iLimit);
        this.f25458b.o(bArrArray, iLimit);
        this.f25458b.r(39);
        long jH = (((long) this.f25458b.h(1)) << 32) | ((long) this.f25458b.h(32));
        this.f25458b.r(20);
        int iH = this.f25458b.h(12);
        int iH2 = this.f25458b.h(8);
        this.f25457a.Q(14);
        if (iH2 == 0) {
            spliceNullCommand = new SpliceNullCommand();
        } else if (iH2 == 255) {
            spliceNullCommand = PrivateCommand.parseFromSection(this.f25457a, iH, jH);
        } else if (iH2 == 4) {
            spliceNullCommand = SpliceScheduleCommand.parseFromSection(this.f25457a);
        } else if (iH2 != 5) {
            spliceNullCommand = iH2 != 6 ? null : TimeSignalCommand.parseFromSection(this.f25457a, jH, this.f25459c);
        } else {
            spliceNullCommand = SpliceInsertCommand.parseFromSection(this.f25457a, jH, this.f25459c);
        }
        return spliceNullCommand == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(spliceNullCommand);
    }
}
