package com.transsion.postdetail.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f50161a = new c();

    private c() {
    }

    public final void a(Context context, String filePath) {
        Intrinsics.h(context, "context");
        Intrinsics.h(filePath, "filePath");
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(new File(filePath)));
        context.sendBroadcast(intent);
    }
}
