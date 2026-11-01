package org.jsoup.nodes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jsoup.SerializationException;

/* JADX INFO: loaded from: classes7.dex */
public class b implements Iterable, Cloneable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f71753d = new String[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f71754a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String[] f71755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String[] f71756c;

    class a implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f71757a = 0;

        a() {
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public org.jsoup.nodes.a next() {
            b bVar = b.this;
            String[] strArr = bVar.f71755b;
            int i11 = this.f71757a;
            org.jsoup.nodes.a aVar = new org.jsoup.nodes.a(strArr[i11], bVar.f71756c[i11], bVar);
            this.f71757a++;
            return aVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f71757a < b.this.f71754a;
        }

        @Override // java.util.Iterator
        public void remove() {
            b bVar = b.this;
            int i11 = this.f71757a - 1;
            this.f71757a = i11;
            bVar.z(i11);
        }
    }

    public b() {
        String[] strArr = f71753d;
        this.f71755b = strArr;
        this.f71756c = strArr;
    }

    private void c(String str, String str2) {
        g(this.f71754a + 1);
        String[] strArr = this.f71755b;
        int i11 = this.f71754a;
        strArr[i11] = str;
        this.f71756c[i11] = str2;
        this.f71754a = i11 + 1;
    }

    private void g(int i11) {
        org.jsoup.helper.d.d(i11 >= this.f71754a);
        String[] strArr = this.f71755b;
        int length = strArr.length;
        if (length >= i11) {
            return;
        }
        int i12 = length >= 4 ? this.f71754a * 2 : 4;
        if (i11 <= i12) {
            i11 = i12;
        }
        this.f71755b = m(strArr, i11);
        this.f71756c = m(this.f71756c, i11);
    }

    static String j(String str) {
        return str == null ? "" : str;
    }

    private static String[] m(String[] strArr, int i11) {
        String[] strArr2 = new String[i11];
        System.arraycopy(strArr, 0, strArr2, 0, Math.min(strArr.length, i11));
        return strArr2;
    }

    private int u(String str) {
        org.jsoup.helper.d.j(str);
        for (int i11 = 0; i11 < this.f71754a; i11++) {
            if (str.equalsIgnoreCase(this.f71755b[i11])) {
                return i11;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(int i11) {
        org.jsoup.helper.d.b(i11 >= this.f71754a);
        int i12 = (this.f71754a - i11) - 1;
        if (i12 > 0) {
            String[] strArr = this.f71755b;
            int i13 = i11 + 1;
            System.arraycopy(strArr, i13, strArr, i11, i12);
            String[] strArr2 = this.f71756c;
            System.arraycopy(strArr2, i13, strArr2, i11, i12);
        }
        int i14 = this.f71754a - 1;
        this.f71754a = i14;
        this.f71755b[i14] = null;
        this.f71756c[i14] = null;
    }

    public void A(String str) {
        int iT = t(str);
        if (iT != -1) {
            z(iT);
        }
    }

    public void B(String str) {
        int iU = u(str);
        if (iU != -1) {
            z(iU);
        }
    }

    public void e(b bVar) {
        if (bVar.size() == 0) {
            return;
        }
        g(this.f71754a + bVar.f71754a);
        Iterator it = bVar.iterator();
        while (it.hasNext()) {
            x((org.jsoup.nodes.a) it.next());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f71754a == bVar.f71754a && Arrays.equals(this.f71755b, bVar.f71755b)) {
            return Arrays.equals(this.f71756c, bVar.f71756c);
        }
        return false;
    }

    public List f() {
        ArrayList arrayList = new ArrayList(this.f71754a);
        for (int i11 = 0; i11 < this.f71754a; i11++) {
            arrayList.add(this.f71756c[i11] == null ? new c(this.f71755b[i11]) : new org.jsoup.nodes.a(this.f71755b[i11], this.f71756c[i11], this));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int hashCode() {
        return (((this.f71754a * 31) + Arrays.hashCode(this.f71755b)) * 31) + Arrays.hashCode(this.f71756c);
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new a();
    }

    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b clone() {
        try {
            b bVar = (b) super.clone();
            bVar.f71754a = this.f71754a;
            this.f71755b = m(this.f71755b, this.f71754a);
            this.f71756c = m(this.f71756c, this.f71754a);
            return bVar;
        } catch (CloneNotSupportedException e11) {
            throw new RuntimeException(e11);
        }
    }

    public String n(String str) {
        int iT = t(str);
        return iT == -1 ? "" : j(this.f71756c[iT]);
    }

    public String o(String str) {
        int iU = u(str);
        return iU == -1 ? "" : j(this.f71756c[iU]);
    }

    public boolean p(String str) {
        return t(str) != -1;
    }

    public boolean q(String str) {
        return u(str) != -1;
    }

    public String r() {
        StringBuilder sb2 = new StringBuilder();
        try {
            s(sb2, new Document("").g1());
            return sb2.toString();
        } catch (IOException e11) {
            throw new SerializationException(e11);
        }
    }

    final void s(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        int i11 = this.f71754a;
        for (int i12 = 0; i12 < i11; i12++) {
            String str = this.f71755b[i12];
            String str2 = this.f71756c[i12];
            appendable.append(' ').append(str);
            if (!org.jsoup.nodes.a.k(str, str2, outputSettings)) {
                appendable.append("=\"");
                if (str2 == null) {
                    str2 = "";
                }
                Entities.e(appendable, str2, outputSettings, true, false, false);
                appendable.append('\"');
            }
        }
    }

    public int size() {
        return this.f71754a;
    }

    int t(String str) {
        org.jsoup.helper.d.j(str);
        for (int i11 = 0; i11 < this.f71754a; i11++) {
            if (str.equals(this.f71755b[i11])) {
                return i11;
            }
        }
        return -1;
    }

    public String toString() {
        return r();
    }

    public void v() {
        for (int i11 = 0; i11 < this.f71754a; i11++) {
            String[] strArr = this.f71755b;
            strArr[i11] = e10.b.a(strArr[i11]);
        }
    }

    public b w(String str, String str2) {
        int iT = t(str);
        if (iT != -1) {
            this.f71756c[iT] = str2;
        } else {
            c(str, str2);
        }
        return this;
    }

    public b x(org.jsoup.nodes.a aVar) {
        org.jsoup.helper.d.j(aVar);
        w(aVar.getKey(), aVar.getValue());
        aVar.f71752c = this;
        return this;
    }

    void y(String str, String str2) {
        int iU = u(str);
        if (iU == -1) {
            c(str, str2);
            return;
        }
        this.f71756c[iU] = str2;
        if (this.f71755b[iU].equals(str)) {
            return;
        }
        this.f71755b[iU] = str;
    }
}
