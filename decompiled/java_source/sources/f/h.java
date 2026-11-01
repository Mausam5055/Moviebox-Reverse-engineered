package f;

import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f62119a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Intent a(String[] input) {
            Intrinsics.h(input, "input");
            Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", input);
            Intrinsics.g(intentPutExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
            return intentPutExtra;
        }
    }

    @Override // f.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent a(Context context, String[] input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        return f62119a.a(input);
    }

    @Override // f.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public f.a.C0753a b(Context context, String[] input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        if (input.length == 0) {
            return new f.a.C0753a(MapsKt.h());
        }
        for (String str : input) {
            if (androidx.core.content.b.checkSelfPermission(context, str) != 0) {
                return null;
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.f(MapsKt.e(input.length), 16));
        for (String str2 : input) {
            Pair pairA = TuplesKt.a(str2, Boolean.TRUE);
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        return new f.a.C0753a(linkedHashMap);
    }

    @Override // f.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Map c(int i11, Intent intent) {
        if (i11 == -1 && intent != null) {
            String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
            if (intArrayExtra == null || stringArrayExtra == null) {
                return MapsKt.h();
            }
            ArrayList arrayList = new ArrayList(intArrayExtra.length);
            for (int i12 : intArrayExtra) {
                arrayList.add(Boolean.valueOf(i12 == 0));
            }
            return MapsKt.s(CollectionsKt.Z0(ArraysKt.S(stringArrayExtra), arrayList));
        }
        return MapsKt.h();
    }
}
