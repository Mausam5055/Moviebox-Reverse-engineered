package com.transsion.member;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f46580a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i a(Integer num) {
            if (num != null && num.intValue() == -1) {
                return b.f46581b;
            }
            if (num != null && num.intValue() == -2) {
                return d.f46583b;
            }
            return new c(num != null ? num.intValue() : 0);
        }
    }

    public static final class b extends i {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f46581b = new b();

        private b() {
            super(null);
        }
    }

    public static final class c extends i {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f46582b;

        public c(int i11) {
            super(null);
            this.f46582b = i11;
        }

        public final int a() {
            return this.f46582b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && this.f46582b == ((c) obj).f46582b;
        }

        public int hashCode() {
            return this.f46582b;
        }

        public String toString() {
            return "Number(value=" + this.f46582b + ")";
        }
    }

    public static final class d extends i {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final d f46583b = new d();

        private d() {
            super(null);
        }
    }

    private i() {
    }

    public /* synthetic */ i(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
