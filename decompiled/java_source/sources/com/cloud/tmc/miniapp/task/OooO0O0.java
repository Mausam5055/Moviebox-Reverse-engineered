package com.cloud.tmc.miniapp.task;

import java.util.LinkedList;
import java.util.ListIterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0O0 {
    public final LinkedList<OooO00o> OooO00o = new LinkedList<>();

    public final void OooO00o() {
        while (!this.OooO00o.isEmpty()) {
            OooO00o oooO00oPoll = this.OooO00o.poll();
            if (oooO00oPoll != null) {
                oooO00oPoll.OooO0O0.run();
            }
        }
    }

    public final void OooO00o(OooO00o task) {
        Intrinsics.h(task, "task");
        ListIterator<OooO00o> listIterator = this.OooO00o.listIterator();
        Intrinsics.g(listIterator, "queue.listIterator()");
        while (listIterator.hasNext()) {
            if (listIterator.next().OooO00o == task.OooO00o) {
                listIterator.set(task);
                return;
            }
        }
        this.OooO00o.add(task);
    }
}
