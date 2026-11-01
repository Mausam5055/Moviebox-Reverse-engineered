package a2;

import android.net.Uri;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.offline.q;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f45a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f46b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f47c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f48d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f49e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f50f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f51g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f52h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final o f53i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final l f54j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Uri f55k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final h f56l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final List f57m;

    public c(long j11, long j12, long j13, boolean z10, long j14, long j15, long j16, long j17, h hVar, o oVar, l lVar, Uri uri, List list) {
        this.f45a = j11;
        this.f46b = j12;
        this.f47c = j13;
        this.f48d = z10;
        this.f49e = j14;
        this.f50f = j15;
        this.f51g = j16;
        this.f52h = j17;
        this.f56l = hVar;
        this.f53i = oVar;
        this.f55k = uri;
        this.f54j = lVar;
        this.f57m = list == null ? Collections.emptyList() : list;
    }

    private static ArrayList b(List list, LinkedList linkedList) {
        StreamKey streamKey = (StreamKey) linkedList.poll();
        int i11 = streamKey.periodIndex;
        ArrayList arrayList = new ArrayList();
        do {
            int i12 = streamKey.groupIndex;
            a aVar = (a) list.get(i12);
            List list2 = aVar.f37c;
            ArrayList arrayList2 = new ArrayList();
            do {
                arrayList2.add((j) list2.get(streamKey.streamIndex));
                streamKey = (StreamKey) linkedList.poll();
                if (streamKey.periodIndex != i11) {
                    break;
                }
            } while (streamKey.groupIndex == i12);
            arrayList.add(new a(aVar.f35a, aVar.f36b, arrayList2, aVar.f38d, aVar.f39e, aVar.f40f));
        } while (streamKey.periodIndex == i11);
        linkedList.addFirst(streamKey);
        return arrayList;
    }

    @Override // androidx.media3.exoplayer.offline.q
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final c copy(List list) {
        long j11;
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new StreamKey(-1, -1, -1));
        ArrayList arrayList = new ArrayList();
        long j12 = 0;
        int i11 = 0;
        while (true) {
            int iD = d();
            j11 = C.TIME_UNSET;
            if (i11 >= iD) {
                break;
            }
            if (((StreamKey) linkedList.peek()).periodIndex != i11) {
                long jE = e(i11);
                if (jE != C.TIME_UNSET) {
                    j12 += jE;
                }
            } else {
                g gVarC = c(i11);
                arrayList.add(new g(gVarC.f81a, gVarC.f82b - j12, b(gVarC.f83c, linkedList), gVarC.f84d));
            }
            i11++;
        }
        long j13 = this.f46b;
        if (j13 != C.TIME_UNSET) {
            j11 = j13 - j12;
        }
        return new c(this.f45a, j11, this.f47c, this.f48d, this.f49e, this.f50f, this.f51g, this.f52h, this.f56l, this.f53i, this.f54j, this.f55k, arrayList);
    }

    public final g c(int i11) {
        return (g) this.f57m.get(i11);
    }

    public final int d() {
        return this.f57m.size();
    }

    public final long e(int i11) {
        long j11;
        long j12;
        if (i11 == this.f57m.size() - 1) {
            j11 = this.f46b;
            if (j11 == C.TIME_UNSET) {
                return C.TIME_UNSET;
            }
            j12 = ((g) this.f57m.get(i11)).f82b;
        } else {
            j11 = ((g) this.f57m.get(i11 + 1)).f82b;
            j12 = ((g) this.f57m.get(i11)).f82b;
        }
        return j11 - j12;
    }

    public final long f(int i11) {
        return a1.R0(e(i11));
    }
}
