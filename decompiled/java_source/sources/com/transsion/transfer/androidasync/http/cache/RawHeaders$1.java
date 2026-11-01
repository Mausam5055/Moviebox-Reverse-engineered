package com.transsion.transfer.androidasync.http.cache;

import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
class RawHeaders$1 implements Comparator<String> {
    RawHeaders$1() {
    }

    @Override // java.util.Comparator
    public int compare(String str, String str2) {
        if (str == str2) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (str2 == null) {
            return 1;
        }
        return String.CASE_INSENSITIVE_ORDER.compare(str, str2);
    }
}
