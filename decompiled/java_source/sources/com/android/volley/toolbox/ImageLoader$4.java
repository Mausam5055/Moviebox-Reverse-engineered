package com.android.volley.toolbox;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
class ImageLoader$4 implements Runnable {
    final /* synthetic */ h this$0;

    ImageLoader$4(h hVar) {
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = h.a(null).values().iterator();
        while (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            Iterator it2 = h.a.a(null).iterator();
            while (it2.hasNext()) {
                android.support.v4.media.session.c.a(it2.next());
                if (h.b.a(null) != null) {
                    throw null;
                }
            }
        }
        h.a(null).clear();
        h.b(null, null);
    }
}
