package com.transsion.ninegridview;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.recyclerview.widget.RecyclerView;
import com.aliyun.player.bean.ErrorCode;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.player.config.RenderType;
import com.transsion.player.orplayer.g;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import nh.m;
import nh.n;
import pn.d;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C0642a f47670h = new C0642a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final bo.d f47671i = new bo.d(RenderType.TEXTURE_VIEW, false, 0, 1000, 1000, 200, 10, 0, 0, 0, 0, false, false, false, false, false, null, 130950, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f47672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private qn.a f47673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private pn.c f47674c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private n f47675d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f47676e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private pn.a f47677f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f47678g;

    /* JADX INFO: renamed from: com.transsion.ninegridview.a$a, reason: collision with other inner class name */
    public static final class C0642a {
        private C0642a() {
        }

        public /* synthetic */ C0642a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final bo.d a() {
            return a.f47671i;
        }
    }

    public static final class b implements n {
        b() {
        }

        @Override // nh.n
        public void onConnected() {
            n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            pn.a aVar = a.this.f47677f;
            if (aVar != null) {
                int iA = aVar.a();
                a aVar2 = a.this;
                if (aVar2.f47676e && iA == ErrorCode.ERROR_LOADING_TIMEOUT.getValue()) {
                    qn.a aVarG = aVar2.g();
                    if (aVarG != null) {
                        aVarG.w();
                    }
                    aVar2.f47676e = false;
                }
            }
        }

        @Override // nh.n
        public void onDisconnected() {
            a.this.f47676e = true;
        }
    }

    @Override // pn.d
    public void a() {
        Context context = this.f47678g;
        if (context != null) {
            j(context);
        }
    }

    public final void f() {
        g gVar = this.f47672a;
        if (gVar != null) {
            gVar.release();
        }
        this.f47672a = null;
        qn.a aVar = this.f47673b;
        if (aVar != null) {
            aVar.a();
        }
        this.f47673b = null;
        pn.c cVar = this.f47674c;
        if (cVar != null) {
            cVar.e();
        }
        this.f47674c = null;
        m.f70474a.m(this.f47675d);
        this.f47675d = null;
    }

    public final qn.a g() {
        return this.f47673b;
    }

    public final void h() {
        if (this.f47674c == null) {
            this.f47674c = new pn.c();
        }
        pn.c cVar = this.f47674c;
        if (cVar != null) {
            cVar.e();
        }
    }

    public final void i() {
        if (this.f47675d == null) {
            b bVar = new b();
            this.f47675d = bVar;
            m.f70474a.l(bVar);
        }
    }

    public final void j(Context context) {
        Intrinsics.h(context, "context");
        if (this.f47672a == null) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            ORPlayerView oRPlayerView = new ORPlayerView(applicationContext, RenderType.TEXTURE_VIEW);
            Context applicationContext2 = context.getApplicationContext();
            Intrinsics.g(applicationContext2, "getApplicationContext(...)");
            g gVarA = new g.a(applicationContext2).a();
            gVarA.setPlayerConfig(f47671i);
            gVarA.setTextureView(oRPlayerView.getTextureView());
            gVarA.setScaleMode(ScaleMode.SCALE_ASPECT_FILL);
            gVarA.setMute(true);
            this.f47673b = new qn.a(gVarA, oRPlayerView);
            pn.a aVar = new pn.a();
            aVar.b(this.f47673b);
            gVarA.setPlayerListener(aVar);
            this.f47677f = aVar;
            this.f47672a = gVarA;
            pn.c cVar = this.f47674c;
            if (cVar != null) {
                cVar.k(this.f47673b);
            }
            i();
            lg.a.C0828a.f(lg.a.f68839a, "GifPlayerManager", "initPlayer", false, 4, null);
        }
    }

    public final void k() {
        g gVar = this.f47672a;
        if (gVar != null) {
            gVar.pause();
        }
    }

    public final void l() {
        g gVar = this.f47672a;
        if (gVar != null) {
            gVar.play();
        }
    }

    public final void m() {
        qn.a aVar = this.f47673b;
        if (aVar != null) {
            aVar.x(-1);
        }
    }

    public final void n(RecyclerView recyclerView, BaseQuickAdapter baseQuickAdapter) {
        Intrinsics.h(recyclerView, "recyclerView");
        this.f47678g = recyclerView.getContext();
        h();
        pn.c cVar = this.f47674c;
        if (cVar != null) {
            cVar.j(baseQuickAdapter);
            recyclerView.addOnScrollListener(cVar);
        }
        pn.c cVar2 = this.f47674c;
        if (cVar2 != null) {
            cVar2.l(this);
        }
    }
}
