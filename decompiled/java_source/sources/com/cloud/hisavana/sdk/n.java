package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.widget.video.MediaTextureView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class n implements m4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private q4 f22728b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f22731e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22727a = "NoOpVideoPlayer";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f22729c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f22730d = true;

    @Override // com.cloud.hisavana.sdk.m4
    public void a() {
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void a(MediaTextureView mediaTextureView) {
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void a(boolean z10) {
        this.f22731e = z10;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void b() {
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void b(AdsDTO adsDTO, String path, boolean z10, boolean z11) {
        Intrinsics.h(path, "path");
        e4.b().i(this.f22727a, "ExoPlayer unavailable, notifying error via listener");
        q4 q4Var = this.f22728b;
        if (q4Var != null) {
            q4Var.a(C0993p.f22813e.a());
        }
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void c() {
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void c(q4 q4Var) {
        this.f22728b = q4Var;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void d() {
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void e() {
    }

    @Override // com.cloud.hisavana.sdk.m4
    public long getCurrentPosition() {
        return 0L;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public long getDuration() {
        return 0L;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public boolean getPlayWhenReady() {
        return this.f22729c;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public boolean isPlaying() {
        return false;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void pause() {
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void play() {
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void release() {
        this.f22728b = null;
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void seekTo(long j11) {
    }

    @Override // com.cloud.hisavana.sdk.m4
    public void setPlayWhenReady(boolean z10) {
        this.f22729c = z10;
    }
}
