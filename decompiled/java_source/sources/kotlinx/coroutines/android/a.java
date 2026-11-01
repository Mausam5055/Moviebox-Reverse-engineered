package kotlinx.coroutines.android;

import android.os.Looper;
import java.util.List;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.internal.n;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements n {
    @Override // kotlinx.coroutines.internal.n
    public String a() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // kotlinx.coroutines.internal.n
    public a2 b(List list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new HandlerContext(g.c(mainLooper, true), null, 2, null);
        }
        throw new IllegalStateException("The main looper is not available");
    }

    @Override // kotlinx.coroutines.internal.n
    public int c() {
        return 1073741823;
    }
}
