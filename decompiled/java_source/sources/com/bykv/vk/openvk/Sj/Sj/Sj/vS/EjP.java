package com.bykv.vk.openvk.Sj.Sj.Sj.vS;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends TextureView implements TextureView.SurfaceTextureListener, a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a6.a f20154a;

    public EjP(Context context) {
        this(context, null);
    }

    public EjP(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.Sj.vS.a
    public void Sj(int i11, int i12) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i12;
        layoutParams.width = i11;
        setLayoutParams(layoutParams);
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.Sj.vS.a
    public void Sj(a6.a aVar) {
        this.f20154a = aVar;
        setSurfaceTextureListener(this);
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.Sj.vS.a
    public SurfaceHolder getHolder() {
        return null;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.Sj.vS.a
    public View getView() {
        return this;
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.TextureView, android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i11, int i12) {
        a6.a aVar = this.f20154a;
        if (aVar != null) {
            aVar.Sj(surfaceTexture, i11, i12);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        a6.a aVar = this.f20154a;
        if (aVar != null) {
            return aVar.Sj(surfaceTexture);
        }
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i11, int i12) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i11) {
        super.onWindowVisibilityChanged(i11);
    }

    public void setWindowVisibilityChangedListener(a.InterfaceC0187a interfaceC0187a) {
    }
}
