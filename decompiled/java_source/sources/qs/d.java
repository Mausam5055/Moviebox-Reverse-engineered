package qs;

import androidx.fragment.app.FragmentActivity;
import com.transsion.shorttv.bean.DownloadItem;
import com.transsion.shorttv.bean.DownloadListBean;
import com.transsion.shorttv.bean.Subject;
import java.util.List;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes7.dex */
public interface d {

    public static final class a {
        public static void a(d dVar, FragmentActivity fragmentActivity, String str, int i11) {
        }
    }

    Object a(String str, int i11, String str2, Continuation continuation);

    Object b(String str, Continuation continuation);

    void c();

    Object d(String str, int i11, long j11, Continuation continuation);

    boolean e(long j11);

    void f(m mVar);

    DownloadItem g(String str);

    void h(DownloadListBean downloadListBean, Subject subject, String str, String str2, String str3, List list);

    void i(FragmentActivity fragmentActivity, DownloadItem downloadItem, int i11, String str);

    void j(n nVar);

    Object k(String str, Continuation continuation);

    void l(FragmentActivity fragmentActivity, String str, int i11);
}
