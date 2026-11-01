package org.apache.commons.compress.archivers.zip;

import java.io.Closeable;
import java.util.Comparator;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ZipFile implements Closeable {

    /* JADX INFO: renamed from: org.apache.commons.compress.archivers.zip.ZipFile$2, reason: invalid class name */
    class AnonymousClass2 implements Comparator<ZipArchiveEntry> {
        final /* synthetic */ ZipFile this$0;

        AnonymousClass2(ZipFile zipFile) {
        }

        @Override // java.util.Comparator
        public /* bridge */ /* synthetic */ int compare(ZipArchiveEntry zipArchiveEntry, ZipArchiveEntry zipArchiveEntry2) {
            android.support.v4.media.session.c.a(zipArchiveEntry);
            android.support.v4.media.session.c.a(zipArchiveEntry2);
            return compare2((ZipArchiveEntry) null, (ZipArchiveEntry) null);
        }

        /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
        public int compare2(ZipArchiveEntry zipArchiveEntry, ZipArchiveEntry zipArchiveEntry2) {
            return zipArchiveEntry == zipArchiveEntry2 ? 0 : 1;
        }
    }
}
