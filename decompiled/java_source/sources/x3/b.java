package x3;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f78042c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map f78043d = new LinkedHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ReentrantLock f78044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f78045b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final c c(String str) {
            return new c(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ReentrantLock d(String str) {
            ReentrantLock reentrantLock;
            synchronized (this) {
                try {
                    Map map = b.f78043d;
                    Object reentrantLock2 = map.get(str);
                    if (reentrantLock2 == null) {
                        reentrantLock2 = new ReentrantLock();
                        map.put(str, reentrantLock2);
                    }
                    reentrantLock = (ReentrantLock) reentrantLock2;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return reentrantLock;
        }
    }

    public b(String filename, boolean z10) {
        Intrinsics.h(filename, "filename");
        a aVar = f78042c;
        this.f78044a = aVar.d(filename);
        this.f78045b = z10 ? aVar.c(filename) : null;
    }

    public final Object b(Function0 onLocked, Function1 onLockError) {
        Intrinsics.h(onLocked, "onLocked");
        Intrinsics.h(onLockError, "onLockError");
        this.f78044a.lock();
        boolean z10 = false;
        try {
            c cVar = this.f78045b;
            if (cVar != null) {
                cVar.a();
            }
            z10 = true;
            try {
                Object objInvoke = onLocked.invoke();
                c cVar2 = this.f78045b;
                if (cVar2 != null) {
                    cVar2.b();
                }
                this.f78044a.unlock();
                return objInvoke;
            } catch (Throwable th2) {
                c cVar3 = this.f78045b;
                if (cVar3 != null) {
                    cVar3.b();
                }
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                if (z10) {
                    throw th3;
                }
                onLockError.invoke(th3);
                throw new KotlinNothingValueException();
            } catch (Throwable th4) {
                this.f78044a.unlock();
                throw th4;
            }
        }
    }
}
