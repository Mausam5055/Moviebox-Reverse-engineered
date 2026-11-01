package com.transsion.rewardscenter.prize;

import com.transsion.rewardscenterapi.DrawChance;
import com.transsion.rewardscenterapi.DrawResult;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e {

    public static final class a extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final DrawChance f50991a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DrawChance data) {
            super(null);
            Intrinsics.h(data, "data");
            this.f50991a = data;
        }

        public final DrawChance a() {
            return this.f50991a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.c(this.f50991a, ((a) obj).f50991a);
        }

        public int hashCode() {
            return this.f50991a.hashCode();
        }

        public String toString() {
            return "DrawChanceItem(data=" + this.f50991a + ")";
        }
    }

    public static final class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f50992a;

        public b(boolean z10) {
            super(null);
            this.f50992a = z10;
        }

        public final boolean a() {
            return this.f50992a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && this.f50992a == ((b) obj).f50992a;
        }

        public int hashCode() {
            return androidx.compose.foundation.e.a(this.f50992a);
        }

        public String toString() {
            return "FooterItem(isExpanded=" + this.f50992a + ")";
        }
    }

    public static final class c extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final DrawResult f50993a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DrawResult data) {
            super(null);
            Intrinsics.h(data, "data");
            this.f50993a = data;
        }

        public final DrawResult a() {
            return this.f50993a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && Intrinsics.c(this.f50993a, ((c) obj).f50993a);
        }

        public int hashCode() {
            return this.f50993a.hashCode();
        }

        public String toString() {
            return "Row(data=" + this.f50993a + ")";
        }
    }

    private e() {
    }

    public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
