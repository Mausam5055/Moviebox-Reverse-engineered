package m6;

import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.j;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BaseQuickAdapter f69324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f69325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j f69326c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Executor f69327d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f69328e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f69329f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f69330g;

    private static final class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f69331a = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable command) {
            Intrinsics.h(command, "command");
            this.f69331a.post(command);
        }
    }

    public static final class b extends DiffUtil.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f69332a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69333b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ c f69334c;

        b(List list, List list2, c cVar) {
            this.f69332a = list;
            this.f69333b = list2;
            this.f69334c = cVar;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.a
        public boolean a(int i11, int i12) {
            Object obj = this.f69332a.get(i11);
            Object obj2 = this.f69333b.get(i12);
            if (obj != null && obj2 != null) {
                return this.f69334c.f69325b.b().areContentsTheSame(obj, obj2);
            }
            if (obj == null && obj2 == null) {
                return true;
            }
            throw new AssertionError();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.a
        public boolean b(int i11, int i12) {
            Object obj = this.f69332a.get(i11);
            Object obj2 = this.f69333b.get(i12);
            if (obj == null || obj2 == null) {
                return obj == null && obj2 == null;
            }
            return this.f69334c.f69325b.b().areItemsTheSame(obj, obj2);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.a
        public Object c(int i11, int i12) {
            Object obj = this.f69332a.get(i11);
            Object obj2 = this.f69333b.get(i12);
            if (obj == null || obj2 == null) {
                throw new AssertionError();
            }
            return this.f69334c.f69325b.b().getChangePayload(obj, obj2);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.a
        public int d() {
            return this.f69333b.size();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.a
        public int e() {
            return this.f69332a.size();
        }
    }

    public c(BaseQuickAdapter adapter, d config) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(config, "config");
        this.f69324a = adapter;
        this.f69325b = config;
        this.f69326c = new e(adapter);
        Executor aVar = new a();
        this.f69328e = aVar;
        Executor executorC = config.c();
        this.f69327d = executorC != null ? executorC : aVar;
        this.f69329f = new CopyOnWriteArrayList();
    }

    private final void d(List list, DiffUtil.d dVar, Runnable runnable) {
        List<Object> data = this.f69324a.getData();
        this.f69324a.Q0(list);
        dVar.b(this.f69326c);
        e(data, runnable);
    }

    private final void e(List list, Runnable runnable) {
        Iterator it = this.f69329f.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            this.f69324a.getData();
            throw null;
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(final c this$0, List oldList, final List list, final int i11, final Runnable runnable) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(oldList, "$oldList");
        final DiffUtil.d dVarB = DiffUtil.b(new b(oldList, list, this$0));
        Intrinsics.g(dVarB, "@JvmOverloads\n    fun su…        }\n        }\n    }");
        this$0.f69327d.execute(new Runnable() { // from class: m6.b
            @Override // java.lang.Runnable
            public final void run() {
                c.h(this.f69319a, i11, list, dVarB, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(c this$0, int i11, List list, DiffUtil.d result, Runnable runnable) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(result, "$result");
        if (this$0.f69330g == i11) {
            this$0.d(list, result, runnable);
        }
    }

    public final void f(final List list, final Runnable runnable) {
        final int i11 = this.f69330g + 1;
        this.f69330g = i11;
        if (list == this.f69324a.getData()) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        final List<Object> data = this.f69324a.getData();
        if (list == null) {
            int size = this.f69324a.getData().size();
            this.f69324a.Q0(new ArrayList());
            this.f69326c.onRemoved(0, size);
            e(data, runnable);
            return;
        }
        if (!this.f69324a.getData().isEmpty()) {
            this.f69325b.a().execute(new Runnable() { // from class: m6.a
                @Override // java.lang.Runnable
                public final void run() {
                    c.g(this.f69314a, data, list, i11, runnable);
                }
            });
            return;
        }
        this.f69324a.Q0(list);
        this.f69326c.onInserted(0, list.size());
        e(data, runnable);
    }
}
