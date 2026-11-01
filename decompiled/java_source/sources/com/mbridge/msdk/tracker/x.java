package com.mbridge.msdk.tracker;

import android.util.Log;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;

/* JADX INFO: loaded from: classes5.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f38740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f38741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f38742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f38743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f38744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f38745f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p f38746g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d f38747h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final w f38748i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final f f38749j;

    public static final class b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private p f38753d;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private d f38757h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private w f38758i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private f f38759j;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f38750a = 50;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f38751b = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f38752c = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f38754e = 2;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f38755f = 50;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f38756g = MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF;

        public b a(int i11) {
            if (i11 < 0) {
                this.f38756g = MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF;
            } else {
                this.f38756g = i11;
            }
            return this;
        }

        public b a(int i11, p pVar) {
            this.f38752c = i11;
            this.f38753d = pVar;
            return this;
        }

        public b a(d dVar) {
            this.f38757h = dVar;
            return this;
        }

        public b a(f fVar) {
            this.f38759j = fVar;
            return this;
        }

        public b a(w wVar) {
            this.f38758i = wVar;
            return this;
        }

        public x a() {
            if (y.b(this.f38757h) && com.mbridge.msdk.tracker.a.f38496a) {
                Log.e("TrackManager", "decorate can not be null");
            }
            if (y.b(this.f38758i) && com.mbridge.msdk.tracker.a.f38496a) {
                Log.e("TrackManager", "responseHandler can not be null");
            }
            if ((y.b(this.f38753d) || y.b(this.f38753d.b())) && com.mbridge.msdk.tracker.a.f38496a) {
                Log.e("TrackManager", "networkStackConfig or stack can not be null");
            }
            return new x(this);
        }

        public b b(int i11) {
            if (i11 <= 0) {
                this.f38750a = 50;
            } else {
                this.f38750a = i11;
            }
            return this;
        }

        public b c(int i11) {
            if (i11 < 0) {
                this.f38751b = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
            } else {
                this.f38751b = i11;
            }
            return this;
        }

        public b d(int i11) {
            if (i11 < 0) {
                this.f38755f = 50;
            } else {
                this.f38755f = i11;
            }
            return this;
        }

        public b e(int i11) {
            if (i11 <= 0) {
                this.f38754e = 2;
            } else {
                this.f38754e = i11;
            }
            return this;
        }
    }

    private x(b bVar) {
        this.f38740a = bVar.f38750a;
        this.f38741b = bVar.f38751b;
        this.f38742c = bVar.f38752c;
        this.f38743d = bVar.f38754e;
        this.f38744e = bVar.f38755f;
        this.f38745f = bVar.f38756g;
        this.f38746g = bVar.f38753d;
        this.f38747h = bVar.f38757h;
        this.f38748i = bVar.f38758i;
        this.f38749j = bVar.f38759j;
    }
}
