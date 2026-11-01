package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class AsyncListDiffer {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Executor f14079h = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f14080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final c f14081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Executor f14082c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f14084e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f14086g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f14083d = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f14085f = Collections.emptyList();

    public interface a {
        void a(List list, List list2);
    }

    private static class b implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Handler f14088a = new Handler(Looper.getMainLooper());

        b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f14088a.post(runnable);
        }
    }

    public AsyncListDiffer(j jVar, c cVar) {
        this.f14080a = jVar;
        this.f14081b = cVar;
        if (cVar.c() != null) {
            this.f14082c = cVar.c();
        } else {
            this.f14082c = f14079h;
        }
    }

    private void d(List list, Runnable runnable) {
        Iterator it = this.f14083d.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(list, this.f14085f);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void a(a aVar) {
        this.f14083d.add(aVar);
    }

    public List b() {
        return this.f14085f;
    }

    void c(List list, DiffUtil.d dVar, Runnable runnable) {
        List list2 = this.f14085f;
        this.f14084e = list;
        this.f14085f = Collections.unmodifiableList(list);
        dVar.b(this.f14080a);
        d(list2, runnable);
    }

    public void e(List list) {
        f(list, null);
    }

    public void f(final List list, final Runnable runnable) {
        final int i11 = this.f14086g + 1;
        this.f14086g = i11;
        final List list2 = this.f14084e;
        if (list == list2) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        List list3 = this.f14085f;
        if (list == null) {
            int size = list2.size();
            this.f14084e = null;
            this.f14085f = Collections.emptyList();
            this.f14080a.onRemoved(0, size);
            d(list3, runnable);
            return;
        }
        if (list2 != null) {
            this.f14081b.a().execute(new Runnable() { // from class: androidx.recyclerview.widget.AsyncListDiffer.1

                /* JADX INFO: renamed from: androidx.recyclerview.widget.AsyncListDiffer$1$a */
                class a extends DiffUtil.a {
                    a() {
                    }

                    @Override // androidx.recyclerview.widget.DiffUtil.a
                    public boolean a(int i11, int i12) {
                        Object obj = list2.get(i11);
                        Object obj2 = list.get(i12);
                        if (obj != null && obj2 != null) {
                            return AsyncListDiffer.this.f14081b.b().areContentsTheSame(obj, obj2);
                        }
                        if (obj == null && obj2 == null) {
                            return true;
                        }
                        throw new AssertionError();
                    }

                    @Override // androidx.recyclerview.widget.DiffUtil.a
                    public boolean b(int i11, int i12) {
                        Object obj = list2.get(i11);
                        Object obj2 = list.get(i12);
                        if (obj == null || obj2 == null) {
                            return obj == null && obj2 == null;
                        }
                        return AsyncListDiffer.this.f14081b.b().areItemsTheSame(obj, obj2);
                    }

                    @Override // androidx.recyclerview.widget.DiffUtil.a
                    public Object c(int i11, int i12) {
                        Object obj = list2.get(i11);
                        Object obj2 = list.get(i12);
                        if (obj == null || obj2 == null) {
                            throw new AssertionError();
                        }
                        return AsyncListDiffer.this.f14081b.b().getChangePayload(obj, obj2);
                    }

                    @Override // androidx.recyclerview.widget.DiffUtil.a
                    public int d() {
                        return list.size();
                    }

                    @Override // androidx.recyclerview.widget.DiffUtil.a
                    public int e() {
                        return list2.size();
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    final DiffUtil.d dVarB = DiffUtil.b(new a());
                    AsyncListDiffer.this.f14082c.execute(new Runnable() { // from class: androidx.recyclerview.widget.AsyncListDiffer.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            AsyncListDiffer asyncListDiffer = AsyncListDiffer.this;
                            if (asyncListDiffer.f14086g == i11) {
                                asyncListDiffer.c(list, dVarB, runnable);
                            }
                        }
                    });
                }
            });
            return;
        }
        this.f14084e = list;
        this.f14085f = Collections.unmodifiableList(list);
        this.f14080a.onInserted(0, list.size());
        d(list3, runnable);
    }
}
