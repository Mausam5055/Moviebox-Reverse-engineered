package e1;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.window.SplashScreenView;
import androidx.core.splashscreen.R$attr;
import androidx.core.splashscreen.R$dimen;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0740a f61469b = new C0740a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f61470a;

    /* JADX INFO: renamed from: e1.a$a, reason: collision with other inner class name */
    public static final class C0740a {
        private C0740a() {
        }

        public /* synthetic */ C0740a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(Activity activity) {
            Intrinsics.h(activity, "<this>");
            a aVar = new a(activity, null);
            aVar.b();
            return aVar;
        }
    }

    private static final class b extends c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f61471h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final ViewGroup.OnHierarchyChangeListener f61472i;

        /* JADX INFO: renamed from: e1.a$b$a, reason: collision with other inner class name */
        public static final class ViewGroupOnHierarchyChangeListenerC0741a implements ViewGroup.OnHierarchyChangeListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Activity f61474b;

            ViewGroupOnHierarchyChangeListenerC0741a(Activity activity) {
                this.f61474b = activity;
            }

            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public void onChildViewAdded(View view, View view2) {
                if (f.a(view2)) {
                    b bVar = b.this;
                    bVar.e(bVar.d(g.a(view2)));
                    ((ViewGroup) this.f61474b.getWindow().getDecorView()).setOnHierarchyChangeListener(null);
                }
            }

            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public void onChildViewRemoved(View view, View view2) {
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Activity activity) {
            super(activity);
            Intrinsics.h(activity, "activity");
            this.f61471h = true;
            this.f61472i = new ViewGroupOnHierarchyChangeListenerC0741a(activity);
        }

        @Override // e1.a.c
        public void b() {
            Resources.Theme theme = a().getTheme();
            Intrinsics.g(theme, "activity.theme");
            c(theme, new TypedValue());
            ((ViewGroup) a().getWindow().getDecorView()).setOnHierarchyChangeListener(this.f61472i);
        }

        public final boolean d(SplashScreenView child) {
            Intrinsics.h(child, "child");
            WindowInsets windowInsetsBuild = e1.c.a().build();
            Intrinsics.g(windowInsetsBuild, "Builder().build()");
            Rect rect = new Rect(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
            return (windowInsetsBuild == child.getRootView().computeSystemWindowInsets(windowInsetsBuild, rect) && rect.isEmpty()) ? false : true;
        }

        public final void e(boolean z10) {
            this.f61471h = z10;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Activity f61475a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f61476b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Integer f61477c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Integer f61478d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Drawable f61479e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f61480f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private d f61481g;

        public c(Activity activity) {
            Intrinsics.h(activity, "activity");
            this.f61475a = activity;
            this.f61481g = new d() { // from class: e1.b
            };
        }

        public final Activity a() {
            return this.f61475a;
        }

        public void b() {
            TypedValue typedValue = new TypedValue();
            Resources.Theme currentTheme = this.f61475a.getTheme();
            if (currentTheme.resolveAttribute(R$attr.windowSplashScreenBackground, typedValue, true)) {
                this.f61477c = Integer.valueOf(typedValue.resourceId);
                this.f61478d = Integer.valueOf(typedValue.data);
            }
            if (currentTheme.resolveAttribute(R$attr.windowSplashScreenAnimatedIcon, typedValue, true)) {
                this.f61479e = currentTheme.getDrawable(typedValue.resourceId);
            }
            if (currentTheme.resolveAttribute(R$attr.splashScreenIconSize, typedValue, true)) {
                this.f61480f = typedValue.resourceId == R$dimen.splashscreen_icon_size_with_background;
            }
            Intrinsics.g(currentTheme, "currentTheme");
            c(currentTheme, typedValue);
        }

        protected final void c(Resources.Theme currentTheme, TypedValue typedValue) {
            Intrinsics.h(currentTheme, "currentTheme");
            Intrinsics.h(typedValue, "typedValue");
            if (currentTheme.resolveAttribute(R$attr.postSplashScreenTheme, typedValue, true)) {
                int i11 = typedValue.resourceId;
                this.f61476b = i11;
                if (i11 != 0) {
                    this.f61475a.setTheme(i11);
                }
            }
        }
    }

    public interface d {
    }

    private a(Activity activity) {
        this.f61470a = Build.VERSION.SDK_INT >= 31 ? new b(activity) : new c(activity);
    }

    public /* synthetic */ a(Activity activity, DefaultConstructorMarker defaultConstructorMarker) {
        this(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        this.f61470a.b();
    }
}
