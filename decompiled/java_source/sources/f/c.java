package f;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public class c extends f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f62110a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a(Intent intent) {
            Intrinsics.h(intent, "<this>");
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Uri data = intent.getData();
            if (data != null) {
                linkedHashSet.add(data);
            }
            ClipData clipData = intent.getClipData();
            if (clipData == null && linkedHashSet.isEmpty()) {
                return CollectionsKt.l();
            }
            if (clipData != null) {
                int itemCount = clipData.getItemCount();
                for (int i11 = 0; i11 < itemCount; i11++) {
                    Uri uri = clipData.getItemAt(i11).getUri();
                    if (uri != null) {
                        linkedHashSet.add(uri);
                    }
                }
            }
            return new ArrayList(linkedHashSet);
        }
    }

    @Override // f.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent a(Context context, String input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        Intent intentPutExtra = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").setType(input).putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        Intrinsics.g(intentPutExtra, "Intent(Intent.ACTION_GET…TRA_ALLOW_MULTIPLE, true)");
        return intentPutExtra;
    }

    @Override // f.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final f.a.C0753a b(Context context, String input) {
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
        return (intent == null || (listA = f62110a.a(intent)) == null) ? CollectionsKt.l() : listA;
    }
}
