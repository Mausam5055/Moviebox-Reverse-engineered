package com.transsion.ninegridview.helper;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f47691a = new b();

    private b() {
    }

    public final void a(Activity activity, int i11) {
        Intrinsics.h(activity, "activity");
        String packageName = activity.getPackageName();
        Intrinsics.g(packageName, "getPackageName(...)");
        Intent intent = new Intent("com.android.setting.ACTION_GET_PERMISSION_DETAILS");
        intent.putExtra("packagename", packageName);
        intent.addFlags(ASTNode.DEOP);
        try {
            try {
                try {
                    if (i11 > 0) {
                        activity.startActivityForResult(intent, i11);
                    } else {
                        activity.startActivity(intent);
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            } catch (ActivityNotFoundException unused) {
                Intent intent2 = new Intent("android.settings.MANAGE_APPLICATIONS_SETTINGS");
                intent2.addFlags(ASTNode.DEOP);
                if (i11 > 0) {
                    activity.startActivityForResult(intent2, i11);
                } else {
                    activity.startActivity(intent2);
                }
            }
        } catch (ActivityNotFoundException unused2) {
            Intent intent3 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent3.setData(Uri.parse("package:" + packageName));
            intent3.addFlags(ASTNode.DEOP);
            if (i11 > 0) {
                activity.startActivityForResult(intent3, i11);
            } else {
                activity.startActivity(intent3);
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }
}
