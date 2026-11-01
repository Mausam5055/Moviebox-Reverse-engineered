package com.google.android.exoplayer2.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.y2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class f extends h implements Handler.Callback {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final c f25422n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final e f25423o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Handler f25424p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final d f25425q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private b f25426r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f25427s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f25428t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f25429u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f25430v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Metadata f25431w;

    public f(e eVar, Looper looper) {
        this(eVar, looper, c.f25417a);
    }

    public f(e eVar, Looper looper, c cVar) {
        super(5);
        this.f25423o = (e) com.google.android.exoplayer2.util.a.e(eVar);
        this.f25424p = looper == null ? null : p0.v(looper, this);
        this.f25422n = (c) com.google.android.exoplayer2.util.a.e(cVar);
        this.f25425q = new d();
        this.f25430v = C.TIME_UNSET;
    }

    private void A(Metadata metadata) {
        Handler handler = this.f25424p;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            B(metadata);
        }
    }

    private void B(Metadata metadata) {
        this.f25423o.onMetadata(metadata);
    }

    private boolean C(long j11) {
        boolean z10;
        Metadata metadata = this.f25431w;
        if (metadata == null || this.f25430v > j11) {
            z10 = false;
        } else {
            A(metadata);
            this.f25431w = null;
            this.f25430v = C.TIME_UNSET;
            z10 = true;
        }
        if (this.f25427s && this.f25431w == null) {
            this.f25428t = true;
        }
        return z10;
    }

    private void D() {
        if (this.f25427s || this.f25431w != null) {
            return;
        }
        this.f25425q.b();
        p1 p1VarK = k();
        int iW = w(p1VarK, this.f25425q, 0);
        if (iW != -4) {
            if (iW == -5) {
                this.f25429u = ((o1) com.google.android.exoplayer2.util.a.e(p1VarK.f25598b)).f25500p;
                return;
            }
            return;
        }
        if (this.f25425q.h()) {
            this.f25427s = true;
            return;
        }
        d dVar = this.f25425q;
        dVar.f25418i = this.f25429u;
        dVar.n();
        Metadata metadataA = ((b) p0.j(this.f25426r)).a(this.f25425q);
        if (metadataA != null) {
            ArrayList arrayList = new ArrayList(metadataA.length());
            z(metadataA, arrayList);
            if (arrayList.isEmpty()) {
                return;
            }
            this.f25431w = new Metadata(arrayList);
            this.f25430v = this.f25425q.f24845e;
        }
    }

    private void z(Metadata metadata, List list) {
        for (int i11 = 0; i11 < metadata.length(); i11++) {
            o1 wrappedMetadataFormat = metadata.get(i11).getWrappedMetadataFormat();
            if (wrappedMetadataFormat == null || !this.f25422n.a(wrappedMetadataFormat)) {
                list.add(metadata.get(i11));
            } else {
                b bVarB = this.f25422n.b(wrappedMetadataFormat);
                byte[] bArr = (byte[]) com.google.android.exoplayer2.util.a.e(metadata.get(i11).getWrappedMetadataBytes());
                this.f25425q.b();
                this.f25425q.m(bArr.length);
                ((ByteBuffer) p0.j(this.f25425q.f24843c)).put(bArr);
                this.f25425q.n();
                Metadata metadataA = bVarB.a(this.f25425q);
                if (metadataA != null) {
                    z(metadataA, list);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.z2
    public int a(o1 o1Var) {
        if (this.f25422n.a(o1Var)) {
            return y2.a(o1Var.E == 0 ? 4 : 2);
        }
        return y2.a(0);
    }

    @Override // com.google.android.exoplayer2.x2, com.google.android.exoplayer2.z2
    public String getName() {
        return "MetadataRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        B((Metadata) message.obj);
        return true;
    }

    @Override // com.google.android.exoplayer2.x2
    public boolean isEnded() {
        return this.f25428t;
    }

    @Override // com.google.android.exoplayer2.x2
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.h
    protected void p() {
        this.f25431w = null;
        this.f25430v = C.TIME_UNSET;
        this.f25426r = null;
    }

    @Override // com.google.android.exoplayer2.h
    protected void r(long j11, boolean z10) {
        this.f25431w = null;
        this.f25430v = C.TIME_UNSET;
        this.f25427s = false;
        this.f25428t = false;
    }

    @Override // com.google.android.exoplayer2.x2
    public void render(long j11, long j12) {
        boolean zC = true;
        while (zC) {
            D();
            zC = C(j11);
        }
    }

    @Override // com.google.android.exoplayer2.h
    protected void v(o1[] o1VarArr, long j11, long j12) {
        this.f25426r = this.f25422n.b(o1VarArr[0]);
    }
}
