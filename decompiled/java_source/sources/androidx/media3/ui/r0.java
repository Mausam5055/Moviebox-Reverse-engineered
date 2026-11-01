package androidx.media3.ui;

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

/* JADX INFO: loaded from: classes2.dex */
abstract class r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f13713a = Pattern.compile("(&#13;)?&#10;");

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f13714a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map f13715b;

        private b(String str, Map map) {
            this.f13714a = str;
            this.f13715b = map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final Comparator f13716e = new Comparator() { // from class: androidx.media3.ui.s0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return r0.c.e((r0.c) obj, (r0.c) obj2);
            }
        };

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final Comparator f13717f = new Comparator() { // from class: androidx.media3.ui.t0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return r0.c.f((r0.c) obj, (r0.c) obj2);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13718a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f13719b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f13720c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f13721d;

        private c(int i11, int i12, String str, String str2) {
            this.f13718a = i11;
            this.f13719b = i12;
            this.f13720c = str;
            this.f13721d = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int e(c cVar, c cVar2) {
            int iCompare = Integer.compare(cVar2.f13719b, cVar.f13719b);
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompareTo = cVar.f13720c.compareTo(cVar2.f13720c);
            return iCompareTo != 0 ? iCompareTo : cVar.f13721d.compareTo(cVar2.f13721d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int f(c cVar, c cVar2) {
            int iCompare = Integer.compare(cVar2.f13718a, cVar.f13718a);
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompareTo = cVar2.f13720c.compareTo(cVar.f13720c);
            return iCompareTo != 0 ? iCompareTo : cVar2.f13721d.compareTo(cVar.f13721d);
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f13722a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f13723b = new ArrayList();
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
            map.put(g.a("bg_" + iIntValue), androidx.media3.common.util.a1.G("background-color:%s;", g.b(iIntValue)));
        }
        SparseArray sparseArrayC = c(spanned, f11);
        StringBuilder sb2 = new StringBuilder(spanned.length());
        int i12 = 0;
        while (i11 < sparseArrayC.size()) {
            int iKeyAt = sparseArrayC.keyAt(i11);
            sb2.append(b(spanned.subSequence(i12, iKeyAt)));
            d dVar = (d) sparseArrayC.get(iKeyAt);
            Collections.sort(dVar.f13723b, c.f13717f);
            Iterator it2 = dVar.f13723b.iterator();
            while (it2.hasNext()) {
                sb2.append(((c) it2.next()).f13721d);
            }
            Collections.sort(dVar.f13722a, c.f13716e);
            Iterator it3 = dVar.f13722a.iterator();
            while (it3.hasNext()) {
                sb2.append(((c) it3.next()).f13720c);
            }
            i11++;
            i12 = iKeyAt;
        }
        sb2.append(b(spanned.subSequence(i12, spanned.length())));
        return new b(sb2.toString(), map);
    }

    private static String b(CharSequence charSequence) {
        return f13713a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }

    private static SparseArray c(Spanned spanned, float f11) {
        SparseArray sparseArray = new SparseArray();
        for (Object obj : spanned.getSpans(0, spanned.length(), Object.class)) {
            String strE = e(obj, f11);
            String strD = d(obj);
            int spanStart = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (strE != null) {
                androidx.media3.common.util.a.e(strD);
                c cVar = new c(spanStart, spanEnd, strE, strD);
                f(sparseArray, spanStart).f13722a.add(cVar);
                f(sparseArray, spanEnd).f13723b.add(cVar);
            }
        }
        return sparseArray;
    }

    private static String d(Object obj) {
        if ((obj instanceof StrikethroughSpan) || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof u1.d) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof u1.h)) {
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
            if (obj instanceof u1.f) {
                return "<rt>" + b(((u1.f) obj).f76604a) + "</rt></ruby>";
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
            return androidx.media3.common.util.a1.G("<span style='color:%s;'>", g.b(((ForegroundColorSpan) obj).getForegroundColor()));
        }
        if (obj instanceof BackgroundColorSpan) {
            return androidx.media3.common.util.a1.G("<span class='bg_%s'>", Integer.valueOf(((BackgroundColorSpan) obj).getBackgroundColor()));
        }
        if (obj instanceof u1.d) {
            return "<span style='text-combine-upright:all;'>";
        }
        if (obj instanceof AbsoluteSizeSpan) {
            AbsoluteSizeSpan absoluteSizeSpan = (AbsoluteSizeSpan) obj;
            return androidx.media3.common.util.a1.G("<span style='font-size:%.2fpx;'>", Float.valueOf(absoluteSizeSpan.getDip() ? absoluteSizeSpan.getSize() : absoluteSizeSpan.getSize() / f11));
        }
        if (obj instanceof RelativeSizeSpan) {
            return androidx.media3.common.util.a1.G("<span style='font-size:%.2f%%;'>", Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f));
        }
        if (obj instanceof TypefaceSpan) {
            String family = ((TypefaceSpan) obj).getFamily();
            if (family != null) {
                return androidx.media3.common.util.a1.G("<span style='font-family:\"%s\";'>", family);
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
        if (!(obj instanceof u1.f)) {
            if (obj instanceof UnderlineSpan) {
                return "<u>";
            }
            if (!(obj instanceof u1.h)) {
                return null;
            }
            u1.h hVar = (u1.h) obj;
            return androidx.media3.common.util.a1.G("<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", h(hVar.f76609a, hVar.f76610b), g(hVar.f76611c));
        }
        int i11 = ((u1.f) obj).f76605b;
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
