package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.p009lifecycle.Lifecycle;
import java.lang.reflect.Field;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ImmLeaksCleaner implements androidx.p009lifecycle.r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f841b = new b(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f842c = LazyKt.b(new Function0<a>() { // from class: androidx.activity.ImmLeaksCleaner$Companion$cleaner$2
        @Override // kotlin.jvm.functions.Function0
        public final ImmLeaksCleaner.a invoke() {
            try {
                Field servedViewField = InputMethodManager.class.getDeclaredField("mServedView");
                servedViewField.setAccessible(true);
                Field nextServedViewField = InputMethodManager.class.getDeclaredField("mNextServedView");
                nextServedViewField.setAccessible(true);
                Field hField = InputMethodManager.class.getDeclaredField("mH");
                hField.setAccessible(true);
                Intrinsics.g(hField, "hField");
                Intrinsics.g(servedViewField, "servedViewField");
                Intrinsics.g(nextServedViewField, "nextServedViewField");
                return new ImmLeaksCleaner.d(hField, servedViewField, nextServedViewField);
            } catch (NoSuchFieldException unused) {
                return ImmLeaksCleaner.c.f844a;
            }
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f843a;

    public static abstract class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public abstract boolean a(InputMethodManager inputMethodManager);

        public abstract Object b(InputMethodManager inputMethodManager);

        public abstract View c(InputMethodManager inputMethodManager);
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a() {
            return (a) ImmLeaksCleaner.f842c.getValue();
        }
    }

    public static final class c extends a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f844a = new c();

        private c() {
            super(null);
        }

        @Override // androidx.activity.ImmLeaksCleaner.a
        public boolean a(InputMethodManager inputMethodManager) {
            Intrinsics.h(inputMethodManager, "<this>");
            return false;
        }

        @Override // androidx.activity.ImmLeaksCleaner.a
        public Object b(InputMethodManager inputMethodManager) {
            Intrinsics.h(inputMethodManager, "<this>");
            return null;
        }

        @Override // androidx.activity.ImmLeaksCleaner.a
        public View c(InputMethodManager inputMethodManager) {
            Intrinsics.h(inputMethodManager, "<this>");
            return null;
        }
    }

    public static final class d extends a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Field f845a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Field f846b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Field f847c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Field hField, Field servedViewField, Field nextServedViewField) {
            super(null);
            Intrinsics.h(hField, "hField");
            Intrinsics.h(servedViewField, "servedViewField");
            Intrinsics.h(nextServedViewField, "nextServedViewField");
            this.f845a = hField;
            this.f846b = servedViewField;
            this.f847c = nextServedViewField;
        }

        @Override // androidx.activity.ImmLeaksCleaner.a
        public boolean a(InputMethodManager inputMethodManager) {
            Intrinsics.h(inputMethodManager, "<this>");
            try {
                this.f847c.set(inputMethodManager, null);
                return true;
            } catch (IllegalAccessException unused) {
                return false;
            }
        }

        @Override // androidx.activity.ImmLeaksCleaner.a
        public Object b(InputMethodManager inputMethodManager) {
            Intrinsics.h(inputMethodManager, "<this>");
            try {
                return this.f845a.get(inputMethodManager);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // androidx.activity.ImmLeaksCleaner.a
        public View c(InputMethodManager inputMethodManager) {
            Intrinsics.h(inputMethodManager, "<this>");
            try {
                return (View) this.f846b.get(inputMethodManager);
            } catch (ClassCastException | IllegalAccessException unused) {
                return null;
            }
        }
    }

    public ImmLeaksCleaner(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.f843a = activity;
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (event != Lifecycle.Event.ON_DESTROY) {
            return;
        }
        Object systemService = this.f843a.getSystemService("input_method");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        a aVarA = f841b.a();
        Object objB = aVarA.b(inputMethodManager);
        if (objB == null) {
            return;
        }
        synchronized (objB) {
            View viewC = aVarA.c(inputMethodManager);
            if (viewC == null) {
                return;
            }
            if (viewC.isAttachedToWindow()) {
                return;
            }
            boolean zA = aVarA.a(inputMethodManager);
            if (zA) {
                inputMethodManager.isActive();
            }
        }
    }
}
