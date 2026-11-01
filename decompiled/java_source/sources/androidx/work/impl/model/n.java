package androidx.work.impl.model;

import androidx.room.RoomDatabase;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f15820b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f15821a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a() {
            return CollectionsKt.l();
        }
    }

    public n(RoomDatabase __db) {
        Intrinsics.h(__db, "__db");
        this.f15821a = __db;
    }
}
