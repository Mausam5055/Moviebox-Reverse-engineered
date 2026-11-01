package androidx.media3.exoplayer.image;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes2.dex */
public interface ImageOutput {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImageOutput f12030a = new a();

    class a implements ImageOutput {
        a() {
        }

        @Override // androidx.media3.exoplayer.image.ImageOutput
        public void a() {
        }

        @Override // androidx.media3.exoplayer.image.ImageOutput
        public void onImageAvailable(long j11, Bitmap bitmap) {
        }
    }

    void a();

    void onImageAvailable(long j11, Bitmap bitmap);
}
