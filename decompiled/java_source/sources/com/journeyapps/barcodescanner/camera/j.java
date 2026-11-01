package com.journeyapps.barcodescanner.camera;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.view.SurfaceHolder;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SurfaceHolder f33996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SurfaceTexture f33997b;

    public j(SurfaceTexture surfaceTexture) {
        if (surfaceTexture == null) {
            throw new IllegalArgumentException("surfaceTexture may not be null");
        }
        this.f33997b = surfaceTexture;
    }

    public j(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null) {
            throw new IllegalArgumentException("surfaceHolder may not be null");
        }
        this.f33996a = surfaceHolder;
    }

    public void a(Camera camera) throws IOException {
        SurfaceHolder surfaceHolder = this.f33996a;
        if (surfaceHolder != null) {
            camera.setPreviewDisplay(surfaceHolder);
        } else {
            camera.setPreviewTexture(this.f33997b);
        }
    }
}
