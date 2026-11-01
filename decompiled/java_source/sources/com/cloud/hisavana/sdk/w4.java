package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class w4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r.a f23060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f23061b;

    public w4(r.a admListener) {
        Intrinsics.h(admListener, "admListener");
        this.f23060a = admListener;
        this.f23061b = "AdmActionBridge";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(String path, w4 this$0) {
        Intrinsics.h(path, "$path");
        Intrinsics.h(this$0, "this$0");
        if (TextUtils.isEmpty(path)) {
            return;
        }
        if (StringsKt.W(path, "http", false, 2, null) || StringsKt.W(path, "https", false, 2, null) || StringsKt.W(path, OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, false, 2, null)) {
            this$0.f23060a.a(path, TaErrorCode.CODE_BITMAP_TAKE_FAILED);
        }
    }

    @JavascriptInterface
    public final void loadMaterialError(final String path) {
        Intrinsics.h(path, "path");
        e4.b().w(this.f23061b, "loadMaterialError " + path);
        Preconditions.d(new Preconditions.a() { // from class: com.cloud.hisavana.sdk.u4
            @Override // com.cloud.sdk.commonutil.util.Preconditions.a
            public final void onRun() {
                w4.b(path, this);
            }
        });
    }
}
