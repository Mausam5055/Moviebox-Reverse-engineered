package androidx.p009lifecycle;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class Lifecycle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AtomicReference f9529a = new AtomicReference(null);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\u0001\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0007\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Landroidx/lifecycle/Lifecycle$Event;", "", "<init>", "(Ljava/lang/String;I)V", "Landroidx/lifecycle/Lifecycle$State;", "getTargetState", "()Landroidx/lifecycle/Lifecycle$State;", "targetState", "Companion", "a", "ON_CREATE", "ON_START", "ON_RESUME", "ON_PAUSE", "ON_STOP", "ON_DESTROY", "ON_ANY", "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum Event {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;


        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: androidx.lifecycle.Lifecycle$Event$a, reason: from kotlin metadata */
        public static final class Companion {

            /* JADX INFO: renamed from: androidx.lifecycle.Lifecycle$Event$a$a, reason: collision with other inner class name */
            public /* synthetic */ class C0082a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final /* synthetic */ int[] f9530a;

                static {
                    int[] iArr = new int[State.values().length];
                    try {
                        iArr[State.CREATED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[State.STARTED.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[State.RESUMED.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[State.DESTROYED.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[State.INITIALIZED.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    f9530a = iArr;
                }
            }

            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Event a(State state) {
                Intrinsics.h(state, "state");
                int i11 = C0082a.f9530a[state.ordinal()];
                if (i11 == 1) {
                    return Event.ON_DESTROY;
                }
                if (i11 == 2) {
                    return Event.ON_STOP;
                }
                if (i11 != 3) {
                    return null;
                }
                return Event.ON_PAUSE;
            }

            public final Event b(State state) {
                Intrinsics.h(state, "state");
                int i11 = C0082a.f9530a[state.ordinal()];
                if (i11 == 1) {
                    return Event.ON_STOP;
                }
                if (i11 == 2) {
                    return Event.ON_PAUSE;
                }
                if (i11 != 4) {
                    return null;
                }
                return Event.ON_DESTROY;
            }

            public final Event c(State state) {
                Intrinsics.h(state, "state");
                int i11 = C0082a.f9530a[state.ordinal()];
                if (i11 == 1) {
                    return Event.ON_START;
                }
                if (i11 == 2) {
                    return Event.ON_RESUME;
                }
                if (i11 != 5) {
                    return null;
                }
                return Event.ON_CREATE;
            }

            public final Event d(State state) {
                Intrinsics.h(state, "state");
                int i11 = C0082a.f9530a[state.ordinal()];
                if (i11 == 1) {
                    return Event.ON_CREATE;
                }
                if (i11 == 2) {
                    return Event.ON_START;
                }
                if (i11 != 3) {
                    return null;
                }
                return Event.ON_RESUME;
            }
        }

        public /* synthetic */ class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f9531a;

            static {
                int[] iArr = new int[Event.values().length];
                try {
                    iArr[Event.ON_CREATE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Event.ON_STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Event.ON_START.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Event.ON_PAUSE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Event.ON_RESUME.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[Event.ON_DESTROY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[Event.ON_ANY.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                f9531a = iArr;
            }
        }

        @JvmStatic
        public static final Event downFrom(State state) {
            return INSTANCE.a(state);
        }

        @JvmStatic
        public static final Event downTo(State state) {
            return INSTANCE.b(state);
        }

        @JvmStatic
        public static final Event upFrom(State state) {
            return INSTANCE.c(state);
        }

        @JvmStatic
        public static final Event upTo(State state) {
            return INSTANCE.d(state);
        }

        public final State getTargetState() {
            switch (b.f9531a[ordinal()]) {
                case 1:
                case 2:
                    return State.CREATED;
                case 3:
                case 4:
                    return State.STARTED;
                case 5:
                    return State.RESUMED;
                case 6:
                    return State.DESTROYED;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0000j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Landroidx/lifecycle/Lifecycle$State;", "", "(Ljava/lang/String;I)V", "isAtLeast", "", "state", "DESTROYED", "INITIALIZED", "CREATED", "STARTED", "RESUMED", "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum State {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public final boolean isAtLeast(State state) {
            Intrinsics.h(state, "state");
            return compareTo(state) >= 0;
        }
    }

    public abstract void a(t tVar);

    public abstract State b();

    public final AtomicReference c() {
        return this.f9529a;
    }

    public abstract void d(t tVar);
}
