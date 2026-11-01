package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Booleans;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class p3 implements k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final p3 f25599b = new p3(ImmutableList.of());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k.a f25600c = new k.a() { // from class: com.google.android.exoplayer2.n3
        @Override // com.google.android.exoplayer2.k.a
        public final k a(Bundle bundle) {
            return p3.e(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImmutableList f25601a;

    public static final class a implements k {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final k.a f25602f = new k.a() { // from class: com.google.android.exoplayer2.o3
            @Override // com.google.android.exoplayer2.k.a
            public final k a(Bundle bundle) {
                return p3.a.g(bundle);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f25603a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TrackGroup f25604b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f25605c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int[] f25606d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean[] f25607e;

        public a(TrackGroup trackGroup, boolean z10, int[] iArr, boolean[] zArr) {
            int i11 = trackGroup.f25673a;
            this.f25603a = i11;
            boolean z11 = false;
            com.google.android.exoplayer2.util.a.a(i11 == iArr.length && i11 == zArr.length);
            this.f25604b = trackGroup;
            if (z10 && i11 > 1) {
                z11 = true;
            }
            this.f25605c = z11;
            this.f25606d = (int[]) iArr.clone();
            this.f25607e = (boolean[]) zArr.clone();
        }

        private static String f(int i11) {
            return Integer.toString(i11, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ a g(Bundle bundle) {
            TrackGroup trackGroup = (TrackGroup) TrackGroup.f25672f.a((Bundle) com.google.android.exoplayer2.util.a.e(bundle.getBundle(f(0))));
            return new a(trackGroup, bundle.getBoolean(f(4), false), (int[]) com.google.common.base.h.a(bundle.getIntArray(f(1)), new int[trackGroup.f25673a]), (boolean[]) com.google.common.base.h.a(bundle.getBooleanArray(f(3)), new boolean[trackGroup.f25673a]));
        }

        public o1 b(int i11) {
            return this.f25604b.c(i11);
        }

        public int c() {
            return this.f25604b.f25675c;
        }

        public boolean d() {
            return Booleans.a(this.f25607e, true);
        }

        public boolean e(int i11) {
            return this.f25607e[i11];
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f25605c == aVar.f25605c && this.f25604b.equals(aVar.f25604b) && Arrays.equals(this.f25606d, aVar.f25606d) && Arrays.equals(this.f25607e, aVar.f25607e);
        }

        public int hashCode() {
            return (((((this.f25604b.hashCode() * 31) + (this.f25605c ? 1 : 0)) * 31) + Arrays.hashCode(this.f25606d)) * 31) + Arrays.hashCode(this.f25607e);
        }

        @Override // com.google.android.exoplayer2.k
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putBundle(f(0), this.f25604b.toBundle());
            bundle.putIntArray(f(1), this.f25606d);
            bundle.putBooleanArray(f(3), this.f25607e);
            bundle.putBoolean(f(4), this.f25605c);
            return bundle;
        }
    }

    public p3(List list) {
        this.f25601a = ImmutableList.copyOf((Collection) list);
    }

    private static String d(int i11) {
        return Integer.toString(i11, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ p3 e(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        return new p3(parcelableArrayList == null ? ImmutableList.of() : com.google.android.exoplayer2.util.d.b(a.f25602f, parcelableArrayList));
    }

    public ImmutableList b() {
        return this.f25601a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean c(int i11) {
        for (int i12 = 0; i12 < this.f25601a.size(); i12++) {
            a aVar = (a) this.f25601a.get(i12);
            if (aVar.d() && aVar.c() == i11) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p3.class != obj.getClass()) {
            return false;
        }
        return this.f25601a.equals(((p3) obj).f25601a);
    }

    public int hashCode() {
        return this.f25601a.hashCode();
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(d(0), com.google.android.exoplayer2.util.d.d(this.f25601a));
        return bundle;
    }
}
