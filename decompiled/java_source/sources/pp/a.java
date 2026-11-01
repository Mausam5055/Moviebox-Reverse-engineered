package pp;

import com.transsion.push.utils.PushLogUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: pp.a$a, reason: collision with other inner class name */
    private static final class C0887a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final a f72496a = new a();
    }

    public static a b() {
        return C0887a.f72496a;
    }

    public void a(List list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        try {
            throw null;
        } catch (Exception e11) {
            PushLogUtils.LOG.g("delete msg fail, e:" + e11.getMessage());
        }
    }

    public void c(String str) {
        try {
            throw null;
        } catch (Exception e11) {
            PushLogUtils.LOG.i("insert report record fail, e:" + e11.getMessage());
        }
    }

    public List d() {
        new ArrayList();
        throw null;
    }
}
