package com.transsnet.downloader.util;

import android.content.Context;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.memberapi.IMemberApi;
import com.transsnet.downloader.popup.PopupManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a0 f59916a = new a0();

    private a0() {
    }

    public final void a(Context context, PopupManager popupManager, String sceneId, String traceId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(popupManager, "popupManager");
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(traceId, "traceId");
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null ? iMemberApi.c() : false) {
            PopupManager.M(popupManager, context, false, null, 6, null);
            return;
        }
        if (iMemberApi != null ? iMemberApi.f() : false) {
            Navigator.x(TheRouter.c("/member/MemberActivity").K("scene_id", sceneId).K("trace_id", traceId), null, null, 3, null);
        } else {
            Navigator.x(TheRouter.c("/rewards/center"), null, null, 3, null);
        }
    }
}
