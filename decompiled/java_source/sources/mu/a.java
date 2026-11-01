package mu;

import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes7.dex */
public interface a {

    /* JADX INFO: renamed from: mu.a$a, reason: collision with other inner class name */
    public static final class C0841a {
        public static /* synthetic */ Object a(a aVar, int i11, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getDownloadFailureList");
            }
            if ((i12 & 1) != 0) {
                i11 = 6;
            }
            return aVar.d(i11, continuation);
        }
    }

    Object a(String str, Continuation continuation);

    Object b(String str, Continuation continuation);

    SubtitleDownloadTable c(String str, int i11);

    Object d(int i11, Continuation continuation);

    Object e(SubtitleDownloadTable subtitleDownloadTable, Continuation continuation);

    void f(SubtitleDownloadTable subtitleDownloadTable);

    void g(SubtitleDownloadTable subtitleDownloadTable);
}
