package kr;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.transsion.share.R$string;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes7.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f68384a = new o();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f68385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f68386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f68387d;

    static {
        f68385b = Build.VERSION.SDK_INT < 33 ? new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"} : new String[]{"android.permission.READ_MEDIA_VIDEO"};
    }

    private o() {
    }

    public static /* synthetic */ boolean e(o oVar, int i11, long j11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            j11 = 2000;
        }
        return oVar.d(i11, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(Function0 function0, DialogInterface dialogInterface, int i11) {
        function0.invoke();
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(DialogInterface dialogInterface, int i11) {
        dialogInterface.dismiss();
    }

    public static /* synthetic */ void j(o oVar, Activity activity, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 14;
        }
        oVar.i(activity, i11);
    }

    public final String[] c() {
        return f68385b;
    }

    public final boolean d(int i11, long j11) {
        if (f68387d != i11) {
            f68387d = i11;
            f68386c = System.currentTimeMillis();
            return false;
        }
        if (System.currentTimeMillis() - f68386c <= j11) {
            return true;
        }
        f68387d = i11;
        f68386c = System.currentTimeMillis();
        return false;
    }

    public final void f(Context context, String title, String message, final Function0 onConfirm) {
        Intrinsics.h(context, "context");
        Intrinsics.h(title, "title");
        Intrinsics.h(message, "message");
        Intrinsics.h(onConfirm, "onConfirm");
        androidx.appcompat.app.c.a aVar = new androidx.appcompat.app.c.a(context);
        aVar.setTitle(title);
        aVar.d(message);
        aVar.g(context.getString(R$string.system_settings), new DialogInterface.OnClickListener() { // from class: kr.m
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                o.g(onConfirm, dialogInterface, i11);
            }
        });
        aVar.e(context.getString(R$string.cancel), new DialogInterface.OnClickListener() { // from class: kr.n
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                o.h(dialogInterface, i11);
            }
        });
        androidx.appcompat.app.c cVarCreate = aVar.create();
        Intrinsics.g(cVarCreate, "create(...)");
        cVarCreate.show();
    }

    public final void i(Activity activity, int i11) {
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

    public final boolean k(int[] grantResults) {
        Intrinsics.h(grantResults, "grantResults");
        for (int i11 : grantResults) {
            if (i11 == -1) {
                return false;
            }
        }
        return true;
    }
}
