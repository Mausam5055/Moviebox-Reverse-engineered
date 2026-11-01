package gm;

import android.app.Application;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.webkit.JavascriptInterface;
import com.blankj.utilcode.util.Utils;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public abstract class g extends BridgeWebView.BaseJavascriptInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BridgeWebView f63881a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(BridgeWebView customWebView) {
        super(customWebView.getCallbacks());
        Intrinsics.h(customWebView, "customWebView");
        this.f63881a = customWebView;
    }

    private final String a() {
        ArrayList arrayList = new ArrayList();
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://"));
        ResolveInfo resolveInfoResolveActivity = applicationA.getPackageManager().resolveActivity(intent, 65536);
        String str = null;
        String str2 = (resolveInfoResolveActivity != null ? resolveInfoResolveActivity.activityInfo : null) != null ? resolveInfoResolveActivity.activityInfo.packageName : null;
        if (str2 != null && !Intrinsics.c(str2, "android")) {
            return str2;
        }
        List<ResolveInfo> listQueryIntentActivities = applicationA.getPackageManager().queryIntentActivities(intent, 0);
        Intrinsics.g(listQueryIntentActivities, "queryIntentActivities(...)");
        Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
        String str3 = null;
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            if ((activityInfo.flags & 1) != 0) {
                str = activityInfo.packageName;
            } else {
                str3 = activityInfo.packageName;
                arrayList.add(str3);
            }
        }
        if (arrayList.contains("com.android.chrome")) {
            return "com.android.chrome";
        }
        if (str != null) {
            str2 = str;
        }
        return str3 != null ? str3 : str2;
    }

    private final boolean b() {
        return StringsKt.H("huawei", Build.MANUFACTURER, true);
    }

    @JavascriptInterface
    public void close() {
    }

    @JavascriptInterface
    public void openBrowser(String url) {
        Intrinsics.h(url, "url");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("openBrowser() --> url = ");
        sb2.append(url);
        try {
            Intent uri = StringsKt.W(url, "intent", false, 2, null) ? Intent.parseUri(url, 1) : new Intent("android.intent.action.VIEW", Uri.parse(url));
            if (uri != null) {
                if (b()) {
                    uri.setPackage(a());
                }
                uri.addCategory("android.intent.category.BROWSABLE");
                uri.setComponent(null);
                uri.setFlags(ASTNode.DEOP);
            }
            Utils.a().startActivity(uri);
        } catch (Exception e11) {
            Log.e("gs_log", "openBrowser() --> url = " + url + " --> e = " + e11);
        }
    }

    @Override // com.github.lzyzsd.jsbridge.BridgeWebView.BaseJavascriptInterface
    public String send(String str) {
        return "send";
    }
}
