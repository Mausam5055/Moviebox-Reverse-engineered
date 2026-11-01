package com.bykv.vk.openvk.preload.geckox.utils;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes2.dex */
public final class g {
    public static Long a(File file) {
        File[] fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.bykv.vk.openvk.preload.geckox.utils.g.1
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                return file2.isDirectory();
            }
        });
        Long l11 = null;
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            for (File file2 : fileArrListFiles) {
                try {
                    Long lValueOf = Long.valueOf(file2.getName());
                    long jLongValue = lValueOf.longValue();
                    if (l11 == null || jLongValue > l11.longValue()) {
                        l11 = lValueOf;
                    }
                } catch (Exception unused) {
                }
            }
        }
        return l11;
    }
}
