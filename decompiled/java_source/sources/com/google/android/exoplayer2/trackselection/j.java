package com.google.android.exoplayer2.trackselection;

import android.os.SystemClock;
import com.google.android.exoplayer2.p3;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.upstream.z;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;
import la.m;
import t9.x;

/* JADX INFO: loaded from: classes3.dex */
public abstract class j {
    public static p3 a(i.a aVar, List[] listArr) {
        boolean z10;
        ImmutableList.a aVar2 = new ImmutableList.a();
        for (int i11 = 0; i11 < aVar.d(); i11++) {
            x xVarF = aVar.f(i11);
            List list = listArr[i11];
            for (int i12 = 0; i12 < xVarF.f76165a; i12++) {
                TrackGroup trackGroupB = xVarF.b(i12);
                boolean z11 = aVar.a(i11, i12, false) != 0;
                int i13 = trackGroupB.f25673a;
                int[] iArr = new int[i13];
                boolean[] zArr = new boolean[i13];
                for (int i14 = 0; i14 < trackGroupB.f25673a; i14++) {
                    iArr[i14] = aVar.g(i11, i12, i14);
                    int i15 = 0;
                    while (true) {
                        if (i15 >= list.size()) {
                            z10 = false;
                            break;
                        }
                        m mVar = (m) list.get(i15);
                        if (mVar.getTrackGroup().equals(trackGroupB) && mVar.indexOf(i14) != -1) {
                            z10 = true;
                            break;
                        }
                        i15++;
                    }
                    zArr[i14] = z10;
                }
                aVar2.a(new p3.a(trackGroupB, z11, iArr, zArr));
            }
        }
        x xVarH = aVar.h();
        for (int i16 = 0; i16 < xVarH.f76165a; i16++) {
            TrackGroup trackGroupB2 = xVarH.b(i16);
            int[] iArr2 = new int[trackGroupB2.f25673a];
            Arrays.fill(iArr2, 0);
            aVar2.a(new p3.a(trackGroupB2, false, iArr2, new boolean[trackGroupB2.f25673a]));
        }
        return new p3(aVar2.e());
    }

    public static p3 b(i.a aVar, m[] mVarArr) {
        List[] listArr = new List[mVarArr.length];
        for (int i11 = 0; i11 < mVarArr.length; i11++) {
            m mVar = mVarArr[i11];
            listArr[i11] = mVar != null ? ImmutableList.of(mVar) : ImmutableList.of();
        }
        return a(aVar, listArr);
    }

    public static z.a c(h hVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = hVar.length();
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            if (hVar.e(i12, jElapsedRealtime)) {
                i11++;
            }
        }
        return new z.a(1, 0, length, i11);
    }
}
