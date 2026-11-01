package androidx.p009lifecycle;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f9589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f9590b;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9591a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f9591a = iArr;
        }
    }

    public g(f defaultLifecycleObserver, r rVar) {
        Intrinsics.h(defaultLifecycleObserver, "defaultLifecycleObserver");
        this.f9589a = defaultLifecycleObserver;
        this.f9590b = rVar;
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        switch (a.f9591a[event.ordinal()]) {
            case 1:
                this.f9589a.onCreate(source);
                break;
            case 2:
                this.f9589a.onStart(source);
                break;
            case 3:
                this.f9589a.onResume(source);
                break;
            case 4:
                this.f9589a.onPause(source);
                break;
            case 5:
                this.f9589a.onStop(source);
                break;
            case 6:
                this.f9589a.onDestroy(source);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        r rVar = this.f9590b;
        if (rVar != null) {
            rVar.onStateChanged(source, event);
        }
    }
}
