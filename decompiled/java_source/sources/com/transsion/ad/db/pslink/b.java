package com.transsion.ad.db.pslink;

import androidx.room.RoomDatabase;
import androidx.room.e;
import androidx.room.g;
import androidx.room.util.k;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements com.transsion.ad.db.pslink.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f42086a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AttributionPoint.b f42088c = new AttributionPoint.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f42087b = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f42089d = new C0596b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f42090e = new c();

    class a extends g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR ABORT INTO `attribution_points` (`id`,`psId`,`failCount`,`reportUrl`,`type`,`updateTimestamp`) VALUES (nullif(?, 0),?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, AttributionPoint attributionPoint) {
            eVar.c(1, attributionPoint.getId());
            if (attributionPoint.getPsId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, attributionPoint.getPsId());
            }
            eVar.c(3, attributionPoint.getFailCount());
            if (attributionPoint.getReportUrl() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, attributionPoint.getReportUrl());
            }
            String strA = b.this.f42088c.a(attributionPoint.getType());
            if (strA == null) {
                eVar.g(5);
            } else {
                eVar.j(5, strA);
            }
            eVar.c(6, attributionPoint.getUpdateTimestamp());
        }
    }

    /* JADX INFO: renamed from: com.transsion.ad.db.pslink.b$b, reason: collision with other inner class name */
    class C0596b extends e {
        C0596b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `attribution_points` WHERE `id` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, AttributionPoint attributionPoint) {
            eVar.c(1, attributionPoint.getId());
        }
    }

    class c extends e {
        c() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `attribution_points` SET `id` = ?,`psId` = ?,`failCount` = ?,`reportUrl` = ?,`type` = ?,`updateTimestamp` = ? WHERE `id` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, AttributionPoint attributionPoint) {
            eVar.c(1, attributionPoint.getId());
            if (attributionPoint.getPsId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, attributionPoint.getPsId());
            }
            eVar.c(3, attributionPoint.getFailCount());
            if (attributionPoint.getReportUrl() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, attributionPoint.getReportUrl());
            }
            String strA = b.this.f42088c.a(attributionPoint.getType());
            if (strA == null) {
                eVar.g(5);
            } else {
                eVar.j(5, strA);
            }
            eVar.c(6, attributionPoint.getUpdateTimestamp());
            eVar.c(7, attributionPoint.getId());
        }
    }

    public b(RoomDatabase roomDatabase) {
        this.f42086a = roomDatabase;
    }

    public static List l() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit m(AttributionPoint attributionPoint, z3.b bVar) throws Exception {
        this.f42089d.c(bVar, attributionPoint);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public /* synthetic */ AttributionPoint n(long j11, long j12, z3.b bVar) throws Throwable {
        z3.e eVarD0 = bVar.D0("SELECT * FROM attribution_points WHERE ? - updateTimestamp >= ? ORDER BY CASE type WHEN 'CLICK' THEN 0 ELSE 1 END, failCount ASC, updateTimestamp DESC LIMIT 1");
        try {
            eVarD0.c(1, j11);
            eVarD0.c(2, j12);
            int iD = k.d(eVarD0, "id");
            int iD2 = k.d(eVarD0, "psId");
            int iD3 = k.d(eVarD0, "failCount");
            int iD4 = k.d(eVarD0, "reportUrl");
            int iD5 = k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD6 = k.d(eVarD0, "updateTimestamp");
            AttributionPoint attributionPoint = null;
            if (eVarD0.A0()) {
                try {
                    attributionPoint = new AttributionPoint((int) eVarD0.getLong(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), (int) eVarD0.getLong(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), this.f42088c.b(eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5)), eVarD0.getLong(iD6));
                } catch (Throwable th2) {
                    th = th2;
                    eVarD0.close();
                    throw th;
                }
            }
            eVarD0.close();
            return attributionPoint;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit o(AttributionPoint attributionPoint, z3.b bVar) throws Exception {
        this.f42087b.d(bVar, attributionPoint);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean p(String str, AttributionPoint.AttributionType attributionType, String str2, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT EXISTS(SELECT 1 FROM attribution_points WHERE psId = ? AND type = ? AND reportUrl = ?)");
        boolean z10 = true;
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            String strA = this.f42088c.a(attributionType);
            if (strA == null) {
                eVarD0.g(2);
            } else {
                eVarD0.j(2, strA);
            }
            if (str2 == null) {
                eVarD0.g(3);
            } else {
                eVarD0.j(3, str2);
            }
            Boolean boolValueOf = null;
            if (eVarD0.A0()) {
                Integer numValueOf = eVarD0.isNull(0) ? null : Integer.valueOf((int) eVarD0.getLong(0));
                if (numValueOf != null) {
                    if (numValueOf.intValue() == 0) {
                        z10 = false;
                    }
                    boolValueOf = Boolean.valueOf(z10);
                }
            }
            eVarD0.close();
            return boolValueOf;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit q(AttributionPoint attributionPoint, z3.b bVar) throws Exception {
        this.f42090e.c(bVar, attributionPoint);
        return Unit.f67061a;
    }

    @Override // com.transsion.ad.db.pslink.a
    public Object a(final AttributionPoint attributionPoint, Continuation continuation) {
        attributionPoint.getClass();
        return androidx.room.util.b.f(this.f42086a, false, true, new Function1() { // from class: mi.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69585a.m(attributionPoint, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.ad.db.pslink.a
    public Object b(final AttributionPoint attributionPoint, Continuation continuation) {
        attributionPoint.getClass();
        return androidx.room.util.b.f(this.f42086a, false, true, new Function1() { // from class: mi.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69590a.q(attributionPoint, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.ad.db.pslink.a
    public Object c(final String str, final AttributionPoint.AttributionType attributionType, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f42086a, true, false, new Function1() { // from class: mi.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69579a.p(str, attributionType, str2, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.ad.db.pslink.a
    public Object d(final long j11, final long j12, Continuation continuation) {
        return androidx.room.util.b.f(this.f42086a, true, false, new Function1() { // from class: mi.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69587a.n(j11, j12, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.ad.db.pslink.a
    public Object e(final AttributionPoint attributionPoint, Continuation continuation) {
        attributionPoint.getClass();
        return androidx.room.util.b.f(this.f42086a, false, true, new Function1() { // from class: mi.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69583a.o(attributionPoint, (z3.b) obj);
            }
        }, continuation);
    }
}
