package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final EmojiCompat.i f9091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n f9092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EmojiCompat.e f9093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int[] f9095e;

    private static final class a {
        static int a(CharSequence charSequence, int i11, int i12) {
            int length = charSequence.length();
            if (i11 < 0 || length < i11 || i12 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i12 != 0) {
                    i11--;
                    if (i11 < 0) {
                        return z10 ? -1 : 0;
                    }
                    char cCharAt = charSequence.charAt(i11);
                    if (z10) {
                        if (!Character.isHighSurrogate(cCharAt)) {
                            return -1;
                        }
                        i12--;
                    } else if (!Character.isSurrogate(cCharAt)) {
                        i12--;
                    } else {
                        if (Character.isHighSurrogate(cCharAt)) {
                            return -1;
                        }
                        z10 = true;
                    }
                }
                return i11;
            }
        }

        static int b(CharSequence charSequence, int i11, int i12) {
            int length = charSequence.length();
            if (i11 < 0 || length < i11 || i12 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i12 != 0) {
                    if (i11 >= length) {
                        if (z10) {
                            return -1;
                        }
                        return length;
                    }
                    char cCharAt = charSequence.charAt(i11);
                    if (z10) {
                        if (!Character.isLowSurrogate(cCharAt)) {
                            return -1;
                        }
                        i12--;
                        i11++;
                    } else if (!Character.isSurrogate(cCharAt)) {
                        i12--;
                        i11++;
                    } else {
                        if (Character.isLowSurrogate(cCharAt)) {
                            return -1;
                        }
                        i11++;
                        z10 = true;
                    }
                }
                return i11;
            }
        }
    }

    private static class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public t f9096a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final EmojiCompat.i f9097b;

        b(t tVar, EmojiCompat.i iVar) {
            this.f9096a = tVar;
            this.f9097b = iVar;
        }

        @Override // androidx.emoji2.text.h.c
        public boolean b(CharSequence charSequence, int i11, int i12, p pVar) {
            if (pVar.k()) {
                return true;
            }
            if (this.f9096a == null) {
                this.f9096a = new t(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
            }
            this.f9096a.setSpan(this.f9097b.a(pVar), i11, i12, 33);
            return true;
        }

        @Override // androidx.emoji2.text.h.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public t a() {
            return this.f9096a;
        }
    }

    private interface c {
        Object a();

        boolean b(CharSequence charSequence, int i11, int i12, p pVar);
    }

    private static class d implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f9098a;

        d(String str) {
            this.f9098a = str;
        }

        @Override // androidx.emoji2.text.h.c
        public boolean b(CharSequence charSequence, int i11, int i12, p pVar) {
            if (!TextUtils.equals(charSequence.subSequence(i11, i12), this.f9098a)) {
                return true;
            }
            pVar.l(true);
            return false;
        }

        @Override // androidx.emoji2.text.h.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public d a() {
            return this;
        }
    }

    static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f9099a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final n.a f9100b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private n.a f9101c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private n.a f9102d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9103e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9104f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f9105g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int[] f9106h;

        e(n.a aVar, boolean z10, int[] iArr) {
            this.f9100b = aVar;
            this.f9101c = aVar;
            this.f9105g = z10;
            this.f9106h = iArr;
        }

        private static boolean d(int i11) {
            return i11 == 65039;
        }

        private static boolean f(int i11) {
            return i11 == 65038;
        }

        private int g() {
            this.f9099a = 1;
            this.f9101c = this.f9100b;
            this.f9104f = 0;
            return 1;
        }

        private boolean h() {
            if (this.f9101c.b().j() || d(this.f9103e)) {
                return true;
            }
            if (this.f9105g) {
                if (this.f9106h == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.f9106h, this.f9101c.b().b(0)) < 0) {
                    return true;
                }
            }
            return false;
        }

        int a(int i11) {
            n.a aVarA = this.f9101c.a(i11);
            int iG = 2;
            if (this.f9099a != 2) {
                if (aVarA == null) {
                    iG = g();
                } else {
                    this.f9099a = 2;
                    this.f9101c = aVarA;
                    this.f9104f = 1;
                }
            } else if (aVarA != null) {
                this.f9101c = aVarA;
                this.f9104f++;
            } else if (f(i11)) {
                iG = g();
            } else if (!d(i11)) {
                if (this.f9101c.b() != null) {
                    iG = 3;
                    if (this.f9104f != 1 || h()) {
                        this.f9102d = this.f9101c;
                        g();
                    } else {
                        iG = g();
                    }
                } else {
                    iG = g();
                }
            }
            this.f9103e = i11;
            return iG;
        }

        p b() {
            return this.f9101c.b();
        }

        p c() {
            return this.f9102d.b();
        }

        boolean e() {
            return this.f9099a == 2 && this.f9101c.b() != null && (this.f9104f > 1 || h());
        }
    }

    h(n nVar, EmojiCompat.i iVar, EmojiCompat.e eVar, boolean z10, int[] iArr, Set set) {
        this.f9091a = iVar;
        this.f9092b = nVar;
        this.f9093c = eVar;
        this.f9094d = z10;
        this.f9095e = iArr;
        g(set);
    }

    private static boolean a(Editable editable, KeyEvent keyEvent, boolean z10) {
        i[] iVarArr;
        if (f(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!e(selectionStart, selectionEnd) && (iVarArr = (i[]) editable.getSpans(selectionStart, selectionEnd, i.class)) != null && iVarArr.length > 0) {
            for (i iVar : iVarArr) {
                int spanStart = editable.getSpanStart(iVar);
                int spanEnd = editable.getSpanEnd(iVar);
                if ((z10 && spanStart == selectionStart) || ((!z10 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    static boolean b(InputConnection inputConnection, Editable editable, int i11, int i12, boolean z10) {
        int iMax;
        int iMin;
        if (editable != null && inputConnection != null && i11 >= 0 && i12 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (e(selectionStart, selectionEnd)) {
                return false;
            }
            if (z10) {
                iMax = a.a(editable, selectionStart, Math.max(i11, 0));
                iMin = a.b(editable, selectionEnd, Math.max(i12, 0));
                if (iMax == -1 || iMin == -1) {
                    return false;
                }
            } else {
                iMax = Math.max(selectionStart - i11, 0);
                iMin = Math.min(selectionEnd + i12, editable.length());
            }
            i[] iVarArr = (i[]) editable.getSpans(iMax, iMin, i.class);
            if (iVarArr != null && iVarArr.length > 0) {
                for (i iVar : iVarArr) {
                    int spanStart = editable.getSpanStart(iVar);
                    int spanEnd = editable.getSpanEnd(iVar);
                    iMax = Math.min(spanStart, iMax);
                    iMin = Math.max(spanEnd, iMin);
                }
                int iMax2 = Math.max(iMax, 0);
                int iMin2 = Math.min(iMin, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(iMax2, iMin2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    static boolean c(Editable editable, int i11, KeyEvent keyEvent) {
        boolean zA;
        if (i11 != 67) {
            zA = i11 != 112 ? false : a(editable, keyEvent, true);
        } else {
            zA = a(editable, keyEvent, false);
        }
        if (!zA) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    private boolean d(CharSequence charSequence, int i11, int i12, p pVar) {
        if (pVar.d() == 0) {
            pVar.m(this.f9093c.a(charSequence, i11, i12, pVar.h()));
        }
        return pVar.d() == 2;
    }

    private static boolean e(int i11, int i12) {
        return i11 == -1 || i12 == -1 || i11 != i12;
    }

    private static boolean f(KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    private void g(Set set) {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            i(str, 0, str.length(), 1, true, new d(str));
        }
    }

    private Object i(CharSequence charSequence, int i11, int i12, int i13, boolean z10, c cVar) {
        int iCharCount;
        e eVar = new e(this.f9092b.f(), this.f9094d, this.f9095e);
        int i14 = 0;
        boolean zB = true;
        int iCodePointAt = Character.codePointAt(charSequence, i11);
        loop0: while (true) {
            iCharCount = i11;
            while (true) {
                if (i11 >= i12 || i14 >= i13 || !zB) {
                    break loop0;
                }
                int iA = eVar.a(iCodePointAt);
                if (iA == 1) {
                    iCharCount += Character.charCount(Character.codePointAt(charSequence, iCharCount));
                    if (iCharCount < i12) {
                        iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                    }
                    i11 = iCharCount;
                } else if (iA == 2) {
                    i11 += Character.charCount(iCodePointAt);
                    if (i11 < i12) {
                        iCodePointAt = Character.codePointAt(charSequence, i11);
                    }
                } else if (iA != 3) {
                }
            }
            if (z10 || !d(charSequence, iCharCount, i11, eVar.c())) {
                zB = cVar.b(charSequence, iCharCount, i11, eVar.c());
                i14++;
            }
        }
        if (eVar.e() && i14 < i13 && zB && (z10 || !d(charSequence, iCharCount, i11, eVar.b()))) {
            cVar.b(charSequence, iCharCount, i11, eVar.b());
        }
        return cVar.a();
    }

    CharSequence h(CharSequence charSequence, int i11, int i12, int i13, boolean z10) {
        t tVar;
        i[] iVarArr;
        boolean z11 = charSequence instanceof o;
        if (z11) {
            ((o) charSequence).a();
        }
        if (!z11) {
            try {
                tVar = charSequence instanceof Spannable ? new t((Spannable) charSequence) : (!(charSequence instanceof Spanned) || ((Spanned) charSequence).nextSpanTransition(i11 + (-1), i12 + 1, i.class) > i12) ? null : new t(charSequence);
            } finally {
                if (z11) {
                    ((o) charSequence).d();
                }
            }
        }
        if (tVar != null && (iVarArr = (i[]) tVar.getSpans(i11, i12, i.class)) != null && iVarArr.length > 0) {
            for (i iVar : iVarArr) {
                int spanStart = tVar.getSpanStart(iVar);
                int spanEnd = tVar.getSpanEnd(iVar);
                if (spanStart != i12) {
                    tVar.removeSpan(iVar);
                }
                i11 = Math.min(spanStart, i11);
                i12 = Math.max(spanEnd, i12);
            }
        }
        int i14 = i12;
        if (i11 != i14 && i11 < charSequence.length()) {
            if (i13 != Integer.MAX_VALUE && tVar != null) {
                i13 -= ((i[]) tVar.getSpans(0, tVar.length(), i.class)).length;
            }
            t tVar2 = (t) i(charSequence, i11, i14, i13, z10, new b(tVar, this.f9091a));
            return tVar2 != null ? tVar2.b() : charSequence;
        }
        return charSequence;
    }
}
