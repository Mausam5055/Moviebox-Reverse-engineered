package com.transsion.baseui.util;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class k {

    public static final class a extends k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f43520a;

        public a(int i11) {
            super(null);
            this.f43520a = i11;
        }

        public final int a() {
            return this.f43520a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.f43520a == ((a) obj).f43520a;
        }

        public int hashCode() {
            return this.f43520a;
        }

        public String toString() {
            return "Icon(iconRes=" + this.f43520a + ")";
        }
    }

    public static final class b extends k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f43521a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Integer f43522b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String content, Integer num) {
            super(null);
            Intrinsics.h(content, "content");
            this.f43521a = content;
            this.f43522b = num;
        }

        public final String a() {
            return this.f43521a;
        }

        public final Integer b() {
            return this.f43522b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f43521a, bVar.f43521a) && Intrinsics.c(this.f43522b, bVar.f43522b);
        }

        public int hashCode() {
            int iHashCode = this.f43521a.hashCode() * 31;
            Integer num = this.f43522b;
            return iHashCode + (num == null ? 0 : num.hashCode());
        }

        public String toString() {
            return "Text(content=" + this.f43521a + ", textColorRes=" + this.f43522b + ")";
        }
    }

    private k() {
    }

    public /* synthetic */ k(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
