package com.transsion.baselib.db.video;

import androidx.room.RoomDatabase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class u implements UGCCollectionVideoGroupDao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f43225a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ij.b f43227c = new ij.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f43226b = new a();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `ugc_collection_video_group` (`collectionId`,`ugcVideoIds`) VALUES (?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, UGCCollectionVideoGroup uGCCollectionVideoGroup) {
            if (uGCCollectionVideoGroup.getCollectionId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, uGCCollectionVideoGroup.getCollectionId());
            }
            String strA = u.this.f43227c.a(uGCCollectionVideoGroup.getUgcVideoIds());
            if (strA == null) {
                eVar.g(2);
            } else {
                eVar.j(2, strA);
            }
        }
    }

    public u(RoomDatabase roomDatabase) {
        this.f43225a = roomDatabase;
    }

    public static List j() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List k(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ugc_collection_video_group");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoIds");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = null;
                String strN1 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                if (!eVarD0.isNull(iD2)) {
                    strN0 = eVarD0.n0(iD2);
                }
                arrayList.add(new UGCCollectionVideoGroup(strN1, this.f43227c.b(strN0)));
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
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
    public /* synthetic */ UGCCollectionVideoGroup l(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ugc_collection_video_group WHERE collectionId = ? LIMIT 1");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoIds");
            UGCCollectionVideoGroup uGCCollectionVideoGroup = null;
            String strN0 = null;
            if (eVarD0.A0()) {
                String strN1 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                if (!eVarD0.isNull(iD2)) {
                    strN0 = eVarD0.n0(iD2);
                }
                uGCCollectionVideoGroup = new UGCCollectionVideoGroup(strN1, this.f43227c.b(strN0));
            }
            eVarD0.close();
            return uGCCollectionVideoGroup;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit m(UGCCollectionVideoGroup uGCCollectionVideoGroup, z3.b bVar) throws Exception {
        this.f43226b.d(bVar, uGCCollectionVideoGroup);
        return Unit.f67061a;
    }

    @Override // com.transsion.baselib.db.video.UGCCollectionVideoGroupDao
    public Object a(String str, List list, Continuation continuation) {
        return UGCCollectionVideoGroupDao.DefaultImpls.a(this, str, list, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCCollectionVideoGroupDao
    public Object b(final UGCCollectionVideoGroup uGCCollectionVideoGroup, Continuation continuation) {
        uGCCollectionVideoGroup.getClass();
        return androidx.room.util.b.f(this.f43225a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43221a.m(uGCCollectionVideoGroup, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCCollectionVideoGroupDao
    public Object c(String str, Continuation continuation) {
        return UGCCollectionVideoGroupDao.DefaultImpls.b(this, str, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCCollectionVideoGroupDao
    public Object d(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43225a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43217a.l(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCCollectionVideoGroupDao
    public Object e(Continuation continuation) {
        return androidx.room.util.b.f(this.f43225a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43214a.k((z3.b) obj);
            }
        }, continuation);
    }
}
