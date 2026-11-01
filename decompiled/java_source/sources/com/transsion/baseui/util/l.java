package com.transsion.baseui.util;

import android.app.Application;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Patterns;
import android.view.View;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$mipmap;
import com.transsion.web.api.WebPageIdentity;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f43523a = Pattern.compile("(?i:http|https|rtsp|ftp)://");

    public static final class a extends ClickableSpan {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function2 f43524a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f43525b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f43526c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f43527d;

        a(Function2 function2, String str, boolean z10, int i11) {
            this.f43524a = function2;
            this.f43525b = str;
            this.f43526c = z10;
            this.f43527d = i11;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            Intrinsics.h(widget, "widget");
            Function2 function2 = this.f43524a;
            if (function2 != null) {
                String str = this.f43525b;
                if (str == null) {
                    str = "";
                }
                function2.invoke(widget, str);
            }
            if (this.f43526c) {
                l.d(this.f43525b);
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds2) {
            Intrinsics.h(ds2, "ds");
            super.updateDrawState(ds2);
            ds2.setColor(this.f43527d);
        }
    }

    public static final class b extends ClickableSpan {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function2 f43528a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f43529b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f43530c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f43531d;

        b(Function2 function2, String str, boolean z10, int i11) {
            this.f43528a = function2;
            this.f43529b = str;
            this.f43530c = z10;
            this.f43531d = i11;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            Intrinsics.h(widget, "widget");
            Function2 function2 = this.f43528a;
            if (function2 != null) {
                String str = this.f43529b;
                if (str == null) {
                    str = "";
                }
                function2.invoke(widget, str);
            }
            if (this.f43530c) {
                l.d(this.f43529b);
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds2) {
            Intrinsics.h(ds2, "ds");
            super.updateDrawState(ds2);
            ds2.setColor(this.f43531d);
        }
    }

    public static final SpannableString b(TextView textView, CharSequence charSequence, boolean z10, g gVar, Function2 function2) {
        int i11;
        Object obj = null;
        if (textView != null) {
            textView.setOnTouchListener(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            return new SpannableString("");
        }
        ArrayList<UrlContent> arrayList = new ArrayList();
        Matcher matcher = Patterns.WEB_URL.matcher(charSequence);
        int color = androidx.core.content.b.getColor(Utils.a(), R$color.color_0ba7ff);
        CharSequence charSequenceS = charSequence;
        while (matcher.find()) {
            String strGroup = matcher.group();
            Intrinsics.e(strGroup);
            int iO0 = 0;
            if (StringsKt.G(strGroup, ")", false, 2, obj)) {
                Intrinsics.e(strGroup);
                strGroup = StringsKt.Q(strGroup, ")", "", false, 4, null);
            }
            if (charSequenceS != null) {
                Intrinsics.e(strGroup);
                iO0 = StringsKt.o0(charSequenceS, strGroup, 0, false, 6, null);
            }
            Intrinsics.e(strGroup);
            String strQ = StringsKt.Q(strGroup, "%20", " ", false, 4, null);
            Matcher matcher2 = f43523a.matcher(strQ);
            if (matcher2.find()) {
                String strGroup2 = matcher2.group();
                Intrinsics.g(strGroup2, "group(...)");
                String strQ2 = StringsKt.Q(strQ, strGroup2, "", false, 4, null);
                Matcher matcher3 = Patterns.DOMAIN_NAME.matcher(strQ2);
                if (matcher3.find()) {
                    String strGroup3 = matcher3.group();
                    Intrinsics.e(strGroup3);
                    i11 = 2;
                    if (StringsKt.c0(strGroup3, ".", false, 2, obj)) {
                        List listS0 = StringsKt.S0(strGroup3, new String[]{"."}, false, 0, 6, null);
                        if (listS0.size() > 2) {
                            strQ2 = StringsKt.Q(strQ2, listS0.get(0) + ".", "", false, 4, null);
                        }
                    }
                } else {
                    i11 = 2;
                }
                if (strQ2.length() > 24) {
                    strQ2 = StringsKt.M0(strQ2, 24, strQ2.length(), "...").toString();
                }
                String str = "-" + strQ2;
                String strValueOf = String.valueOf(charSequenceS);
                Intrinsics.e(strGroup);
                charSequenceS = StringsKt.S(strValueOf, strGroup, str, false, 4, null);
                Drawable drawable = androidx.core.content.b.getDrawable(Utils.a(), R$mipmap.base_ic_url_link);
                if (drawable != null) {
                    drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                }
                arrayList.add(new UrlContent(new a(function2, strQ, z10, color), drawable != null ? new com.transsion.baseui.widget.d(drawable, i11) : null, strGroup, str, iO0));
                obj = null;
            }
        }
        if (arrayList.isEmpty()) {
            return new SpannableString(charSequence);
        }
        SpannableString spannableString = new SpannableString(charSequenceS);
        for (UrlContent urlContent : arrayList) {
            spannableString.setSpan(urlContent.getIconSpan(), urlContent.getIndexOfUrl(), urlContent.getIndexOfUrl() + 1, 33);
            spannableString.setSpan(urlContent.getClickableSpan(), urlContent.getIndexOfUrl(), urlContent.getIndexOfUrl() + urlContent.getUrl().length(), 33);
        }
        if (gVar != null) {
            gVar.a(arrayList);
        }
        if (textView != null) {
            textView.setOnTouchListener(new hk.a(spannableString));
        }
        if (textView != null) {
            textView.setHighlightColor(androidx.core.content.b.getColor(Utils.a(), R$color.cl17));
        }
        return spannableString;
    }

    public static final SpannableStringBuilder c(TextView textView, CharSequence charSequence, boolean z10, int i11, g gVar, Function2 function2) {
        SpannableStringBuilder spannableStringBuilder;
        int i12;
        Object obj = null;
        if (textView != null) {
            textView.setOnTouchListener(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            return new SpannableStringBuilder("");
        }
        ArrayList<UrlContent> arrayList = new ArrayList();
        Matcher matcher = Patterns.WEB_URL.matcher(charSequence);
        int color = androidx.core.content.b.getColor(Utils.a(), R$color.color_0ba7ff);
        CharSequence string = charSequence;
        while (true) {
            int iO0 = 0;
            if (!matcher.find()) {
                break;
            }
            String strGroup = matcher.group();
            Intrinsics.e(strGroup);
            if (StringsKt.G(strGroup, ")", false, 2, obj)) {
                Intrinsics.e(strGroup);
                strGroup = StringsKt.Q(strGroup, ")", "", false, 4, null);
            }
            String str = strGroup;
            if (string != null) {
                Intrinsics.e(str);
                iO0 = StringsKt.o0(string, str, 0, false, 6, null);
            }
            Intrinsics.e(str);
            String strQ = StringsKt.Q(str, "%20", " ", false, 4, null);
            Matcher matcher2 = f43523a.matcher(strQ);
            if (matcher2.find()) {
                String strGroup2 = matcher2.group();
                Intrinsics.g(strGroup2, "group(...)");
                String strQ2 = StringsKt.Q(strQ, strGroup2, "", false, 4, null);
                Matcher matcher3 = Patterns.DOMAIN_NAME.matcher(strQ2);
                if (matcher3.find()) {
                    String strGroup3 = matcher3.group();
                    Intrinsics.e(strGroup3);
                    i12 = 2;
                    if (StringsKt.c0(strGroup3, ".", iO0, 2, obj)) {
                        List listS0 = StringsKt.S0(strGroup3, new String[]{"."}, false, 0, 6, null);
                        if (listS0.size() > 2) {
                            strQ2 = StringsKt.Q(strQ2, listS0.get(0) + ".", "", false, 4, null);
                        }
                    }
                } else {
                    i12 = 2;
                }
                if (strQ2.length() > 24) {
                    strQ2 = StringsKt.M0(strQ2, 24, strQ2.length(), "...").toString();
                }
                String str2 = "-" + strQ2;
                String strValueOf = String.valueOf(string);
                Intrinsics.e(str);
                string = StringsKt.S(strValueOf, str, str2, false, 4, null);
                Drawable drawable = androidx.core.content.b.getDrawable(Utils.a(), R$mipmap.base_ic_url_link);
                if (drawable != null) {
                    drawable.setBounds(iO0, iO0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                }
                arrayList.add(new UrlContent(new b(function2, strQ, z10, color), drawable != null ? new com.transsion.baseui.widget.d(drawable, i12) : null, str, str2, iO0));
                obj = null;
            }
        }
        StaticLayout staticLayout = new StaticLayout(charSequence, textView != null ? textView.getPaint() : null, textView != null ? textView.getWidth() : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        if (i11 < staticLayout.getLineCount()) {
            int lineEnd = staticLayout.getLineEnd(i11 - 1) - 13;
            if ((string != null ? string.length() : 0) > 30 && lineEnd > 0) {
                if (lineEnd < (string != null ? string.length() : 0)) {
                    string = string != null ? string.subSequence(0, lineEnd).toString() : null;
                }
            }
            spannableStringBuilder = new SpannableStringBuilder(string);
            for (UrlContent urlContent : arrayList) {
                if (urlContent.getIndexOfUrl() + urlContent.getUrl().length() < spannableStringBuilder.length()) {
                    spannableStringBuilder.setSpan(urlContent.getIconSpan(), urlContent.getIndexOfUrl(), urlContent.getIndexOfUrl() + 1, 33);
                    spannableStringBuilder.setSpan(urlContent.getClickableSpan(), urlContent.getIndexOfUrl(), urlContent.getIndexOfUrl() + urlContent.getUrl().length(), 33);
                }
            }
            spannableStringBuilder.append((CharSequence) "...");
            spannableStringBuilder.append((CharSequence) " More");
            int length = spannableStringBuilder.length() - 5;
            int length2 = spannableStringBuilder.length();
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            spannableStringBuilder.setSpan(new ph.a(jg.a.c(applicationA)), length, length2, 33);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(Utils.a().getResources().getColor(R$color.brand_new_50)), length, length2, 33);
        } else {
            spannableStringBuilder = new SpannableStringBuilder(string);
            for (UrlContent urlContent2 : arrayList) {
                spannableStringBuilder.setSpan(urlContent2.getIconSpan(), urlContent2.getIndexOfUrl(), urlContent2.getIndexOfUrl() + 1, 33);
                spannableStringBuilder.setSpan(urlContent2.getClickableSpan(), urlContent2.getIndexOfUrl(), urlContent2.getIndexOfUrl() + urlContent2.getUrl().length(), 33);
            }
        }
        if (gVar != null) {
            gVar.a(arrayList);
        }
        if (textView != null) {
            textView.setOnTouchListener(new hk.a(spannableStringBuilder));
        }
        if (textView != null) {
            textView.setHighlightColor(androidx.core.content.b.getColor(Utils.a(), R$color.cl17));
        }
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(String str) {
        Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", str), null, null, 3, null);
    }

    public static final void e(TextView textView, CharSequence charSequence, Function2 function2) {
        Intrinsics.h(textView, "<this>");
        textView.setText(b(textView, charSequence, true, null, function2));
    }

    public static final void f(TextView textView, CharSequence charSequence, boolean z10, Function2 function2) {
        Intrinsics.h(textView, "<this>");
        textView.setText(b(textView, charSequence, z10, null, function2));
    }

    public static final void g(TextView textView, CharSequence charSequence, int i11, Function2 function2) {
        Intrinsics.h(textView, "<this>");
        textView.setText(c(textView, charSequence, true, i11, null, function2));
    }

    public static /* synthetic */ void h(TextView textView, CharSequence charSequence, int i11, Function2 function2, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 10;
        }
        if ((i12 & 4) != 0) {
            function2 = null;
        }
        g(textView, charSequence, i11, function2);
    }
}
