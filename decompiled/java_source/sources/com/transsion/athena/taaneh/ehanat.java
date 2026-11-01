package com.transsion.athena.taaneh;

import java.io.File;
import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
class ehanat implements Comparator<File> {
    ehanat() {
    }

    @Override // java.util.Comparator
    public int compare(File file, File file2) {
        return file.getName().compareTo(file2.getName());
    }
}
