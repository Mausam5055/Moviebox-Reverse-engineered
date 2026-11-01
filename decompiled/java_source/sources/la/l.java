package la;

import com.google.android.exoplayer2.source.TrackGroup;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class l extends b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f68793h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Object f68794i;

    public l(TrackGroup trackGroup, int i11, int i12) {
        this(trackGroup, i11, i12, 0, null);
    }

    public l(TrackGroup trackGroup, int i11, int i12, int i13, Object obj) {
        super(trackGroup, new int[]{i11}, i12);
        this.f68793h = i13;
        this.f68794i = obj;
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public void d(long j11, long j12, long j13, List list, v9.o[] oVarArr) {
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public int getSelectedIndex() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public Object getSelectionData() {
        return this.f68794i;
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public int getSelectionReason() {
        return this.f68793h;
    }
}
