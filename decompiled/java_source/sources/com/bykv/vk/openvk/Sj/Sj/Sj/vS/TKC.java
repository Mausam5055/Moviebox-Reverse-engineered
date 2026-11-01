package com.bykv.vk.openvk.Sj.Sj.Sj.vS;

import a6.b;
import android.content.Context;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends HiB implements SurfaceHolder.Callback, a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ArrayList f20155c = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference f20156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f20157b;

    public TKC(Context context) {
        super(context);
        a();
    }

    private void a() {
        b bVar = new b(this);
        this.f20157b = bVar;
        f20155c.add(bVar);
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
        this.f20156a = new WeakReference(aVar);
        SurfaceHolder holder = getHolder();
        holder.setFormat(-3);
        Iterator it = f20155c.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (bVar != null && bVar.a() == null) {
                holder.removeCallback(bVar);
                it.remove();
            }
        }
        holder.addCallback(this.f20157b);
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.Sj.vS.a
    public View getView() {
        return this;
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onWindowVisibilityChanged(int i11) {
        super.onWindowVisibilityChanged(i11);
    }

    public void setWindowVisibilityChangedListener(a.InterfaceC0187a interfaceC0187a) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i11, int i12, int i13) {
        WeakReference weakReference = this.f20156a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ((a6.a) this.f20156a.get()).Sj(surfaceHolder, i11, i12, i13);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        WeakReference weakReference = this.f20156a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ((a6.a) this.f20156a.get()).Sj(surfaceHolder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        WeakReference weakReference = this.f20156a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ((a6.a) this.f20156a.get()).sP(surfaceHolder);
    }
}
