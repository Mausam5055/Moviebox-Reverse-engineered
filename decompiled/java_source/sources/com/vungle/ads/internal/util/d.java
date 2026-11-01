package com.vungle.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.vungle.ads.LinkError;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.net.URISyntaxException;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes7.dex */
public final class d {
    public static final d INSTANCE = new d();
    private static final String TAG = "ExternalRouter";

    private d() {
    }

    private final Intent getIntentFromUrl(String str, boolean z10) {
        Intent uri = null;
        if (str != null) {
            try {
                if (str.length() != 0) {
                    uri = Intent.parseUri(str, 0);
                }
                if (uri != null && z10) {
                    uri.setFlags(ASTNode.DEOP);
                }
            } catch (URISyntaxException e11) {
                o.Companion.e(TAG, "url format is not correct " + e11.getLocalizedMessage());
            }
        } else if (uri != null) {
            uri.setFlags(ASTNode.DEOP);
        }
        return uri;
    }

    @JvmStatic
    public static final boolean launch(String str, String str2, Context context, n nVar, com.vungle.ads.internal.ui.b bVar) {
        Intrinsics.h(context, "context");
        if ((str != null && str.length() != 0) || (str2 != null && str2.length() != 0)) {
            boolean z10 = !(context instanceof Activity);
            try {
                d dVar = INSTANCE;
                return a.Companion.startWhenForeground(context, dVar.getIntentFromUrl(str, z10), dVar.getIntentFromUrl(str2, z10), bVar);
            } catch (Exception e11) {
                if (str == null || str.length() == 0) {
                    new LinkError(Sdk$SDKError.Reason.LINK_COMMAND_OPEN_FAILED, "Fail to open " + str2).setLogEntry$vungle_ads_release(nVar).logErrorNoReturnValue$vungle_ads_release();
                } else {
                    new LinkError(Sdk$SDKError.Reason.DEEPLINK_OPEN_FAILED, "Fail to open " + str).setLogEntry$vungle_ads_release(nVar).logErrorNoReturnValue$vungle_ads_release();
                }
                o.a aVar = o.Companion;
                aVar.e(TAG, "Error while opening url" + e11.getLocalizedMessage());
                aVar.d(TAG, "Cannot open url " + str2);
            }
        }
        return false;
    }

    public static /* synthetic */ boolean launch$default(String str, String str2, Context context, n nVar, com.vungle.ads.internal.ui.b bVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        if ((i11 & 8) != 0) {
            nVar = null;
        }
        if ((i11 & 16) != 0) {
            bVar = null;
        }
        return launch(str, str2, context, nVar, bVar);
    }
}
