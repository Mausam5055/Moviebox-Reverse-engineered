package com.google.android.exoplayer2.drm;

import android.os.Looper;
import com.google.android.exoplayer2.o1;
import e9.u1;

/* JADX INFO: loaded from: classes3.dex */
public interface u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u f25017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final u f25018b;

    class a implements u {
        a() {
        }

        @Override // com.google.android.exoplayer2.drm.u
        public int a(o1 o1Var) {
            return o1Var.f25499o != null ? 1 : 0;
        }

        @Override // com.google.android.exoplayer2.drm.u
        public void b(Looper looper, u1 u1Var) {
        }

        @Override // com.google.android.exoplayer2.drm.u
        public DrmSession c(s.a aVar, o1 o1Var) {
            if (o1Var.f25499o == null) {
                return null;
            }
            return new a0(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
        }

        @Override // com.google.android.exoplayer2.drm.u
        public /* synthetic */ b d(s.a aVar, o1 o1Var) {
            return t.a(this, aVar, o1Var);
        }

        @Override // com.google.android.exoplayer2.drm.u
        public /* synthetic */ void prepare() {
            t.b(this);
        }

        @Override // com.google.android.exoplayer2.drm.u
        public /* synthetic */ void release() {
            t.c(this);
        }
    }

    public interface b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f25019a = new b() { // from class: com.google.android.exoplayer2.drm.v
            @Override // com.google.android.exoplayer2.drm.u.b
            public final void release() {
                w.a();
            }
        };

        void release();
    }

    static {
        a aVar = new a();
        f25017a = aVar;
        f25018b = aVar;
    }

    int a(o1 o1Var);

    void b(Looper looper, u1 u1Var);

    DrmSession c(s.a aVar, o1 o1Var);

    b d(s.a aVar, o1 o1Var);

    void prepare();

    void release();
}
