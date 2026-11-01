package com.google.android.exoplayer2.offline;

import com.google.android.exoplayer2.util.RunnableFutureTask;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
class ProgressiveDownloader$1 extends RunnableFutureTask<Void, IOException> {
    final /* synthetic */ e this$0;

    ProgressiveDownloader$1(e eVar) {
    }

    @Override // com.google.android.exoplayer2.util.RunnableFutureTask
    protected void cancelWork() {
        e.b(null).b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.util.RunnableFutureTask
    public Void doWork() throws IOException {
        e.b(null).a();
        return null;
    }
}
