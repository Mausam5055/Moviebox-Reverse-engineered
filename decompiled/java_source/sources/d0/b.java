package d0;

import android.view.KeyEvent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KeyEvent f61121a;

    private /* synthetic */ b(KeyEvent keyEvent) {
        this.f61121a = keyEvent;
    }

    public static final /* synthetic */ b a(KeyEvent keyEvent) {
        return new b(keyEvent);
    }

    public static KeyEvent b(KeyEvent keyEvent) {
        return keyEvent;
    }

    public static boolean c(KeyEvent keyEvent, Object obj) {
        return (obj instanceof b) && Intrinsics.c(keyEvent, ((b) obj).f());
    }

    public static int d(KeyEvent keyEvent) {
        return keyEvent.hashCode();
    }

    public static String e(KeyEvent keyEvent) {
        return "KeyEvent(nativeKeyEvent=" + keyEvent + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f61121a, obj);
    }

    public final /* synthetic */ KeyEvent f() {
        return this.f61121a;
    }

    public int hashCode() {
        return d(this.f61121a);
    }

    public String toString() {
        return e(this.f61121a);
    }
}
