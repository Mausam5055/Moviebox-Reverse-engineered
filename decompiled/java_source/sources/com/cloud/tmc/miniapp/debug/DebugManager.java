package com.cloud.tmc.miniapp.debug;

import com.cloud.tmc.kernel.debug.DebugCallback;
import com.cloud.tmc.kernel.debug.IDebugManager;
import com.cloud.tmc.miniapp.widget.OooO;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class DebugManager implements IDebugManager {
    public final Map<Object, DebugCallback> OooO00o = new LinkedHashMap();

    @Override // com.cloud.tmc.kernel.debug.IDebugManager
    public void addObserver(Object tag, DebugCallback target) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(target, "target");
        this.OooO00o.put(tag, target);
    }

    @Override // com.cloud.tmc.kernel.debug.IDebugManager
    public void notifyObserver() {
        if (this.OooO00o.size() != 1) {
            OooO.OooO00o("当前非主页，不支chrome/inspect 刷新");
            return;
        }
        Iterator<T> it = this.OooO00o.values().iterator();
        while (it.hasNext()) {
            ((DebugCallback) it.next()).debugRefresh();
        }
    }

    @Override // com.cloud.tmc.kernel.debug.IDebugManager
    public void removeObserver(Object tag) {
        Intrinsics.h(tag, "tag");
        this.OooO00o.remove(tag);
    }
}
