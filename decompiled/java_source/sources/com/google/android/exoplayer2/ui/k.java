package com.google.android.exoplayer2.ui;

import android.text.Html;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.SparseArray;
import com.google.common.collect.ImmutableMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f27192a = Pattern.compile("(&#13;)?&#10;");

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f27193a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map f27194b;

        private b(String str, Map map) {
            this.f27193a = str;
            this.f27194b = map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final Comparator f27195e = new Comparator() { // from class: com.google.android.exoplayer2.ui.l
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return k.c.e((k.c) obj, (k.c) obj2);
            }
        };

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final Comparator f27196f = new Comparator() { // from class: com.google.android.exoplayer2.ui.m
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return k.c.f((k.c) obj, (k.c) obj2);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f27197a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f27198b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f27199c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f27200d;

        private c(int i11, int i12, String str, String str2) {
            this.f27197a = i11;
            this.f27198b = i12;
            this.f27199c = str;
            this.f27200d = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int e(c cVar, c cVar2) {
            int iCompare = Integer.compare(cVar2.f27198b, cVar.f27198b);
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompareTo = cVar.f27199c.compareTo(cVar2.f27199c);
            return iCompareTo != 0 ? iCompareTo : cVar.f27200d.compareTo(cVar2.f27200d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int f(c cVar, c cVar2) {
            int iCompare = Integer.compare(cVar2.f27197a, cVar.f27197a);
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompareTo = cVar2.f27199c.compareTo(cVar.f27199c);
            return iCompareTo != 0 ? iCompareTo : cVar2.f27200d.compareTo(cVar.f27200d);
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f27201a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f27202b = new ArrayList();
    }

    public static b a(CharSequence charSequence, float f11) {
        int i11 = 0;
        if (charSequence == null) {
            return new b("", ImmutableMap.of());
        }
        if (!(charSequence instanceof Spanned)) {
            return new b(b(charSequence), ImmutableMap.of());
        }
        Spanned spanned = (Spanned) charSequence;
        HashSet hashSet = new HashSet();
        for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class)) {
            hashSet.add(Integer.valueOf(backgroundColorSpan.getBackgroundColor()));
        }
        HashMap map = new HashMap();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            StringBuilder sb2 = new StringBuilder(14);
            sb2.append("bg_");
            sb2.append(iIntValue);
            map.put(h.a(sb2.toString()), com.google.android.exoplayer2.util.p0.C("background-color:%s;", h.b(iIntValue)));
        }
        SparseArray sparseArrayC = c(spanned, f11);
        StringBuilder sb3 = new StringBuilder(spanned.length());
        int i12 = 0;
        while (i11 < sparseArrayC.size()) {
            int iKeyAt = sparseArrayC.keyAt(i11);
            sb3.append(b(spanned.subSequence(i12, iKeyAt)));
            d dVar = (d) sparseArrayC.get(iKeyAt);
            Collections.sort(dVar.f27202b, c.f27196f);
            Iterator it2 = dVar.f27202b.iterator();
            while (it2.hasNext()) {
                sb3.append(((c) it2.next()).f27200d);
            }
            Collections.sort(dVar.f27201a, c.f27195e);
            Iterator it3 = dVar.f27201a.iterator();
            while (it3.hasNext()) {
                sb3.append(((c) it3.next()).f27199c);
            }
            i11++;
            i12 = iKeyAt;
        }
        sb3.append(b(spanned.subSequence(i12, spanned.length())));
        return new b(sb3.toString(), map);
    }

    private static String b(CharSequence charSequence) {
        return f27192a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }

    private static SparseArray c(Spanned spanned, float f11) {
        SparseArray sparseArray = new SparseArray();
        for (Object obj : spanned.getSpans(0, spanned.length(), Object.class)) {
            String strE = e(obj, f11);
            String strD = d(obj);
            int spanStart = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (strE != null) {
                com.google.android.exoplayer2.util.a.e(strD);
                c cVar = new c(spanStart, spanEnd, strE, strD);
                f(sparseArray, spanStart).f27201a.add(cVar);
                f(sparseArray, spanEnd).f27202b.add(cVar);
            }
        }
        return sparseArray;
    }

    private static String d(Object obj) {
        if ((obj instanceof StrikethroughSpan) || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof fa.a) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof fa.e)) {
            return "</span>";
        }
        if (obj instanceof TypefaceSpan) {
            if (((TypefaceSpan) obj).getFamily() != null) {
                return "</span>";
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "</b>";
            }
            if (style == 2) {
                return "</i>";
            }
            if (style == 3) {
                return "</i></b>";
            }
        } else {
            if (obj instanceof fa.c) {
                String strB = b(((fa.c) obj).f62362a);
                StringBuilder sb2 = new StringBuilder(String.valueOf(strB).length() + 16);
                sb2.append("<rt>");
                sb2.append(strB);
                sb2.append("</rt></ruby>");
                return sb2.toString();
            }
            if (obj instanceof UnderlineSpan) {
                return "</u>";
            }
        }
        return null;
    }

    private static String e(Object obj, float f11) {
        if (obj instanceof StrikethroughSpan) {
            return "<span style='text-decoration:line-through;'>";
        }
        if (obj instanceof ForegroundColorSpan) {
            return com.google.android.exoplayer2.util.p0.C("<span style='color:%s;'>", h.b(((ForegroundColorSpan) obj).getForegroundColor()));
        }
        if (obj instanceof BackgroundColorSpan) {
            return com.google.android.exoplayer2.util.p0.C("<span class='bg_%s'>", Integer.valueOf(((BackgroundColorSpan) obj).getBackgroundColor()));
        }
        if (obj instanceof fa.a) {
            return "<span style='text-combine-upright:all;'>";
        }
        if (obj instanceof AbsoluteSizeSpan) {
            AbsoluteSizeSpan absoluteSizeSpan = (AbsoluteSizeSpan) obj;
            return com.google.android.exoplayer2.util.p0.C("<span style='font-size:%.2fpx;'>", Float.valueOf(absoluteSizeSpan.getDip() ? absoluteSizeSpan.getSize() : absoluteSizeSpan.getSize() / f11));
        }
        if (obj instanceof RelativeSizeSpan) {
            return com.google.android.exoplayer2.util.p0.C("<span style='font-size:%.2f%%;'>", Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f));
        }
        if (obj instanceof TypefaceSpan) {
            String family = ((TypefaceSpan) obj).getFamily();
            if (family != null) {
                return com.google.android.exoplayer2.util.p0.C("<span style='font-family:\"%s\";'>", family);
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "<b>";
            }
            if (style == 2) {
                return "<i>";
            }
            if (style != 3) {
                return null;
            }
            return "<b><i>";
        }
        if (!(obj instanceof fa.c)) {
            if (obj instanceof UnderlineSpan) {
                return "<u>";
            }
            if (!(obj instanceof fa.e)) {
                return null;
            }
            fa.e eVar = (fa.e) obj;
            return com.google.android.exoplayer2.util.p0.C("<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", h(eVar.f62364a, eVar.f62365b), g(eVar.f62366c));
        }
        int i11 = ((fa.c) obj).f62363b;
        if (i11 == -1) {
            return "<ruby style='ruby-position:unset;'>";
        }
        if (i11 == 1) {
            return "<ruby style='ruby-position:over;'>";
        }
        if (i11 != 2) {
            return null;
        }
        return "<ruby style='ruby-position:under;'>";
    }

    private static d f(SparseArray sparseArray, int i11) {
        d dVar = (d) sparseArray.get(i11);
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d();
        sparseArray.put(i11, dVar2);
        return dVar2;
    }

    private static String g(int i11) {
        return i11 != 2 ? "over right" : "under left";
    }

    private static String h(int i11, int i12) {
        StringBuilder sb2 = new StringBuilder();
        if (i12 == 1) {
            sb2.append("filled ");
        } else if (i12 == 2) {
            sb2.append("open ");
        }
        if (i11 == 0) {
            sb2.append("none");
        } else if (i11 == 1) {
            sb2.append("circle");
        } else if (i11 == 2) {
            sb2.append("dot");
        } else if (i11 != 3) {
            sb2.append("unset");
        } else {
            sb2.append("sesame");
        }
        return sb2.toString();
    }
}
