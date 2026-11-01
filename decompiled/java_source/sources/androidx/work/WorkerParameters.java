package androidx.work;

import android.net.Network;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes2.dex */
public final class WorkerParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private UUID f15401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f15402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set f15403c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f15404d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f15405e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Executor f15406f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CoroutineContext f15407g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private j4.c f15408h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private m0 f15409i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private c0 f15410j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private j f15411k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f15412l;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List f15413a = Collections.emptyList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List f15414b = Collections.emptyList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Network f15415c;
    }

    public WorkerParameters(UUID uuid, f fVar, Collection collection, a aVar, int i11, int i12, Executor executor, CoroutineContext coroutineContext, j4.c cVar, m0 m0Var, c0 c0Var, j jVar) {
        this.f15401a = uuid;
        this.f15402b = fVar;
        this.f15403c = new HashSet(collection);
        this.f15404d = aVar;
        this.f15405e = i11;
        this.f15412l = i12;
        this.f15406f = executor;
        this.f15407g = coroutineContext;
        this.f15408h = cVar;
        this.f15409i = m0Var;
        this.f15410j = c0Var;
        this.f15411k = jVar;
    }

    public Executor a() {
        return this.f15406f;
    }

    public j b() {
        return this.f15411k;
    }

    public UUID c() {
        return this.f15401a;
    }

    public f d() {
        return this.f15402b;
    }

    public j4.c e() {
        return this.f15408h;
    }

    public CoroutineContext f() {
        return this.f15407g;
    }

    public m0 g() {
        return this.f15409i;
    }
}
