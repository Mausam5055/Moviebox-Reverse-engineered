package com.mbridge.msdk.dycreator.bus;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class PendingPost {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<PendingPost> f34803d = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object f34804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Subscription f34805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    PendingPost f34806c;

    private PendingPost(Object obj, Subscription subscription) {
        this.f34804a = obj;
        this.f34805b = subscription;
    }

    static PendingPost a(Subscription subscription, Object obj) {
        List<PendingPost> list = f34803d;
        synchronized (list) {
            try {
                int size = list.size();
                if (size <= 0) {
                    return new PendingPost(obj, subscription);
                }
                PendingPost pendingPostRemove = list.remove(size - 1);
                pendingPostRemove.f34804a = obj;
                pendingPostRemove.f34805b = subscription;
                pendingPostRemove.f34806c = null;
                return pendingPostRemove;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static void a(PendingPost pendingPost) {
        pendingPost.f34804a = null;
        pendingPost.f34805b = null;
        pendingPost.f34806c = null;
        List<PendingPost> list = f34803d;
        synchronized (list) {
            try {
                if (list.size() < 10000) {
                    list.add(pendingPost);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
