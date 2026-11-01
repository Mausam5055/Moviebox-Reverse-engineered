package com.transsion.member;

import androidx.recyclerview.widget.LinearLayoutManager;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z0 f46908a = new z0();

    private z0() {
    }

    public final boolean a(LinearLayoutManager linearLayoutManager, int i11, String pageName) {
        int iFindLastVisibleItemPosition;
        Intrinsics.h(pageName, "pageName");
        if (linearLayoutManager == null || i11 <= 0 || (iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition()) < 0 || iFindLastVisibleItemPosition < i11 / 2) {
            return false;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "list");
        linkedHashMap.put("moduleName", "svip_features");
        hj.i.f64505a.s(pageName, "feature_browser", linkedHashMap);
        return true;
    }
}
