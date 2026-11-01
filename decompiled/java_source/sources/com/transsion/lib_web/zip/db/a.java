package com.transsion.lib_web.zip.db;

import androidx.room.RoomDatabase;
import androidx.room.e;
import androidx.room.g;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements pm.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final d f46195e = new d(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f46196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f46197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f46198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f46199d;

    /* JADX INFO: renamed from: com.transsion.lib_web.zip.db.a$a, reason: collision with other inner class name */
    public static final class C0634a extends g {
        C0634a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `mb_web_res_db` (`scene`,`htmlUrl`,`zipUrl`,`zipMd5`,`sourceType`,`updateTime`) VALUES (?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e statement, WebViewCacheConfigData entity) {
            Intrinsics.h(statement, "statement");
            Intrinsics.h(entity, "entity");
            statement.j(1, entity.getScene());
            statement.j(2, entity.getHtmlUrl());
            statement.j(3, entity.getZipUrl());
            statement.j(4, entity.getZipMd5());
            statement.c(5, entity.getSourceType());
            String updateTime = entity.getUpdateTime();
            if (updateTime == null) {
                statement.g(6);
            } else {
                statement.j(6, updateTime);
            }
        }
    }

    public static final class b extends e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `mb_web_res_db` WHERE `scene` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e statement, WebViewCacheConfigData entity) {
            Intrinsics.h(statement, "statement");
            Intrinsics.h(entity, "entity");
            statement.j(1, entity.getScene());
        }
    }

    public static final class c extends e {
        c() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `mb_web_res_db` SET `scene` = ?,`htmlUrl` = ?,`zipUrl` = ?,`zipMd5` = ?,`sourceType` = ?,`updateTime` = ? WHERE `scene` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e statement, WebViewCacheConfigData entity) {
            Intrinsics.h(statement, "statement");
            Intrinsics.h(entity, "entity");
            statement.j(1, entity.getScene());
            statement.j(2, entity.getHtmlUrl());
            statement.j(3, entity.getZipUrl());
            statement.j(4, entity.getZipMd5());
            statement.c(5, entity.getSourceType());
            String updateTime = entity.getUpdateTime();
            if (updateTime == null) {
                statement.g(6);
            } else {
                statement.j(6, updateTime);
            }
            statement.j(7, entity.getScene());
        }
    }

    public static final class d {
        private d() {
        }

        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a() {
            return CollectionsKt.l();
        }
    }

    public a(RoomDatabase __db) {
        Intrinsics.h(__db, "__db");
        this.f46196a = __db;
        this.f46197b = new C0634a();
        this.f46198c = new b();
        this.f46199d = new c();
    }
}
