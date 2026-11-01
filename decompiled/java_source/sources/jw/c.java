package jw;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public interface c {

    public static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f66317a = new a();

        private a() {
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof a);
        }

        public int hashCode() {
            return 1677312116;
        }

        public String toString() {
            return "Error";
        }
    }

    public static final class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f66318a = new b();

        private b() {
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof b);
        }

        public int hashCode() {
            return -1195121496;
        }

        public String toString() {
            return "Loading";
        }
    }

    /* JADX INFO: renamed from: jw.c$c, reason: collision with other inner class name */
    public static final class C0804c implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final jw.b f66319a;

        public C0804c(jw.b model) {
            Intrinsics.h(model, "model");
            this.f66319a = model;
        }

        public final jw.b a() {
            return this.f66319a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0804c) && Intrinsics.c(this.f66319a, ((C0804c) obj).f66319a);
        }

        public int hashCode() {
            return this.f66319a.hashCode();
        }

        public String toString() {
            return "Success(model=" + this.f66319a + ")";
        }
    }
}
