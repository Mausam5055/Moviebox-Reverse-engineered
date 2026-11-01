package com.bumptech.glide;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
interface ModelTypes<T> {
    @NonNull
    @CheckResult
    T load(@Nullable Bitmap bitmap);

    @NonNull
    @CheckResult
    T load(@Nullable Drawable drawable);

    @NonNull
    @CheckResult
    T load(@Nullable Uri uri);

    @NonNull
    @CheckResult
    T load(@Nullable File file);

    @NonNull
    @CheckResult
    T load(@Nullable Integer num);

    @NonNull
    @CheckResult
    T load(@Nullable Object obj);

    @NonNull
    @CheckResult
    T load(@Nullable String str);

    @CheckResult
    @Deprecated
    T load(@Nullable URL url);

    @NonNull
    @CheckResult
    T load(@Nullable byte[] bArr);
}
