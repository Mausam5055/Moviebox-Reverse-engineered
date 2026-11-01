package ti;

import android.view.View;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements View.OnClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f76256c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f76257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function1 f76258b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public g(long j11, Function1 onDebounceClick) {
        Intrinsics.h(onDebounceClick, "onDebounceClick");
        this.f76257a = j11;
        this.f76258b = onDebounceClick;
    }

    public /* synthetic */ g(long j11, Function1 function1, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 1000L : j11, function1);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null) {
            Object tag = view.getTag(-1001);
            Long l11 = tag instanceof Long ? (Long) tag : null;
            long jLongValue = l11 != null ? l11.longValue() : 0L;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - jLongValue > this.f76257a) {
                view.setTag(-1001, Long.valueOf(jCurrentTimeMillis));
                this.f76258b.invoke(view);
            }
        }
    }
}
