package j2;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface z extends c0 {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.common.f0 f65852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f65853b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f65854c;

        public a(androidx.media3.common.f0 f0Var, int... iArr) {
            this(f0Var, iArr, 0);
        }

        public a(androidx.media3.common.f0 f0Var, int[] iArr, int i11) {
            if (iArr.length == 0) {
                androidx.media3.common.util.u.d("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.f65852a = f0Var;
            this.f65853b = iArr;
            this.f65854c = i11;
        }
    }

    public interface b {
        z[] a(a[] aVarArr, androidx.media3.exoplayer.upstream.e eVar, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var);
    }

    void a();

    void b(boolean z10);

    void c();

    boolean d(int i11, long j11);

    void disable();

    void e(long j11, long j12, long j13, List list, h2.n[] nVarArr);

    void enable();

    int evaluateQueueSize(long j11, List list);

    boolean g(int i11, long j11);

    androidx.media3.common.r getSelectedFormat();

    int getSelectedIndex();

    int getSelectedIndexInTrackGroup();

    Object getSelectionData();

    int getSelectionReason();

    boolean h(long j11, h2.e eVar, List list);

    void onPlaybackSpeed(float f11);
}
