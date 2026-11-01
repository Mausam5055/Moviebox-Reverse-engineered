package t9;

import android.os.Bundle;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class x implements com.google.android.exoplayer2.k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final x f76163d = new x(new TrackGroup[0]);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final com.google.android.exoplayer2.k.a f76164e = new com.google.android.exoplayer2.k.a() { // from class: t9.w
        @Override // com.google.android.exoplayer2.k.a
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return x.e(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f76165a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ImmutableList f76166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f76167c;

    public x(TrackGroup... trackGroupArr) {
        this.f76166b = ImmutableList.copyOf(trackGroupArr);
        this.f76165a = trackGroupArr.length;
        f();
    }

    private static String d(int i11) {
        return Integer.toString(i11, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ x e(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        return parcelableArrayList == null ? new x(new TrackGroup[0]) : new x((TrackGroup[]) com.google.android.exoplayer2.util.d.b(TrackGroup.f25672f, parcelableArrayList).toArray(new TrackGroup[0]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f() {
        int i11 = 0;
        while (i11 < this.f76166b.size()) {
            int i12 = i11 + 1;
            for (int i13 = i12; i13 < this.f76166b.size(); i13++) {
                if (((TrackGroup) this.f76166b.get(i11)).equals(this.f76166b.get(i13))) {
                    com.google.android.exoplayer2.util.s.d("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i11 = i12;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TrackGroup b(int i11) {
        return (TrackGroup) this.f76166b.get(i11);
    }

    public int c(TrackGroup trackGroup) {
        int iIndexOf = this.f76166b.indexOf(trackGroup);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || x.class != obj.getClass()) {
            return false;
        }
        x xVar = (x) obj;
        return this.f76165a == xVar.f76165a && this.f76166b.equals(xVar.f76166b);
    }

    public int hashCode() {
        if (this.f76167c == 0) {
            this.f76167c = this.f76166b.hashCode();
        }
        return this.f76167c;
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(d(0), com.google.android.exoplayer2.util.d.d(this.f76166b));
        return bundle;
    }
}
