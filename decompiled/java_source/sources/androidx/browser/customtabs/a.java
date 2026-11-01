package androidx.browser.customtabs;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
abstract class a {
    static <T> T a(@NonNull Bundle bundle, @Nullable String str, @NonNull Class<T> cls) {
        return (T) bundle.getParcelable(str, cls);
    }
}
