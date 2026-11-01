package com.google.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.common.base.b f30245a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f30246b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f30247c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f30248d;

    class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.google.common.base.b f30249a;

        /* JADX INFO: renamed from: com.google.common.base.o$a$a, reason: collision with other inner class name */
        class C0404a extends c {
            C0404a(o oVar, CharSequence charSequence) {
                super(oVar, charSequence);
            }

            @Override // com.google.common.base.o.c
            int e(int i11) {
                return i11 + 1;
            }

            @Override // com.google.common.base.o.c
            int f(int i11) {
                return a.this.f30249a.e(this.f30253c, i11);
            }
        }

        a(com.google.common.base.b bVar) {
            this.f30249a = bVar;
        }

        @Override // com.google.common.base.o.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public c a(o oVar, CharSequence charSequence) {
            return new C0404a(oVar, charSequence);
        }
    }

    class b implements Iterable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CharSequence f30251a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ o f30252b;

        b(o oVar, CharSequence charSequence) {
            this.f30251a = charSequence;
            this.f30252b = oVar;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return this.f30252b.j(this.f30251a);
        }

        public String toString() {
            g gVarH = g.h(", ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append('[');
            StringBuilder sbB = gVarH.b(sb2, this);
            sbB.append(']');
            return sbB.toString();
        }
    }

    private static abstract class c extends AbstractIterator {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final CharSequence f30253c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final com.google.common.base.b f30254d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final boolean f30255e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f30256f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f30257g;

        protected c(o oVar, CharSequence charSequence) {
            this.f30254d = oVar.f30245a;
            this.f30255e = oVar.f30246b;
            this.f30257g = oVar.f30248d;
            this.f30253c = charSequence;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.AbstractIterator
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public String a() {
            int i11 = this.f30256f;
            while (true) {
                int i12 = this.f30256f;
                if (i12 == -1) {
                    return (String) b();
                }
                int iF = f(i12);
                if (iF == -1) {
                    iF = this.f30253c.length();
                    this.f30256f = -1;
                } else {
                    this.f30256f = e(iF);
                }
                int i13 = this.f30256f;
                if (i13 == i11) {
                    int i14 = i13 + 1;
                    this.f30256f = i14;
                    if (i14 > this.f30253c.length()) {
                        this.f30256f = -1;
                    }
                } else {
                    while (i11 < iF && this.f30254d.g(this.f30253c.charAt(i11))) {
                        i11++;
                    }
                    while (iF > i11 && this.f30254d.g(this.f30253c.charAt(iF - 1))) {
                        iF--;
                    }
                    if (!this.f30255e || i11 != iF) {
                        int i15 = this.f30257g;
                        if (i15 == 1) {
                            iF = this.f30253c.length();
                            this.f30256f = -1;
                            while (iF > i11 && this.f30254d.g(this.f30253c.charAt(iF - 1))) {
                                iF--;
                            }
                        } else {
                            this.f30257g = i15 - 1;
                        }
                        return this.f30253c.subSequence(i11, iF).toString();
                    }
                    i11 = this.f30256f;
                }
            }
        }

        abstract int e(int i11);

        abstract int f(int i11);
    }

    private interface d {
        Iterator a(o oVar, CharSequence charSequence);
    }

    private o(d dVar) {
        this(dVar, false, com.google.common.base.b.i(), Integer.MAX_VALUE);
    }

    private o(d dVar, boolean z10, com.google.common.base.b bVar, int i11) {
        this.f30247c = dVar;
        this.f30246b = z10;
        this.f30245a = bVar;
        this.f30248d = i11;
    }

    public static o f(char c11) {
        return g(com.google.common.base.b.f(c11));
    }

    public static o g(com.google.common.base.b bVar) {
        m.o(bVar);
        return new o(new a(bVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Iterator j(CharSequence charSequence) {
        return this.f30247c.a(this, charSequence);
    }

    public o e() {
        return new o(this.f30247c, true, this.f30245a, this.f30248d);
    }

    public Iterable h(CharSequence charSequence) {
        m.o(charSequence);
        return new b(this, charSequence);
    }

    public List i(CharSequence charSequence) {
        m.o(charSequence);
        Iterator itJ = j(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itJ.hasNext()) {
            arrayList.add((String) itJ.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public o k() {
        return l(com.google.common.base.b.k());
    }

    public o l(com.google.common.base.b bVar) {
        m.o(bVar);
        return new o(this.f30247c, this.f30246b, bVar, this.f30248d);
    }
}
