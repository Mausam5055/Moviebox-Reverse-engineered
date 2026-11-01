package androidx.work.impl.utils;

import androidx.p009lifecycle.LiveData;

/* JADX INFO: loaded from: classes2.dex */
public abstract class LiveDataUtils {

    /* JADX INFO: renamed from: androidx.work.impl.utils.LiveDataUtils$1, reason: invalid class name */
    class AnonymousClass1 implements androidx.p009lifecycle.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f15930a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ j4.c f15931b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f15932c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ l.a f15933d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ androidx.p009lifecycle.z f15934e;

        AnonymousClass1(j4.c cVar, Object obj, l.a aVar, androidx.p009lifecycle.z zVar) {
            this.f15931b = cVar;
            this.f15932c = obj;
            this.f15933d = aVar;
            this.f15934e = zVar;
        }

        @Override // androidx.p009lifecycle.c0
        public void onChanged(final Object obj) {
            this.f15931b.d(new Runnable() { // from class: androidx.work.impl.utils.LiveDataUtils.1.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (AnonymousClass1.this.f15932c) {
                        try {
                            Object objApply = AnonymousClass1.this.f15933d.apply(obj);
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            Object obj2 = anonymousClass1.f15930a;
                            if (obj2 == null && objApply != null) {
                                anonymousClass1.f15930a = objApply;
                                anonymousClass1.f15934e.n(objApply);
                            } else if (obj2 != null && !obj2.equals(objApply)) {
                                AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                                anonymousClass2.f15930a = objApply;
                                anonymousClass2.f15934e.n(objApply);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            });
        }
    }

    public static LiveData a(LiveData liveData, l.a aVar, j4.c cVar) {
        Object obj = new Object();
        androidx.p009lifecycle.z zVar = new androidx.p009lifecycle.z();
        zVar.r(liveData, new AnonymousClass1(cVar, obj, aVar, zVar));
        return zVar;
    }
}
