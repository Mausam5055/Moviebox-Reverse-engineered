package jw;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public interface a {

    /* JADX INFO: renamed from: jw.a$a, reason: collision with other inner class name */
    public static final class C0803a implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final jw.b f66303a;

        public C0803a(jw.b model) {
            Intrinsics.h(model, "model");
            this.f66303a = model;
        }

        public final jw.b a() {
            return this.f66303a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0803a) && Intrinsics.c(this.f66303a, ((C0803a) obj).f66303a);
        }

        public int hashCode() {
            return this.f66303a.hashCode();
        }

        public String toString() {
            return "BasicRights(model=" + this.f66303a + ")";
        }
    }

    public static final class b implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f66304a;

        public b(String text) {
            Intrinsics.h(text, "text");
            this.f66304a = text;
        }

        public final String a() {
            return this.f66304a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.c(this.f66304a, ((b) obj).f66304a);
        }

        public int hashCode() {
            return this.f66304a.hashCode();
        }

        public String toString() {
            return "Description(text=" + this.f66304a + ")";
        }
    }

    public static final class c implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f66305a;

        public c(List devices) {
            Intrinsics.h(devices, "devices");
            this.f66305a = devices;
        }

        public final List a() {
            return this.f66305a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && Intrinsics.c(this.f66305a, ((c) obj).f66305a);
        }

        public int hashCode() {
            return this.f66305a.hashCode();
        }

        public String toString() {
            return "Devices(devices=" + this.f66305a + ")";
        }
    }

    public static final class d implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f66306a = new d();

        private d() {
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof d);
        }

        public int hashCode() {
            return 573113473;
        }

        public String toString() {
            return "ProScan";
        }
    }

    public static final class e implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final jw.b f66307a;

        public e(jw.b model) {
            Intrinsics.h(model, "model");
            this.f66307a = model;
        }

        public final jw.b a() {
            return this.f66307a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && Intrinsics.c(this.f66307a, ((e) obj).f66307a);
        }

        public int hashCode() {
            return this.f66307a.hashCode();
        }

        public String toString() {
            return "User(model=" + this.f66307a + ")";
        }
    }
}
