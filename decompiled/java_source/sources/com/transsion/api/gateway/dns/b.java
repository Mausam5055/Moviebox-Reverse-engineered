package com.transsion.api.gateway.dns;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f42518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CopyOnWriteArrayList f42519b = new CopyOnWriteArrayList();

    public b(b bVar) {
        this.f42518a = bVar.f42518a;
        Iterator it = bVar.f42519b.iterator();
        while (it.hasNext()) {
            this.f42519b.add(new d((d) it.next()));
        }
    }

    public b(String str) {
        this.f42518a = str;
    }

    public void a(String str, int i11) {
        d dVar;
        synchronized (b.class) {
            try {
                Iterator it = this.f42519b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        dVar = null;
                        break;
                    } else {
                        dVar = (d) it.next();
                        if (dVar.f42522b.equals(str)) {
                            break;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (b.class) {
            if (dVar == null) {
                try {
                    this.f42519b.add(new d(str, i11));
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }
}
