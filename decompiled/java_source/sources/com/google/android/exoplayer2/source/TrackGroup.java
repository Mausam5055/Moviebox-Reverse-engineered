package com.google.android.exoplayer2.source;

import android.os.Bundle;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class TrackGroup implements com.google.android.exoplayer2.k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final com.google.android.exoplayer2.k.a f25672f = new com.google.android.exoplayer2.k.a() { // from class: t9.v
        @Override // com.google.android.exoplayer2.k.a
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return TrackGroup.f(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f25673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f25675c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final o1[] f25676d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f25677e;

    public TrackGroup(String str, o1... o1VarArr) {
        com.google.android.exoplayer2.util.a.a(o1VarArr.length > 0);
        this.f25674b = str;
        this.f25676d = o1VarArr;
        this.f25673a = o1VarArr.length;
        int iL = com.google.android.exoplayer2.util.w.l(o1VarArr[0].f25496l);
        this.f25675c = iL == -1 ? com.google.android.exoplayer2.util.w.l(o1VarArr[0].f25495k) : iL;
        j();
    }

    public TrackGroup(o1... o1VarArr) {
        this("", o1VarArr);
    }

    private static String e(int i11) {
        return Integer.toString(i11, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TrackGroup f(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(e(0));
        return new TrackGroup(bundle.getString(e(1), ""), (o1[]) (parcelableArrayList == null ? ImmutableList.of() : com.google.android.exoplayer2.util.d.b(o1.H, parcelableArrayList)).toArray(new o1[0]));
    }

    private static void g(String str, String str2, String str3, int i11) {
        com.google.android.exoplayer2.util.s.d("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i11 + ")"));
    }

    private static String h(String str) {
        return (str == null || str.equals(C.LANGUAGE_UNDETERMINED)) ? "" : str;
    }

    private static int i(int i11) {
        return i11 | 16384;
    }

    private void j() {
        String strH = h(this.f25676d[0].f25487c);
        int i11 = i(this.f25676d[0].f25489e);
        int i12 = 1;
        while (true) {
            o1[] o1VarArr = this.f25676d;
            if (i12 >= o1VarArr.length) {
                return;
            }
            if (!strH.equals(h(o1VarArr[i12].f25487c))) {
                o1[] o1VarArr2 = this.f25676d;
                g("languages", o1VarArr2[0].f25487c, o1VarArr2[i12].f25487c, i12);
                return;
            } else {
                if (i11 != i(this.f25676d[i12].f25489e)) {
                    g("role flags", Integer.toBinaryString(this.f25676d[0].f25489e), Integer.toBinaryString(this.f25676d[i12].f25489e), i12);
                    return;
                }
                i12++;
            }
        }
    }

    public TrackGroup b(String str) {
        return new TrackGroup(str, this.f25676d);
    }

    public o1 c(int i11) {
        return this.f25676d[i11];
    }

    public int d(o1 o1Var) {
        int i11 = 0;
        while (true) {
            o1[] o1VarArr = this.f25676d;
            if (i11 >= o1VarArr.length) {
                return -1;
            }
            if (o1Var == o1VarArr[i11]) {
                return i11;
            }
            i11++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackGroup.class != obj.getClass()) {
            return false;
        }
        TrackGroup trackGroup = (TrackGroup) obj;
        return this.f25674b.equals(trackGroup.f25674b) && Arrays.equals(this.f25676d, trackGroup.f25676d);
    }

    public int hashCode() {
        if (this.f25677e == 0) {
            this.f25677e = ((527 + this.f25674b.hashCode()) * 31) + Arrays.hashCode(this.f25676d);
        }
        return this.f25677e;
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(e(0), com.google.android.exoplayer2.util.d.d(Lists.l(this.f25676d)));
        bundle.putString(e(1), this.f25674b);
        return bundle;
    }
}
