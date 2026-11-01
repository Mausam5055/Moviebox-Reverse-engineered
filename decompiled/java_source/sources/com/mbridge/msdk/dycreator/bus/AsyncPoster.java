package com.mbridge.msdk.dycreator.bus;

/* JADX INFO: loaded from: classes5.dex */
class AsyncPoster implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PendingPostQueue f34774a = new PendingPostQueue();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final EventBus f34775b;

    AsyncPoster(EventBus eventBus) {
        this.f34775b = eventBus;
    }

    public void enqueue(Subscription subscription, Object obj) {
        this.f34774a.a(PendingPost.a(subscription, obj));
        EventBus.f34779n.execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        PendingPost pendingPostA = this.f34774a.a();
        if (pendingPostA == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.f34775b.a(pendingPostA);
    }
}
