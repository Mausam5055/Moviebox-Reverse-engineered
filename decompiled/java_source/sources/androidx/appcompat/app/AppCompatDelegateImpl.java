package androidx.appcompat.app;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.NonNull;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$color;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$style;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.j0;
import androidx.appcompat.widget.t0;
import androidx.appcompat.widget.u0;
import androidx.collection.x0;
import androidx.core.app.ActivityCompat;
import androidx.core.view.KeyEventDispatcher;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.WindowInsetsCompat;
import androidx.p009lifecycle.Lifecycle;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl extends androidx.appcompat.app.f implements androidx.appcompat.view.menu.f.a, LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static final x0 f1015j0 = new x0();

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static final boolean f1016k0 = false;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static final int[] f1017l0 = {R.attr.windowBackground};

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private static final boolean f1018m0 = !"robolectric".equals(Build.FINGERPRINT);
    private boolean A;
    ViewGroup B;
    private TextView C;
    private View D;
    private boolean E;
    private boolean F;
    boolean G;
    boolean H;
    boolean I;
    boolean J;
    boolean K;
    private boolean L;
    private PanelFeatureState[] M;
    private PanelFeatureState N;
    private boolean O;
    private boolean P;
    private boolean Q;
    boolean R;
    private Configuration S;
    private int T;
    private int U;
    private int V;
    private boolean W;
    private n X;
    private n Y;
    boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    int f1019a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private final Runnable f1020b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private boolean f1021c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private Rect f1022d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private Rect f1023e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private x f1024f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private y f1025g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private OnBackInvokedDispatcher f1026h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private OnBackInvokedCallback f1027i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final Object f1028j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final Context f1029k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Window f1030l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private l f1031m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final androidx.appcompat.app.d f1032n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    androidx.appcompat.app.a f1033o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    MenuInflater f1034p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private CharSequence f1035q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private androidx.appcompat.widget.s f1036r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private f f1037s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private q f1038t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    androidx.appcompat.view.b f1039u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    ActionBarContextView f1040v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    PopupWindow f1041w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    Runnable f1042x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    ViewPropertyAnimatorCompat f1043y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f1044z;

    protected static final class PanelFeatureState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1046a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1047b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1048c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1049d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1050e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1051f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ViewGroup f1052g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f1053h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        View f1054i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        androidx.appcompat.view.menu.f f1055j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        androidx.appcompat.view.menu.d f1056k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        Context f1057l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        boolean f1058m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f1059n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        boolean f1060o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f1061p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        boolean f1062q = false;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f1063r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Bundle f1064s;

        @SuppressLint({"BanParcelableUsage"})
        private static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f1065a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f1066b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            Bundle f1067c;

            class a implements Parcelable.ClassLoaderCreator {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.a(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public SavedState[] newArray(int i11) {
                    return new SavedState[i11];
                }
            }

            SavedState() {
            }

            static SavedState a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f1065a = parcel.readInt();
                boolean z10 = parcel.readInt() == 1;
                savedState.f1066b = z10;
                if (z10) {
                    savedState.f1067c = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i11) {
                parcel.writeInt(this.f1065a);
                parcel.writeInt(this.f1066b ? 1 : 0);
                if (this.f1066b) {
                    parcel.writeBundle(this.f1067c);
                }
            }
        }

        PanelFeatureState(int i11) {
            this.f1046a = i11;
        }

        androidx.appcompat.view.menu.m a(androidx.appcompat.view.menu.l.a aVar) {
            if (this.f1055j == null) {
                return null;
            }
            if (this.f1056k == null) {
                androidx.appcompat.view.menu.d dVar = new androidx.appcompat.view.menu.d(this.f1057l, R$layout.abc_list_menu_item_layout);
                this.f1056k = dVar;
                dVar.d(aVar);
                this.f1055j.b(this.f1056k);
            }
            return this.f1056k.l(this.f1052g);
        }

        public boolean b() {
            if (this.f1053h == null) {
                return false;
            }
            return this.f1054i != null || this.f1056k.a().getCount() > 0;
        }

        void c(androidx.appcompat.view.menu.f fVar) {
            androidx.appcompat.view.menu.d dVar;
            androidx.appcompat.view.menu.f fVar2 = this.f1055j;
            if (fVar == fVar2) {
                return;
            }
            if (fVar2 != null) {
                fVar2.R(this.f1056k);
            }
            this.f1055j = fVar;
            if (fVar == null || (dVar = this.f1056k) == null) {
                return;
            }
            fVar.b(dVar);
        }

        void d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(R$attr.actionBarPopupTheme, typedValue, true);
            int i11 = typedValue.resourceId;
            if (i11 != 0) {
                themeNewTheme.applyStyle(i11, true);
            }
            themeNewTheme.resolveAttribute(R$attr.panelMenuListTheme, typedValue, true);
            int i12 = typedValue.resourceId;
            if (i12 != 0) {
                themeNewTheme.applyStyle(i12, true);
            } else {
                themeNewTheme.applyStyle(R$style.Theme_AppCompat_CompactMenu, true);
            }
            androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
            dVar.getTheme().setTo(themeNewTheme);
            this.f1057l = dVar;
            TypedArray typedArrayObtainStyledAttributes = dVar.obtainStyledAttributes(R$styleable.AppCompatTheme);
            this.f1047b = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppCompatTheme_panelBackground, 0);
            this.f1051f = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int iH1 = AppCompatDelegateImpl.this.h1(windowInsetsCompat, null);
            if (systemWindowInsetTop != iH1) {
                windowInsetsCompat = windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), iH1, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            }
            return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
        }
    }

    class b implements ContentFrameLayout.a {
        b() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void onDetachedFromWindow() {
            AppCompatDelegateImpl.this.j0();
        }
    }

    class c extends ViewPropertyAnimatorListenerAdapter {
        c() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            AppCompatDelegateImpl.this.f1040v.setAlpha(1.0f);
            AppCompatDelegateImpl.this.f1043y.setListener(null);
            AppCompatDelegateImpl.this.f1043y = null;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            AppCompatDelegateImpl.this.f1040v.setVisibility(0);
            if (AppCompatDelegateImpl.this.f1040v.getParent() instanceof View) {
                ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.f1040v.getParent());
            }
        }
    }

    private class d implements androidx.appcompat.app.b {
        d() {
        }
    }

    interface e {
        boolean a(int i11);

        View onCreatePanelView(int i11);
    }

    private final class f implements androidx.appcompat.view.menu.l.a {
        f() {
        }

        @Override // androidx.appcompat.view.menu.l.a
        public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
            AppCompatDelegateImpl.this.d0(fVar);
        }

        @Override // androidx.appcompat.view.menu.l.a
        public boolean c(androidx.appcompat.view.menu.f fVar) {
            Window.Callback callbackY0 = AppCompatDelegateImpl.this.y0();
            if (callbackY0 == null) {
                return true;
            }
            callbackY0.onMenuOpened(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
            return true;
        }
    }

    class g implements androidx.appcompat.view.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private androidx.appcompat.view.b.a f1073a;

        class a extends ViewPropertyAnimatorListenerAdapter {
            a() {
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                AppCompatDelegateImpl.this.f1040v.setVisibility(8);
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                PopupWindow popupWindow = appCompatDelegateImpl.f1041w;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (appCompatDelegateImpl.f1040v.getParent() instanceof View) {
                    ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.f1040v.getParent());
                }
                AppCompatDelegateImpl.this.f1040v.killMode();
                AppCompatDelegateImpl.this.f1043y.setListener(null);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.f1043y = null;
                ViewCompat.requestApplyInsets(appCompatDelegateImpl2.B);
            }
        }

        public g(androidx.appcompat.view.b.a aVar) {
            this.f1073a = aVar;
        }

        @Override // androidx.appcompat.view.b.a
        public void a(androidx.appcompat.view.b bVar) {
            this.f1073a.a(bVar);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.f1041w != null) {
                appCompatDelegateImpl.f1030l.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.f1042x);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.f1040v != null) {
                appCompatDelegateImpl2.m0();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.f1043y = ViewCompat.animate(appCompatDelegateImpl3.f1040v).alpha(0.0f);
                AppCompatDelegateImpl.this.f1043y.setListener(new a());
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            androidx.appcompat.app.d dVar = appCompatDelegateImpl4.f1032n;
            if (dVar != null) {
                dVar.onSupportActionModeFinished(appCompatDelegateImpl4.f1039u);
            }
            AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl5.f1039u = null;
            ViewCompat.requestApplyInsets(appCompatDelegateImpl5.B);
            AppCompatDelegateImpl.this.f1();
        }

        @Override // androidx.appcompat.view.b.a
        public boolean b(androidx.appcompat.view.b bVar, Menu menu) {
            return this.f1073a.b(bVar, menu);
        }

        @Override // androidx.appcompat.view.b.a
        public boolean c(androidx.appcompat.view.b bVar, MenuItem menuItem) {
            return this.f1073a.c(bVar, menuItem);
        }

        @Override // androidx.appcompat.view.b.a
        public boolean d(androidx.appcompat.view.b bVar, Menu menu) {
            ViewCompat.requestApplyInsets(AppCompatDelegateImpl.this.B);
            return this.f1073a.d(bVar, menu);
        }
    }

    static class h {
        static boolean a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }

        static String b(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    static class i {
        static void a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }

        static androidx.core.os.i b(Configuration configuration) {
            return androidx.core.os.i.c(configuration.getLocales().toLanguageTags());
        }

        public static void c(androidx.core.os.i iVar) {
            LocaleList.setDefault(LocaleList.forLanguageTags(iVar.h()));
        }

        static void d(Configuration configuration, androidx.core.os.i iVar) {
            configuration.setLocales(LocaleList.forLanguageTags(iVar.h()));
        }
    }

    static class j {
        static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            if ((configuration.colorMode & 3) != (configuration2.colorMode & 3)) {
                configuration3.colorMode |= configuration2.colorMode & 3;
            }
            if ((configuration.colorMode & 12) != (configuration2.colorMode & 12)) {
                configuration3.colorMode |= configuration2.colorMode & 12;
            }
        }
    }

    static class k {
        static OnBackInvokedDispatcher a(Activity activity) {
            return activity.getOnBackInvokedDispatcher();
        }

        static OnBackInvokedCallback b(Object obj, final AppCompatDelegateImpl appCompatDelegateImpl) {
            Objects.requireNonNull(appCompatDelegateImpl);
            OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: androidx.appcompat.app.u
                public final void onBackInvoked() {
                    appCompatDelegateImpl.G0();
                }
            };
            androidx.appcompat.app.q.a(obj).registerOnBackInvokedCallback(1000000, onBackInvokedCallback);
            return onBackInvokedCallback;
        }

        static void c(Object obj, Object obj2) {
            androidx.appcompat.app.q.a(obj).unregisterOnBackInvokedCallback(androidx.appcompat.app.p.a(obj2));
        }
    }

    class l extends androidx.appcompat.view.i {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e f1076b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1077c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1078d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f1079e;

        l(Window.Callback callback) {
            super(callback);
        }

        public boolean b(Window.Callback callback, KeyEvent keyEvent) {
            try {
                this.f1078d = true;
                return callback.dispatchKeyEvent(keyEvent);
            } finally {
                this.f1078d = false;
            }
        }

        public void c(Window.Callback callback) {
            try {
                this.f1077c = true;
                callback.onContentChanged();
            } finally {
                this.f1077c = false;
            }
        }

        public void d(Window.Callback callback, int i11, Menu menu) {
            try {
                this.f1079e = true;
                callback.onPanelClosed(i11, menu);
            } finally {
                this.f1079e = false;
            }
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (this.f1078d) {
                return a().dispatchKeyEvent(keyEvent);
            }
            return AppCompatDelegateImpl.this.k0(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.J0(keyEvent.getKeyCode(), keyEvent);
        }

        void e(e eVar) {
            this.f1076b = eVar;
        }

        final ActionMode f(ActionMode.Callback callback) {
            androidx.appcompat.view.f.a aVar = new androidx.appcompat.view.f.a(AppCompatDelegateImpl.this.f1029k, callback);
            androidx.appcompat.view.b bVarT = AppCompatDelegateImpl.this.T(aVar);
            if (bVarT != null) {
                return aVar.e(bVarT);
            }
            return null;
        }

        @Override // android.view.Window.Callback
        public void onContentChanged() {
            if (this.f1077c) {
                a().onContentChanged();
            }
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i11, Menu menu) {
            if (i11 != 0 || (menu instanceof androidx.appcompat.view.menu.f)) {
                return super.onCreatePanelMenu(i11, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public View onCreatePanelView(int i11) {
            View viewOnCreatePanelView;
            e eVar = this.f1076b;
            return (eVar == null || (viewOnCreatePanelView = eVar.onCreatePanelView(i11)) == null) ? super.onCreatePanelView(i11) : viewOnCreatePanelView;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onMenuOpened(int i11, Menu menu) {
            super.onMenuOpened(i11, menu);
            AppCompatDelegateImpl.this.M0(i11);
            return true;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public void onPanelClosed(int i11, Menu menu) {
            if (this.f1079e) {
                a().onPanelClosed(i11, menu);
            } else {
                super.onPanelClosed(i11, menu);
                AppCompatDelegateImpl.this.N0(i11);
            }
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onPreparePanel(int i11, View view, Menu menu) {
            androidx.appcompat.view.menu.f fVar = menu instanceof androidx.appcompat.view.menu.f ? (androidx.appcompat.view.menu.f) menu : null;
            if (i11 == 0 && fVar == null) {
                return false;
            }
            if (fVar != null) {
                fVar.f0(true);
            }
            e eVar = this.f1076b;
            boolean zOnPreparePanel = eVar != null && eVar.a(i11);
            if (!zOnPreparePanel) {
                zOnPreparePanel = super.onPreparePanel(i11, view, menu);
            }
            if (fVar != null) {
                fVar.f0(false);
            }
            return zOnPreparePanel;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List list, Menu menu, int i11) {
            androidx.appcompat.view.menu.f fVar;
            PanelFeatureState panelFeatureStateW0 = AppCompatDelegateImpl.this.w0(0, true);
            if (panelFeatureStateW0 == null || (fVar = panelFeatureStateW0.f1055j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i11);
            } else {
                super.onProvideKeyboardShortcuts(list, fVar, i11);
            }
        }

        @Override // android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i11) {
            return (AppCompatDelegateImpl.this.E0() && i11 == 0) ? f(callback) : super.onWindowStartingActionMode(callback, i11);
        }
    }

    private class m extends n {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final PowerManager f1081c;

        m(Context context) {
            super();
            this.f1081c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.n
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.n
        public int c() {
            return h.a(this.f1081c) ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.n
        public void d() {
            AppCompatDelegateImpl.this.f();
        }
    }

    abstract class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private BroadcastReceiver f1083a;

        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                n.this.d();
            }
        }

        n() {
        }

        void a() {
            BroadcastReceiver broadcastReceiver = this.f1083a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.f1029k.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f1083a = null;
            }
        }

        abstract IntentFilter b();

        abstract int c();

        abstract void d();

        void e() {
            a();
            IntentFilter intentFilterB = b();
            if (intentFilterB == null || intentFilterB.countActions() == 0) {
                return;
            }
            if (this.f1083a == null) {
                this.f1083a = new a();
            }
            AppCompatDelegateImpl.this.f1029k.registerReceiver(this.f1083a, intentFilterB);
        }
    }

    private class o extends n {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c0 f1086c;

        o(c0 c0Var) {
            super();
            this.f1086c = c0Var;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.n
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.n
        public int c() {
            return this.f1086c.d() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.n
        public void d() {
            AppCompatDelegateImpl.this.f();
        }
    }

    private class p extends ContentFrameLayout {
        public p(Context context) {
            super(context);
        }

        private boolean a(int i11, int i12) {
            return i11 < -5 || i12 < -5 || i11 > getWidth() + 5 || i12 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.k0(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImpl.this.f0(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i11) {
            setBackgroundDrawable(g.a.b(getContext(), i11));
        }
    }

    private final class q implements androidx.appcompat.view.menu.l.a {
        q() {
        }

        @Override // androidx.appcompat.view.menu.l.a
        public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
            androidx.appcompat.view.menu.f fVarF = fVar.F();
            boolean z11 = fVarF != fVar;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z11) {
                fVar = fVarF;
            }
            PanelFeatureState panelFeatureStateP0 = appCompatDelegateImpl.p0(fVar);
            if (panelFeatureStateP0 != null) {
                if (!z11) {
                    AppCompatDelegateImpl.this.g0(panelFeatureStateP0, z10);
                } else {
                    AppCompatDelegateImpl.this.c0(panelFeatureStateP0.f1046a, panelFeatureStateP0, fVarF);
                    AppCompatDelegateImpl.this.g0(panelFeatureStateP0, true);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.l.a
        public boolean c(androidx.appcompat.view.menu.f fVar) {
            Window.Callback callbackY0;
            if (fVar != fVar.F()) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.G || (callbackY0 = appCompatDelegateImpl.y0()) == null || AppCompatDelegateImpl.this.R) {
                return true;
            }
            callbackY0.onMenuOpened(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
            return true;
        }
    }

    AppCompatDelegateImpl(Activity activity, androidx.appcompat.app.d dVar) {
        this(activity, null, dVar, activity);
    }

    AppCompatDelegateImpl(Dialog dialog, androidx.appcompat.app.d dVar) {
        this(dialog.getContext(), dialog.getWindow(), dVar, dialog);
    }

    private AppCompatDelegateImpl(Context context, Window window, androidx.appcompat.app.d dVar, Object obj) {
        AppCompatActivity appCompatActivityC1;
        this.f1043y = null;
        this.f1044z = true;
        this.T = -100;
        this.f1020b0 = new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.2
            @Override // java.lang.Runnable
            public void run() {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                if ((appCompatDelegateImpl.f1019a0 & 1) != 0) {
                    appCompatDelegateImpl.l0(0);
                }
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                if ((appCompatDelegateImpl2.f1019a0 & 4096) != 0) {
                    appCompatDelegateImpl2.l0(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY);
                }
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.Z = false;
                appCompatDelegateImpl3.f1019a0 = 0;
            }
        };
        this.f1029k = context;
        this.f1032n = dVar;
        this.f1028j = obj;
        if (this.T == -100 && (obj instanceof Dialog) && (appCompatActivityC1 = c1()) != null) {
            this.T = appCompatActivityC1.getDelegate().r();
        }
        if (this.T == -100) {
            x0 x0Var = f1015j0;
            Integer num = (Integer) x0Var.get(obj.getClass().getName());
            if (num != null) {
                this.T = num.intValue();
                x0Var.remove(obj.getClass().getName());
            }
        }
        if (window != null) {
            Z(window);
        }
        androidx.appcompat.widget.f.h();
    }

    private boolean A0(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.f1054i;
        if (view != null) {
            panelFeatureState.f1053h = view;
            return true;
        }
        if (panelFeatureState.f1055j == null) {
            return false;
        }
        if (this.f1038t == null) {
            this.f1038t = new q();
        }
        View view2 = (View) panelFeatureState.a(this.f1038t);
        panelFeatureState.f1053h = view2;
        return view2 != null;
    }

    private boolean B0(PanelFeatureState panelFeatureState) {
        panelFeatureState.d(r0());
        panelFeatureState.f1052g = new p(panelFeatureState.f1057l);
        panelFeatureState.f1048c = 81;
        return true;
    }

    private boolean C0(PanelFeatureState panelFeatureState) {
        Resources.Theme themeNewTheme;
        Context context = this.f1029k;
        int i11 = panelFeatureState.f1046a;
        if ((i11 == 0 || i11 == 108) && this.f1036r != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(R$attr.actionBarTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(theme);
                themeNewTheme.applyStyle(typedValue.resourceId, true);
                themeNewTheme.resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
                themeNewTheme = null;
            }
            if (typedValue.resourceId != 0) {
                if (themeNewTheme == null) {
                    themeNewTheme = context.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                }
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (themeNewTheme != null) {
                androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
                dVar.getTheme().setTo(themeNewTheme);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.f fVar = new androidx.appcompat.view.menu.f(context);
        fVar.W(this);
        panelFeatureState.c(fVar);
        return true;
    }

    private void D0(int i11) {
        this.f1019a0 = (1 << i11) | this.f1019a0;
        if (this.Z) {
            return;
        }
        ViewCompat.postOnAnimation(this.f1030l.getDecorView(), this.f1020b0);
        this.Z = true;
    }

    private boolean I0(int i11, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        PanelFeatureState panelFeatureStateW0 = w0(i11, true);
        if (panelFeatureStateW0.f1060o) {
            return false;
        }
        return S0(panelFeatureStateW0, keyEvent);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    private boolean L0(int i11, KeyEvent keyEvent) {
        boolean zS0;
        androidx.appcompat.widget.s sVar;
        if (this.f1039u != null) {
            return false;
        }
        boolean zHideOverflowMenu = true;
        PanelFeatureState panelFeatureStateW0 = w0(i11, true);
        if (i11 != 0 || (sVar = this.f1036r) == null || !sVar.canShowOverflowMenu() || ViewConfiguration.get(this.f1029k).hasPermanentMenuKey()) {
            boolean z10 = panelFeatureStateW0.f1060o;
            if (z10 || panelFeatureStateW0.f1059n) {
                g0(panelFeatureStateW0, true);
                zHideOverflowMenu = z10;
            } else if (panelFeatureStateW0.f1058m) {
                if (panelFeatureStateW0.f1063r) {
                    panelFeatureStateW0.f1058m = false;
                    zS0 = S0(panelFeatureStateW0, keyEvent);
                } else {
                    zS0 = true;
                }
                if (zS0) {
                    P0(panelFeatureStateW0, keyEvent);
                } else {
                    zHideOverflowMenu = false;
                }
            } else {
                zHideOverflowMenu = false;
            }
        } else if (this.f1036r.isOverflowMenuShowing()) {
            zHideOverflowMenu = this.f1036r.hideOverflowMenu();
        } else if (this.R || !S0(panelFeatureStateW0, keyEvent)) {
            zHideOverflowMenu = false;
        } else {
            zHideOverflowMenu = this.f1036r.showOverflowMenu();
        }
        if (zHideOverflowMenu) {
            AudioManager audioManager = (AudioManager) this.f1029k.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return zHideOverflowMenu;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:69:? A[RETURN, SYNTHETIC] */
    private void P0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i11;
        ViewGroup.LayoutParams layoutParams;
        if (panelFeatureState.f1060o || this.R) {
            return;
        }
        if (panelFeatureState.f1046a == 0 && (this.f1029k.getResources().getConfiguration().screenLayout & 15) == 4) {
            return;
        }
        Window.Callback callbackY0 = y0();
        if (callbackY0 != null && !callbackY0.onMenuOpened(panelFeatureState.f1046a, panelFeatureState.f1055j)) {
            g0(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f1029k.getSystemService("window");
        if (windowManager != null && S0(panelFeatureState, keyEvent)) {
            ViewGroup viewGroup = panelFeatureState.f1052g;
            if (viewGroup != null && !panelFeatureState.f1062q) {
                View view = panelFeatureState.f1054i;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i11 = -1;
                }
                panelFeatureState.f1059n = false;
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i11, -2, panelFeatureState.f1049d, panelFeatureState.f1050e, 1002, 8519680, -3);
                layoutParams2.gravity = panelFeatureState.f1048c;
                layoutParams2.windowAnimations = panelFeatureState.f1051f;
                windowManager.addView(panelFeatureState.f1052g, layoutParams2);
                panelFeatureState.f1060o = true;
                if (panelFeatureState.f1046a == 0) {
                    f1();
                }
            }
            if (viewGroup == null) {
                if (!B0(panelFeatureState) || panelFeatureState.f1052g == null) {
                    return;
                }
            } else if (panelFeatureState.f1062q && viewGroup.getChildCount() > 0) {
                panelFeatureState.f1052g.removeAllViews();
            }
            if (!A0(panelFeatureState) || !panelFeatureState.b()) {
                panelFeatureState.f1062q = true;
                return;
            }
            ViewGroup.LayoutParams layoutParams3 = panelFeatureState.f1053h.getLayoutParams();
            if (layoutParams3 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            panelFeatureState.f1052g.setBackgroundResource(panelFeatureState.f1047b);
            ViewParent parent = panelFeatureState.f1053h.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(panelFeatureState.f1053h);
            }
            panelFeatureState.f1052g.addView(panelFeatureState.f1053h, layoutParams3);
            if (!panelFeatureState.f1053h.hasFocus()) {
                panelFeatureState.f1053h.requestFocus();
            }
            i11 = -2;
            panelFeatureState.f1059n = false;
            WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i11, -2, panelFeatureState.f1049d, panelFeatureState.f1050e, 1002, 8519680, -3);
            layoutParams4.gravity = panelFeatureState.f1048c;
            layoutParams4.windowAnimations = panelFeatureState.f1051f;
            windowManager.addView(panelFeatureState.f1052g, layoutParams4);
            panelFeatureState.f1060o = true;
            if (panelFeatureState.f1046a == 0) {
                f1();
            }
        }
    }

    private boolean R0(PanelFeatureState panelFeatureState, int i11, KeyEvent keyEvent, int i12) {
        androidx.appcompat.view.menu.f fVar;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.f1058m || S0(panelFeatureState, keyEvent)) && (fVar = panelFeatureState.f1055j) != null) {
            zPerformShortcut = fVar.performShortcut(i11, keyEvent, i12);
        }
        if (zPerformShortcut && (i12 & 1) == 0 && this.f1036r == null) {
            g0(panelFeatureState, true);
        }
        return zPerformShortcut;
    }

    private boolean S0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        androidx.appcompat.widget.s sVar;
        androidx.appcompat.widget.s sVar2;
        androidx.appcompat.widget.s sVar3;
        if (this.R) {
            return false;
        }
        if (panelFeatureState.f1058m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.N;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            g0(panelFeatureState2, false);
        }
        Window.Callback callbackY0 = y0();
        if (callbackY0 != null) {
            panelFeatureState.f1054i = callbackY0.onCreatePanelView(panelFeatureState.f1046a);
        }
        int i11 = panelFeatureState.f1046a;
        boolean z10 = i11 == 0 || i11 == 108;
        if (z10 && (sVar3 = this.f1036r) != null) {
            sVar3.setMenuPrepared();
        }
        if (panelFeatureState.f1054i == null && (!z10 || !(Q0() instanceof ToolbarActionBar))) {
            androidx.appcompat.view.menu.f fVar = panelFeatureState.f1055j;
            if (fVar == null || panelFeatureState.f1063r) {
                if (fVar == null && (!C0(panelFeatureState) || panelFeatureState.f1055j == null)) {
                    return false;
                }
                if (z10 && this.f1036r != null) {
                    if (this.f1037s == null) {
                        this.f1037s = new f();
                    }
                    this.f1036r.setMenu(panelFeatureState.f1055j, this.f1037s);
                }
                panelFeatureState.f1055j.i0();
                if (!callbackY0.onCreatePanelMenu(panelFeatureState.f1046a, panelFeatureState.f1055j)) {
                    panelFeatureState.c(null);
                    if (z10 && (sVar = this.f1036r) != null) {
                        sVar.setMenu(null, this.f1037s);
                    }
                    return false;
                }
                panelFeatureState.f1063r = false;
            }
            panelFeatureState.f1055j.i0();
            Bundle bundle = panelFeatureState.f1064s;
            if (bundle != null) {
                panelFeatureState.f1055j.S(bundle);
                panelFeatureState.f1064s = null;
            }
            if (!callbackY0.onPreparePanel(0, panelFeatureState.f1054i, panelFeatureState.f1055j)) {
                if (z10 && (sVar2 = this.f1036r) != null) {
                    sVar2.setMenu(null, this.f1037s);
                }
                panelFeatureState.f1055j.h0();
                return false;
            }
            boolean z11 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.f1061p = z11;
            panelFeatureState.f1055j.setQwertyMode(z11);
            panelFeatureState.f1055j.h0();
        }
        panelFeatureState.f1058m = true;
        panelFeatureState.f1059n = false;
        this.N = panelFeatureState;
        return true;
    }

    private void T0(boolean z10) {
        androidx.appcompat.widget.s sVar = this.f1036r;
        if (sVar == null || !sVar.canShowOverflowMenu() || (ViewConfiguration.get(this.f1029k).hasPermanentMenuKey() && !this.f1036r.isOverflowMenuShowPending())) {
            PanelFeatureState panelFeatureStateW0 = w0(0, true);
            panelFeatureStateW0.f1062q = true;
            g0(panelFeatureStateW0, false);
            P0(panelFeatureStateW0, null);
            return;
        }
        Window.Callback callbackY0 = y0();
        if (this.f1036r.isOverflowMenuShowing() && z10) {
            this.f1036r.hideOverflowMenu();
            if (this.R) {
                return;
            }
            callbackY0.onPanelClosed(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, w0(0, true).f1055j);
            return;
        }
        if (callbackY0 == null || this.R) {
            return;
        }
        if (this.Z && (this.f1019a0 & 1) != 0) {
            this.f1030l.getDecorView().removeCallbacks(this.f1020b0);
            this.f1020b0.run();
        }
        PanelFeatureState panelFeatureStateW1 = w0(0, true);
        androidx.appcompat.view.menu.f fVar = panelFeatureStateW1.f1055j;
        if (fVar == null || panelFeatureStateW1.f1063r || !callbackY0.onPreparePanel(0, panelFeatureStateW1.f1054i, fVar)) {
            return;
        }
        callbackY0.onMenuOpened(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, panelFeatureStateW1.f1055j);
        this.f1036r.showOverflowMenu();
    }

    private int U0(int i11) {
        if (i11 == 8) {
            return TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY;
        }
        if (i11 == 9) {
            return 109;
        }
        return i11;
    }

    private boolean W(boolean z10) {
        return X(z10, true);
    }

    private boolean X(boolean z10, boolean z11) {
        if (this.R) {
            return false;
        }
        int iB0 = b0();
        int iF0 = F0(this.f1029k, iB0);
        androidx.core.os.i iVarA0 = Build.VERSION.SDK_INT < 33 ? a0(this.f1029k) : null;
        if (!z11 && iVarA0 != null) {
            iVarA0 = v0(this.f1029k.getResources().getConfiguration());
        }
        boolean zE1 = e1(iF0, iVarA0, z10);
        if (iB0 == 0) {
            u0(this.f1029k).e();
        } else {
            n nVar = this.X;
            if (nVar != null) {
                nVar.a();
            }
        }
        if (iB0 == 3) {
            t0(this.f1029k).e();
        } else {
            n nVar2 = this.Y;
            if (nVar2 != null) {
                nVar2.a();
            }
        }
        return zE1;
    }

    private void Y() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.B.findViewById(R.id.content);
        View decorView = this.f1030l.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.f1029k.obtainStyledAttributes(R$styleable.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedWidthMajor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedWidthMinor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedHeightMajor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedHeightMinor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    private boolean Y0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f1030l.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || ((View) viewParent).isAttachedToWindow()) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private void Z(Window window) {
        if (this.f1030l != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof l) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        l lVar = new l(callback);
        this.f1031m = lVar;
        window.setCallback(lVar);
        j0 j0VarU = j0.u(this.f1029k, null, f1017l0);
        Drawable drawableH = j0VarU.h(0);
        if (drawableH != null) {
            window.setBackgroundDrawable(drawableH);
        }
        j0VarU.x();
        this.f1030l = window;
        if (Build.VERSION.SDK_INT < 33 || this.f1026h0 != null) {
            return;
        }
        P(null);
    }

    private int b0() {
        int i11 = this.T;
        return i11 != -100 ? i11 : androidx.appcompat.app.f.p();
    }

    private void b1() {
        if (this.A) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private AppCompatActivity c1() {
        for (Context baseContext = this.f1029k; baseContext != null; baseContext = ((ContextWrapper) baseContext).getBaseContext()) {
            if (baseContext instanceof AppCompatActivity) {
                return (AppCompatActivity) baseContext;
            }
            if (!(baseContext instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void d1(Configuration configuration) {
        Activity activity = (Activity) this.f1028j;
        if (activity instanceof androidx.p009lifecycle.u) {
            if (((androidx.p009lifecycle.u) activity).getLifecycle().b().isAtLeast(Lifecycle.State.CREATED)) {
                activity.onConfigurationChanged(configuration);
            }
        } else {
            if (!this.Q || this.R) {
                return;
            }
            activity.onConfigurationChanged(configuration);
        }
    }

    private void e0() {
        n nVar = this.X;
        if (nVar != null) {
            nVar.a();
        }
        n nVar2 = this.Y;
        if (nVar2 != null) {
            nVar2.a();
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008c  */
    private boolean e1(int i11, androidx.core.os.i iVar, boolean z10) {
        boolean z11;
        Configuration configurationH0 = h0(this.f1029k, i11, iVar, null, false);
        int iS0 = s0(this.f1029k);
        Configuration configuration = this.S;
        if (configuration == null) {
            configuration = this.f1029k.getResources().getConfiguration();
        }
        int i12 = configuration.uiMode & 48;
        int i13 = configurationH0.uiMode & 48;
        androidx.core.os.i iVarV0 = v0(configuration);
        androidx.core.os.i iVarV1 = iVar == null ? null : v0(configurationH0);
        int i14 = i12 != i13 ? 512 : 0;
        if (iVarV1 != null && !iVarV0.equals(iVarV1)) {
            i14 |= 8196;
        }
        boolean z12 = true;
        if (((~iS0) & i14) != 0 && z10 && this.P && (f1018m0 || this.Q)) {
            Object obj = this.f1028j;
            if (!(obj instanceof Activity) || ((Activity) obj).isChild()) {
                z11 = false;
            } else {
                if (Build.VERSION.SDK_INT >= 31 && (i14 & 8192) != 0) {
                    ((Activity) this.f1028j).getWindow().getDecorView().setLayoutDirection(configurationH0.getLayoutDirection());
                }
                ActivityCompat.f((Activity) this.f1028j);
                z11 = true;
            }
        } else {
            z11 = false;
        }
        if (z11 || i14 == 0) {
            z12 = z11;
        } else {
            g1(i13, iVarV1, (i14 & iS0) == i14, null);
        }
        if (z12) {
            Object obj2 = this.f1028j;
            if (obj2 instanceof AppCompatActivity) {
                if ((i14 & 512) != 0) {
                    ((AppCompatActivity) obj2).onNightModeChanged(i11);
                }
                if ((i14 & 4) != 0) {
                    ((AppCompatActivity) this.f1028j).onLocalesChanged(iVar);
                }
            }
        }
        if (iVarV1 != null) {
            W0(v0(this.f1029k.getResources().getConfiguration()));
        }
        return z12;
    }

    private void g1(int i11, androidx.core.os.i iVar, boolean z10, Configuration configuration) {
        Resources resources = this.f1029k.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i11 | (resources.getConfiguration().uiMode & (-49));
        if (iVar != null) {
            V0(configuration2, iVar);
        }
        resources.updateConfiguration(configuration2, null);
        if (Build.VERSION.SDK_INT < 26) {
            a0.a(resources);
        }
        int i12 = this.U;
        if (i12 != 0) {
            this.f1029k.setTheme(i12);
            this.f1029k.getTheme().applyStyle(this.U, true);
        }
        if (z10 && (this.f1028j instanceof Activity)) {
            d1(configuration2);
        }
    }

    private Configuration h0(Context context, int i11, androidx.core.os.i iVar, Configuration configuration, boolean z10) {
        int i12;
        if (i11 == 1) {
            i12 = 16;
        } else if (i11 != 2) {
            i12 = z10 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } else {
            i12 = 32;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i12 | (configuration2.uiMode & (-49));
        if (iVar != null) {
            V0(configuration2, iVar);
        }
        return configuration2;
    }

    private ViewGroup i0() {
        ViewGroup viewGroup;
        TypedArray typedArrayObtainStyledAttributes = this.f1029k.obtainStyledAttributes(R$styleable.AppCompatTheme);
        if (!typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowActionBar)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowNoTitle, false)) {
            K(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionBar, false)) {
            K(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            K(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            K(10);
        }
        this.J = typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        o0();
        this.f1030l.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f1029k);
        if (this.K) {
            viewGroup = this.I ? (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.J) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_dialog_title_material, (ViewGroup) null);
            this.H = false;
            this.G = false;
        } else if (this.G) {
            TypedValue typedValue = new TypedValue();
            this.f1029k.getTheme().resolveAttribute(R$attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new androidx.appcompat.view.d(this.f1029k, typedValue.resourceId) : this.f1029k).inflate(R$layout.abc_screen_toolbar, (ViewGroup) null);
            androidx.appcompat.widget.s sVar = (androidx.appcompat.widget.s) viewGroup.findViewById(R$id.decor_content_parent);
            this.f1036r = sVar;
            sVar.setWindowCallback(y0());
            if (this.H) {
                this.f1036r.initFeature(109);
            }
            if (this.E) {
                this.f1036r.initFeature(2);
            }
            if (this.F) {
                this.f1036r.initFeature(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.G + ", windowActionBarOverlay: " + this.H + ", android:windowIsFloating: " + this.J + ", windowActionModeOverlay: " + this.I + ", windowNoTitle: " + this.K + " }");
        }
        ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new a());
        if (this.f1036r == null) {
            this.C = (TextView) viewGroup.findViewById(R$id.title);
        }
        u0.c(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R$id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f1030l.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f1030l.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new b());
        return viewGroup;
    }

    private void i1(View view) {
        view.setBackgroundColor((ViewCompat.getWindowSystemUiVisibility(view) & 8192) != 0 ? androidx.core.content.b.getColor(this.f1029k, R$color.abc_decor_view_status_guard_light) : androidx.core.content.b.getColor(this.f1029k, R$color.abc_decor_view_status_guard));
    }

    private void n0() {
        if (this.A) {
            return;
        }
        this.B = i0();
        CharSequence charSequenceX0 = x0();
        if (!TextUtils.isEmpty(charSequenceX0)) {
            androidx.appcompat.widget.s sVar = this.f1036r;
            if (sVar != null) {
                sVar.setWindowTitle(charSequenceX0);
            } else if (Q0() != null) {
                Q0().u(charSequenceX0);
            } else {
                TextView textView = this.C;
                if (textView != null) {
                    textView.setText(charSequenceX0);
                }
            }
        }
        Y();
        O0(this.B);
        this.A = true;
        PanelFeatureState panelFeatureStateW0 = w0(0, false);
        if (this.R) {
            return;
        }
        if (panelFeatureStateW0 == null || panelFeatureStateW0.f1055j == null) {
            D0(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY);
        }
    }

    private void o0() {
        if (this.f1030l == null) {
            Object obj = this.f1028j;
            if (obj instanceof Activity) {
                Z(((Activity) obj).getWindow());
            }
        }
        if (this.f1030l == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private static Configuration q0(Configuration configuration, Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f11 = configuration.fontScale;
            float f12 = configuration2.fontScale;
            if (f11 != f12) {
                configuration3.fontScale = f12;
            }
            int i11 = configuration.mcc;
            int i12 = configuration2.mcc;
            if (i11 != i12) {
                configuration3.mcc = i12;
            }
            int i13 = configuration.mnc;
            int i14 = configuration2.mnc;
            if (i13 != i14) {
                configuration3.mnc = i14;
            }
            int i15 = Build.VERSION.SDK_INT;
            if (i15 >= 24) {
                i.a(configuration, configuration2, configuration3);
            } else if (!androidx.core.util.d.a(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i16 = configuration.touchscreen;
            int i17 = configuration2.touchscreen;
            if (i16 != i17) {
                configuration3.touchscreen = i17;
            }
            int i18 = configuration.keyboard;
            int i19 = configuration2.keyboard;
            if (i18 != i19) {
                configuration3.keyboard = i19;
            }
            int i20 = configuration.keyboardHidden;
            int i21 = configuration2.keyboardHidden;
            if (i20 != i21) {
                configuration3.keyboardHidden = i21;
            }
            int i22 = configuration.navigation;
            int i23 = configuration2.navigation;
            if (i22 != i23) {
                configuration3.navigation = i23;
            }
            int i24 = configuration.navigationHidden;
            int i25 = configuration2.navigationHidden;
            if (i24 != i25) {
                configuration3.navigationHidden = i25;
            }
            int i26 = configuration.orientation;
            int i27 = configuration2.orientation;
            if (i26 != i27) {
                configuration3.orientation = i27;
            }
            int i28 = configuration.screenLayout & 15;
            int i29 = configuration2.screenLayout;
            if (i28 != (i29 & 15)) {
                configuration3.screenLayout |= i29 & 15;
            }
            int i30 = configuration.screenLayout & PsExtractor.AUDIO_STREAM;
            int i31 = configuration2.screenLayout;
            if (i30 != (i31 & PsExtractor.AUDIO_STREAM)) {
                configuration3.screenLayout |= i31 & PsExtractor.AUDIO_STREAM;
            }
            int i32 = configuration.screenLayout & 48;
            int i33 = configuration2.screenLayout;
            if (i32 != (i33 & 48)) {
                configuration3.screenLayout |= i33 & 48;
            }
            int i34 = configuration.screenLayout & 768;
            int i35 = configuration2.screenLayout;
            if (i34 != (i35 & 768)) {
                configuration3.screenLayout |= i35 & 768;
            }
            if (i15 >= 26) {
                j.a(configuration, configuration2, configuration3);
            }
            int i36 = configuration.uiMode & 15;
            int i37 = configuration2.uiMode;
            if (i36 != (i37 & 15)) {
                configuration3.uiMode |= i37 & 15;
            }
            int i38 = configuration.uiMode & 48;
            int i39 = configuration2.uiMode;
            if (i38 != (i39 & 48)) {
                configuration3.uiMode |= i39 & 48;
            }
            int i40 = configuration.screenWidthDp;
            int i41 = configuration2.screenWidthDp;
            if (i40 != i41) {
                configuration3.screenWidthDp = i41;
            }
            int i42 = configuration.screenHeightDp;
            int i43 = configuration2.screenHeightDp;
            if (i42 != i43) {
                configuration3.screenHeightDp = i43;
            }
            int i44 = configuration.smallestScreenWidthDp;
            int i45 = configuration2.smallestScreenWidthDp;
            if (i44 != i45) {
                configuration3.smallestScreenWidthDp = i45;
            }
            int i46 = configuration.densityDpi;
            int i47 = configuration2.densityDpi;
            if (i46 != i47) {
                configuration3.densityDpi = i47;
            }
        }
        return configuration3;
    }

    private int s0(Context context) {
        int i11;
        if (!this.W && (this.f1028j instanceof Activity)) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return 0;
            }
            try {
                int i12 = Build.VERSION.SDK_INT;
                if (i12 >= 29) {
                    i11 = 269221888;
                } else {
                    i11 = i12 >= 24 ? 786432 : 0;
                }
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, this.f1028j.getClass()), i11);
                if (activityInfo != null) {
                    this.V = activityInfo.configChanges;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                this.V = 0;
            }
        }
        this.W = true;
        return this.V;
    }

    private n t0(Context context) {
        if (this.Y == null) {
            this.Y = new m(context);
        }
        return this.Y;
    }

    private n u0(Context context) {
        if (this.X == null) {
            this.X = new o(c0.a(context));
        }
        return this.X;
    }

    private void z0() {
        n0();
        if (this.G && this.f1033o == null) {
            Object obj = this.f1028j;
            if (obj instanceof Activity) {
                this.f1033o = new d0((Activity) this.f1028j, this.H);
            } else if (obj instanceof Dialog) {
                this.f1033o = new d0((Dialog) this.f1028j);
            }
            androidx.appcompat.app.a aVar = this.f1033o;
            if (aVar != null) {
                aVar.s(this.f1021c0);
            }
        }
    }

    @Override // androidx.appcompat.app.f
    public void A(Configuration configuration) {
        androidx.appcompat.app.a aVarV;
        if (this.G && this.A && (aVarV = v()) != null) {
            aVarV.n(configuration);
        }
        androidx.appcompat.widget.f.b().g(this.f1029k);
        this.S = new Configuration(this.f1029k.getResources().getConfiguration());
        X(false, false);
    }

    @Override // androidx.appcompat.app.f
    public void B(Bundle bundle) {
        String strC;
        this.P = true;
        W(false);
        o0();
        Object obj = this.f1028j;
        if (obj instanceof Activity) {
            try {
                strC = androidx.core.app.n.c((Activity) obj);
            } catch (IllegalArgumentException unused) {
                strC = null;
            }
            if (strC != null) {
                androidx.appcompat.app.a aVarQ0 = Q0();
                if (aVarQ0 == null) {
                    this.f1021c0 = true;
                } else {
                    aVarQ0.s(true);
                }
            }
            androidx.appcompat.app.f.d(this);
        }
        this.S = new Configuration(this.f1029k.getResources().getConfiguration());
        this.Q = true;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0045  */
    @Override // androidx.appcompat.app.f
    public void C() {
        if (this.f1028j instanceof Activity) {
            androidx.appcompat.app.f.I(this);
        }
        if (this.Z) {
            this.f1030l.getDecorView().removeCallbacks(this.f1020b0);
        }
        this.R = true;
        if (this.T != -100) {
            Object obj = this.f1028j;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                f1015j0.put(this.f1028j.getClass().getName(), Integer.valueOf(this.T));
            } else {
                f1015j0.remove(this.f1028j.getClass().getName());
            }
        } else {
            f1015j0.remove(this.f1028j.getClass().getName());
        }
        androidx.appcompat.app.a aVar = this.f1033o;
        if (aVar != null) {
            aVar.o();
        }
        e0();
    }

    @Override // androidx.appcompat.app.f
    public void D(Bundle bundle) {
        n0();
    }

    @Override // androidx.appcompat.app.f
    public void E() {
        androidx.appcompat.app.a aVarV = v();
        if (aVarV != null) {
            aVarV.t(true);
        }
    }

    public boolean E0() {
        return this.f1044z;
    }

    @Override // androidx.appcompat.app.f
    public void F(Bundle bundle) {
    }

    int F0(Context context, int i11) {
        if (i11 == -100) {
            return -1;
        }
        if (i11 != -1) {
            if (i11 == 0) {
                if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                    return -1;
                }
                return u0(context).c();
            }
            if (i11 != 1 && i11 != 2) {
                if (i11 == 3) {
                    return t0(context).c();
                }
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
            }
        }
        return i11;
    }

    @Override // androidx.appcompat.app.f
    public void G() {
        X(true, false);
    }

    boolean G0() {
        boolean z10 = this.O;
        this.O = false;
        PanelFeatureState panelFeatureStateW0 = w0(0, false);
        if (panelFeatureStateW0 != null && panelFeatureStateW0.f1060o) {
            if (!z10) {
                g0(panelFeatureStateW0, true);
            }
            return true;
        }
        androidx.appcompat.view.b bVar = this.f1039u;
        if (bVar != null) {
            bVar.c();
            return true;
        }
        androidx.appcompat.app.a aVarV = v();
        return aVarV != null && aVarV.h();
    }

    @Override // androidx.appcompat.app.f
    public void H() {
        androidx.appcompat.app.a aVarV = v();
        if (aVarV != null) {
            aVarV.t(false);
        }
    }

    boolean H0(int i11, KeyEvent keyEvent) {
        if (i11 == 4) {
            this.O = (keyEvent.getFlags() & 128) != 0;
        } else if (i11 == 82) {
            I0(0, keyEvent);
            return true;
        }
        return false;
    }

    boolean J0(int i11, KeyEvent keyEvent) {
        androidx.appcompat.app.a aVarV = v();
        if (aVarV != null && aVarV.p(i11, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.N;
        if (panelFeatureState != null && R0(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            PanelFeatureState panelFeatureState2 = this.N;
            if (panelFeatureState2 != null) {
                panelFeatureState2.f1059n = true;
            }
            return true;
        }
        if (this.N == null) {
            PanelFeatureState panelFeatureStateW0 = w0(0, true);
            S0(panelFeatureStateW0, keyEvent);
            boolean zR0 = R0(panelFeatureStateW0, keyEvent.getKeyCode(), keyEvent, 1);
            panelFeatureStateW0.f1058m = false;
            if (zR0) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public boolean K(int i11) {
        int iU0 = U0(i11);
        if (this.K && iU0 == 108) {
            return false;
        }
        if (this.G && iU0 == 1) {
            this.G = false;
        }
        if (iU0 == 1) {
            b1();
            this.K = true;
            return true;
        }
        if (iU0 == 2) {
            b1();
            this.E = true;
            return true;
        }
        if (iU0 == 5) {
            b1();
            this.F = true;
            return true;
        }
        if (iU0 == 10) {
            b1();
            this.I = true;
            return true;
        }
        if (iU0 == 108) {
            b1();
            this.G = true;
            return true;
        }
        if (iU0 != 109) {
            return this.f1030l.requestFeature(iU0);
        }
        b1();
        this.H = true;
        return true;
    }

    boolean K0(int i11, KeyEvent keyEvent) {
        if (i11 != 4) {
            if (i11 == 82) {
                L0(0, keyEvent);
                return true;
            }
        } else if (G0()) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public void L(int i11) {
        n0();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f1029k).inflate(i11, viewGroup);
        this.f1031m.c(this.f1030l.getCallback());
    }

    @Override // androidx.appcompat.app.f
    public void M(View view) {
        n0();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f1031m.c(this.f1030l.getCallback());
    }

    void M0(int i11) {
        androidx.appcompat.app.a aVarV;
        if (i11 != 108 || (aVarV = v()) == null) {
            return;
        }
        aVarV.i(true);
    }

    @Override // androidx.appcompat.app.f
    public void N(View view, ViewGroup.LayoutParams layoutParams) {
        n0();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f1031m.c(this.f1030l.getCallback());
    }

    void N0(int i11) {
        if (i11 == 108) {
            androidx.appcompat.app.a aVarV = v();
            if (aVarV != null) {
                aVarV.i(false);
                return;
            }
            return;
        }
        if (i11 == 0) {
            PanelFeatureState panelFeatureStateW0 = w0(i11, true);
            if (panelFeatureStateW0.f1060o) {
                g0(panelFeatureStateW0, false);
            }
        }
    }

    void O0(ViewGroup viewGroup) {
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    @Override // androidx.appcompat.app.f
    public void P(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        OnBackInvokedCallback onBackInvokedCallback;
        super.P(onBackInvokedDispatcher);
        OnBackInvokedDispatcher onBackInvokedDispatcher2 = this.f1026h0;
        if (onBackInvokedDispatcher2 != null && (onBackInvokedCallback = this.f1027i0) != null) {
            k.c(onBackInvokedDispatcher2, onBackInvokedCallback);
            this.f1027i0 = null;
        }
        if (onBackInvokedDispatcher == null) {
            Object obj = this.f1028j;
            if (!(obj instanceof Activity) || ((Activity) obj).getWindow() == null) {
                this.f1026h0 = onBackInvokedDispatcher;
            } else {
                this.f1026h0 = k.a((Activity) this.f1028j);
            }
        } else {
            this.f1026h0 = onBackInvokedDispatcher;
        }
        f1();
    }

    @Override // androidx.appcompat.app.f
    public void Q(Toolbar toolbar) {
        if (this.f1028j instanceof Activity) {
            androidx.appcompat.app.a aVarV = v();
            if (aVarV instanceof d0) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.f1034p = null;
            if (aVarV != null) {
                aVarV.o();
            }
            this.f1033o = null;
            if (toolbar != null) {
                ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, x0(), this.f1031m);
                this.f1033o = toolbarActionBar;
                this.f1031m.e(toolbarActionBar.f1092c);
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                this.f1031m.e(null);
            }
            x();
        }
    }

    final androidx.appcompat.app.a Q0() {
        return this.f1033o;
    }

    @Override // androidx.appcompat.app.f
    public void R(int i11) {
        this.U = i11;
    }

    @Override // androidx.appcompat.app.f
    public final void S(CharSequence charSequence) {
        this.f1035q = charSequence;
        androidx.appcompat.widget.s sVar = this.f1036r;
        if (sVar != null) {
            sVar.setWindowTitle(charSequence);
            return;
        }
        if (Q0() != null) {
            Q0().u(charSequence);
            return;
        }
        TextView textView = this.C;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // androidx.appcompat.app.f
    public androidx.appcompat.view.b T(androidx.appcompat.view.b.a aVar) {
        androidx.appcompat.app.d dVar;
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        androidx.appcompat.view.b bVar = this.f1039u;
        if (bVar != null) {
            bVar.c();
        }
        g gVar = new g(aVar);
        androidx.appcompat.app.a aVarV = v();
        if (aVarV != null) {
            androidx.appcompat.view.b bVarV = aVarV.v(gVar);
            this.f1039u = bVarV;
            if (bVarV != null && (dVar = this.f1032n) != null) {
                dVar.onSupportActionModeStarted(bVarV);
            }
        }
        if (this.f1039u == null) {
            this.f1039u = a1(gVar);
        }
        f1();
        return this.f1039u;
    }

    void V0(Configuration configuration, androidx.core.os.i iVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            i.d(configuration, iVar);
        } else {
            configuration.setLocale(iVar.d(0));
            configuration.setLayoutDirection(iVar.d(0));
        }
    }

    void W0(androidx.core.os.i iVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            i.c(iVar);
        } else {
            Locale.setDefault(iVar.d(0));
        }
    }

    final boolean X0() {
        ViewGroup viewGroup;
        return this.A && (viewGroup = this.B) != null && viewGroup.isLaidOut();
    }

    boolean Z0() {
        if (this.f1026h0 == null) {
            return false;
        }
        PanelFeatureState panelFeatureStateW0 = w0(0, false);
        return (panelFeatureStateW0 != null && panelFeatureStateW0.f1060o) || this.f1039u != null;
    }

    @Override // androidx.appcompat.view.menu.f.a
    public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
        PanelFeatureState panelFeatureStateP0;
        Window.Callback callbackY0 = y0();
        if (callbackY0 == null || this.R || (panelFeatureStateP0 = p0(fVar.F())) == null) {
            return false;
        }
        return callbackY0.onMenuItemSelected(panelFeatureStateP0.f1046a, menuItem);
    }

    androidx.core.os.i a0(Context context) {
        androidx.core.os.i iVarU;
        androidx.core.os.i iVarE;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 33 || (iVarU = androidx.appcompat.app.f.u()) == null) {
            return null;
        }
        androidx.core.os.i iVarV0 = v0(context.getApplicationContext().getResources().getConfiguration());
        if (i11 >= 24) {
            iVarE = z.b(iVarU, iVarV0);
        } else {
            iVarE = iVarU.f() ? androidx.core.os.i.e() : androidx.core.os.i.c(h.b(iVarU.d(0)));
        }
        return iVarE.f() ? iVarV0 : iVarE;
    }

    androidx.appcompat.view.b a1(androidx.appcompat.view.b.a aVar) {
        androidx.appcompat.view.b bVarOnWindowStartingSupportActionMode;
        Context dVar;
        androidx.appcompat.app.d dVar2;
        m0();
        androidx.appcompat.view.b bVar = this.f1039u;
        if (bVar != null) {
            bVar.c();
        }
        if (!(aVar instanceof g)) {
            aVar = new g(aVar);
        }
        androidx.appcompat.app.d dVar3 = this.f1032n;
        if (dVar3 == null || this.R) {
            bVarOnWindowStartingSupportActionMode = null;
        } else {
            try {
                bVarOnWindowStartingSupportActionMode = dVar3.onWindowStartingSupportActionMode(aVar);
            } catch (AbstractMethodError unused) {
                bVarOnWindowStartingSupportActionMode = null;
            }
        }
        if (bVarOnWindowStartingSupportActionMode != null) {
            this.f1039u = bVarOnWindowStartingSupportActionMode;
        } else {
            if (this.f1040v == null) {
                if (this.J) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.f1029k.getTheme();
                    theme.resolveAttribute(R$attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.f1029k.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        dVar = new androidx.appcompat.view.d(this.f1029k, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                    } else {
                        dVar = this.f1029k;
                    }
                    this.f1040v = new ActionBarContextView(dVar);
                    PopupWindow popupWindow = new PopupWindow(dVar, (AttributeSet) null, R$attr.actionModePopupWindowStyle);
                    this.f1041w = popupWindow;
                    androidx.core.widget.l.b(popupWindow, 2);
                    this.f1041w.setContentView(this.f1040v);
                    this.f1041w.setWidth(-1);
                    dVar.getTheme().resolveAttribute(R$attr.actionBarSize, typedValue, true);
                    this.f1040v.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, dVar.getResources().getDisplayMetrics()));
                    this.f1041w.setHeight(-2);
                    this.f1042x = new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.6

                        /* JADX INFO: renamed from: androidx.appcompat.app.AppCompatDelegateImpl$6$a */
                        class a extends ViewPropertyAnimatorListenerAdapter {
                            a() {
                            }

                            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                            public void onAnimationEnd(View view) {
                                AppCompatDelegateImpl.this.f1040v.setAlpha(1.0f);
                                AppCompatDelegateImpl.this.f1043y.setListener(null);
                                AppCompatDelegateImpl.this.f1043y = null;
                            }

                            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                            public void onAnimationStart(View view) {
                                AppCompatDelegateImpl.this.f1040v.setVisibility(0);
                            }
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                            appCompatDelegateImpl.f1041w.showAtLocation(appCompatDelegateImpl.f1040v, 55, 0, 0);
                            AppCompatDelegateImpl.this.m0();
                            if (!AppCompatDelegateImpl.this.X0()) {
                                AppCompatDelegateImpl.this.f1040v.setAlpha(1.0f);
                                AppCompatDelegateImpl.this.f1040v.setVisibility(0);
                            } else {
                                AppCompatDelegateImpl.this.f1040v.setAlpha(0.0f);
                                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                                appCompatDelegateImpl2.f1043y = ViewCompat.animate(appCompatDelegateImpl2.f1040v).alpha(1.0f);
                                AppCompatDelegateImpl.this.f1043y.setListener(new a());
                            }
                        }
                    };
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.B.findViewById(R$id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(r0()));
                        this.f1040v = (ActionBarContextView) viewStubCompat.inflate();
                    }
                }
            }
            if (this.f1040v != null) {
                m0();
                this.f1040v.killMode();
                androidx.appcompat.view.e eVar = new androidx.appcompat.view.e(this.f1040v.getContext(), this.f1040v, aVar, this.f1041w == null);
                if (aVar.b(eVar, eVar.e())) {
                    eVar.k();
                    this.f1040v.initForMode(eVar);
                    this.f1039u = eVar;
                    if (X0()) {
                        this.f1040v.setAlpha(0.0f);
                        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(this.f1040v).alpha(1.0f);
                        this.f1043y = viewPropertyAnimatorCompatAlpha;
                        viewPropertyAnimatorCompatAlpha.setListener(new c());
                    } else {
                        this.f1040v.setAlpha(1.0f);
                        this.f1040v.setVisibility(0);
                        if (this.f1040v.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) this.f1040v.getParent());
                        }
                    }
                    if (this.f1041w != null) {
                        this.f1030l.getDecorView().post(this.f1042x);
                    }
                } else {
                    this.f1039u = null;
                }
            }
        }
        androidx.appcompat.view.b bVar2 = this.f1039u;
        if (bVar2 != null && (dVar2 = this.f1032n) != null) {
            dVar2.onSupportActionModeStarted(bVar2);
        }
        f1();
        return this.f1039u;
    }

    @Override // androidx.appcompat.view.menu.f.a
    public void b(androidx.appcompat.view.menu.f fVar) {
        T0(true);
    }

    void c0(int i11, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i11 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.M;
                if (i11 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i11];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.f1055j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.f1060o) && !this.R) {
            this.f1031m.d(this.f1030l.getCallback(), i11, menu);
        }
    }

    void d0(androidx.appcompat.view.menu.f fVar) {
        if (this.L) {
            return;
        }
        this.L = true;
        this.f1036r.dismissPopups();
        Window.Callback callbackY0 = y0();
        if (callbackY0 != null && !this.R) {
            callbackY0.onPanelClosed(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
        }
        this.L = false;
    }

    @Override // androidx.appcompat.app.f
    public void e(View view, ViewGroup.LayoutParams layoutParams) {
        n0();
        ((ViewGroup) this.B.findViewById(R.id.content)).addView(view, layoutParams);
        this.f1031m.c(this.f1030l.getCallback());
    }

    @Override // androidx.appcompat.app.f
    public boolean f() {
        return W(true);
    }

    void f0(int i11) {
        g0(w0(i11, true), true);
    }

    void f1() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean zZ0 = Z0();
            if (zZ0 && this.f1027i0 == null) {
                this.f1027i0 = k.b(this.f1026h0, this);
            } else {
                if (zZ0 || (onBackInvokedCallback = this.f1027i0) == null) {
                    return;
                }
                k.c(this.f1026h0, onBackInvokedCallback);
                this.f1027i0 = null;
            }
        }
    }

    void g0(PanelFeatureState panelFeatureState, boolean z10) {
        ViewGroup viewGroup;
        androidx.appcompat.widget.s sVar;
        if (z10 && panelFeatureState.f1046a == 0 && (sVar = this.f1036r) != null && sVar.isOverflowMenuShowing()) {
            d0(panelFeatureState.f1055j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f1029k.getSystemService("window");
        if (windowManager != null && panelFeatureState.f1060o && (viewGroup = panelFeatureState.f1052g) != null) {
            windowManager.removeView(viewGroup);
            if (z10) {
                c0(panelFeatureState.f1046a, panelFeatureState, null);
            }
        }
        panelFeatureState.f1058m = false;
        panelFeatureState.f1059n = false;
        panelFeatureState.f1060o = false;
        panelFeatureState.f1053h = null;
        panelFeatureState.f1062q = true;
        if (this.N == panelFeatureState) {
            this.N = null;
        }
        if (panelFeatureState.f1046a == 0) {
            f1();
        }
    }

    final int h1(WindowInsetsCompat windowInsetsCompat, Rect rect) {
        int systemWindowInsetTop;
        boolean z10;
        boolean z11;
        if (windowInsetsCompat != null) {
            systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        } else {
            systemWindowInsetTop = rect != null ? rect.top : 0;
        }
        ActionBarContextView actionBarContextView = this.f1040v;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z10 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1040v.getLayoutParams();
            boolean z12 = true;
            if (this.f1040v.isShown()) {
                if (this.f1022d0 == null) {
                    this.f1022d0 = new Rect();
                    this.f1023e0 = new Rect();
                }
                Rect rect2 = this.f1022d0;
                Rect rect3 = this.f1023e0;
                if (windowInsetsCompat == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                }
                u0.a(this.B, rect2, rect3);
                int i11 = rect2.top;
                int i12 = rect2.left;
                int i13 = rect2.right;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.B);
                int systemWindowInsetLeft = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetLeft();
                int systemWindowInsetRight = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetRight();
                if (marginLayoutParams.topMargin == i11 && marginLayoutParams.leftMargin == i12 && marginLayoutParams.rightMargin == i13) {
                    z11 = false;
                } else {
                    marginLayoutParams.topMargin = i11;
                    marginLayoutParams.leftMargin = i12;
                    marginLayoutParams.rightMargin = i13;
                    z11 = true;
                }
                if (i11 <= 0 || this.D != null) {
                    View view = this.D;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i14 = marginLayoutParams2.height;
                        int i15 = marginLayoutParams.topMargin;
                        if (i14 != i15 || marginLayoutParams2.leftMargin != systemWindowInsetLeft || marginLayoutParams2.rightMargin != systemWindowInsetRight) {
                            marginLayoutParams2.height = i15;
                            marginLayoutParams2.leftMargin = systemWindowInsetLeft;
                            marginLayoutParams2.rightMargin = systemWindowInsetRight;
                            this.D.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f1029k);
                    this.D = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = systemWindowInsetLeft;
                    layoutParams.rightMargin = systemWindowInsetRight;
                    this.B.addView(this.D, -1, layoutParams);
                }
                View view3 = this.D;
                z12 = view3 != null;
                if (z12 && view3.getVisibility() != 0) {
                    i1(this.D);
                }
                if (!this.I && z12) {
                    systemWindowInsetTop = 0;
                }
                z10 = z12;
                z12 = z11;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z10 = false;
            } else {
                z10 = false;
                z12 = false;
            }
            if (z12) {
                this.f1040v.setLayoutParams(marginLayoutParams);
            }
        }
        View view4 = this.D;
        if (view4 != null) {
            view4.setVisibility(z10 ? 0 : 8);
        }
        return systemWindowInsetTop;
    }

    @Override // androidx.appcompat.app.f
    public Context i(Context context) {
        this.P = true;
        int iF0 = F0(context, b0());
        if (androidx.appcompat.app.f.y(context)) {
            androidx.appcompat.app.f.V(context);
        }
        androidx.core.os.i iVarA0 = a0(context);
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(h0(context, iF0, iVarA0, null, false));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof androidx.appcompat.view.d) {
            try {
                ((androidx.appcompat.view.d) context).a(h0(context, iF0, iVarA0, null, false));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!f1018m0) {
            return super.i(context);
        }
        Configuration configuration = new Configuration();
        configuration.uiMode = -1;
        configuration.fontScale = 0.0f;
        Configuration configuration2 = context.createConfigurationContext(configuration).getResources().getConfiguration();
        Configuration configuration3 = context.getResources().getConfiguration();
        configuration2.uiMode = configuration3.uiMode;
        Configuration configurationH0 = h0(context, iF0, iVarA0, !configuration2.equals(configuration3) ? q0(configuration2, configuration3) : null, true);
        androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, R$style.Theme_AppCompat_Empty);
        dVar.a(configurationH0);
        try {
            if (context.getTheme() != null) {
                y0.h.f.a(dVar.getTheme());
            }
        } catch (NullPointerException unused3) {
        }
        return super.i(dVar);
    }

    void j0() {
        androidx.appcompat.view.menu.f fVar;
        androidx.appcompat.widget.s sVar = this.f1036r;
        if (sVar != null) {
            sVar.dismissPopups();
        }
        if (this.f1041w != null) {
            this.f1030l.getDecorView().removeCallbacks(this.f1042x);
            if (this.f1041w.isShowing()) {
                try {
                    this.f1041w.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.f1041w = null;
        }
        m0();
        PanelFeatureState panelFeatureStateW0 = w0(0, false);
        if (panelFeatureStateW0 == null || (fVar = panelFeatureStateW0.f1055j) == null) {
            return;
        }
        fVar.close();
    }

    boolean k0(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f1028j;
        if (((obj instanceof KeyEventDispatcher.Component) || (obj instanceof w)) && (decorView = this.f1030l.getDecorView()) != null && KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f1031m.b(this.f1030l.getCallback(), keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? H0(keyCode, keyEvent) : K0(keyCode, keyEvent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.app.f
    public View l(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z10;
        if (this.f1024f0 == null) {
            TypedArray typedArrayObtainStyledAttributes = this.f1029k.obtainStyledAttributes(R$styleable.AppCompatTheme);
            String string = typedArrayObtainStyledAttributes.getString(R$styleable.AppCompatTheme_viewInflaterClass);
            typedArrayObtainStyledAttributes.recycle();
            if (string == null) {
                this.f1024f0 = new x();
            } else {
                try {
                    this.f1024f0 = (x) this.f1029k.getClassLoader().loadClass(string).getDeclaredConstructor(null).newInstance(null);
                } catch (Throwable unused) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Failed to instantiate custom view inflater ");
                    sb2.append(string);
                    sb2.append(". Falling back to default.");
                    this.f1024f0 = new x();
                }
            }
        }
        boolean z11 = f1016k0;
        boolean zY0 = false;
        if (z11) {
            if (this.f1025g0 == null) {
                this.f1025g0 = new y();
            }
            if (this.f1025g0.a(attributeSet)) {
                z10 = true;
            } else {
                if (!(attributeSet instanceof XmlPullParser)) {
                    zY0 = Y0((ViewParent) view);
                } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    zY0 = true;
                }
                z10 = zY0;
            }
        } else {
            z10 = zY0;
        }
        return this.f1024f0.r(view, str, context, attributeSet, z10, z11, true, t0.c());
    }

    void l0(int i11) {
        PanelFeatureState panelFeatureStateW0;
        PanelFeatureState panelFeatureStateW1 = w0(i11, true);
        if (panelFeatureStateW1.f1055j != null) {
            Bundle bundle = new Bundle();
            panelFeatureStateW1.f1055j.U(bundle);
            if (bundle.size() > 0) {
                panelFeatureStateW1.f1064s = bundle;
            }
            panelFeatureStateW1.f1055j.i0();
            panelFeatureStateW1.f1055j.clear();
        }
        panelFeatureStateW1.f1063r = true;
        panelFeatureStateW1.f1062q = true;
        if ((i11 != 108 && i11 != 0) || this.f1036r == null || (panelFeatureStateW0 = w0(0, false)) == null) {
            return;
        }
        panelFeatureStateW0.f1058m = false;
        S0(panelFeatureStateW0, null);
    }

    @Override // androidx.appcompat.app.f
    public View m(int i11) {
        n0();
        return this.f1030l.findViewById(i11);
    }

    void m0() {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f1043y;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
    }

    @Override // androidx.appcompat.app.f
    public Context o() {
        return this.f1029k;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return l(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    PanelFeatureState p0(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.M;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i11 = 0; i11 < length; i11++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i11];
            if (panelFeatureState != null && panelFeatureState.f1055j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.app.f
    public final androidx.appcompat.app.b q() {
        return new d();
    }

    @Override // androidx.appcompat.app.f
    public int r() {
        return this.T;
    }

    final Context r0() {
        androidx.appcompat.app.a aVarV = v();
        Context contextK = aVarV != null ? aVarV.k() : null;
        return contextK == null ? this.f1029k : contextK;
    }

    @Override // androidx.appcompat.app.f
    public MenuInflater t() {
        if (this.f1034p == null) {
            z0();
            androidx.appcompat.app.a aVar = this.f1033o;
            this.f1034p = new androidx.appcompat.view.g(aVar != null ? aVar.k() : this.f1029k);
        }
        return this.f1034p;
    }

    @Override // androidx.appcompat.app.f
    public androidx.appcompat.app.a v() {
        z0();
        return this.f1033o;
    }

    androidx.core.os.i v0(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? i.b(configuration) : androidx.core.os.i.c(h.b(configuration.locale));
    }

    @Override // androidx.appcompat.app.f
    public void w() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f1029k);
        if (layoutInflaterFrom.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(layoutInflaterFrom, this);
        } else {
            boolean z10 = layoutInflaterFrom.getFactory2() instanceof AppCompatDelegateImpl;
        }
    }

    protected PanelFeatureState w0(int i11, boolean z10) {
        PanelFeatureState[] panelFeatureStateArr = this.M;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i11) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i11 + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.M = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i11];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i11);
        panelFeatureStateArr[i11] = panelFeatureState2;
        return panelFeatureState2;
    }

    @Override // androidx.appcompat.app.f
    public void x() {
        if (Q0() == null || v().m()) {
            return;
        }
        D0(0);
    }

    final CharSequence x0() {
        Object obj = this.f1028j;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.f1035q;
    }

    final Window.Callback y0() {
        return this.f1030l.getCallback();
    }
}
