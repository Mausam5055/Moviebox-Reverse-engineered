package com.bytedance.sdk.openadsdk.core.TEQ;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ImageDecoder;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.drawable.c;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.HiB.TEQ;
import com.bytedance.sdk.component.HiB.Ym;
import com.bytedance.sdk.component.HiB.uvD;
import com.bytedance.sdk.component.utils.Jcg;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.JcM;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class Sj implements com.bytedance.adsdk.ugeno.Sj {

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.TEQ.Sj$Sj, reason: collision with other inner class name */
    public interface InterfaceC0259Sj {
        void Sj(Drawable drawable);
    }

    private static class sP implements uvD {
        private final int EjP;
        private final WeakReference<ImageView> Sj;
        private final int TKC;
        private final Sj sP;

        public sP(ImageView imageView, Sj sj2, int i11, int i12) {
            this.Sj = new WeakReference<>(imageView);
            this.sP = sj2;
            this.TKC = i11;
            this.EjP = i12;
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(int i11, String str, Throwable th2) {
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(Ym ym2) {
            try {
                final ImageView imageView = this.Sj.get();
                if (imageView == null) {
                    return;
                }
                final Object objSP = ym2.sP();
                if (!(objSP instanceof byte[])) {
                    if (objSP instanceof Bitmap) {
                        JcM.Sj((Runnable) new Dq("ug_load_bitmap") { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.2
                            @Override // java.lang.Runnable
                            public void run() {
                                imageView.setImageBitmap((Bitmap) objSP);
                            }
                        });
                    }
                } else {
                    if (ym2.HiB()) {
                        if (Build.VERSION.SDK_INT <= 30) {
                            this.sP.Sj((byte[]) objSP, imageView);
                            return;
                        } else {
                            this.sP.Sj(imageView, (byte[]) objSP, this.TKC, this.EjP);
                            return;
                        }
                    }
                    if (this.sP.Sj((byte[]) objSP)) {
                        this.sP.Sj(imageView, (byte[]) objSP, this.TKC, this.EjP);
                        return;
                    }
                    final Bitmap bitmapSj = new com.bytedance.sdk.component.HiB.EjP.TKC.sP.Sj(this.TKC, this.EjP, imageView.getScaleType(), Bitmap.Config.RGB_565, this.TKC, this.EjP).Sj((byte[]) objSP);
                    if (bitmapSj != null) {
                        JcM.Sj((Runnable) new Dq("load_static_img") { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.1
                            @Override // java.lang.Runnable
                            public void run() {
                                imageView.setImageBitmap(bitmapSj);
                            }
                        });
                    }
                }
            } catch (Throwable th2) {
                sU.sP("ImageLoaderProvider", th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(final ImageView imageView, byte[] bArr, int i11, int i12) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        if (Build.VERSION.SDK_INT < 28) {
            sP(imageView, bArr, i11, i12);
            return;
        }
        try {
            final Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(byteBufferWrap));
            if (drawableDecodeDrawable != null) {
                JcM.Sj((Runnable) new Dq("loadAnimatedDrawable") { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.1
                    @Override // java.lang.Runnable
                    public void run() {
                        imageView.setImageDrawable(drawableDecodeDrawable);
                    }
                });
            }
        } catch (IOException e11) {
            sU.sP("ImageLoaderProvider", e11.getMessage());
        }
    }

    private void Sj(com.bytedance.adsdk.ugeno.core.Dq dq2, @NonNull TEQ teq, String str) {
        Map<String, Object> mapSP;
        if (dq2 == null || (mapSP = dq2.sP()) == null) {
            return;
        }
        Object obj = mapSP.get("image_info");
        if (obj instanceof Map) {
            teq.Sj((String) ((Map) obj).get(str));
        }
        String str2 = (String) mapSP.get("cache_dir");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        teq.sP(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(byte[] bArr, final ImageView imageView) {
        try {
            Sj(bArr, new InterfaceC0259Sj() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.3
                @Override // com.bytedance.sdk.openadsdk.core.TEQ.Sj.InterfaceC0259Sj
                public void Sj(final Drawable drawable) {
                    JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Build.VERSION.SDK_INT >= 28 && com.bumptech.glide.load.resource.drawable.b.a(drawable)) {
                                c.a(drawable).start();
                            }
                            imageView.setImageDrawable(drawable);
                        }
                    });
                }
            });
        } catch (Exception e11) {
            sU.sP("ImageLoaderProvider", e11.getMessage());
        }
    }

    private void Sj(final byte[] bArr, final InterfaceC0259Sj interfaceC0259Sj) {
        JcM.sP(new Dq("pag_animation_drawable") { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.4
            @Override // java.lang.Runnable
            public void run() {
                Drawable drawableSP = Sj.this.sP(bArr);
                InterfaceC0259Sj interfaceC0259Sj2 = interfaceC0259Sj;
                if (interfaceC0259Sj2 != null) {
                    interfaceC0259Sj2.Sj(drawableSP);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable sP(byte[] bArr) {
        FileOutputStream fileOutputStream;
        try {
            boolean zTKC = com.bytedance.sdk.openadsdk.multipro.sP.TKC();
            File fileSj = Jcg.Sj(dNu.Sj(), zTKC, zTKC ? "UGEN_GIF_AD_CACHE/" : "/UGEN_GIF_CACHE/", "TT_UGEN_GIF_FILE");
            fileOutputStream = new FileOutputStream(fileSj);
            try {
                fileOutputStream.write(bArr, 0, bArr.length);
                if (Build.VERSION.SDK_INT >= 28) {
                    Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(fileSj));
                    try {
                        fileOutputStream.close();
                    } catch (Throwable unused) {
                    }
                    return drawableDecodeDrawable;
                }
                BitmapDrawable bitmapDrawable = new BitmapDrawable(dNu.Sj().getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
                try {
                    fileOutputStream.close();
                } catch (Throwable unused2) {
                }
                return bitmapDrawable;
            } catch (Throwable th2) {
                th = th2;
                try {
                    sU.Sj("ImageLoaderProvider", "GifView  getSourceByFile fail : ", th);
                    return null;
                } finally {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    private void sP(final ImageView imageView, byte[] bArr, int i11, int i12) {
        final Bitmap bitmapSj = new com.bytedance.sdk.component.HiB.EjP.TKC.sP.Sj(i11, i12, imageView.getScaleType(), Bitmap.Config.ARGB_4444, i11, i12).Sj(bArr);
        if (bitmapSj != null) {
            JcM.Sj((Runnable) new Dq("loadStaticImage") { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.2
                @Override // java.lang.Runnable
                public void run() {
                    imageView.setImageBitmap(bitmapSj);
                }
            });
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Sj
    public void Sj(com.bytedance.adsdk.ugeno.core.Dq dq2, String str, ImageView imageView, int i11, int i12) {
        String strSj = TKC.Sj(str);
        TEQ teqTKC = com.bytedance.sdk.openadsdk.uA.EjP.Sj(strSj).TKC(1);
        Sj(dq2, teqTKC, strSj);
        teqTKC.Sj(new sP(imageView, this, i11, i12), 4);
    }

    @Override // com.bytedance.adsdk.ugeno.Sj
    public void Sj(com.bytedance.adsdk.ugeno.core.Dq dq2, String str, com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj interfaceC0200Sj) {
        sP(dq2, TKC.Sj(str), interfaceC0200Sj);
    }

    public boolean Sj(byte[] bArr) {
        return com.bytedance.sdk.component.utils.Ym.Sj(bArr, 0);
    }

    public void sP(com.bytedance.adsdk.ugeno.core.Dq dq2, String str, final com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj interfaceC0200Sj) {
        TEQ teqTKC = com.bytedance.sdk.openadsdk.uA.EjP.Sj(str).TKC(2);
        Sj(dq2, teqTKC, str);
        teqTKC.Sj(new uvD() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.5
            @Override // com.bytedance.sdk.component.HiB.uvD
            public void Sj(int i11, String str2, Throwable th2) {
                com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj interfaceC0200Sj2 = interfaceC0200Sj;
                if (interfaceC0200Sj2 != null) {
                    interfaceC0200Sj2.Sj(null);
                }
            }

            @Override // com.bytedance.sdk.component.HiB.uvD
            public void Sj(Ym ym2) {
                if (ym2 == null) {
                    interfaceC0200Sj.Sj(null);
                    return;
                }
                if (interfaceC0200Sj != null) {
                    Object objSP = ym2.sP();
                    if (objSP instanceof Bitmap) {
                        interfaceC0200Sj.Sj((Bitmap) objSP);
                        return;
                    }
                    if (ym2.sP() instanceof byte[]) {
                        try {
                            interfaceC0200Sj.Sj(BitmapFactory.decodeByteArray((byte[]) ym2.sP(), 0, ((byte[]) ym2.sP()).length));
                            return;
                        } catch (Throwable unused) {
                        }
                    }
                    interfaceC0200Sj.Sj(null);
                }
            }
        }, 4);
    }
}
