package com.bumptech.glide.load.data.mediastore;

import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaStoreUtil {
    private static final int MINI_THUMB_HEIGHT = 384;
    private static final int MINI_THUMB_WIDTH = 512;

    private MediaStoreUtil() {
    }

    public static boolean isAndroidPickerUri(Uri uri) {
        return isMediaStoreUri(uri) && uri.getPathSegments().contains("picker");
    }

    public static boolean isMediaStoreImageUri(Uri uri) {
        return isMediaStoreUri(uri) && !isVideoUri(uri);
    }

    public static boolean isMediaStoreUri(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static boolean isMediaStoreVideoUri(Uri uri) {
        return isMediaStoreUri(uri) && isVideoUri(uri);
    }

    public static boolean isThumbnailSize(int i11, int i12) {
        return i11 != Integer.MIN_VALUE && i12 != Integer.MIN_VALUE && i11 <= 512 && i12 <= MINI_THUMB_HEIGHT;
    }

    private static boolean isVideoUri(Uri uri) {
        return uri.getPathSegments().contains("video");
    }
}
