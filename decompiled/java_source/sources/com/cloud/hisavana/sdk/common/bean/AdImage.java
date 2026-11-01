package com.cloud.hisavana.sdk.common.bean;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.common.util.f;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import l7.c;

/* JADX INFO: loaded from: classes3.dex */
public class AdImage {
    private static boolean allowBlurBackground;
    private String bgPath;
    private Bitmap blurBgBitmap;
    private Drawable drawable;
    private String filePath;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f22035h;
    private String imgUrl;
    private boolean isCached;
    private int mType;
    private int mime;
    private boolean needBlurBackground;
    public int preCache;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f22036w;

    public AdImage() {
        this.isCached = false;
        this.needBlurBackground = false;
        this.blurBgBitmap = null;
        this.preCache = 1;
        this.mType = 2;
    }

    public AdImage(int i11, Drawable drawable, String str) {
        this.isCached = false;
        this.needBlurBackground = false;
        this.blurBgBitmap = null;
        this.preCache = 1;
        this.mType = 2;
        this.mime = i11;
        this.drawable = drawable;
        this.filePath = str;
    }

    public AdImage(Drawable drawable, String str) {
        this.isCached = false;
        this.needBlurBackground = false;
        this.blurBgBitmap = null;
        this.preCache = 1;
        this.mType = 2;
        this.mime = 1;
        this.drawable = drawable;
        this.filePath = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap getBitmap() {
        Drawable drawable = this.drawable;
        if (drawable == null) {
            return null;
        }
        try {
            return ((BitmapDrawable) drawable).getBitmap();
        } catch (Throwable th2) {
            e4.b().e(Log.getStackTraceString(th2));
            return null;
        }
    }

    public static void setAllowBlurBackground(boolean z10) {
        allowBlurBackground = z10;
    }

    public boolean attachView(final ImageView imageView) {
        Drawable drawable;
        if (imageView == null || (drawable = this.drawable) == null) {
            return false;
        }
        imageView.setImageDrawable(c.a(drawable));
        if (!allowBlurBackground || !this.needBlurBackground) {
            return true;
        }
        HSScopeHelper.f23167a.g(new Runnable() { // from class: com.cloud.hisavana.sdk.common.bean.AdImage.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    final long jCurrentTimeMillis = System.currentTimeMillis();
                    AdImage adImage = AdImage.this;
                    adImage.blurBgBitmap = f.a(adImage.getBitmap(), 9, false);
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(imageView.getResources(), AdImage.this.blurBgBitmap);
                    Preconditions.d(new Preconditions.a() { // from class: com.cloud.hisavana.sdk.common.bean.AdImage.1.1
                        @Override // com.cloud.sdk.commonutil.util.Preconditions.a
                        public void onRun() {
                            imageView.setBackground(bitmapDrawable);
                            e4.b().d(AdImage.class.getName(), "blur costs" + (System.currentTimeMillis() - jCurrentTimeMillis));
                        }
                    });
                } catch (Throwable th2) {
                    e4.b().e(Log.getStackTraceString(th2));
                }
            }
        });
        return true;
    }

    public void destroy() {
        Bitmap bitmap = this.blurBgBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.blurBgBitmap = null;
        }
    }

    public String getBgPath() {
        return this.bgPath;
    }

    public int getByteSize() {
        try {
            Bitmap bitmap = getBitmap();
            if (bitmap != null) {
                return bitmap.getByteCount();
            }
            return 0;
        } catch (Throwable th2) {
            e4.b().e(Log.getStackTraceString(th2));
            return 0;
        }
    }

    public Drawable getDrawable() {
        return this.drawable;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public int getH() {
        return this.f22035h;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public int getMime() {
        return this.mime;
    }

    public int getW() {
        return this.f22036w;
    }

    public int getmType() {
        return this.mType;
    }

    public boolean isAdImageRecycled() {
        try {
            Bitmap bitmap = getBitmap();
            return this.drawable == null || (bitmap != null && bitmap.isRecycled());
        } catch (Throwable th2) {
            e4.b().e(Log.getStackTraceString(th2));
            return false;
        }
    }

    public boolean isCached() {
        return this.isCached;
    }

    public void setBgPath(String str) {
        this.bgPath = str;
    }

    public void setCached(boolean z10) {
        this.isCached = z10;
    }

    public void setDrawable(Drawable drawable) {
        this.drawable = drawable;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setH(int i11) {
        this.f22035h = i11;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public void setMime(int i11) {
        this.mime = i11;
    }

    public void setNeedBlurBackground(boolean z10) {
        this.needBlurBackground = z10;
    }

    public void setW(int i11) {
        this.f22036w = i11;
    }

    public void setmType(int i11) {
        this.mType = i11;
    }
}
