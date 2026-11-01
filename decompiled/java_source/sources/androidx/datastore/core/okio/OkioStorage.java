package androidx.datastore.core.okio;

import androidx.datastore.core.k;
import androidx.datastore.core.s;
import androidx.datastore.core.t;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.FileSystem;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
public final class OkioStorage implements s {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f8609f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Set f8610g = new LinkedHashSet();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final d f8611h = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FileSystem f8612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f8613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function2 f8614c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function0 f8615d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f8616e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Set a() {
            return OkioStorage.f8610g;
        }

        public final d b() {
            return OkioStorage.f8611h;
        }
    }

    public OkioStorage(FileSystem fileSystem, b serializer, Function2 coordinatorProducer, Function0 producePath) {
        Intrinsics.h(fileSystem, "fileSystem");
        Intrinsics.h(serializer, "serializer");
        Intrinsics.h(coordinatorProducer, "coordinatorProducer");
        Intrinsics.h(producePath, "producePath");
        this.f8612a = fileSystem;
        this.f8613b = serializer;
        this.f8614c = coordinatorProducer;
        this.f8615d = producePath;
        this.f8616e = LazyKt.b(new Function0<Path>() { // from class: androidx.datastore.core.okio.OkioStorage$canonicalPath$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Path invoke() {
                Path path = (Path) this.this$0.f8615d.invoke();
                boolean zIsAbsolute = path.isAbsolute();
                OkioStorage okioStorage = this.this$0;
                if (zIsAbsolute) {
                    return path.normalized();
                }
                throw new IllegalStateException(("OkioStorage requires absolute paths, but did not get an absolute path from producePath = " + okioStorage.f8615d + ", instead got " + path).toString());
            }
        });
    }

    public /* synthetic */ OkioStorage(FileSystem fileSystem, b bVar, Function2 function2, Function0 function0, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(fileSystem, bVar, (i11 & 4) != 0 ? new Function2<Path, FileSystem, k>() { // from class: androidx.datastore.core.okio.OkioStorage.1
            @Override // kotlin.jvm.functions.Function2
            public final k invoke(Path path, FileSystem fileSystem2) {
                Intrinsics.h(path, "path");
                Intrinsics.h(fileSystem2, "<anonymous parameter 1>");
                return c.a(path);
            }
        } : function2, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Path f() {
        return (Path) this.f8616e.getValue();
    }

    @Override // androidx.datastore.core.s
    public t a() {
        String string = f().toString();
        synchronized (f8611h) {
            Set set = f8610g;
            if (set.contains(string)) {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + string + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
            set.add(string);
        }
        return new OkioStorageConnection(this.f8612a, f(), this.f8613b, (k) this.f8614c.invoke(f(), this.f8612a), new Function0<Unit>() { // from class: androidx.datastore.core.okio.OkioStorage$createConnection$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m192invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m192invoke() {
                OkioStorage.a aVar = OkioStorage.f8609f;
                d dVarB = aVar.b();
                OkioStorage okioStorage = this.this$0;
                synchronized (dVarB) {
                    aVar.a().remove(okioStorage.f().toString());
                    Unit unit = Unit.f67061a;
                }
            }
        });
    }
}
