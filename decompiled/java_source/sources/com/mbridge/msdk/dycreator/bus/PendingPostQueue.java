package com.mbridge.msdk.dycreator.bus;

/* JADX INFO: loaded from: classes5.dex */
final class PendingPostQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PendingPost f34807a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PendingPost f34808b;

    PendingPostQueue() {
    }

    synchronized PendingPost a() {
        PendingPost pendingPost;
        pendingPost = this.f34807a;
        if (pendingPost != null) {
            PendingPost pendingPost2 = pendingPost.f34806c;
            this.f34807a = pendingPost2;
            if (pendingPost2 == null) {
                this.f34808b = null;
            }
        }
        return pendingPost;
    }

    synchronized PendingPost a(int i11) throws InterruptedException {
        try {
            if (this.f34807a == null) {
                wait(i11);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return a();
    }

    synchronized void a(PendingPost pendingPost) {
        try {
            if (pendingPost == null) {
                throw new NullPointerException("null cannot be enqueued");
            }
            PendingPost pendingPost2 = this.f34808b;
            if (pendingPost2 != null) {
                pendingPost2.f34806c = pendingPost;
                this.f34808b = pendingPost;
            } else {
                if (this.f34807a != null) {
                    throw new IllegalStateException("Head present, but no tail");
                }
                this.f34808b = pendingPost;
                this.f34807a = pendingPost;
            }
            notifyAll();
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
