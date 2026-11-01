package com.transsion.shorttv_pugc.base.locale;

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
import com.transsion.shorttv_pugc.utils.h;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f53781f = new b(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f53782g = {null, "English", "Bahasa Indonesia", "Français", "Português", "العربية", "বাংলা", "Русский", "ਪੰਜਾਬੀ", "اردو", "Filipino"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String[] f53783h = {null, Locale.ENGLISH.getLanguage(), "in", "fr", "pt", "ar", "bn", "ru", "pa", "ur", "fil"};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Lazy f53784i = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.base.locale.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.i();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Locale f53785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Locale f53786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f53787c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f53788d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f53789e;

    public static final class a implements ComponentCallbacks2 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f53791b;

        a(Context context) {
            this.f53791b = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(d dVar, Locale locale, Locale locale2, Context context) {
            if (dVar.h() == locale) {
                String country = locale2.getCountry();
                Intrinsics.g(country, "getCountry(...)");
                dVar.k(null, country, true);
            } else {
                Intrinsics.e(context);
                dVar.m(context, dVar.h());
            }
            lg.a.C0828a.f(lg.a.f68839a, "LocaleManager", "onConfigurationChanged()-> locale = " + locale2, false, 4, null);
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration newConfig) {
            Intrinsics.h(newConfig, "newConfig");
            final Locale locale = Build.VERSION.SDK_INT >= 24 ? newConfig.getLocales().get(0) : newConfig.locale;
            final Locale locale2 = d.this.f53786b;
            if (Intrinsics.c(locale, locale2)) {
                return;
            }
            d dVar = d.this;
            Intrinsics.e(locale);
            dVar.f53786b = locale;
            final d dVar2 = d.this;
            final Context context = this.f53791b;
            ThreadUtils.k(new Runnable() { // from class: com.transsion.shorttv_pugc.base.locale.c
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

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Locale f(String str, String str2) {
            if (str == null || str.length() == 0) {
                return null;
            }
            return new Locale(str, str2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String g() {
            return h.f54445a.g().getString("k_language_short_name", null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void h(String str) {
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
                    h.f54445a.g().putString("k_language_short_name", str);
                    return;
                }
            }
            h.f54445a.g().remove("k_language_short_name");
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
            return (d) d.f53784i.getValue();
        }

        public final Context i(Context context, Locale locale) {
            Intrinsics.h(context, "context");
            Configuration configuration = new Configuration(context.getResources().getConfiguration());
            if (Build.VERSION.SDK_INT >= 24) {
                com.transsion.baselib.locale.e.a();
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
        e eVar = new e();
        this.f53789e = eVar;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.f(applicationContext, "null cannot be cast to non-null type android.app.Application");
        Application application = (Application) applicationContext;
        Context baseContext = application.getBaseContext();
        Intrinsics.e(baseContext);
        this.f53788d = baseContext;
        b bVar = f53781f;
        Locale localeD = bVar.d(baseContext);
        this.f53786b = localeD;
        String country = localeD.getCountry();
        lg.a.C0828a.f(lg.a.f68839a, "LocaleManager", "LocaleManager()->  system locale =" + this.f53786b + ", countryCode = " + country, false, 4, null);
        application.registerActivityLifecycleCallbacks(eVar);
        application.registerComponentCallbacks(new a(baseContext));
        String strG = bVar.g();
        Intrinsics.e(country);
        k(strG, country, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final d i() {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return new d(applicationA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(String str, String str2, boolean z10) {
        yg.b.f79009a.l(str);
        Context context = this.f53788d;
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
        if (z10 || !TextUtils.equals(str, this.f53787c)) {
            b bVar = f53781f;
            final Locale localeF = bVar.f(str, str2);
            if (localeF == null) {
                localeF = this.f53786b;
            }
            lg.a.C0828a.f(lg.a.f68839a, "LocaleManager", "setLocale()-> locale = " + localeF + " , language = " + ((Object) str), false, 4, null);
            synchronized (this) {
                this.f53787c = str;
                this.f53785a = localeF;
                Locale.setDefault(localeF);
                Unit unit = Unit.f67061a;
            }
            m(context, localeF);
            bVar.h(str);
            ThreadUtils.k(new Runnable() { // from class: com.transsion.shorttv_pugc.base.locale.b
                @Override // java.lang.Runnable
                public final void run() {
                    d.l(this.f53775a, localeF);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(d dVar, Locale locale) {
        lg.a.C0828a.f(lg.a.f68839a, "LocaleManager", "notify changed()-> ", false, 4, null);
        dVar.f53789e.e(locale);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(Context context, Locale locale) {
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

    public final synchronized Locale h() {
        return this.f53785a;
    }

    public final void j(String str) {
        if (Build.VERSION.SDK_INT == 23 && Intrinsics.c("ur", str)) {
            k(str, "PK", false);
            return;
        }
        String country = this.f53786b.getCountry();
        Intrinsics.g(country, "getCountry(...)");
        k(str, country, false);
    }
}
