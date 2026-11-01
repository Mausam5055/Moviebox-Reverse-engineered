package kr;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f68388a = new p();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f68389b = "https://play.google.com/store/apps/details?id=com.community.oneroom";

    private p() {
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0032 A[Catch: Exception -> 0x003b, TRY_LEAVE, TryCatch #0 {Exception -> 0x003b, blocks: (B:4:0x0007, B:7:0x000e, B:9:0x0027, B:11:0x0032), top: B:17:0x0007 }] */
    public final void a(Activity activity, String str, Uri uri, Function1 function1) {
        Intrinsics.h(activity, "activity");
        if (str != null) {
            try {
                if (str.length() != 0) {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType(ShareConstant.SHARE_TYPE_IMAGE);
                    intent.putExtra("android.intent.extra.STREAM", uri);
                    intent.setPackage(str);
                    activity.startActivity(intent);
                    if (function1 != null) {
                    }
                } else if (function1 != null) {
                }
            } catch (Exception unused) {
                if (function1 != null) {
                }
            }
        } else if (function1 != null) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003e  */
    /* JADX WARN: Code duplicated, block: B:19:? A[RETURN, SYNTHETIC] */
    public final void b(Activity activity, Uri uri, Function1 function1) {
        Intrinsics.h(activity, "activity");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(ShareConstant.SHARE_TYPE_IMAGE);
        intent.putExtra("android.intent.extra.STREAM", uri);
        try {
            try {
                intent.setPackage("org.telegram.messenger");
                activity.startActivity(intent);
                if (function1 != null) {
                    return;
                }
                return;
            } catch (Exception unused) {
                if (function1 != null) {
                }
            }
        } catch (ActivityNotFoundException unused2) {
            intent.setPackage("org.thunderdog.challegram");
            activity.startActivity(intent);
            if (function1 != null) {
                return;
            }
            return;
        }
        if (function1 != null) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0046  */
    /* JADX WARN: Code duplicated, block: B:19:? A[RETURN, SYNTHETIC] */
    public final void c(Activity activity, String shareContent, Function1 function1) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(shareContent, "shareContent");
        Intent intent = new Intent();
        try {
            try {
                intent.setAction("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.TEXT", shareContent);
                intent.setType(ShareConstant.SHARE_TYPE_TEXT);
                intent.setPackage("org.telegram.messenger");
                activity.startActivity(intent);
                if (function1 != null) {
                    return;
                }
                return;
            } catch (Exception unused) {
                if (function1 != null) {
                }
            }
        } catch (ActivityNotFoundException unused2) {
            intent.setPackage("org.thunderdog.challegram");
            activity.startActivity(intent);
            if (function1 != null) {
                return;
            }
            return;
        }
        if (function1 != null) {
        }
    }

    public final void d(Activity activity, String shareContent, Function1 function1) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(shareContent, "shareContent");
        try {
            Intent intent = new Intent();
            Uri uri = Uri.parse("whatsapp://send?text=" + Uri.encode(shareContent));
            intent.setAction("android.intent.action.VIEW");
            intent.setData(uri);
            activity.startActivity(intent);
            if (function1 != null) {
            }
        } catch (Exception unused) {
            if (function1 != null) {
            }
        }
    }
}
