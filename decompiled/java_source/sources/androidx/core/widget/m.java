package androidx.core.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.text.Editable;
import android.text.PrecomputedText;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.core.text.PrecomputedTextCompat;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    static class a {
        static int a(TextView textView) {
            return textView.getBreakStrategy();
        }

        static int b(TextView textView) {
            return textView.getHyphenationFrequency();
        }

        static void c(TextView textView, int i11) {
            textView.setBreakStrategy(i11);
        }

        static void d(TextView textView, ColorStateList colorStateList) {
            textView.setCompoundDrawableTintList(colorStateList);
        }

        static void e(TextView textView, PorterDuff.Mode mode) {
            textView.setCompoundDrawableTintMode(mode);
        }

        static void f(TextView textView, int i11) {
            textView.setHyphenationFrequency(i11);
        }
    }

    static class b {
        static DecimalFormatSymbols a(Locale locale) {
            return DecimalFormatSymbols.getInstance(locale);
        }
    }

    static class c {
        static void a(TextView textView, int i11, int i12, int i13, int i14) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i11, i12, i13, i14);
        }
    }

    static class d {
        static CharSequence a(PrecomputedText precomputedText) {
            return precomputedText;
        }

        static String[] b(DecimalFormatSymbols decimalFormatSymbols) {
            return decimalFormatSymbols.getDigitStrings();
        }

        static PrecomputedText.Params c(TextView textView) {
            return textView.getTextMetricsParams();
        }

        static void d(TextView textView, int i11) {
            textView.setFirstBaselineToTopHeight(i11);
        }
    }

    static class e {
        public static void a(TextView textView, int i11, float f11) {
            textView.setLineHeight(i11, f11);
        }
    }

    private static class f implements ActionMode.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ActionMode.Callback f8510a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextView f8511b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Class f8512c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Method f8513d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f8514e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f8515f = false;

        f(ActionMode.Callback callback, TextView textView) {
            this.f8510a = callback;
            this.f8511b = textView;
        }

        private Intent a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType(ShareConstant.SHARE_TYPE_TEXT);
        }

        private Intent b(ResolveInfo resolveInfo, TextView textView) {
            Intent intentPutExtra = a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !e(textView));
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            return intentPutExtra.setClassName(activityInfo.packageName, activityInfo.name);
        }

        private List c(Context context, PackageManager packageManager) {
            ArrayList arrayList = new ArrayList();
            if (!(context instanceof Activity)) {
                return arrayList;
            }
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(a(), 0)) {
                if (f(resolveInfo, context)) {
                    arrayList.add(resolveInfo);
                }
            }
            return arrayList;
        }

        private boolean e(TextView textView) {
            return (textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled();
        }

        private boolean f(ResolveInfo resolveInfo, Context context) {
            if (context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                return true;
            }
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (!activityInfo.exported) {
                return false;
            }
            String str = activityInfo.permission;
            return str == null || context.checkSelfPermission(str) == 0;
        }

        private void g(Menu menu) {
            Context context = this.f8511b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f8515f) {
                this.f8515f = true;
                try {
                    Class<?> cls = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f8512c = cls;
                    this.f8513d = cls.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f8514e = true;
                } catch (ClassNotFoundException | NoSuchMethodException unused) {
                    this.f8512c = null;
                    this.f8513d = null;
                    this.f8514e = false;
                }
            }
            try {
                Method declaredMethod = (this.f8514e && this.f8512c.isInstance(menu)) ? this.f8513d : menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE);
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                List listC = c(context, packageManager);
                for (int i11 = 0; i11 < listC.size(); i11++) {
                    ResolveInfo resolveInfo = (ResolveInfo) listC.get(i11);
                    menu.add(0, 0, i11 + 100, resolveInfo.loadLabel(packageManager)).setIntent(b(resolveInfo, this.f8511b)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }

        ActionMode.Callback d() {
            return this.f8510a;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f8510a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f8510a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f8510a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            g(menu);
            return this.f8510a.onPrepareActionMode(actionMode, menu);
        }
    }

    public static Drawable[] a(TextView textView) {
        return textView.getCompoundDrawablesRelative();
    }

    public static int b(TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    public static int c(TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    public static int d(TextView textView) {
        return textView.getMaxLines();
    }

    private static int e(TextDirectionHeuristic textDirectionHeuristic) {
        TextDirectionHeuristic textDirectionHeuristic2;
        TextDirectionHeuristic textDirectionHeuristic3 = TextDirectionHeuristics.FIRSTSTRONG_RTL;
        if (textDirectionHeuristic == textDirectionHeuristic3 || textDirectionHeuristic == (textDirectionHeuristic2 = TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            return 1;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
            return 2;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
            return 3;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
            return 4;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
            return 5;
        }
        if (textDirectionHeuristic == textDirectionHeuristic2) {
            return 6;
        }
        return textDirectionHeuristic == textDirectionHeuristic3 ? 7 : 1;
    }

    private static TextDirectionHeuristic f(TextView textView) {
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            return TextDirectionHeuristics.LTR;
        }
        if (Build.VERSION.SDK_INT >= 28 && (textView.getInputType() & 15) == 3) {
            byte directionality = Character.getDirectionality(d.b(b.a(textView.getTextLocale()))[0].codePointAt(0));
            return (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        boolean z10 = textView.getLayoutDirection() == 1;
        switch (textView.getTextDirection()) {
            case 2:
                return TextDirectionHeuristics.ANYRTL_LTR;
            case 3:
                return TextDirectionHeuristics.LTR;
            case 4:
                return TextDirectionHeuristics.RTL;
            case 5:
                return TextDirectionHeuristics.LOCALE;
            case 6:
                return TextDirectionHeuristics.FIRSTSTRONG_LTR;
            case 7:
                return TextDirectionHeuristics.FIRSTSTRONG_RTL;
            default:
                return z10 ? TextDirectionHeuristics.FIRSTSTRONG_RTL : TextDirectionHeuristics.FIRSTSTRONG_LTR;
        }
    }

    public static PrecomputedTextCompat.b g(TextView textView) {
        if (Build.VERSION.SDK_INT >= 28) {
            return new PrecomputedTextCompat.b(d.c(textView));
        }
        PrecomputedTextCompat.b.a aVar = new PrecomputedTextCompat.b.a(new TextPaint(textView.getPaint()));
        aVar.b(a.a(textView));
        aVar.c(a.b(textView));
        aVar.d(f(textView));
        return aVar.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void h(TextView textView, int i11, int i12, int i13, int i14) {
        if (Build.VERSION.SDK_INT >= 27) {
            c.a(textView, i11, i12, i13, i14);
        } else if (textView instanceof androidx.core.widget.a) {
            ((androidx.core.widget.a) textView).setAutoSizeTextTypeUniformWithConfiguration(i11, i12, i13, i14);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void i(TextView textView, ColorStateList colorStateList) {
        androidx.core.util.i.g(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            a.d(textView, colorStateList);
        } else if (textView instanceof p) {
            ((p) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void j(TextView textView, PorterDuff.Mode mode) {
        androidx.core.util.i.g(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            a.e(textView, mode);
        } else if (textView instanceof p) {
            ((p) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }

    public static void k(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    public static void l(TextView textView, int i11) {
        androidx.core.util.i.d(i11);
        if (Build.VERSION.SDK_INT >= 28) {
            d.d(textView, i11);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i12 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i11 > Math.abs(i12)) {
            textView.setPadding(textView.getPaddingLeft(), i11 + i12, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static void m(TextView textView, int i11) {
        androidx.core.util.i.d(i11);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i12 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i11 > Math.abs(i12)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i11 - i12);
        }
    }

    public static void n(TextView textView, int i11) {
        androidx.core.util.i.d(i11);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i11 != fontMetricsInt) {
            textView.setLineSpacing(i11 - fontMetricsInt, 1.0f);
        }
    }

    public static void o(TextView textView, int i11, float f11) {
        if (Build.VERSION.SDK_INT >= 34) {
            e.a(textView, i11, f11);
        } else {
            n(textView, Math.round(TypedValue.applyDimension(i11, f11, textView.getResources().getDisplayMetrics())));
        }
    }

    public static void p(TextView textView, PrecomputedTextCompat precomputedTextCompat) {
        if (Build.VERSION.SDK_INT >= 29) {
            textView.setText(d.a(precomputedTextCompat.c()));
        } else {
            if (!g(textView).a(precomputedTextCompat.b())) {
                throw new IllegalArgumentException("Given text can not be applied to TextView.");
            }
            textView.setText(precomputedTextCompat);
        }
    }

    public static void q(TextView textView, int i11) {
        textView.setTextAppearance(i11);
    }

    public static void r(TextView textView, PrecomputedTextCompat.b bVar) {
        textView.setTextDirection(e(bVar.d()));
        textView.getPaint().set(bVar.e());
        a.c(textView, bVar.b());
        a.f(textView, bVar.c());
    }

    public static ActionMode.Callback s(ActionMode.Callback callback) {
        return (!(callback instanceof f) || Build.VERSION.SDK_INT < 26) ? callback : ((f) callback).d();
    }

    public static ActionMode.Callback t(TextView textView, ActionMode.Callback callback) {
        int i11 = Build.VERSION.SDK_INT;
        return (i11 < 26 || i11 > 27 || (callback instanceof f) || callback == null) ? callback : new f(callback, textView);
    }
}
