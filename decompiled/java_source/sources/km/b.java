package km;

import com.transsion.lib_web.download_render.c;
import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.task.compare.CompareRequest;
import com.transsion.lib_web.download_render.task.compare.CompareResponse;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public interface b {

    public interface a {
        CompareResponse a(CompareRequest compareRequest);
    }

    /* JADX INFO: renamed from: km.b$b, reason: collision with other inner class name */
    public static final class C0811b {
        public static FileData a(b bVar, FileData remoteFileData) {
            Intrinsics.h(remoteFileData, "remoteFileData");
            return c.f46167a.e(remoteFileData);
        }
    }

    CompareResponse a(CompareRequest compareRequest, a aVar);
}
