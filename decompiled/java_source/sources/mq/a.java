package mq;

import android.content.Context;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f69683a = "room_recommend.json";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f69684b = "post_list.json";

    public final String a(Context context) {
        Intrinsics.h(context, "context");
        try {
            InputStream inputStreamOpen = context.getAssets().open(this.f69683a);
            Intrinsics.e(inputStreamOpen);
            return Okio.buffer(Okio.source(inputStreamOpen)).readUtf8();
        } catch (Exception unused) {
            return null;
        }
    }
}
