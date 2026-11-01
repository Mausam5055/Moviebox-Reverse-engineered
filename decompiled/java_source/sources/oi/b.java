package oi;

import android.text.TextUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public interface b {

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a {
        public static String a(b bVar) {
            String simpleName = bVar.getClass().getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            return simpleName;
        }

        public static void b(b bVar, int i11, String msg, String tag, boolean z10) {
            String str;
            Intrinsics.h(msg, "msg");
            Intrinsics.h(tag, "tag");
            if (TextUtils.isEmpty(bVar.getSceneId())) {
                str = bVar.getClassTag() + " --> " + msg;
            } else {
                str = bVar.getClassTag() + " --> sceneId = " + bVar.getSceneId() + " --> " + msg;
            }
            oi.a.f71022a.n(tag, str, i11, z10);
        }

        public static /* synthetic */ void c(b bVar, int i11, String str, String str2, boolean z10, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onLog");
            }
            if ((i12 & 1) != 0) {
                i11 = 3;
            }
            if ((i12 & 4) != 0) {
                str2 = bVar.getLogTag();
            }
            if ((i12 & 8) != 0) {
                z10 = true;
            }
            bVar.onLog(i11, str, str2, z10);
        }
    }

    String getClassTag();

    String getLogTag();

    String getSceneId();

    void onLog(int i11, String str, String str2, boolean z10);
}
