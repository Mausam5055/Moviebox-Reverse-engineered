package com.bytedance.sdk.component.adexpress.EjP;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.HardwareRenderer;
import android.graphics.Paint;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.hardware.HardwareBuffer;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import androidx.compose.foundation.i;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import i6.d;
import i6.e;
import i6.f;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    public static Bitmap Sj(Context context, Bitmap bitmap, int i11) {
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, Math.round(bitmap.getWidth() * 0.2f), Math.round(bitmap.getHeight() * 0.2f), false);
            if (com.bytedance.sdk.component.adexpress.EjP.EjP() == 0) {
                return sP(context, bitmapCreateScaledBitmap, i11);
            }
            return com.bytedance.sdk.component.adexpress.EjP.EjP() == 1 ? Sj(bitmapCreateScaledBitmap, i11) : sP(bitmapCreateScaledBitmap, i11);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Bitmap Sj(Bitmap bitmap, int i11) {
        int i12 = i11;
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i13 = width * height;
            int[] iArr = new int[i13];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            int i14 = width - 1;
            int i15 = height - 1;
            int i16 = i12 + i12;
            int i17 = i16 + 1;
            int i18 = (i16 + 2) >> 1;
            int i19 = i18 * i18;
            int[] iArr2 = new int[Math.max(width, height)];
            int i20 = i19 * 256;
            int[] iArr3 = new int[i20];
            int[] iArr4 = new int[i13];
            int[] iArr5 = new int[i13];
            int[] iArr6 = new int[i13];
            for (int i21 = 0; i21 < i20; i21++) {
                iArr3[i21] = i21 / i19;
            }
            int[][] iArr7 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i17, 3);
            int i22 = i12 + 1;
            int i23 = 0;
            int i24 = 0;
            int i25 = 0;
            while (i23 < height) {
                int i26 = -i12;
                int i27 = 0;
                int i28 = 0;
                int i29 = 0;
                int i30 = 0;
                int i31 = 0;
                int i32 = 0;
                int i33 = 0;
                int i34 = 0;
                int i35 = 0;
                while (i26 <= i12) {
                    int i36 = i15;
                    int i37 = height;
                    int i38 = iArr[i24 + Math.min(i14, Math.max(i26, 0))];
                    int[] iArr8 = iArr7[i26 + i12];
                    iArr8[0] = (i38 & 16711680) >> 16;
                    iArr8[1] = (i38 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                    iArr8[2] = i38 & 255;
                    int iAbs = i22 - Math.abs(i26);
                    int i39 = iArr8[0];
                    i27 += i39 * iAbs;
                    int i40 = iArr8[1];
                    i28 += i40 * iAbs;
                    int i41 = iArr8[2];
                    i29 += iAbs * i41;
                    if (i26 <= 0) {
                        i31 += i39;
                        i33 += i40;
                        i35 += i41;
                    } else {
                        i30 += i39;
                        i32 += i40;
                        i34 += i41;
                    }
                    i26++;
                    height = i37;
                    i15 = i36;
                }
                int i42 = i15;
                int i43 = height;
                int i44 = i12;
                int i45 = 0;
                while (i45 < width) {
                    iArr4[i24] = iArr3[i27];
                    iArr5[i24] = iArr3[i28];
                    iArr6[i24] = iArr3[i29];
                    int[] iArr9 = iArr7[((i44 - i12) + i17) % i17];
                    int i46 = i27 - i31;
                    int i47 = i28 - i33;
                    int i48 = i29 - i35;
                    int i49 = i31 - iArr9[0];
                    int i50 = i33 - iArr9[1];
                    int i51 = i35 - iArr9[2];
                    if (i23 == 0) {
                        iArr2[i45] = Math.min(i45 + i12 + 1, i14);
                    }
                    int i52 = iArr[i25 + iArr2[i45]];
                    int i53 = (i52 & 16711680) >> 16;
                    iArr9[0] = i53;
                    int i54 = (i52 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                    iArr9[1] = i54;
                    int i55 = i52 & 255;
                    iArr9[2] = i55;
                    int i56 = i30 + i53;
                    int i57 = i32 + i54;
                    int i58 = i34 + i55;
                    i44 = (i44 + 1) % i17;
                    int[] iArr10 = iArr7[i44 % i17];
                    i27 = i46 + i56;
                    i28 = i47 + i57;
                    i29 = i48 + i58;
                    int i59 = iArr10[0];
                    i30 = i56 - i59;
                    int i60 = iArr10[1];
                    i32 = i57 - i60;
                    int i61 = iArr10[2];
                    i34 = i58 - i61;
                    i31 = i49 + i59;
                    i33 = i50 + i60;
                    i35 = i51 + i61;
                    i24++;
                    i45++;
                    iArr3 = iArr3;
                }
                i25 += width;
                i23++;
                height = i43;
                i15 = i42;
            }
            int i62 = i15;
            int i63 = height;
            int[] iArr11 = iArr3;
            int i64 = 0;
            while (i64 < width) {
                int i65 = -i12;
                int i66 = i65 * width;
                int i67 = 0;
                int i68 = 0;
                int i69 = 0;
                int i70 = 0;
                int i71 = 0;
                int i72 = 0;
                int i73 = 0;
                int i74 = 0;
                int i75 = 0;
                while (i65 <= i12) {
                    int[] iArr12 = iArr7[i65 + i12];
                    int[] iArr13 = iArr2;
                    int iMax = Math.max(0, i66) + i64;
                    int iAbs2 = i22 - Math.abs(i65);
                    int i76 = iArr4[iMax];
                    i67 += i76 * iAbs2;
                    i68 += iArr5[iMax] * iAbs2;
                    i69 += iArr6[iMax] * iAbs2;
                    iArr12[0] = i76;
                    int i77 = iArr5[iMax];
                    iArr12[1] = i77;
                    int i78 = iArr6[iMax];
                    iArr12[2] = i78;
                    if (i65 <= 0) {
                        i71 += i76;
                        i73 += i77;
                        i75 += i78;
                    } else {
                        i70 += i76;
                        i72 += i77;
                        i74 += i78;
                    }
                    int i79 = i62;
                    if (i65 < i79) {
                        i66 += width;
                    }
                    i65++;
                    i62 = i79;
                    iArr2 = iArr13;
                }
                int[] iArr14 = iArr2;
                int i80 = i62;
                int i81 = i12;
                int i82 = i64;
                int i83 = i63;
                int i84 = 0;
                while (i84 < i83) {
                    iArr[i82] = (iArr[i82] & ViewCompat.MEASURED_STATE_MASK) | (iArr11[i67] << 16) | (iArr11[i68] << 8) | iArr11[i69];
                    int[] iArr15 = iArr7[((i81 - i12) + i17) % i17];
                    int i85 = i67 - i71;
                    int i86 = i68 - i73;
                    int i87 = i69 - i75;
                    int i88 = i71 - iArr15[0];
                    int i89 = i73 - iArr15[1];
                    int i90 = i75 - iArr15[2];
                    if (i64 == 0) {
                        iArr14[i84] = Math.min(i84 + i22, i80) * width;
                    }
                    int i91 = iArr14[i84] + i64;
                    int i92 = iArr4[i91];
                    iArr15[0] = i92;
                    int i93 = iArr5[i91];
                    iArr15[1] = i93;
                    int i94 = iArr6[i91];
                    iArr15[2] = i94;
                    int i95 = i70 + i92;
                    int i96 = i72 + i93;
                    int i97 = i74 + i94;
                    i67 = i85 + i95;
                    i68 = i86 + i96;
                    i69 = i87 + i97;
                    i81 = (i81 + 1) % i17;
                    int[] iArr16 = iArr7[i81];
                    int i98 = iArr16[0];
                    i70 = i95 - i98;
                    int i99 = iArr16[1];
                    i72 = i96 - i99;
                    int i100 = iArr16[2];
                    i74 = i97 - i100;
                    i71 = i88 + i98;
                    i73 = i89 + i99;
                    i75 = i90 + i100;
                    i82 += width;
                    i84++;
                    i12 = i11;
                }
                i64++;
                i12 = i11;
                i63 = i83;
                i62 = i80;
                iArr2 = iArr14;
            }
            bitmap.setPixels(iArr, 0, width, 0, 0, width, i63);
            return bitmap;
        } catch (Throwable th2) {
            th2.getMessage();
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0089 A[Catch: all -> 0x0095, DONT_GENERATE, TryCatch #3 {all -> 0x0095, blocks: (B:45:0x007f, B:47:0x0089, B:50:0x0091, B:54:0x0099, B:56:0x009e, B:58:0x00a3), top: B:86:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:49:0x008f A[DONT_GENERATE, DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x0091 A[Catch: all -> 0x0095, DONT_GENERATE, TryCatch #3 {all -> 0x0095, blocks: (B:45:0x007f, B:47:0x0089, B:50:0x0091, B:54:0x0099, B:56:0x009e, B:58:0x00a3), top: B:86:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0099 A[Catch: all -> 0x0095, DONT_GENERATE, TryCatch #3 {all -> 0x0095, blocks: (B:45:0x007f, B:47:0x0089, B:50:0x0091, B:54:0x0099, B:56:0x009e, B:58:0x00a3), top: B:86:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:56:0x009e A[Catch: all -> 0x0095, DONT_GENERATE, TryCatch #3 {all -> 0x0095, blocks: (B:45:0x007f, B:47:0x0089, B:50:0x0091, B:54:0x0099, B:56:0x009e, B:58:0x00a3), top: B:86:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00a3 A[Catch: all -> 0x0095, DONT_GENERATE, TRY_LEAVE, TryCatch #3 {all -> 0x0095, blocks: (B:45:0x007f, B:47:0x0089, B:50:0x0091, B:54:0x0099, B:56:0x009e, B:58:0x00a3), top: B:86:0x007f }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.renderscript.BaseObj] */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.renderscript.BaseObj, android.renderscript.ScriptIntrinsicBlur] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.renderscript.Allocation] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.renderscript.Allocation] */
    public static Bitmap sP(Context context, Bitmap bitmap, int i11) {
        RenderScript renderScriptCreate;
        Allocation allocationCreateFromBitmap;
        ?? Create;
        ?? CreateFromBitmap;
        com.bytedance.sdk.component.adexpress.Sj.Sj.TKC TKC;
        boolean zDNu;
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap);
            renderScriptCreate = RenderScript.create(context);
            if (renderScriptCreate == null) {
                try {
                    com.bytedance.sdk.component.adexpress.Sj.Sj.TKC TKC2 = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC();
                    if (TKC2 != null && TKC2.dNu() && renderScriptCreate != null) {
                        RenderScript.releaseAllContexts();
                    }
                } catch (Throwable th2) {
                    th2.getMessage();
                }
                return null;
            }
            try {
                Create = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
                try {
                    allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
                    try {
                        CreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
                        try {
                            Create.setRadius(i11);
                            Create.setInput(allocationCreateFromBitmap);
                            Create.forEach(CreateFromBitmap);
                            CreateFromBitmap.copyTo(bitmapCreateBitmap);
                            try {
                                com.bytedance.sdk.component.adexpress.Sj.Sj.TKC TKC3 = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC();
                                if (TKC3 != null && TKC3.dNu()) {
                                    RenderScript.releaseAllContexts();
                                    if (allocationCreateFromBitmap != null) {
                                        allocationCreateFromBitmap.destroy();
                                    }
                                    CreateFromBitmap.destroy();
                                    Create.destroy();
                                }
                            } catch (Throwable th3) {
                                th3.getMessage();
                            }
                            return bitmapCreateBitmap;
                        } catch (Throwable th4) {
                            th = th4;
                            try {
                                th.getMessage();
                                try {
                                    if (TKC != null) {
                                        return null;
                                    }
                                    if (zDNu) {
                                        return null;
                                    }
                                    if (Create != 0) {
                                        return null;
                                    }
                                    return null;
                                } catch (Throwable th5) {
                                    return null;
                                }
                            } finally {
                                try {
                                    TKC = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC();
                                    if (TKC != null && TKC.dNu()) {
                                        if (renderScriptCreate != null) {
                                            RenderScript.releaseAllContexts();
                                        }
                                        if (allocationCreateFromBitmap != null) {
                                            allocationCreateFromBitmap.destroy();
                                        }
                                        if (CreateFromBitmap != 0) {
                                            CreateFromBitmap.destroy();
                                        }
                                        if (Create != 0) {
                                            Create.destroy();
                                        }
                                    }
                                } catch (Throwable th6) {
                                    th6.getMessage();
                                }
                            }
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        CreateFromBitmap = 0;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    allocationCreateFromBitmap = null;
                    CreateFromBitmap = 0;
                }
            } catch (Throwable th9) {
                th = th9;
                allocationCreateFromBitmap = null;
                Create = allocationCreateFromBitmap;
                CreateFromBitmap = Create;
                th.getMessage();
                if (TKC != null) {
                    return null;
                }
                if (zDNu) {
                    return null;
                }
                if (Create != 0) {
                    return null;
                }
                return null;
            }
        } catch (Throwable th10) {
            th = th10;
            renderScriptCreate = null;
            allocationCreateFromBitmap = null;
        }
    }

    public static Bitmap sP(Bitmap bitmap, int i11) {
        try {
            if (Build.VERSION.SDK_INT < 31) {
                return Sj(bitmap, i11);
            }
            ImageReader imageReaderNewInstance = ImageReader.newInstance(bitmap.getWidth(), bitmap.getHeight(), 1, 1, 768L);
            e.a();
            RenderNode renderNodeA = i.a("BlurEffect");
            f.a();
            HardwareRenderer hardwareRendererA = d.a();
            hardwareRendererA.setSurface(imageReaderNewInstance.getSurface());
            hardwareRendererA.setContentRoot(renderNodeA);
            renderNodeA.setPosition(0, 0, imageReaderNewInstance.getWidth(), imageReaderNewInstance.getHeight());
            float f11 = i11;
            renderNodeA.setRenderEffect(RenderEffect.createBlurEffect(f11, f11, Shader.TileMode.MIRROR));
            renderNodeA.beginRecording().drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            renderNodeA.endRecording();
            hardwareRendererA.createRenderRequest().setWaitForPresent(true).syncAndDraw();
            Image imageAcquireNextImage = imageReaderNewInstance.acquireNextImage();
            HardwareBuffer hardwareBuffer = imageAcquireNextImage.getHardwareBuffer();
            Bitmap bitmapWrapHardwareBuffer = Bitmap.wrapHardwareBuffer(hardwareBuffer, null);
            hardwareBuffer.close();
            imageAcquireNextImage.close();
            imageReaderNewInstance.close();
            renderNodeA.discardDisplayList();
            hardwareRendererA.destroy();
            return bitmapWrapHardwareBuffer;
        } catch (Throwable th2) {
            th2.getMessage();
            return Sj(bitmap, i11);
        }
    }
}
