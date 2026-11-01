package androidx.datastore.core;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class v implements CoroutineContext.Element {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f8627c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f8628d = "Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details.";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v f8629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DataStoreImpl f8630b;

    public static final class a {

        /* JADX INFO: renamed from: androidx.datastore.core.v$a$a, reason: collision with other inner class name */
        public static final class C0073a implements CoroutineContext.Key {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final C0073a f8631a = new C0073a();

            private C0073a() {
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public v(v vVar, DataStoreImpl instance) {
        Intrinsics.h(instance, "instance");
        this.f8629a = vVar;
        this.f8630b = instance;
    }

    public final void a(f candidate) {
        Intrinsics.h(candidate, "candidate");
        if (this.f8630b == candidate) {
            throw new IllegalStateException(f8628d.toString());
        }
        v vVar = this.f8629a;
        if (vVar != null) {
            vVar.a(candidate);
        }
    }

    @Override // kotlin.coroutines.CoroutineContext
    public Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public CoroutineContext.Key getKey() {
        return a.C0073a.f8631a;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.d(this, coroutineContext);
    }
}
