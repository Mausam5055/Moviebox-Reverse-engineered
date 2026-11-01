package com.facebook.biddingkit.auction;

import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
class Auction$1 implements Runnable {
    final /* synthetic */ a this$0;
    final /* synthetic */ c val$listener;
    final /* synthetic */ p8.a val$waterfall;

    /* JADX INFO: renamed from: com.facebook.biddingkit.auction.Auction$1$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Auction$1.this.getClass();
            Iterator it = a.b(null).iterator();
            while (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
            }
            Auction$1.this.getClass();
            j8.b bVarA = com.facebook.biddingkit.facebook.bidder.b.a(a.a(null));
            Auction$1.this.getClass();
            String strD = a.d(null);
            Auction$1.this.getClass();
            bVarA.a(strD, null);
        }
    }

    Auction$1(a aVar, p8.a aVar2, c cVar) {
    }

    @Override // java.lang.Runnable
    public void run() {
        System.currentTimeMillis();
        throw null;
    }
}
