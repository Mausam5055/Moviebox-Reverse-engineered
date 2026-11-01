package com.github.mmin18.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.RSRuntimeException;
import androidx.renderscript.Allocation;
import androidx.renderscript.Element;
import androidx.renderscript.RenderScript;
import androidx.renderscript.ScriptIntrinsicBlur;

/* JADX INFO: loaded from: classes3.dex */
public class e implements c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static Boolean f24169e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RenderScript f24170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ScriptIntrinsicBlur f24171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Allocation f24172c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Allocation f24173d;

    static boolean c(Context context) {
        if (f24169e == null && context != null) {
            f24169e = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
        }
        return f24169e == Boolean.TRUE;
    }

    @Override // com.github.mmin18.widget.c
    public void a(Bitmap bitmap, Bitmap bitmap2) {
        this.f24172c.copyFrom(bitmap);
        this.f24171b.setInput(this.f24172c);
        this.f24171b.forEach(this.f24173d);
        this.f24173d.copyTo(bitmap2);
    }

    @Override // com.github.mmin18.widget.c
    public boolean b(Context context, Bitmap bitmap, float f11) {
        if (this.f24170a == null) {
            try {
                RenderScript renderScriptCreate = RenderScript.create(context);
                this.f24170a = renderScriptCreate;
                this.f24171b = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            } catch (RSRuntimeException e11) {
                if (c(context)) {
                    throw e11;
                }
                release();
                return false;
            }
        }
        this.f24171b.setRadius(f11);
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.f24170a, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
        this.f24172c = allocationCreateFromBitmap;
        this.f24173d = Allocation.createTyped(this.f24170a, allocationCreateFromBitmap.getType());
        return true;
    }

    @Override // com.github.mmin18.widget.c
    public void release() {
        Allocation allocation = this.f24172c;
        if (allocation != null) {
            allocation.destroy();
            this.f24172c = null;
        }
        Allocation allocation2 = this.f24173d;
        if (allocation2 != null) {
            allocation2.destroy();
            this.f24173d = null;
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = this.f24171b;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
            this.f24171b = null;
        }
        RenderScript renderScript = this.f24170a;
        if (renderScript != null) {
            renderScript.destroy();
            this.f24170a = null;
        }
    }
}
