package com.mbridge.msdk.mbnative.controller;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.o0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<ViewTreeObserver> f36332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<View> f36333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewTreeObserver.OnPreDrawListener f36334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f36335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f36336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f36337f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f36338g;

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            c.this.b();
            return true;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.d();
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.mbnative.controller.c$c, reason: collision with other inner class name */
    class RunnableC0508c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f36341a;

        RunnableC0508c(View view) {
            this.f36341a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewTreeObserver viewTreeObserver = this.f36341a.getViewTreeObserver();
            if (viewTreeObserver == null || viewTreeObserver.isAlive()) {
                c.this.f36332a = new WeakReference(viewTreeObserver);
                if (c.this.f36334c != null) {
                    viewTreeObserver.addOnPreDrawListener(c.this.f36334c);
                }
            }
        }
    }

    public interface d {
        void a(ArrayList<View> arrayList, ArrayList<View> arrayList2);
    }

    public c(List<View> list, d dVar, Handler handler, int i11) {
        ArrayList arrayList = new ArrayList();
        this.f36333b = arrayList;
        this.f36334c = null;
        this.f36335d = dVar;
        this.f36336e = handler;
        this.f36338g = i11;
        if (list != null) {
            this.f36333b = list;
        } else {
            arrayList.clear();
        }
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.f36337f) {
            return;
        }
        Handler handler = this.f36336e;
        if (handler != null) {
            if (this.f36338g == 1) {
                d();
            } else {
                handler.postDelayed(new b(), 100L);
            }
        }
        this.f36337f = true;
    }

    private boolean b(View view) {
        return !b1.a(view, this.f36338g);
    }

    private void c() {
        try {
            b();
        } catch (Throwable th2) {
            o0.b("ImpressionTracker", th2.getMessage(), th2);
        }
        try {
            this.f36334c = new a();
        } catch (Throwable th3) {
            o0.b("ImpressionTracker", th3.getMessage(), th3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            this.f36337f = false;
            List<View> list = this.f36333b;
            if (list == null || list.size() <= 0) {
                return;
            }
            ArrayList<View> arrayList = new ArrayList<>();
            ArrayList<View> arrayList2 = new ArrayList<>();
            for (int i11 = 0; i11 < this.f36333b.size(); i11++) {
                View view = this.f36333b.get(i11);
                if (b(view)) {
                    arrayList.add(view);
                } else {
                    arrayList2.add(view);
                }
            }
            d dVar = this.f36335d;
            if (dVar != null) {
                dVar.a(arrayList, arrayList2);
            }
            if (arrayList.size() > 0) {
                a();
            }
            arrayList.clear();
            arrayList2.clear();
        } catch (Exception unused) {
        }
    }

    public void a() {
        try {
            this.f36337f = false;
            WeakReference<ViewTreeObserver> weakReference = this.f36332a;
            if (weakReference != null && weakReference.get() != null) {
                ViewTreeObserver viewTreeObserver = this.f36332a.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnPreDrawListener(this.f36334c);
                }
                this.f36332a.clear();
            }
            this.f36335d = null;
            this.f36334c = null;
            List<View> list = this.f36333b;
            if (list != null) {
                list.clear();
            }
            this.f36333b = null;
        } catch (Throwable unused) {
        }
    }

    public void a(View view) {
        View viewA;
        View view2;
        if (view != null) {
            viewA = f.a(view.getContext(), view);
            this.f36333b.add(view);
        } else {
            List<View> list = this.f36333b;
            viewA = null;
            if (list != null && list.size() > 0) {
                for (int i11 = 0; i11 < this.f36333b.size() && ((view2 = this.f36333b.get(i11)) == null || (viewA = f.a(view2.getContext(), view2)) == null); i11++) {
                }
            }
        }
        if (viewA == null) {
            return;
        }
        viewA.post(new RunnableC0508c(viewA));
    }
}
