package jg;

import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.d;
import java.util.Locale;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f66014a;

    public static final void b(View view, final long j11, final Function1 action) {
        Intrinsics.h(view, "<this>");
        Intrinsics.h(action, "action");
        view.setOnClickListener(new View.OnClickListener() { // from class: jg.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                c.d(j11, action, view2);
            }
        });
    }

    public static /* synthetic */ void c(View view, long j11, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j11 = 500;
        }
        b(view, j11, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(long j11, Function1 function1, View view) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j12 = f66014a;
        if (j12 == 0 || jElapsedRealtime - j12 >= j11) {
            f66014a = jElapsedRealtime;
            Intrinsics.e(view);
            function1.invoke(view);
        }
    }

    public static final void e(View view) {
        Intrinsics.h(view, "<this>");
        view.setPadding(view.getPaddingStart(), view.getPaddingTop() + d.c(), view.getPaddingEnd(), view.getPaddingBottom());
    }

    public static final boolean f() {
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("k_language_short_name", null);
        Locale locale = Build.VERSION.SDK_INT >= 24 ? Utils.a().getResources().getConfiguration().getLocales().get(0) : Utils.a().getResources().getConfiguration().locale;
        if (!Intrinsics.c(locale.getLanguage(), string) && string != null && string.length() > 0) {
            locale = new Locale(string, locale.getCountry());
        }
        return TextUtils.getLayoutDirectionFromLocale(locale) == 1;
    }

    public static final void g(View view) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(8);
    }

    public static final void h(View view) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(4);
    }

    public static final boolean i(View view) {
        Intrinsics.h(view, "<this>");
        return view.getVisibility() == 0;
    }

    public static final void j(View view, boolean z10) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(z10 ? 0 : 8);
    }

    public static final void k(View view) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(0);
    }
}
