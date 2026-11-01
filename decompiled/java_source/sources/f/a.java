package f;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: f.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes2.dex */
    public static final class C0753a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f62109a;

        public C0753a(Object obj) {
            this.f62109a = obj;
        }

        public final Object a() {
            return this.f62109a;
        }
    }

    public abstract Intent a(Context context, Object obj);

    public C0753a b(Context context, Object obj) {
        Intrinsics.h(context, "context");
        return null;
    }

    public abstract Object c(int i11, Intent intent);
}
