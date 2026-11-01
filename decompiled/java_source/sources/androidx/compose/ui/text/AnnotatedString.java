package androidx.compose.ui.text;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AnnotatedString implements CharSequence {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f6008e = new b(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6009f = SaversKt.h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f6011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f6012c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f6013d;

    public static final class a implements Appendable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final StringBuilder f6014a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f6015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f6016c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List f6017d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final List f6018e;

        /* JADX INFO: renamed from: androidx.compose.ui.text.AnnotatedString$a$a, reason: collision with other inner class name */
        private static final class C0053a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Object f6019a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final int f6020b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f6021c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final String f6022d;

            public C0053a(Object obj, int i11, int i12, String str) {
                this.f6019a = obj;
                this.f6020b = i11;
                this.f6021c = i12;
                this.f6022d = str;
            }

            public /* synthetic */ C0053a(Object obj, int i11, int i12, String str, int i13, DefaultConstructorMarker defaultConstructorMarker) {
                this(obj, i11, (i13 & 4) != 0 ? Integer.MIN_VALUE : i12, (i13 & 8) != 0 ? "" : str);
            }

            public final c a(int i11) {
                int i12 = this.f6021c;
                if (i12 != Integer.MIN_VALUE) {
                    i11 = i12;
                }
                if (i11 != Integer.MIN_VALUE) {
                    return new c(this.f6019a, this.f6020b, i11, this.f6022d);
                }
                throw new IllegalStateException("Item.end should be set first");
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0053a)) {
                    return false;
                }
                C0053a c0053a = (C0053a) obj;
                return Intrinsics.c(this.f6019a, c0053a.f6019a) && this.f6020b == c0053a.f6020b && this.f6021c == c0053a.f6021c && Intrinsics.c(this.f6022d, c0053a.f6022d);
            }

            public int hashCode() {
                Object obj = this.f6019a;
                return ((((((obj == null ? 0 : obj.hashCode()) * 31) + this.f6020b) * 31) + this.f6021c) * 31) + this.f6022d.hashCode();
            }

            public String toString() {
                return "MutableRange(item=" + this.f6019a + ", start=" + this.f6020b + ", end=" + this.f6021c + ", tag=" + this.f6022d + ')';
            }
        }

        public a() {
            this(0, 1, null);
        }

        public a(int i11) {
            this.f6014a = new StringBuilder(i11);
            this.f6015b = new ArrayList();
            this.f6016c = new ArrayList();
            this.f6017d = new ArrayList();
            this.f6018e = new ArrayList();
        }

        public /* synthetic */ a(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this((i12 & 1) != 0 ? 16 : i11);
        }

        public a(AnnotatedString annotatedString) {
            this(0, 1, null);
            f(annotatedString);
        }

        public final void a(r rVar, int i11, int i12) {
            this.f6016c.add(new C0053a(rVar, i11, i12, null, 8, null));
        }

        public final void b(x xVar, int i11, int i12) {
            this.f6015b.add(new C0053a(xVar, i11, i12, null, 8, null));
        }

        @Override // java.lang.Appendable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public a append(char c11) {
            this.f6014a.append(c11);
            return this;
        }

        @Override // java.lang.Appendable
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public a append(CharSequence charSequence) {
            if (charSequence instanceof AnnotatedString) {
                f((AnnotatedString) charSequence);
            } else {
                this.f6014a.append(charSequence);
            }
            return this;
        }

        @Override // java.lang.Appendable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public a append(CharSequence charSequence, int i11, int i12) {
            if (charSequence instanceof AnnotatedString) {
                g((AnnotatedString) charSequence, i11, i12);
            } else {
                this.f6014a.append(charSequence, i11, i12);
            }
            return this;
        }

        public final void f(AnnotatedString annotatedString) {
            int length = this.f6014a.length();
            this.f6014a.append(annotatedString.i());
            List listH = annotatedString.h();
            if (listH != null) {
                int size = listH.size();
                for (int i11 = 0; i11 < size; i11++) {
                    c cVar = (c) listH.get(i11);
                    b((x) cVar.e(), cVar.f() + length, cVar.d() + length);
                }
            }
            List listF = annotatedString.f();
            if (listF != null) {
                int size2 = listF.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    c cVar2 = (c) listF.get(i12);
                    a((r) cVar2.e(), cVar2.f() + length, cVar2.d() + length);
                }
            }
            List listB = annotatedString.b();
            if (listB != null) {
                int size3 = listB.size();
                for (int i13 = 0; i13 < size3; i13++) {
                    c cVar3 = (c) listB.get(i13);
                    this.f6017d.add(new C0053a(cVar3.e(), cVar3.f() + length, cVar3.d() + length, cVar3.g()));
                }
            }
        }

        public final void g(AnnotatedString annotatedString, int i11, int i12) {
            int length = this.f6014a.length();
            this.f6014a.append((CharSequence) annotatedString.i(), i11, i12);
            List listJ = d.j(annotatedString, i11, i12);
            if (listJ != null) {
                int size = listJ.size();
                for (int i13 = 0; i13 < size; i13++) {
                    c cVar = (c) listJ.get(i13);
                    b((x) cVar.e(), cVar.f() + length, cVar.d() + length);
                }
            }
            List listI = d.i(annotatedString, i11, i12);
            if (listI != null) {
                int size2 = listI.size();
                for (int i14 = 0; i14 < size2; i14++) {
                    c cVar2 = (c) listI.get(i14);
                    a((r) cVar2.e(), cVar2.f() + length, cVar2.d() + length);
                }
            }
            List listH = d.h(annotatedString, i11, i12);
            if (listH != null) {
                int size3 = listH.size();
                for (int i15 = 0; i15 < size3; i15++) {
                    c cVar3 = (c) listH.get(i15);
                    this.f6017d.add(new C0053a(cVar3.e(), cVar3.f() + length, cVar3.d() + length, cVar3.g()));
                }
            }
        }

        public final AnnotatedString h() {
            String string = this.f6014a.toString();
            List list = this.f6015b;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                arrayList.add(((C0053a) list.get(i11)).a(this.f6014a.length()));
            }
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
            List list2 = this.f6016c;
            ArrayList arrayList2 = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i12 = 0; i12 < size2; i12++) {
                arrayList2.add(((C0053a) list2.get(i12)).a(this.f6014a.length()));
            }
            if (arrayList2.isEmpty()) {
                arrayList2 = null;
            }
            List list3 = this.f6017d;
            ArrayList arrayList3 = new ArrayList(list3.size());
            int size3 = list3.size();
            for (int i13 = 0; i13 < size3; i13++) {
                arrayList3.add(((C0053a) list3.get(i13)).a(this.f6014a.length()));
            }
            return new AnnotatedString(string, arrayList, arrayList2, arrayList3.isEmpty() ? null : arrayList3);
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f6023a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f6024b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f6025c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f6026d;

        public c(Object obj, int i11, int i12) {
            this(obj, i11, i12, "");
        }

        public c(Object obj, int i11, int i12, String str) {
            this.f6023a = obj;
            this.f6024b = i11;
            this.f6025c = i12;
            this.f6026d = str;
            if (i11 > i12) {
                throw new IllegalArgumentException("Reversed range is not supported");
            }
        }

        public final Object a() {
            return this.f6023a;
        }

        public final int b() {
            return this.f6024b;
        }

        public final int c() {
            return this.f6025c;
        }

        public final int d() {
            return this.f6025c;
        }

        public final Object e() {
            return this.f6023a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.c(this.f6023a, cVar.f6023a) && this.f6024b == cVar.f6024b && this.f6025c == cVar.f6025c && Intrinsics.c(this.f6026d, cVar.f6026d);
        }

        public final int f() {
            return this.f6024b;
        }

        public final String g() {
            return this.f6026d;
        }

        public int hashCode() {
            Object obj = this.f6023a;
            return ((((((obj == null ? 0 : obj.hashCode()) * 31) + this.f6024b) * 31) + this.f6025c) * 31) + this.f6026d.hashCode();
        }

        public String toString() {
            return "Range(item=" + this.f6023a + ", start=" + this.f6024b + ", end=" + this.f6025c + ", tag=" + this.f6026d + ')';
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AnnotatedString(String str, List list, List list2) {
        List list3 = list;
        List list4 = list2;
        this(str, list3.isEmpty() ? null : list3, list4.isEmpty() ? null : list4, null);
    }

    public /* synthetic */ AnnotatedString(String str, List list, List list2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? CollectionsKt.l() : list, (i11 & 4) != 0 ? CollectionsKt.l() : list2);
    }

    public AnnotatedString(String str, List list, List list2, List list3) {
        List listI0;
        this.f6010a = str;
        this.f6011b = list;
        this.f6012c = list2;
        this.f6013d = list3;
        if (list2 == null || (listI0 = CollectionsKt.I0(list2, new Comparator() { // from class: androidx.compose.ui.text.AnnotatedString$special$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(Integer.valueOf(((AnnotatedString.c) t11).f()), Integer.valueOf(((AnnotatedString.c) t12).f()));
            }
        })) == null) {
            return;
        }
        int size = listI0.size();
        int iD = -1;
        for (int i11 = 0; i11 < size; i11++) {
            c cVar = (c) listI0.get(i11);
            if (cVar.f() < iD) {
                throw new IllegalArgumentException("ParagraphStyle should not overlap");
            }
            if (cVar.d() > this.f6010a.length()) {
                throw new IllegalArgumentException(("ParagraphStyle range [" + cVar.f() + ", " + cVar.d() + ") is out of boundary").toString());
            }
            iD = cVar.d();
        }
    }

    public /* synthetic */ AnnotatedString(String str, List list, List list2, List list3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? null : list2, (i11 & 8) != 0 ? null : list3);
    }

    public char a(int i11) {
        return this.f6010a.charAt(i11);
    }

    public final List b() {
        return this.f6013d;
    }

    public int c() {
        return this.f6010a.length();
    }

    @Override // java.lang.CharSequence
    public final /* bridge */ char charAt(int i11) {
        return a(i11);
    }

    public final List d(int i11, int i12) {
        List listL;
        List list = this.f6013d;
        if (list != null) {
            listL = new ArrayList(list.size());
            int size = list.size();
            for (int i13 = 0; i13 < size; i13++) {
                Object obj = list.get(i13);
                c cVar = (c) obj;
                if ((cVar.e() instanceof f) && d.k(i11, i12, cVar.f(), cVar.d())) {
                    listL.add(obj);
                }
            }
        } else {
            listL = CollectionsKt.l();
        }
        Intrinsics.f(listL, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString.Range<androidx.compose.ui.text.LinkAnnotation>>");
        return listL;
    }

    public final List e() {
        List list = this.f6012c;
        return list == null ? CollectionsKt.l() : list;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnnotatedString)) {
            return false;
        }
        AnnotatedString annotatedString = (AnnotatedString) obj;
        return Intrinsics.c(this.f6010a, annotatedString.f6010a) && Intrinsics.c(this.f6011b, annotatedString.f6011b) && Intrinsics.c(this.f6012c, annotatedString.f6012c) && Intrinsics.c(this.f6013d, annotatedString.f6013d);
    }

    public final List f() {
        return this.f6012c;
    }

    public final List g() {
        List list = this.f6011b;
        return list == null ? CollectionsKt.l() : list;
    }

    public final List h() {
        return this.f6011b;
    }

    public int hashCode() {
        int iHashCode = this.f6010a.hashCode() * 31;
        List list = this.f6011b;
        int iHashCode2 = (iHashCode + (list != null ? list.hashCode() : 0)) * 31;
        List list2 = this.f6012c;
        int iHashCode3 = (iHashCode2 + (list2 != null ? list2.hashCode() : 0)) * 31;
        List list3 = this.f6013d;
        return iHashCode3 + (list3 != null ? list3.hashCode() : 0);
    }

    public final String i() {
        return this.f6010a;
    }

    public final List j(int i11, int i12) {
        List listL;
        List list = this.f6013d;
        if (list != null) {
            listL = new ArrayList(list.size());
            int size = list.size();
            for (int i13 = 0; i13 < size; i13++) {
                Object obj = list.get(i13);
                c cVar = (c) obj;
                if ((cVar.e() instanceof f0) && d.k(i11, i12, cVar.f(), cVar.d())) {
                    listL.add(obj);
                }
            }
        } else {
            listL = CollectionsKt.l();
        }
        Intrinsics.f(listL, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString.Range<androidx.compose.ui.text.TtsAnnotation>>");
        return listL;
    }

    public final List k(int i11, int i12) {
        List listL;
        List list = this.f6013d;
        if (list != null) {
            listL = new ArrayList(list.size());
            int size = list.size();
            for (int i13 = 0; i13 < size; i13++) {
                Object obj = list.get(i13);
                c cVar = (c) obj;
                if ((cVar.e() instanceof g0) && d.k(i11, i12, cVar.f(), cVar.d())) {
                    listL.add(obj);
                }
            }
        } else {
            listL = CollectionsKt.l();
        }
        Intrinsics.f(listL, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString.Range<androidx.compose.ui.text.UrlAnnotation>>");
        return listL;
    }

    public final boolean l(AnnotatedString annotatedString) {
        return Intrinsics.c(this.f6013d, annotatedString.f6013d);
    }

    @Override // java.lang.CharSequence
    public final /* bridge */ int length() {
        return c();
    }

    public final boolean m(int i11, int i12) {
        List list = this.f6013d;
        if (list == null) {
            return false;
        }
        int size = list.size();
        for (int i13 = 0; i13 < size; i13++) {
            c cVar = (c) list.get(i13);
            if ((cVar.e() instanceof f) && d.k(i11, i12, cVar.f(), cVar.d())) {
                return true;
            }
        }
        return false;
    }

    public final AnnotatedString n(AnnotatedString annotatedString) {
        a aVar = new a(this);
        aVar.f(annotatedString);
        return aVar.h();
    }

    @Override // java.lang.CharSequence
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public AnnotatedString subSequence(int i11, int i12) {
        if (i11 <= i12) {
            if (i11 == 0 && i12 == this.f6010a.length()) {
                return this;
            }
            String strSubstring = this.f6010a.substring(i11, i12);
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return new AnnotatedString(strSubstring, d.g(this.f6011b, i11, i12), d.g(this.f6012c, i11, i12), d.g(this.f6013d, i11, i12));
        }
        throw new IllegalArgumentException(("start (" + i11 + ") should be less or equal to end (" + i12 + ')').toString());
    }

    public final AnnotatedString p(long j11) {
        return subSequence(b0.j(j11), b0.i(j11));
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f6010a;
    }
}
