package com.transsion.transfer.androidasync.util;

import java.io.File;
import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public abstract class FileCache {

    /* JADX INFO: renamed from: com.transsion.transfer.androidasync.util.FileCache$1, reason: invalid class name */
    class AnonymousClass1 implements Comparator<File> {
        final /* synthetic */ FileCache this$0;

        AnonymousClass1(FileCache fileCache) {
        }

        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            long jLastModified = file.lastModified();
            long jLastModified2 = file2.lastModified();
            if (jLastModified < jLastModified2) {
                return -1;
            }
            return jLastModified2 > jLastModified ? 1 : 0;
        }
    }

    /* JADX INFO: renamed from: com.transsion.transfer.androidasync.util.FileCache$2, reason: invalid class name */
    class AnonymousClass2 extends Thread {
        final /* synthetic */ FileCache this$0;

        AnonymousClass2(FileCache fileCache) {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            throw null;
        }
    }
}
