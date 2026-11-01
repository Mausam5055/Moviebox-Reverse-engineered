package org.mvel2.util;

import java.util.ArrayList;
import java.util.Set;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes7.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f72055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList f72056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set f72057c;

    class a implements b {
        a() {
        }

        @Override // org.mvel2.util.j.b
        public int a(int i11) {
            for (c cVar : j.this.f72056b) {
                if (cVar.d(i11)) {
                    return cVar.b();
                }
            }
            return -1;
        }
    }

    public interface b {
        int a(int i11);
    }

    private static class c implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f72059a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f72060b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f72061c;

        private c(int i11, int i12, int i13) {
            this.f72059a = i11;
            this.f72060b = i12;
            this.f72061c = i13;
        }

        /* synthetic */ c(int i11, int i12, int i13, a aVar) {
            this(i11, i12, i13);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            if (cVar.f72059a >= this.f72060b) {
                return 1;
            }
            return cVar.f72060b < this.f72059a ? -1 : 0;
        }

        public int b() {
            return this.f72061c;
        }

        public boolean d(int i11) {
            return i11 >= this.f72059a && i11 <= this.f72060b;
        }
    }

    public j(char[] cArr) {
        this.f72055a = cArr;
    }

    public b b() {
        a aVar;
        this.f72056b = new ArrayList();
        this.f72057c = new TreeSet();
        int i11 = 0;
        int i12 = 1;
        int i13 = 0;
        while (true) {
            char[] cArr = this.f72055a;
            aVar = null;
            if (i11 >= cArr.length) {
                break;
            }
            if (cArr[i11] == '\n') {
                this.f72057c.add(Integer.valueOf(i12));
                this.f72056b.add(new c(i13, i11, i12, aVar));
                i13 = i11 + 1;
                i12++;
            }
            i11++;
        }
        if (i11 > i13) {
            this.f72057c.add(Integer.valueOf(i12));
            this.f72056b.add(new c(i13, i11, i12, aVar));
        }
        return new a();
    }
}
