package androidx.browser.customtabs;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static final int NAVIGATION_ABORTED = 4;
    public static final int NAVIGATION_FAILED = 3;
    public static final int NAVIGATION_FINISHED = 2;
    public static final int NAVIGATION_STARTED = 1;
    public static final String ONLINE_EXTRAS_KEY = "online";
    public static final int TAB_HIDDEN = 6;
    public static final int TAB_SHOWN = 5;

    public void extraCallback(@NonNull String str, @Nullable Bundle bundle) {
    }

    @Nullable
    public Bundle extraCallbackWithResult(@NonNull String str, @Nullable Bundle bundle) {
        return null;
    }

    public void onActivityResized(int i11, int i12, @NonNull Bundle bundle) {
    }

    public void onMessageChannelReady(@Nullable Bundle bundle) {
    }

    public void onNavigationEvent(int i11, Bundle bundle) {
    }

    public void onPostMessage(@NonNull String str, @Nullable Bundle bundle) {
    }

    public void onRelationshipValidationResult(int i11, @NonNull Uri uri, boolean z10, @Nullable Bundle bundle) {
    }
}
