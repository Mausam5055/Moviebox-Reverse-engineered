package com.github.mmin18.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RSRuntimeException;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;

/* JADX INFO: loaded from: classes3.dex */
public class a implements c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static Boolean f24159e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RenderScript f24160a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ScriptIntrinsicBlur f24161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Allocation f24162c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Allocation f24163d;

    static boolean c(Context context) {
        if (f24159e == null && context != null) {
            f24159e = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
        }
        return f24159e == Boolean.TRUE;
    }

    @Override // com.github.mmin18.widget.c
    public void a(Bitmap bitmap, Bitmap bitmap2) {
        this.f24162c.copyFrom(bitmap);
        this.f24161b.setInput(this.f24162c);
        this.f24161b.forEach(this.f24163d);
        this.f24163d.copyTo(bitmap2);
    }

    @Override // com.github.mmin18.widget.c
    public boolean b(Context context, Bitmap bitmap, float f11) {
        if (this.f24160a == null) {
            try {
                RenderScript renderScriptCreate = RenderScript.create(context);
                this.f24160a = renderScriptCreate;
                this.f24161b = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            } catch (RSRuntimeException e11) {
                if (c(context)) {
                    throw e11;
                }
                release();
                return false;
            }
        }
        this.f24161b.setRadius(f11);
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.f24160a, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
        this.f24162c = allocationCreateFromBitmap;
        this.f24163d = Allocation.createTyped(this.f24160a, allocationCreateFromBitmap.getType());
        return true;
    }

    @Override // com.github.mmin18.widget.c
    public void release() {
        Allocation allocation = this.f24162c;
        if (allocation != null) {
            allocation.destroy();
            this.f24162c = null;
        }
        Allocation allocation2 = this.f24163d;
        if (allocation2 != null) {
            allocation2.destroy();
            this.f24163d = null;
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = this.f24161b;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
            this.f24161b = null;
        }
        RenderScript renderScript = this.f24160a;
        if (renderScript != null) {
            renderScript.destroy();
            this.f24160a = null;
        }
    }
}
