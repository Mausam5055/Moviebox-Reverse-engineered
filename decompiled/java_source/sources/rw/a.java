package rw;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0911a f74724a = new C0911a(null);

    /* JADX INFO: renamed from: rw.a$a, reason: collision with other inner class name */
    public static final class C0911a {
        private C0911a() {
        }

        public /* synthetic */ C0911a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SpannableStringBuilder a(String prefix, String desc, int i11) {
            Intrinsics.h(prefix, "prefix");
            Intrinsics.h(desc, "desc");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(desc);
            int iN0 = StringsKt.n0(desc, ':', 0, false, 6, null);
            if (iN0 == -1) {
                return spannableStringBuilder;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i11), 0, iN0, 33);
            return spannableStringBuilder;
        }
    }
}
