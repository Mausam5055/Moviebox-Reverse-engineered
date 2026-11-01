package com.transsion.push.utils;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.transsion.http.impl.BitmapCallback;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public final class m {

    class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ HashMap f50938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AtomicInteger f50939b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ d f50940c;

        a(HashMap map, AtomicInteger atomicInteger, d dVar) {
            this.f50938a = map;
            this.f50939b = atomicInteger;
            this.f50940c = dVar;
        }

        @Override // com.transsion.push.utils.m.c
        public void a(String str, Bitmap bitmap) {
            this.f50938a.put(str, bitmap);
            if (this.f50939b.decrementAndGet() == 0) {
                this.f50940c.a(this.f50938a);
            }
        }
    }

    class b extends BitmapCallback {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f50941e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ c f50942f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f50943g;

        b(String str, c cVar, int i11) {
            this.f50941e = str;
            this.f50942f = cVar;
            this.f50943g = i11;
        }

        @Override // com.transsion.http.impl.BitmapCallback
        public void y(int i11, Bitmap bitmap, Throwable th2) {
            PushLogUtils.LOG.i("image download fail, url:" + this.f50941e);
            c cVar = this.f50942f;
            if (cVar != null) {
                cVar.a(this.f50941e, null);
            }
        }

        @Override // com.transsion.http.impl.BitmapCallback
        public void z(int i11, Bitmap bitmap) {
            PushLogUtils.LOG.g("image download complete, url:" + this.f50941e);
            c cVar = this.f50942f;
            if (cVar != null) {
                if (this.f50943g != 3) {
                    cVar.a(this.f50941e, bitmap);
                    return;
                }
                try {
                    this.f50942f.a(this.f50941e, com.transsion.push.utils.a.a(qk.a.a(), bitmap));
                } catch (Exception unused) {
                    this.f50942f.a(this.f50941e, null);
                }
            }
        }
    }

    interface c {
        void a(String str, Bitmap bitmap);
    }

    interface d {
        void a(HashMap map);
    }

    private static void a(int i11, String str, c cVar) {
        try {
            ((yl.a) ((yl.a) ((yl.a) ((yl.a) wl.a.a(qk.a.a()).f(true).b(qk.a.c())).a(10000)).c(10000)).d(str)).e().a(new b(str, cVar, i11));
        } catch (Exception unused) {
            if (cVar != null) {
                cVar.a(str, null);
            }
        }
    }

    public static void b(int i11, List list, d dVar) {
        HashMap map = new HashMap();
        AtomicInteger atomicInteger = new AtomicInteger(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!TextUtils.isEmpty(str)) {
                a(i11, str, new a(map, atomicInteger, dVar));
            }
        }
    }
}
