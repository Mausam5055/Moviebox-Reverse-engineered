package f;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.provider.MediaStore;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public class e extends f.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f62111b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f62112a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            if (g.f62113a.d()) {
                return MediaStore.getPickImagesMaxLimit();
            }
            return Integer.MAX_VALUE;
        }
    }

    public e() {
        this(0, 1, null);
    }

    public e(int i11) {
        this.f62112a = i11;
        if (i11 <= 1) {
            throw new IllegalArgumentException("Max items must be higher than 1");
        }
    }

    public /* synthetic */ e(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? f62111b.a() : i11);
    }

    @Override // f.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent a(Context context, androidx.activity.result.e input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        g.a aVar = g.f62113a;
        if (aVar.d()) {
            Intent intent = new Intent("android.provider.action.PICK_IMAGES");
            intent.setType(aVar.b(input.d()));
            int iMin = Math.min(this.f62112a, input.c());
            if (iMin <= 1 || iMin > MediaStore.getPickImagesMaxLimit()) {
                throw new IllegalArgumentException("Max items must be greater than 1 and lesser than or equal to MediaStore.getPickImagesMaxLimit()");
            }
            intent.putExtra("android.provider.extra.PICK_IMAGES_MAX", iMin);
            intent.putExtra("android.provider.extra.PICK_IMAGES_LAUNCH_TAB", input.b().a());
            intent.putExtra("android.provider.extra.PICK_IMAGES_IN_ORDER", input.f());
            if (!input.e()) {
                return intent;
            }
            intent.putExtra("android.provider.extra.PICK_IMAGES_ACCENT_COLOR", input.a());
            return intent;
        }
        if (!aVar.c(context)) {
            Intent intent2 = new Intent("android.intent.action.OPEN_DOCUMENT");
            intent2.setType(aVar.b(input.d()));
            intent2.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
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
        int iMin2 = Math.min(this.f62112a, input.c());
        if (iMin2 <= 1) {
            throw new IllegalArgumentException("Max items must be greater than 1");
        }
        intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_MAX", iMin2);
        intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_LAUNCH_TAB", input.b().a());
        intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_IN_ORDER", input.f());
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
    public final List c(int i11, Intent intent) {
        List listA;
        if (i11 != -1) {
            intent = null;
        }
        return (intent == null || (listA = c.f62110a.a(intent)) == null) ? CollectionsKt.l() : listA;
    }
}
