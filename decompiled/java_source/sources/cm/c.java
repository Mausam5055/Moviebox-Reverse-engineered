package cm;

import android.util.Log;
import xl.k;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final InterfaceC0168c f17284a = new e();

    public interface a {
        Object create();
    }

    public interface b {
        k getVerifier();
    }

    /* JADX INFO: renamed from: cm.c$c, reason: collision with other inner class name */
    public interface InterfaceC0168c {
        void reset(Object obj);
    }

    private static final class d implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a f17285a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final InterfaceC0168c f17286b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final f f17287c;

        d(f fVar, a aVar, InterfaceC0168c interfaceC0168c) {
            this.f17287c = fVar;
            this.f17285a = aVar;
            this.f17286b = interfaceC0168c;
        }

        @Override // cm.f
        public Object acquire() {
            Object objAcquire = this.f17287c.acquire();
            if (objAcquire == null) {
                objAcquire = this.f17285a.create();
                if (Log.isLoggable("FactoryPools", 2)) {
                    Log.v("FactoryPools", "Created new " + objAcquire.getClass());
                }
            }
            if (objAcquire instanceof b) {
                ((b) objAcquire).getVerifier().a(false);
            }
            return objAcquire;
        }

        @Override // cm.f
        public boolean release(Object obj) {
            if (obj instanceof b) {
                ((b) obj).getVerifier().a(true);
            }
            this.f17286b.reset(obj);
            return this.f17287c.release(obj);
        }
    }

    static class e implements InterfaceC0168c {
        e() {
        }

        @Override // cm.c.InterfaceC0168c
        public void reset(Object obj) {
        }
    }

    private static f a(f fVar, a aVar) {
        return b(fVar, aVar, f17284a);
    }

    private static f b(f fVar, a aVar, InterfaceC0168c interfaceC0168c) {
        return new d(fVar, aVar, interfaceC0168c);
    }

    public static f c(int i11, a aVar) {
        return a(new h(i11), aVar);
    }
}
