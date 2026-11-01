package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.model.Model;
import com.bumptech.glide.request.BaseRequestOptions;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public final class Util {
    private static final int HASH_ACCUMULATOR = 17;
    private static final int HASH_MULTIPLIER = 31;
    private static final char[] HEX_CHAR_ARRAY = "0123456789abcdef".toCharArray();
    private static final char[] SHA_256_CHARS = new char[64];

    @Nullable
    private static volatile Handler mainThreadHandler;

    /* JADX INFO: renamed from: com.bumptech.glide.util.Util$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            $SwitchMap$android$graphics$Bitmap$Config = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private Util() {
    }

    public static void assertBackgroundThread() {
        if (!isOnBackgroundThread()) {
            throw new IllegalArgumentException("You must call this method on a background thread");
        }
    }

    public static void assertMainThread() {
        if (!isOnMainThread()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean bothBaseRequestOptionsNullEquivalentOrEquals(@Nullable BaseRequestOptions<?> baseRequestOptions, @Nullable BaseRequestOptions<?> baseRequestOptions2) {
        if (baseRequestOptions == null) {
            return baseRequestOptions2 == null;
        }
        return baseRequestOptions.isEquivalentTo(baseRequestOptions2);
    }

    public static boolean bothModelsNullEquivalentOrEquals(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj instanceof Model ? ((Model) obj).isEquivalentTo(obj2) : obj.equals(obj2);
    }

    public static boolean bothNullOrEqual(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @NonNull
    private static String bytesToHex(@NonNull byte[] bArr, @NonNull char[] cArr) {
        for (int i11 = 0; i11 < bArr.length; i11++) {
            byte b11 = bArr[i11];
            int i12 = i11 * 2;
            char[] cArr2 = HEX_CHAR_ARRAY;
            cArr[i12] = cArr2[(b11 & 255) >>> 4];
            cArr[i12 + 1] = cArr2[b11 & 15];
        }
        return new String(cArr);
    }

    @NonNull
    public static <T> Queue<T> createQueue(int i11) {
        return new ArrayDeque(i11);
    }

    public static int getBitmapByteSize(int i11, int i12, @Nullable Bitmap.Config config) {
        return i11 * i12 * getBytesPerPixel(config);
    }

    @TargetApi(19)
    public static int getBitmapByteSize(@NonNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getHeight() * bitmap.getRowBytes();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    public static int getBytesPerPixel(@Nullable Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i11 = AnonymousClass1.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()];
        if (i11 == 1) {
            return 1;
        }
        if (i11 == 2 || i11 == 3) {
            return 2;
        }
        return i11 != 4 ? 4 : 8;
    }

    @Deprecated
    public static int getSize(@NonNull Bitmap bitmap) {
        return getBitmapByteSize(bitmap);
    }

    @NonNull
    public static <T> List<T> getSnapshot(@NonNull Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t11 : collection) {
            if (t11 != null) {
                arrayList.add(t11);
            }
        }
        return arrayList;
    }

    private static Handler getUiThreadHandler() {
        if (mainThreadHandler == null) {
            synchronized (Util.class) {
                try {
                    if (mainThreadHandler == null) {
                        mainThreadHandler = new Handler(Looper.getMainLooper());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return mainThreadHandler;
    }

    public static int hashCode(float f11) {
        return hashCode(f11, 17);
    }

    public static int hashCode(float f11, int i11) {
        return hashCode(Float.floatToIntBits(f11), i11);
    }

    public static int hashCode(int i11) {
        return hashCode(i11, 17);
    }

    public static int hashCode(int i11, int i12) {
        return (i12 * 31) + i11;
    }

    public static int hashCode(@Nullable Object obj, int i11) {
        return hashCode(obj == null ? 0 : obj.hashCode(), i11);
    }

    public static int hashCode(boolean z10) {
        return hashCode(z10, 17);
    }

    public static int hashCode(boolean z10, int i11) {
        return hashCode(z10 ? 1 : 0, i11);
    }

    public static boolean isOnBackgroundThread() {
        return !isOnMainThread();
    }

    public static boolean isOnMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean isValidDimension(int i11) {
        return i11 > 0 || i11 == Integer.MIN_VALUE;
    }

    public static boolean isValidDimensions(int i11, int i12) {
        return isValidDimension(i11) && isValidDimension(i12);
    }

    public static void postOnUiThread(Runnable runnable) {
        getUiThreadHandler().post(runnable);
    }

    public static void removeCallbacksOnUiThread(Runnable runnable) {
        getUiThreadHandler().removeCallbacks(runnable);
    }

    @NonNull
    public static String sha256BytesToHex(@NonNull byte[] bArr) {
        String strBytesToHex;
        char[] cArr = SHA_256_CHARS;
        synchronized (cArr) {
            strBytesToHex = bytesToHex(bArr, cArr);
        }
        return strBytesToHex;
    }
}
