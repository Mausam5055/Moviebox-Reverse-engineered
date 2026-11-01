package com.mbridge.msdk.tracker.network;

import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;

/* JADX INFO: loaded from: classes5.dex */
public class e implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f38566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f38567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f38568c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f38569d;

    public e() {
        this(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS, 1);
    }

    public e(int i11, int i12) {
        this(i11, 60000L, i12);
    }

    public e(int i11, long j11, int i12) {
        this.f38567b = j11;
        this.f38566a = i11;
        this.f38569d = i12;
    }

    @Override // com.mbridge.msdk.tracker.network.x
    public long a() {
        return this.f38567b;
    }

    @Override // com.mbridge.msdk.tracker.network.x
    public boolean a(b0 b0Var) {
        int i11 = this.f38568c + 1;
        this.f38568c = i11;
        return i11 <= this.f38569d;
    }

    @Override // com.mbridge.msdk.tracker.network.x
    public int b() {
        return this.f38566a;
    }

    @Override // com.mbridge.msdk.tracker.network.x
    public int c() {
        return this.f38568c;
    }
}
