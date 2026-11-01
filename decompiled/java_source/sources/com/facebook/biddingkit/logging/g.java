package com.facebook.biddingkit.logging;

import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
abstract class g {

    private static class b implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Collection f24130a;

        private b() {
            this.f24130a = new ArrayList();
        }

        @Override // com.facebook.biddingkit.logging.g.d
        public void a(String str) {
            this.f24130a.add(str);
        }

        @Override // com.facebook.biddingkit.logging.g.d
        public void flush() {
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            Iterator it = this.f24130a.iterator();
            while (it.hasNext()) {
                sb2.append((String) it.next());
                sb2.append('\n');
            }
            return sb2.toString();
        }
    }

    private static class c implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final d f24131a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f24132b;

        c(d dVar, int i11) {
            this.f24131a = dVar;
            this.f24132b = i11;
        }

        @Override // com.facebook.biddingkit.logging.g.d
        public void a(String str) {
            if (this.f24132b > 0) {
                this.f24131a.a(str);
                this.f24132b--;
            }
        }

        @Override // com.facebook.biddingkit.logging.g.d
        public void flush() {
            this.f24131a.flush();
        }
    }

    private interface d {
        void a(String str);

        void flush();
    }

    private static class e extends Writer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final d f24133a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        char[] f24134b = new char[1024];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f24135c;

        e(d dVar) {
            this.f24133a = dVar;
        }

        private void d() {
            this.f24133a.a(new String(this.f24134b, 0, this.f24135c));
            this.f24135c = 0;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            flush();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            if (this.f24135c > 0) {
                d();
            }
        }

        /* JADX WARN: Code duplicated, block: B:11:0x001a  */
        @Override // java.io.Writer
        public void write(char[] cArr, int i11, int i12) {
            for (int i13 = i11; i13 < i11 + i12; i13++) {
                char c11 = cArr[i13];
                if (c11 != '\n') {
                    int i14 = this.f24135c;
                    char[] cArr2 = this.f24134b;
                    if (i14 == cArr2.length) {
                        d();
                    } else {
                        cArr2[i14] = c11;
                        this.f24135c = i14 + 1;
                    }
                } else {
                    d();
                }
            }
        }
    }

    public static String a(Throwable th2) {
        return b(th2, 100);
    }

    public static String b(Throwable th2, int i11) {
        if (th2 == null) {
            return "";
        }
        try {
            b bVar = new b();
            d cVar = i11 >= 0 ? new c(bVar, i11) : bVar;
            th2.printStackTrace(new PrintWriter(new e(cVar)));
            cVar.flush();
            return bVar.toString();
        } catch (Exception unused) {
            return "";
        }
    }
}
