package androidx.work;

import android.content.Context;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class WorkManagerInitializer implements e4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15400a = t.i("WrkMgrInitializer");

    @Override // e4.a
    public List a() {
        return Collections.emptyList();
    }

    @Override // e4.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public WorkManager b(Context context) {
        t.e().a(f15400a, "Initializing WorkManager with default configuration.");
        WorkManager.h(context, new b.a().a());
        return WorkManager.f(context);
    }
}
