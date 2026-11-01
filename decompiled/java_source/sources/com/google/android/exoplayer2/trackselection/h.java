package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.util.s;
import java.util.List;
import la.m;

/* JADX INFO: loaded from: classes3.dex */
public interface h extends m {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackGroup f26871a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f26872b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f26873c;

        public a(TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0);
        }

        public a(TrackGroup trackGroup, int[] iArr, int i11) {
            if (iArr.length == 0) {
                s.d("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.f26871a = trackGroup;
            this.f26872b = iArr;
            this.f26873c = i11;
        }
    }

    public interface b {
        h[] a(a[] aVarArr, com.google.android.exoplayer2.upstream.e eVar, o.b bVar, k3 k3Var);
    }

    void a();

    void b(boolean z10);

    boolean blacklist(int i11, long j11);

    void c();

    void d(long j11, long j12, long j13, List list, v9.o[] oVarArr);

    void disable();

    boolean e(int i11, long j11);

    void enable();

    int evaluateQueueSize(long j11, List list);

    boolean f(long j11, v9.f fVar, List list);

    o1 getSelectedFormat();

    int getSelectedIndex();

    int getSelectedIndexInTrackGroup();

    Object getSelectionData();

    int getSelectionReason();

    void onPlaybackSpeed(float f11);
}
