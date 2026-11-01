package androidx.core.text;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t f8253a = new e(null, false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final t f8254b = new e(null, true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final t f8255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final t f8256d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final t f8257e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final t f8258f;

    private static class a implements c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final a f8259b = new a(true);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f8260a;

        private a(boolean z10) {
            this.f8260a = z10;
        }

        @Override // androidx.core.text.u.c
        public int a(CharSequence charSequence, int i11, int i12) {
            int i13 = i12 + i11;
            boolean z10 = false;
            while (i11 < i13) {
                int iA = u.a(Character.getDirectionality(charSequence.charAt(i11)));
                if (iA != 0) {
                    if (iA != 1) {
                        continue;
                    } else if (!this.f8260a) {
                        return 1;
                    }
                    i11++;
                    z10 = z10;
                } else if (this.f8260a) {
                    return 0;
                }
                z10 = true;
                i11++;
                z10 = z10;
            }
            if (z10) {
                return this.f8260a ? 1 : 0;
            }
            return 2;
        }
    }

    private static class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f8261a = new b();

        private b() {
        }

        @Override // androidx.core.text.u.c
        public int a(CharSequence charSequence, int i11, int i12) {
            int i13 = i12 + i11;
            int iB = 2;
            while (i11 < i13 && iB == 2) {
                iB = u.b(Character.getDirectionality(charSequence.charAt(i11)));
                i11++;
            }
            return iB;
        }
    }

    private interface c {
        int a(CharSequence charSequence, int i11, int i12);
    }

    private static abstract class d implements t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f8262a;

        d(c cVar) {
            this.f8262a = cVar;
        }

        private boolean c(CharSequence charSequence, int i11, int i12) {
            int iA = this.f8262a.a(charSequence, i11, i12);
            if (iA == 0) {
                return true;
            }
            if (iA != 1) {
                return b();
            }
            return false;
        }

        @Override // androidx.core.text.t
        public boolean a(CharSequence charSequence, int i11, int i12) {
            if (charSequence == null || i11 < 0 || i12 < 0 || charSequence.length() - i12 < i11) {
                throw new IllegalArgumentException();
            }
            return this.f8262a == null ? b() : c(charSequence, i11, i12);
        }

        protected abstract boolean b();
    }

    private static class e extends d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f8263b;

        e(c cVar, boolean z10) {
            super(cVar);
            this.f8263b = z10;
        }

        @Override // androidx.core.text.u.d
        protected boolean b() {
            return this.f8263b;
        }
    }

    private static class f extends d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final f f8264b = new f();

        f() {
            super(null);
        }

        @Override // androidx.core.text.u.d
        protected boolean b() {
            return v.a(Locale.getDefault()) == 1;
        }
    }

    static {
        b bVar = b.f8261a;
        f8255c = new e(bVar, false);
        f8256d = new e(bVar, true);
        f8257e = new e(a.f8259b, false);
        f8258f = f.f8264b;
    }

    static int a(int i11) {
        if (i11 != 0) {
            return (i11 == 1 || i11 == 2) ? 0 : 2;
        }
        return 1;
    }

    static int b(int i11) {
        if (i11 != 0) {
            if (i11 == 1 || i11 == 2) {
                return 0;
            }
            switch (i11) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
