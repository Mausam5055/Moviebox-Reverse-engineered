package com.vungle.ads.internal.task;

import android.content.Context;
import com.vungle.ads.internal.util.p;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class g implements b {
    private final Context context;
    private final p pathProvider;

    public g(Context context, p pathProvider) {
        Intrinsics.h(context, "context");
        Intrinsics.h(pathProvider, "pathProvider");
        this.context = context;
        this.pathProvider = pathProvider;
    }

    @Override // com.vungle.ads.internal.task.b
    public a create(String tag) throws UnknownTagException {
        Intrinsics.h(tag, "tag");
        if (tag.length() == 0) {
            throw new UnknownTagException("Job tag is null");
        }
        if (Intrinsics.c(tag, CleanupJob.TAG)) {
            return new CleanupJob(this.context, this.pathProvider);
        }
        if (Intrinsics.c(tag, ResendTpatJob.TAG)) {
            return new ResendTpatJob(this.context, this.pathProvider);
        }
        throw new UnknownTagException("Unknown Job Type " + tag);
    }

    public final Context getContext() {
        return this.context;
    }

    public final p getPathProvider() {
        return this.pathProvider;
    }
}
