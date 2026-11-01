package com.mbridge.msdk.dycreator.bus;

/* JADX INFO: loaded from: classes5.dex */
final class Subscription {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f34815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final SubscriberMethod f34816b;

    Subscription(Object obj, SubscriberMethod subscriberMethod) {
        this.f34815a = obj;
        this.f34816b = subscriberMethod;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Subscription)) {
            return false;
        }
        Subscription subscription = (Subscription) obj;
        return this.f34815a == subscription.f34815a && this.f34816b.equals(subscription.f34816b);
    }

    public int hashCode() {
        return this.f34815a.hashCode() + this.f34816b.f34812d.hashCode();
    }
}
