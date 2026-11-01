package f;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public class g extends f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f62113a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ResolveInfo a(Context context) {
            Intrinsics.h(context, "context");
            return context.getPackageManager().resolveActivity(new Intent("androidx.activity.result.contract.action.PICK_IMAGES"), 1114112);
        }

        public final String b(f input) {
            Intrinsics.h(input, "input");
            if (input instanceof d) {
                return ShareConstant.SHARE_TYPE_IMAGE;
            }
            if (input instanceof e) {
                return ShareConstant.SHARE_TYPE_VIDEO;
            }
            if (input instanceof c) {
                return null;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final boolean c(Context context) {
            Intrinsics.h(context, "context");
            return a(context) != null;
        }

        public final boolean d() {
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 33) {
                return true;
            }
            return i11 >= 30 && SdkExtensions.getExtensionVersion(30) >= 2;
        }
    }

    public static abstract class b {

        public static final class a extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f62114a = new a();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private static final int f62115b = 1;

            private a() {
                super(null);
            }

            @Override // f.g.b
            public int a() {
                return f62115b;
            }
        }

        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public abstract int a();
    }

    public static final class c implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f62116a = new c();

        private c() {
        }
    }

    public static final class d implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f62117a = new d();

        private d() {
        }
    }

    public static final class e implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final e f62118a = new e();

        private e() {
        }
    }

    public interface f {
    }

    @Override // f.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent a(Context context, androidx.activity.result.e input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        a aVar = f62113a;
        if (aVar.d()) {
            Intent intent = new Intent("android.provider.action.PICK_IMAGES");
            intent.setType(aVar.b(input.d()));
            intent.putExtra("android.provider.extra.PICK_IMAGES_LAUNCH_TAB", input.b().a());
            if (!input.e()) {
                return intent;
            }
            intent.putExtra("android.provider.extra.PICK_IMAGES_ACCENT_COLOR", input.a());
            return intent;
        }
        if (!aVar.c(context)) {
            Intent intent2 = new Intent("android.intent.action.OPEN_DOCUMENT");
            intent2.setType(aVar.b(input.d()));
            if (intent2.getType() != null) {
                return intent2;
            }
            intent2.setType("*/*");
            intent2.putExtra("android.intent.extra.MIME_TYPES", new String[]{ShareConstant.SHARE_TYPE_IMAGE, ShareConstant.SHARE_TYPE_VIDEO});
            return intent2;
        }
        ResolveInfo resolveInfoA = aVar.a(context);
        if (resolveInfoA == null) {
            throw new IllegalStateException("Required value was null.");
        }
        ActivityInfo activityInfo = resolveInfoA.activityInfo;
        Intent intent3 = new Intent("androidx.activity.result.contract.action.PICK_IMAGES");
        intent3.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
        intent3.setType(aVar.b(input.d()));
        intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_LAUNCH_TAB", input.b().a());
        if (input.e()) {
            intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_ACCENT_COLOR", input.a());
        }
        return intent3;
    }

    @Override // f.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final f.a.C0753a b(Context context, androidx.activity.result.e input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        return null;
    }

    @Override // f.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Uri c(int i11, Intent intent) {
        if (i11 != -1) {
            intent = null;
        }
        if (intent == null) {
            return null;
        }
        Uri data = intent.getData();
        if (data == null) {
            data = (Uri) CollectionsKt.k0(f.c.f62110a.a(intent));
        }
        return data;
    }
}
