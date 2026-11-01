package tv;

import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f76392a;

    /* JADX INFO: loaded from: classes6.dex */
    public interface a {
        String d();

        String e();

        String f();
    }

    public i(a host) {
        Intrinsics.h(host, "host");
        this.f76392a = host;
    }

    public final void a(String moduleName, UGCVideo uGCVideo, Boolean bool, String str, Integer num) {
        Intrinsics.h(moduleName, "moduleName");
        if (uGCVideo == null) {
            return;
        }
        com.transsion.ugcvideodetail.hepler.h.f56367a.a("/ugc_video/immersive_detail", moduleName, uGCVideo, str, this.f76392a.d(), this.f76392a.f(), this.f76392a.e(), bool, num);
    }
}
