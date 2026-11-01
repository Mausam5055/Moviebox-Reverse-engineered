package com.facebook.biddingkit.auction;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
abstract class e extends d {

    static class a implements Callable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f24092a;

        a(n8.b bVar, String str) {
            this.f24092a = str;
        }

        public n8.a a() {
            throw null;
        }

        @Override // java.util.concurrent.Callable
        public /* bridge */ /* synthetic */ Object call() {
            a();
            return null;
        }
    }

    protected static List a(String str, n8.b bVar, b bVar2) {
        o8.a.f70741c.submit(new a(bVar, str));
        new com.facebook.biddingkit.logging.e();
        throw null;
    }
}
