package rz;

import io.reactivex.rxjava3.core.f;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import u10.d;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a implements f, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AtomicReference f74766a = new AtomicReference();

    protected void a() {
        ((d) this.f74766a.get()).request(Long.MAX_VALUE);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public final void dispose() {
        SubscriptionHelper.cancel(this.f74766a);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public final boolean isDisposed() {
        return this.f74766a.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // u10.c
    public final void onSubscribe(d dVar) {
        if (io.reactivex.rxjava3.internal.util.c.d(this.f74766a, dVar, getClass())) {
            a();
        }
    }
}
