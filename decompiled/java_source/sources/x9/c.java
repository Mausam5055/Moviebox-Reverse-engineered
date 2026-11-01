package x9;

import android.net.Uri;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c implements com.google.android.exoplayer2.offline.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f78061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f78062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f78063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f78064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f78065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f78066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f78067g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f78068h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final o f78069i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final l f78070j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Uri f78071k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final h f78072l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final List f78073m;

    public c(long j11, long j12, long j13, boolean z10, long j14, long j15, long j16, long j17, h hVar, o oVar, l lVar, Uri uri, List list) {
        this.f78061a = j11;
        this.f78062b = j12;
        this.f78063c = j13;
        this.f78064d = z10;
        this.f78065e = j14;
        this.f78066f = j15;
        this.f78067g = j16;
        this.f78068h = j17;
        this.f78072l = hVar;
        this.f78069i = oVar;
        this.f78071k = uri;
        this.f78070j = lVar;
        this.f78073m = list == null ? Collections.emptyList() : list;
    }

    private static ArrayList b(List list, LinkedList linkedList) {
        StreamKey streamKey = (StreamKey) linkedList.poll();
        int i11 = streamKey.periodIndex;
        ArrayList arrayList = new ArrayList();
        do {
            int i12 = streamKey.groupIndex;
            a aVar = (a) list.get(i12);
            List list2 = aVar.f78053c;
            ArrayList arrayList2 = new ArrayList();
            do {
                arrayList2.add((j) list2.get(streamKey.streamIndex));
                streamKey = (StreamKey) linkedList.poll();
                if (streamKey.periodIndex != i11) {
                    break;
                }
            } while (streamKey.groupIndex == i12);
            arrayList.add(new a(aVar.f78051a, aVar.f78052b, arrayList2, aVar.f78054d, aVar.f78055e, aVar.f78056f));
        } while (streamKey.periodIndex == i11);
        linkedList.addFirst(streamKey);
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.offline.c
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
                arrayList.add(new g(gVarC.f78096a, gVarC.f78097b - j12, b(gVarC.f78098c, linkedList), gVarC.f78099d));
            }
            i11++;
        }
        long j13 = this.f78062b;
        if (j13 != C.TIME_UNSET) {
            j11 = j13 - j12;
        }
        return new c(this.f78061a, j11, this.f78063c, this.f78064d, this.f78065e, this.f78066f, this.f78067g, this.f78068h, this.f78072l, this.f78069i, this.f78070j, this.f78071k, arrayList);
    }

    public final g c(int i11) {
        return (g) this.f78073m.get(i11);
    }

    public final int d() {
        return this.f78073m.size();
    }

    public final long e(int i11) {
        long j11;
        long j12;
        if (i11 == this.f78073m.size() - 1) {
            j11 = this.f78062b;
            if (j11 == C.TIME_UNSET) {
                return C.TIME_UNSET;
            }
            j12 = ((g) this.f78073m.get(i11)).f78097b;
        } else {
            j11 = ((g) this.f78073m.get(i11 + 1)).f78097b;
            j12 = ((g) this.f78073m.get(i11)).f78097b;
        }
        return j11 - j12;
    }

    public final long f(int i11) {
        return p0.B0(e(i11));
    }
}
