package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.disposables.c;
import java.util.concurrent.atomic.AtomicReferenceArray;
import u10.d;

/* JADX INFO: loaded from: classes7.dex */
public final class ArrayCompositeSubscription extends AtomicReferenceArray<d> implements c {
    private static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeSubscription(int i11) {
        super(i11);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        d andSet;
        if (get(0) != SubscriptionHelper.CANCELLED) {
            int length = length();
            for (int i11 = 0; i11 < length; i11++) {
                d dVar = get(i11);
                SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
                if (dVar != subscriptionHelper && (andSet = getAndSet(i11, subscriptionHelper)) != subscriptionHelper && andSet != null) {
                    andSet.cancel();
                }
            }
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return get(0) == SubscriptionHelper.CANCELLED;
    }

    public d replaceResource(int i11, d dVar) {
        d dVar2;
        do {
            dVar2 = get(i11);
            if (dVar2 == SubscriptionHelper.CANCELLED) {
                if (dVar == null) {
                    return null;
                }
                dVar.cancel();
                return null;
            }
        } while (!compareAndSet(i11, dVar2, dVar));
        return dVar2;
    }

    public boolean setResource(int i11, d dVar) {
        d dVar2;
        do {
            dVar2 = get(i11);
            if (dVar2 == SubscriptionHelper.CANCELLED) {
                if (dVar == null) {
                    return false;
                }
                dVar.cancel();
                return false;
            }
        } while (!compareAndSet(i11, dVar2, dVar));
        if (dVar2 == null) {
            return true;
        }
        dVar2.cancel();
        return true;
    }
}
