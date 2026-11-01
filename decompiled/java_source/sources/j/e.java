package j;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {
    public abstract void a(Runnable runnable);

    public void b(Runnable runnable) {
        if (c()) {
            runnable.run();
        } else {
            d(runnable);
        }
    }

    public abstract boolean c();

    public abstract void d(Runnable runnable);
}
