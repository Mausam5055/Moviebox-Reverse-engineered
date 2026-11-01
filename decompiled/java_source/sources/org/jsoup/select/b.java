package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes7.dex */
abstract class b extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayList f71891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f71892b;

    static final class a extends b {
        a(Collection collection) {
            super(collection);
        }

        a(c... cVarArr) {
            this(Arrays.asList(cVarArr));
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            for (int i11 = 0; i11 < this.f71892b; i11++) {
                if (!((c) this.f71891a.get(i11)).a(element, element2)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return org.jsoup.helper.c.i(this.f71891a, " ");
        }
    }

    /* JADX INFO: renamed from: org.jsoup.select.b$b, reason: collision with other inner class name */
    static final class C0871b extends b {
        C0871b() {
        }

        C0871b(Collection collection) {
            if (this.f71892b > 1) {
                this.f71891a.add(new a(collection));
            } else {
                this.f71891a.addAll(collection);
            }
            d();
        }

        C0871b(c... cVarArr) {
            this(Arrays.asList(cVarArr));
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            for (int i11 = 0; i11 < this.f71892b; i11++) {
                if (((c) this.f71891a.get(i11)).a(element, element2)) {
                    return true;
                }
            }
            return false;
        }

        public void e(c cVar) {
            this.f71891a.add(cVar);
            d();
        }

        public String toString() {
            return org.jsoup.helper.c.i(this.f71891a, ", ");
        }
    }

    b() {
        this.f71892b = 0;
        this.f71891a = new ArrayList();
    }

    b(Collection collection) {
        this();
        this.f71891a.addAll(collection);
        d();
    }

    void b(c cVar) {
        this.f71891a.set(this.f71892b - 1, cVar);
    }

    c c() {
        int i11 = this.f71892b;
        if (i11 > 0) {
            return (c) this.f71891a.get(i11 - 1);
        }
        return null;
    }

    void d() {
        this.f71892b = this.f71891a.size();
    }
}
