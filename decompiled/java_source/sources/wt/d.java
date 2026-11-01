package wt;

import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class d implements wt.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f77952g = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Set f77953b = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f77954c = d.class.getSimpleName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n0 f77955d = o0.a(y0.c());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f77956e = LazyKt.b(new Function0() { // from class: wt.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.b();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b f77957f = new b();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b {
        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final st.c b() {
        tt.a aVarB = ys.a.f79056a.b();
        if (aVarB != null) {
            return aVarB.b();
        }
        return null;
    }

    @Override // wt.b
    public void init() {
    }
}
