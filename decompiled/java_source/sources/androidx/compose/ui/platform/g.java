package androidx.compose.ui.platform;

import java.text.BreakIterator;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g extends androidx.compose.ui.platform.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f5781d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f5782e = 8;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static g f5783f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BreakIterator f5784c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final g a(Locale locale) {
            if (g.f5783f == null) {
                g.f5783f = new g(locale, null);
            }
            g gVar = g.f5783f;
            Intrinsics.f(gVar, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.WordTextSegmentIterator");
            return gVar;
        }
    }

    private g(Locale locale) {
        l(locale);
    }

    public /* synthetic */ g(Locale locale, DefaultConstructorMarker defaultConstructorMarker) {
        this(locale);
    }

    private final boolean i(int i11) {
        return i11 > 0 && j(i11 + (-1)) && (i11 == d().length() || !j(i11));
    }

    private final boolean j(int i11) {
        if (i11 < 0 || i11 >= d().length()) {
            return false;
        }
        return Character.isLetterOrDigit(d().codePointAt(i11));
    }

    private final boolean k(int i11) {
        return j(i11) && (i11 == 0 || !j(i11 - 1));
    }

    private final void l(Locale locale) {
        this.f5784c = BreakIterator.getWordInstance(locale);
    }

    @Override // androidx.compose.ui.platform.f
    public int[] a(int i11) {
        if (d().length() <= 0 || i11 >= d().length()) {
            return null;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        while (!j(i11) && !k(i11)) {
            BreakIterator breakIterator = this.f5784c;
            if (breakIterator == null) {
                Intrinsics.z("impl");
                breakIterator = null;
            }
            i11 = breakIterator.following(i11);
            if (i11 == -1) {
                return null;
            }
        }
        BreakIterator breakIterator2 = this.f5784c;
        if (breakIterator2 == null) {
            Intrinsics.z("impl");
            breakIterator2 = null;
        }
        int iFollowing = breakIterator2.following(i11);
        if (iFollowing == -1 || !i(iFollowing)) {
            return null;
        }
        return c(i11, iFollowing);
    }

    @Override // androidx.compose.ui.platform.f
    public int[] b(int i11) {
        int length = d().length();
        if (length <= 0 || i11 <= 0) {
            return null;
        }
        if (i11 > length) {
            i11 = length;
        }
        while (i11 > 0 && !j(i11 - 1) && !i(i11)) {
            BreakIterator breakIterator = this.f5784c;
            if (breakIterator == null) {
                Intrinsics.z("impl");
                breakIterator = null;
            }
            i11 = breakIterator.preceding(i11);
            if (i11 == -1) {
                return null;
            }
        }
        BreakIterator breakIterator2 = this.f5784c;
        if (breakIterator2 == null) {
            Intrinsics.z("impl");
            breakIterator2 = null;
        }
        int iPreceding = breakIterator2.preceding(i11);
        if (iPreceding == -1 || !k(iPreceding)) {
            return null;
        }
        return c(iPreceding, i11);
    }

    @Override // androidx.compose.ui.platform.a
    public void e(String str) {
        super.e(str);
        BreakIterator breakIterator = this.f5784c;
        if (breakIterator == null) {
            Intrinsics.z("impl");
            breakIterator = null;
        }
        breakIterator.setText(str);
    }
}
