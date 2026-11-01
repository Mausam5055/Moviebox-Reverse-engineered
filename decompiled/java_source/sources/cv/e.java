package cv;

import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.s;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e extends d {
    public e(String str, long j11, List list) {
        super(str, j11, list);
    }

    @Override // cv.d
    public void d(s sVar, bv.a aVar) {
        try {
            a0.f(e(), sVar, aVar);
        } catch (Exception e11) {
            aVar.g(e11);
        }
    }

    protected abstract InputStream e();
}
