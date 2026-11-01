package com.google.common.base;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class h {

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f30236a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final C0403b f30237b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private C0403b f30238c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f30239d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f30240e;

        private static final class a extends C0403b {
            private a() {
            }
        }

        /* JADX INFO: renamed from: com.google.common.base.h$b$b, reason: collision with other inner class name */
        static class C0403b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            String f30241a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            Object f30242b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            C0403b f30243c;

            C0403b() {
            }
        }

        private b(String str) {
            C0403b c0403b = new C0403b();
            this.f30237b = c0403b;
            this.f30238c = c0403b;
            this.f30239d = false;
            this.f30240e = false;
            this.f30236a = (String) m.o(str);
        }

        private C0403b e() {
            C0403b c0403b = new C0403b();
            this.f30238c.f30243c = c0403b;
            this.f30238c = c0403b;
            return c0403b;
        }

        private b f(Object obj) {
            e().f30242b = obj;
            return this;
        }

        private b g(String str, Object obj) {
            C0403b c0403bE = e();
            c0403bE.f30242b = obj;
            c0403bE.f30241a = (String) m.o(str);
            return this;
        }

        private a h() {
            a aVar = new a();
            this.f30238c.f30243c = aVar;
            this.f30238c = aVar;
            return aVar;
        }

        private b i(String str, Object obj) {
            a aVarH = h();
            aVarH.f30242b = obj;
            aVarH.f30241a = (String) m.o(str);
            return this;
        }

        private static boolean k(Object obj) {
            if (obj instanceof CharSequence) {
                return ((CharSequence) obj).length() == 0;
            }
            if (obj instanceof Collection) {
                return ((Collection) obj).isEmpty();
            }
            if (obj instanceof Map) {
                return ((Map) obj).isEmpty();
            }
            if (obj instanceof Optional) {
                return !((Optional) obj).isPresent();
            }
            return obj.getClass().isArray() && Array.getLength(obj) == 0;
        }

        public b a(String str, double d11) {
            return i(str, String.valueOf(d11));
        }

        public b b(String str, int i11) {
            return i(str, String.valueOf(i11));
        }

        public b c(String str, long j11) {
            return i(str, String.valueOf(j11));
        }

        public b d(String str, Object obj) {
            return g(str, obj);
        }

        public b j(Object obj) {
            return f(obj);
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0031  */
        /* JADX WARN: Code duplicated, block: B:14:0x0038  */
        /* JADX WARN: Code duplicated, block: B:16:0x0042  */
        /* JADX WARN: Code duplicated, block: B:19:0x005e  */
        public String toString() {
            String str;
            boolean z10 = this.f30239d;
            boolean z11 = this.f30240e;
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append(this.f30236a);
            sb2.append('{');
            String str2 = "";
            for (C0403b c0403b = this.f30237b.f30243c; c0403b != null; c0403b = c0403b.f30243c) {
                Object obj = c0403b.f30242b;
                if (c0403b instanceof a) {
                    sb2.append(str2);
                    str = c0403b.f30241a;
                    if (str != null) {
                        sb2.append(str);
                        sb2.append('=');
                    }
                    if (obj == null && obj.getClass().isArray()) {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb2.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    } else {
                        sb2.append(obj);
                    }
                    str2 = ", ";
                } else if (obj == null) {
                    if (!z10) {
                        sb2.append(str2);
                        str = c0403b.f30241a;
                        if (str != null) {
                            sb2.append(str);
                            sb2.append('=');
                        }
                        if (obj == null) {
                            sb2.append(obj);
                        } else {
                            sb2.append(obj);
                        }
                        str2 = ", ";
                    }
                } else if (!z11 || !k(obj)) {
                    sb2.append(str2);
                    str = c0403b.f30241a;
                    if (str != null) {
                        sb2.append(str);
                        sb2.append('=');
                    }
                    if (obj == null) {
                        sb2.append(obj);
                    } else {
                        sb2.append(obj);
                    }
                    str2 = ", ";
                }
            }
            sb2.append('}');
            return sb2.toString();
        }
    }

    public static Object a(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        if (obj2 != null) {
            return obj2;
        }
        throw new NullPointerException("Both parameters are null");
    }

    public static b b(Object obj) {
        return new b(obj.getClass().getSimpleName());
    }
}
