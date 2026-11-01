package com.transsion.baseui.music;

import androidx.p009lifecycle.u;
import com.transsion.player.mediasession.MediaItem;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements androidx.p009lifecycle.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f43479a = new a();

    private a() {
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onCreate(u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onDestroy(u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onPause(u uVar) {
        androidx.p009lifecycle.e.c(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onResume(u uVar) {
        androidx.p009lifecycle.e.d(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public void onStart(u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.e(this, owner);
        MediaItem mediaItemQ = MusicFloatManager.f43454h.b().q();
        if (mediaItemQ != null) {
            mediaItemQ.setInBackground(Boolean.FALSE);
        }
    }

    @Override // androidx.p009lifecycle.f
    public void onStop(u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.f(this, owner);
        MediaItem mediaItemQ = MusicFloatManager.f43454h.b().q();
        if (mediaItemQ != null) {
            mediaItemQ.setInBackground(Boolean.TRUE);
        }
        MusicReport.f43473a.c();
    }
}
