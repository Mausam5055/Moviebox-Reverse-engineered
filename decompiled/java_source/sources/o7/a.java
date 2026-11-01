package o7;

import android.os.Handler;
import android.os.Message;
import com.contrarywind.view.WheelView;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WheelView f70739a;

    public a(WheelView wheelView) {
        this.f70739a = wheelView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i11 = message.what;
        if (i11 == 1000) {
            this.f70739a.invalidate();
        } else if (i11 == 2000) {
            this.f70739a.smoothScroll(WheelView.ACTION.FLING);
        } else {
            if (i11 != 3000) {
                return;
            }
            this.f70739a.onItemSelected();
        }
    }
}
