package com.bytedance.sdk.component.sP.Sj;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class HiB extends sef {
    List<String> Sj;
    List<String> sP;

    public static final class Sj {
        private final List<String> Sj = new ArrayList();
        private final List<String> sP = new ArrayList();

        public Sj Sj(String str, String str2) {
            this.Sj.add(str);
            this.sP.add(str2);
            return this;
        }

        public HiB Sj() {
            return new HiB(this.Sj, this.sP);
        }
    }

    HiB(List<String> list, List<String> list2) {
        this.Sj = list;
        this.sP = list2;
    }
}
