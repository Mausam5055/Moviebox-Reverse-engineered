package com.bytedance.sdk.openadsdk.multipro;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public interface Sj {
    int Sj(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr);

    int Sj(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr);

    Cursor Sj(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2);

    Uri Sj(@NonNull Uri uri, @Nullable ContentValues contentValues);

    @NonNull
    String Sj();

    String Sj(@NonNull Uri uri);
}
