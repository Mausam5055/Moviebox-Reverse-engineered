package com.github.mmin18.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.RSRuntimeException;
import androidx.renderscript.Allocation;
import androidx.renderscript.Element;
import androidx.renderscript.RenderScript;
import androidx.renderscript.ScriptIntrinsicBlur;

/* JADX INFO: loaded from: classes3.dex */
public class b implements c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static Boolean f24164e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RenderScript f24165a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ScriptIntrinsicBlur f24166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Allocation f24167c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Allocation f24168d;

    static boolean c(Context context) {
        if (f24164e == null && context != null) {
            f24164e = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
        }
        return f24164e == Boolean.TRUE;
    }

    @Override // com.github.mmin18.widget.c
    public void a(Bitmap bitmap, Bitmap bitmap2) {
        this.f24167c.copyFrom(bitmap);
        this.f24166b.setInput(this.f24167c);
        this.f24166b.forEach(this.f24168d);
        this.f24168d.copyTo(bitmap2);
    }

    @Override // com.github.mmin18.widget.c
    public boolean b(Context context, Bitmap bitmap, float f11) {
        if (this.f24165a == null) {
            try {
                RenderScript renderScriptCreate = RenderScript.create(context);
                this.f24165a = renderScriptCreate;
                this.f24166b = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            } catch (RSRuntimeException e11) {
                if (c(context)) {
                    throw e11;
                }
                release();
                return false;
            }
        }
        this.f24166b.setRadius(f11);
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.f24165a, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
        this.f24167c = allocationCreateFromBitmap;
        this.f24168d = Allocation.createTyped(this.f24165a, allocationCreateFromBitmap.getType());
        return true;
    }

    @Override // com.github.mmin18.widget.c
    public void release() {
        Allocation allocation = this.f24167c;
        if (allocation != null) {
            allocation.destroy();
            this.f24167c = null;
        }
        Allocation allocation2 = this.f24168d;
        if (allocation2 != null) {
            allocation2.destroy();
            this.f24168d = null;
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = this.f24166b;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
            this.f24166b = null;
        }
        RenderScript renderScript = this.f24165a;
        if (renderScript != null) {
            renderScript.destroy();
            this.f24165a = null;
        }
    }
}
