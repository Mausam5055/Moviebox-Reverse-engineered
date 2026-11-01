package l1;

import android.text.Editable;
import androidx.emoji2.text.o;

/* JADX INFO: loaded from: classes2.dex */
final class b extends Editable.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f68453a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Editable.Factory f68454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Class f68455c;

    private b() {
        try {
            f68455c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, b.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    public static Editable.Factory getInstance() {
        if (f68454b == null) {
            synchronized (f68453a) {
                try {
                    if (f68454b == null) {
                        f68454b = new b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f68454b;
    }

    @Override // android.text.Editable.Factory
    public Editable newEditable(CharSequence charSequence) {
        Class cls = f68455c;
        return cls != null ? o.c(cls, charSequence) : super.newEditable(charSequence);
    }
}
