package com.transsion.baselib.locale;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f43297f = new b(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f43298g = {null, "English", "Bahasa Indonesia", "Français", "Português", "العربية", "বাংলা", "Русский", "ਪੰਜਾਬੀ", "اردو", "Filipino", "Bahasa Melayu", "Español"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String[] f43299h = {null, Locale.ENGLISH.getLanguage(), "in", "fr", "pt", "ar", "bn", "ru", "pa", "ur", "fil", "ms", "es"};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Lazy f43300i = LazyKt.b(new Function0() { // from class: com.transsion.baselib.locale.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.m();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Locale f43301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Locale f43302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f43303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f43304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f f43305e;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a implements ComponentCallbacks2 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f43307b;

        a(Context context) {
            this.f43307b = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(d dVar, Locale locale, Locale locale2, Context context) {
            if (dVar.j() == locale) {
                String country = locale2.getCountry();
                Intrinsics.g(country, "getCountry(...)");
                dVar.o(null, country, true);
            } else {
                Intrinsics.e(context);
                dVar.r(context, dVar.j());
            }
            lg.a.C0828a.f(lg.a.f68839a, "LocaleManager", "onConfigurationChanged()-> locale = " + locale2, false, 4, null);
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration newConfig) {
            Intrinsics.h(newConfig, "newConfig");
            final Locale locale = Build.VERSION.SDK_INT >= 24 ? newConfig.getLocales().get(0) : newConfig.locale;
            final Locale locale2 = d.this.f43302b;
            if (Intrinsics.c(locale, locale2)) {
                return;
            }
            d dVar = d.this;
            Intrinsics.e(locale);
            dVar.f43302b = locale;
            final d dVar2 = d.this;
            final Context context = this.f43307b;
            ThreadUtils.k(new Runnable() { // from class: com.transsion.baselib.locale.c
                @Override // java.lang.Runnable
                public final void run() {
                    d.a.b(dVar2, locale2, locale, context);
                }
            });
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i11) {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Locale h(String str, String str2) {
            if (str == null || str.length() == 0) {
                return null;
            }
            return new Locale(str, str2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String i() {
            return com.transsion.baselib.report.launch.b.f43370a.b().getString("k_language_short_name", null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void j(String str) {
            if (str != null) {
                int length = str.length() - 1;
                int i11 = 0;
                boolean z10 = false;
                while (i11 <= length) {
                    boolean z11 = Intrinsics.j(str.charAt(!z10 ? i11 : length), 32) <= 0;
                    if (z10) {
                        if (!z11) {
                            break;
                        } else {
                            length--;
                        }
                    } else if (z11) {
                        i11++;
                    } else {
                        z10 = true;
                    }
                }
                if (str.subSequence(i11, length + 1).toString().length() != 0) {
                    com.transsion.baselib.report.launch.b.f43370a.b().putString("k_language_short_name", str);
                    return;
                }
            }
            com.transsion.baselib.report.launch.b.f43370a.b().remove("k_language_short_name");
        }

        public final Locale d(Context context) {
            Intrinsics.h(context, "context");
            lg.a.C0828a.f(lg.a.f68839a, "LocaleManager", "getContextLocale()-> context = " + context, false, 4, null);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT >= 24) {
                Locale locale = configuration.getLocales().get(0);
                Intrinsics.e(locale);
                return locale;
            }
            Locale locale2 = configuration.locale;
            Intrinsics.e(locale2);
            return locale2;
        }

        public final d e() {
            return (d) d.f43300i.getValue();
        }

        public final String[] f() {
            return d.f43299h;
        }

        public final String[] g() {
            return d.f43298g;
        }

        public final Context k(Context context, Locale locale) {
            Intrinsics.h(context, "context");
            Configuration configuration = new Configuration(context.getResources().getConfiguration());
            if (Build.VERSION.SDK_INT >= 24) {
                e.a();
                LocaleList localeListA = androidx.compose.ui.text.platform.extensions.a.a(new Locale[]{locale});
                configuration.setLocales(localeListA);
                LocaleList.setDefault(localeListA);
            } else {
                configuration.setLocale(locale);
            }
            Context contextCreateConfigurationContext = context.createConfigurationContext(configuration);
            Intrinsics.g(contextCreateConfigurationContext, "createConfigurationContext(...)");
            return contextCreateConfigurationContext;
        }
    }

    private d(Context context) {
        f fVar = new f();
        this.f43305e = fVar;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.f(applicationContext, "null cannot be cast to non-null type android.app.Application");
        Application application = (Application) applicationContext;
        Context baseContext = application.getBaseContext();
        Intrinsics.e(baseContext);
        this.f43304d = baseContext;
        b bVar = f43297f;
        Locale localeD = bVar.d(baseContext);
        this.f43302b = localeD;
        String country = localeD.getCountry();
        lg.a.C0828a.f(lg.a.f68839a, "LocaleManager", "LocaleManager()->  system locale =" + this.f43302b + ", countryCode = " + country, false, 4, null);
        application.registerActivityLifecycleCallbacks(fVar);
        application.registerComponentCallbacks(new a(baseContext));
        String strI = bVar.i();
        Intrinsics.e(country);
        o(strI, country, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final d m() {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return new d(applicationA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(String str, String str2, boolean z10) {
        yg.b.f79009a.l(str);
        Context context = this.f43304d;
        if (str != null) {
            int length = str.length() - 1;
            int i11 = 0;
            boolean z11 = false;
            while (i11 <= length) {
                boolean z12 = Intrinsics.j(str.charAt(!z11 ? i11 : length), 32) <= 0;
                if (z11) {
                    if (!z12) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z12) {
                    i11++;
                } else {
                    z11 = true;
                }
            }
            if (str.subSequence(i11, length + 1).toString().length() == 0) {
                str = null;
            }
        }
        if (z10 || !TextUtils.equals(str, this.f43303c)) {
            b bVar = f43297f;
            final Locale localeH = bVar.h(str, str2);
            if (localeH == null) {
                localeH = this.f43302b;
            }
            lg.a.C0828a.f(lg.a.f68839a, "LocaleManager", "setLocale()-> locale = " + localeH + " , language = " + ((Object) str), false, 4, null);
            synchronized (this) {
                this.f43303c = str;
                this.f43301a = localeH;
                Locale.setDefault(localeH);
                Unit unit = Unit.f67061a;
            }
            r(context, localeH);
            bVar.j(str);
            ThreadUtils.k(new Runnable() { // from class: com.transsion.baselib.locale.b
                @Override // java.lang.Runnable
                public final void run() {
                    d.p(this.f43291a, localeH);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(d dVar, Locale locale) {
        lg.a.C0828a.f(lg.a.f68839a, "LocaleManager", "notify changed()-> ", false, 4, null);
        dVar.f43305e.e(locale);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(Context context, Locale locale) {
        Locale locale2;
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        if (Build.VERSION.SDK_INT >= 24) {
            locale2 = configuration.getLocales().get(0);
            Intrinsics.e(locale2);
        } else {
            locale2 = configuration.locale;
            Intrinsics.e(locale2);
        }
        lg.a.C0828a.f(lg.a.f68839a, "LocaleManager", "updateConfig()-> old app locale = " + locale2 + " , new app locale = " + locale, false, 4, null);
        Configuration configuration2 = new Configuration(configuration);
        configuration2.setLocale(locale);
        resources.updateConfiguration(configuration2, resources.getDisplayMetrics());
    }

    public final synchronized Locale j() {
        return this.f43301a;
    }

    public final Locale k() {
        return this.f43301a;
    }

    public final Locale l() {
        return this.f43302b;
    }

    public final void n(String str) {
        if (Build.VERSION.SDK_INT == 23 && Intrinsics.c("ur", str)) {
            o(str, "PK", false);
            return;
        }
        String country = this.f43302b.getCountry();
        Intrinsics.g(country, "getCountry(...)");
        o(str, country, false);
    }

    public final boolean q(Locale locale) {
        Intrinsics.h(locale, "locale");
        return this.f43302b == locale;
    }
}
