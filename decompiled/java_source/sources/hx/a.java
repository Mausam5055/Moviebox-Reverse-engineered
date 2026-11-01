package hx;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.transsion.version.update.RemoteVersionInfo;
import com.transsion.version.update.e;
import com.transsion.web.api.WebConstants;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes7.dex */
public final class a {
    private final boolean b(Context context, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", str != null ? Uri.parse(str) : null);
            intent.addFlags(ASTNode.DEOP);
            if (context == null) {
                return true;
            }
            context.startActivity(intent);
            return true;
        } catch (Exception e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public final boolean a(String fromPage, Context context, RemoteVersionInfo remoteVersionInfo) {
        boolean zB;
        boolean z10;
        PackageManager packageManager;
        Intrinsics.h(fromPage, "fromPage");
        ComponentName componentNameResolveActivity = null;
        String appStoreUrl = remoteVersionInfo != null ? remoteVersionInfo.getAppStoreUrl() : null;
        String webDownloadUrl = remoteVersionInfo != null ? remoteVersionInfo.getWebDownloadUrl() : null;
        boolean z11 = true;
        try {
            Intent intent = new Intent("android.intent.action.VIEW", appStoreUrl != null ? Uri.parse(appStoreUrl) : null);
            intent.addFlags(ASTNode.DEOP);
            if (context != null && (packageManager = context.getPackageManager()) != null) {
                componentNameResolveActivity = intent.resolveActivity(packageManager);
            }
            if (componentNameResolveActivity != null) {
                context.startActivity(intent);
                z10 = false;
            } else {
                zB = b(context, webDownloadUrl);
                z11 = zB;
                z10 = true;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            zB = b(context, webDownloadUrl);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "jump");
        if (appStoreUrl == null) {
            appStoreUrl = "";
        }
        linkedHashMap.put("store_uri", appStoreUrl);
        if (webDownloadUrl == null) {
            webDownloadUrl = "";
        }
        linkedHashMap.put("web_uri", webDownloadUrl);
        linkedHashMap.put("action_result", String.valueOf(z11));
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, !z10 ? PlaceTypes.STORE : "web");
        linkedHashMap.put(WebConstants.PAGE_FROM, fromPage);
        linkedHashMap.put("dialog_type", "mb");
        e.f57538a.b(linkedHashMap);
        return z11;
    }
}
