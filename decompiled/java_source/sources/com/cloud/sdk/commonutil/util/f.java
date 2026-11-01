package com.cloud.sdk.commonutil.util;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class f {

    public static final class a extends f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Throwable f23191a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Throwable exception) {
            super(null);
            Intrinsics.h(exception, "exception");
            this.f23191a = exception;
        }

        public final Throwable a() {
            return this.f23191a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.c(this.f23191a, ((a) obj).f23191a);
        }

        public int hashCode() {
            return this.f23191a.hashCode();
        }

        public String toString() {
            return "Failure(exception=" + this.f23191a + ')';
        }
    }

    public static final class b extends f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f23192a;

        public b(Object obj) {
            super(null);
            this.f23192a = obj;
        }

        public final Object a() {
            return this.f23192a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.c(this.f23192a, ((b) obj).f23192a);
        }

        public int hashCode() {
            Object obj = this.f23192a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public String toString() {
            return "Success(value=" + this.f23192a + ')';
        }
    }

    private f() {
    }

    public /* synthetic */ f(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
