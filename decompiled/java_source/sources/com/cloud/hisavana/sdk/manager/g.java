package com.cloud.hisavana.sdk.manager;

import com.cloud.hisavana.sdk.R0;
import com.cloud.hisavana.sdk.c1;
import com.cloud.hisavana.sdk.common.bean.DiskTrackingBean;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.security.SecureRandom;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f22718d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final g f22719e = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22720a = "RetryTrackingManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicBoolean f22721b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f22722c = 2;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final g a() {
            return g.f22719e;
        }
    }

    public static abstract class b {
        public abstract void a();
    }

    public static abstract class c {
        public abstract void a(String str);

        public abstract void b(String str, int i11);
    }

    public static final class d extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DiskTrackingBean f22723a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g f22724b;

        d(DiskTrackingBean diskTrackingBean, g gVar) {
            this.f22723a = diskTrackingBean;
            this.f22724b = gVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(g this$0, DiskTrackingBean diskTrackingBean) {
            Intrinsics.h(this$0, "this$0");
            this$0.l(diskTrackingBean.getNext());
        }

        @Override // com.cloud.hisavana.sdk.manager.g.b
        public void a() {
            if (this.f22723a.getNext() == null) {
                this.f22724b.f22721b.set(false);
                return;
            }
            HSScopeHelper hSScopeHelper = HSScopeHelper.f23167a;
            final g gVar = this.f22724b;
            final DiskTrackingBean diskTrackingBean = this.f22723a;
            hSScopeHelper.j(new Runnable() { // from class: com.cloud.hisavana.sdk.manager.h
                @Override // java.lang.Runnable
                public final void run() {
                    g.d.c(gVar, diskTrackingBean);
                }
            }, this.f22724b.f());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long f() {
        return (new SecureRandom().nextLong() % ((long) 2000)) + ((long) 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(g this$0) {
        Intrinsics.h(this$0, "this$0");
        List<DiskTrackingBean> listM = R0.f21535e.a().m();
        if (listM == null || listM.isEmpty()) {
            this$0.f22721b.set(false);
            return;
        }
        DiskTrackingBean diskTrackingBean = (DiskTrackingBean) listM.get(0);
        DiskTrackingBean diskTrackingBean2 = diskTrackingBean;
        for (DiskTrackingBean diskTrackingBean3 : listM) {
            if (!Intrinsics.c(diskTrackingBean2, diskTrackingBean3)) {
                diskTrackingBean2.setNext(diskTrackingBean3);
                diskTrackingBean2 = diskTrackingBean3;
            }
        }
        this$0.l(diskTrackingBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(DiskTrackingBean diskTrackingBean) {
        e4.b().d(this.f22720a, "tracking " + diskTrackingBean);
        if (diskTrackingBean == null) {
            return;
        }
        if (diskTrackingBean.getRetryTimes().get() >= this.f22722c) {
            j(diskTrackingBean);
            l(diskTrackingBean.getNext());
        } else if (NetStateManager.checkNetworkState(true)) {
            c1.g(diskTrackingBean, new d(diskTrackingBean, this));
        } else {
            this.f22721b.set(false);
            e4.b().d(this.f22720a, "tracking,net is not ok");
        }
    }

    public final void d(DiskTrackingBean diskTrackingBean) {
        if (diskTrackingBean != null) {
            diskTrackingBean.getRetryTimes().addAndGet(1);
            if (diskTrackingBean.getRetryTimes().get() >= this.f22722c) {
                j(diskTrackingBean);
            } else {
                R0.f21535e.a().l(diskTrackingBean);
            }
        }
    }

    public final void h(DiskTrackingBean diskTrackingBean) {
        String uuid;
        e4.b().d(this.f22720a, "addTrackingBean " + diskTrackingBean);
        R0.a aVar = R0.f21535e;
        aVar.a().k();
        R0 r0A = aVar.a();
        if (diskTrackingBean == null || (uuid = diskTrackingBean.getUuid()) == null) {
            uuid = "";
        }
        if (r0A.h(uuid) == null) {
            aVar.a().j(diskTrackingBean);
        }
    }

    public final void i() {
        if (this.f22721b.get()) {
            e4.b().d(this.f22720a, "startRetryTracking,is retrying");
        } else {
            this.f22721b.set(true);
            HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.manager.f
                @Override // java.lang.Runnable
                public final void run() {
                    g.k(this.f22717a);
                }
            });
        }
    }

    public final void j(DiskTrackingBean diskTrackingBean) {
        if (diskTrackingBean != null) {
            R0.f21535e.a().f(diskTrackingBean.getUuid());
        }
    }
}
