package org.apache.commons.compress.archivers.dump;

import java.util.Comparator;

/* JADX INFO: loaded from: classes7.dex */
class DumpArchiveInputStream$1 implements Comparator<DumpArchiveEntry> {
    final /* synthetic */ a this$0;

    DumpArchiveInputStream$1(a aVar) {
    }

    @Override // java.util.Comparator
    public int compare(DumpArchiveEntry dumpArchiveEntry, DumpArchiveEntry dumpArchiveEntry2) {
        if (dumpArchiveEntry.b() == null || dumpArchiveEntry2.b() == null) {
            return Integer.MAX_VALUE;
        }
        return dumpArchiveEntry.b().compareTo(dumpArchiveEntry2.b());
    }
}
