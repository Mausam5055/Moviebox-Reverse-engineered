package zm;

import android.content.Context;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f79437a = "skulist.json";

    public final String a(Context context) {
        Intrinsics.h(context, "context");
        try {
            InputStream inputStreamOpen = context.getResources().getAssets().open(this.f79437a);
            Intrinsics.e(inputStreamOpen);
            return Okio.buffer(Okio.source(inputStreamOpen)).readUtf8();
        } catch (Exception unused) {
            return null;
        }
    }
}
