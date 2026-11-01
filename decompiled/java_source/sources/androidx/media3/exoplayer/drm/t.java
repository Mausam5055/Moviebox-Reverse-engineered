package androidx.media3.exoplayer.drm;

import android.os.Looper;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public interface t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t f11612a = new a();

    class a implements t {
        a() {
        }

        @Override // androidx.media3.exoplayer.drm.t
        public DrmSession a(r.a aVar, androidx.media3.common.r rVar) {
            if (rVar.f10165s == null) {
                return null;
            }
            return new z(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
        }

        @Override // androidx.media3.exoplayer.drm.t
        public int b(androidx.media3.common.r rVar) {
            return rVar.f10165s != null ? 1 : 0;
        }

        @Override // androidx.media3.exoplayer.drm.t
        public void c(Looper looper, f4 f4Var) {
        }

        @Override // androidx.media3.exoplayer.drm.t
        public /* synthetic */ b d(r.a aVar, androidx.media3.common.r rVar) {
            return s.a(this, aVar, rVar);
        }

        @Override // androidx.media3.exoplayer.drm.t
        public /* synthetic */ void prepare() {
            s.b(this);
        }

        @Override // androidx.media3.exoplayer.drm.t
        public /* synthetic */ void release() {
            s.c(this);
        }
    }

    public interface b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f11613a = new b() { // from class: androidx.media3.exoplayer.drm.u
            @Override // androidx.media3.exoplayer.drm.t.b
            public final void release() {
                v.a();
            }
        };

        void release();
    }

    DrmSession a(r.a aVar, androidx.media3.common.r rVar);

    int b(androidx.media3.common.r rVar);

    void c(Looper looper, f4 f4Var);

    b d(r.a aVar, androidx.media3.common.r rVar);

    void prepare();

    void release();
}
