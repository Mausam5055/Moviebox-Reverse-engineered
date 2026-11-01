package androidx.work;

import android.os.Build;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f15492d = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final UUID f15493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.work.impl.model.j0 f15494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f15495c;

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class f15496a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f15497b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private UUID f15498c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.work.impl.model.j0 f15499d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Set f15500e;

        public a(Class workerClass) {
            Intrinsics.h(workerClass, "workerClass");
            this.f15496a = workerClass;
            UUID uuidRandomUUID = UUID.randomUUID();
            Intrinsics.g(uuidRandomUUID, "randomUUID(...)");
            this.f15498c = uuidRandomUUID;
            String string = this.f15498c.toString();
            Intrinsics.g(string, "toString(...)");
            String name = workerClass.getName();
            Intrinsics.g(name, "getName(...)");
            this.f15499d = new androidx.work.impl.model.j0(string, name);
            String name2 = workerClass.getName();
            Intrinsics.g(name2, "getName(...)");
            this.f15500e = SetsKt.h(name2);
        }

        public final a a(String tag) {
            Intrinsics.h(tag, "tag");
            this.f15500e.add(tag);
            return g();
        }

        public final i0 b() {
            i0 i0VarC = c();
            d dVar = this.f15499d.f15773j;
            boolean z10 = (Build.VERSION.SDK_INT >= 24 && dVar.g()) || dVar.h() || dVar.i() || dVar.j();
            androidx.work.impl.model.j0 j0Var = this.f15499d;
            if (j0Var.f15780q) {
                if (z10) {
                    throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
                }
                if (j0Var.f15770g > 0) {
                    throw new IllegalArgumentException("Expedited jobs cannot be delayed");
                }
            }
            String strL = j0Var.l();
            if (strL == null) {
                androidx.work.impl.model.j0 j0Var2 = this.f15499d;
                j0Var2.t(i0.f15492d.b(j0Var2.f15766c));
            } else if (strL.length() > 127) {
                this.f15499d.t(StringsKt.y1(strL, 127));
            }
            UUID uuidRandomUUID = UUID.randomUUID();
            Intrinsics.g(uuidRandomUUID, "randomUUID(...)");
            j(uuidRandomUUID);
            return i0VarC;
        }

        public abstract i0 c();

        public final boolean d() {
            return this.f15497b;
        }

        public final UUID e() {
            return this.f15498c;
        }

        public final Set f() {
            return this.f15500e;
        }

        public abstract a g();

        public final androidx.work.impl.model.j0 h() {
            return this.f15499d;
        }

        public final a i(d constraints) {
            Intrinsics.h(constraints, "constraints");
            this.f15499d.f15773j = constraints;
            return g();
        }

        public final a j(UUID id2) {
            Intrinsics.h(id2, "id");
            this.f15498c = id2;
            String string = id2.toString();
            Intrinsics.g(string, "toString(...)");
            this.f15499d = new androidx.work.impl.model.j0(string, this.f15499d);
            return g();
        }

        public a k(long j11, TimeUnit timeUnit) {
            Intrinsics.h(timeUnit, "timeUnit");
            this.f15499d.f15770g = timeUnit.toMillis(j11);
            if (Long.MAX_VALUE - System.currentTimeMillis() > this.f15499d.f15770g) {
                return g();
            }
            throw new IllegalArgumentException("The given initial delay is too large and will cause an overflow!");
        }

        public final a l(f inputData) {
            Intrinsics.h(inputData, "inputData");
            this.f15499d.f15768e = inputData;
            return g();
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String b(String str) {
            List listS0 = StringsKt.S0(str, new String[]{"."}, false, 0, 6, null);
            String str2 = listS0.size() == 1 ? (String) listS0.get(0) : (String) CollectionsKt.u0(listS0);
            return str2.length() <= 127 ? str2 : StringsKt.y1(str2, 127);
        }
    }

    public i0(UUID id2, androidx.work.impl.model.j0 workSpec, Set tags) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(workSpec, "workSpec");
        Intrinsics.h(tags, "tags");
        this.f15493a = id2;
        this.f15494b = workSpec;
        this.f15495c = tags;
    }

    public UUID a() {
        return this.f15493a;
    }

    public final String b() {
        String string = a().toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final Set c() {
        return this.f15495c;
    }

    public final androidx.work.impl.model.j0 d() {
        return this.f15494b;
    }
}
