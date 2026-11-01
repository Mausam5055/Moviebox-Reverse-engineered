package com.google.firebase.messaging;

import androidx.core.app.NotificationCompat;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.hisavana.common.tracking.TrackingKey;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements cc.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final cc.a f32016a = new a();

    /* JADX INFO: renamed from: com.google.firebase.messaging.a$a, reason: collision with other inner class name */
    private static final class C0445a implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0445a f32017a = new C0445a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f32018b = bc.b.a("projectNumber").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f32019c = bc.b.a("messageId").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f32020d = bc.b.a("instanceId").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f32021e = bc.b.a("messageType").b(com.google.firebase.encoders.proto.a.b().c(4).a()).a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f32022f = bc.b.a("sdkPlatform").b(com.google.firebase.encoders.proto.a.b().c(5).a()).a();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f32023g = bc.b.a("packageName").b(com.google.firebase.encoders.proto.a.b().c(6).a()).a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final bc.b f32024h = bc.b.a("collapseKey").b(com.google.firebase.encoders.proto.a.b().c(7).a()).a();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final bc.b f32025i = bc.b.a(TrackingKey.PRIORITY).b(com.google.firebase.encoders.proto.a.b().c(8).a()).a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final bc.b f32026j = bc.b.a("ttl").b(com.google.firebase.encoders.proto.a.b().c(9).a()).a();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final bc.b f32027k = bc.b.a("topic").b(com.google.firebase.encoders.proto.a.b().c(10).a()).a();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final bc.b f32028l = bc.b.a("bulkId").b(com.google.firebase.encoders.proto.a.b().c(11).a()).a();

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final bc.b f32029m = bc.b.a(NotificationCompat.CATEGORY_EVENT).b(com.google.firebase.encoders.proto.a.b().c(12).a()).a();

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final bc.b f32030n = bc.b.a("analyticsLabel").b(com.google.firebase.encoders.proto.a.b().c(13).a()).a();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static final bc.b f32031o = bc.b.a("campaignId").b(com.google.firebase.encoders.proto.a.b().c(14).a()).a();

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private static final bc.b f32032p = bc.b.a("composerLabel").b(com.google.firebase.encoders.proto.a.b().c(15).a()).a();

        private C0445a() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(MessagingClientEvent messagingClientEvent, bc.d dVar) {
            dVar.a(f32018b, messagingClientEvent.l());
            dVar.e(f32019c, messagingClientEvent.h());
            dVar.e(f32020d, messagingClientEvent.g());
            dVar.e(f32021e, messagingClientEvent.i());
            dVar.e(f32022f, messagingClientEvent.m());
            dVar.e(f32023g, messagingClientEvent.j());
            dVar.e(f32024h, messagingClientEvent.d());
            dVar.b(f32025i, messagingClientEvent.k());
            dVar.b(f32026j, messagingClientEvent.o());
            dVar.e(f32027k, messagingClientEvent.n());
            dVar.a(f32028l, messagingClientEvent.b());
            dVar.e(f32029m, messagingClientEvent.f());
            dVar.e(f32030n, messagingClientEvent.a());
            dVar.a(f32031o, messagingClientEvent.c());
            dVar.e(f32032p, messagingClientEvent.e());
        }
    }

    private static final class b implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f32033a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f32034b = bc.b.a("messagingClientEvent").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private b() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(nc.a aVar, bc.d dVar) {
            dVar.e(f32034b, aVar.a());
        }
    }

    private static final class c implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f32035a = new c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f32036b = bc.b.d("messagingClientEventExtension");

        private c() {
        }

        @Override // bc.c
        public /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
            android.support.v4.media.session.c.a(obj);
            b(null, (bc.d) obj2);
        }

        public void b(l0 l0Var, bc.d dVar) {
            throw null;
        }
    }

    private a() {
    }

    @Override // cc.a
    public void a(cc.b bVar) {
        bVar.a(l0.class, c.f32035a);
        bVar.a(nc.a.class, b.f32033a);
        bVar.a(MessagingClientEvent.class, C0445a.f32017a);
    }
}
